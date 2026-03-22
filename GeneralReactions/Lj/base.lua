local tbl = 
{
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "-- LJ Toolbox GUI Implementation\n\n-- Constants\nlocal ROLE_COLORS = {\n    tank = { 0.2, 0.4, 0.8, 1.0 },    -- Blue\n    healer = { 0.2, 0.5, 0.2, 1.0 },  -- Green\n    dps = { 0.7, 0.2, 0.2, 1.0 }      -- Red\n}\nlocal GUI_FLAGS = GUI.WindowFlags_AlwaysAutoResize + GUI.WindowFlags_NoTitleBar + GUI.WindowFlags_NoCollapse\nlocal BTN_WIDTH = 95\nlocal BTN_HEIGHT = 20\nlocal ROLE_BTN_WIDTH = 155\nlocal ROLE_BTN_HEIGHT = 18\nlocal ROLE_BUTTON_ID = \"##RoleButton\"\nlocal ROLE_POPUP_ID = \"RoleSelectPopup\"\n\n-- ==========================================\n-- ROBUST GLOBAL INITIALIZATION\n-- ==========================================\nif not _G.LJ_Toolbox or not _G.LJ_Toolbox.Settings then\n    _G.LJ_Toolbox = {}\n    \n    _G.LJ_Toolbox.Settings = {\n        roleOptions = {\n            tank = { \"MT\", \"OT\" },\n            healer = { \"H1\", \"H2\" },\n            dps = { \"M1\", \"M2\", \"R1\", \"R2\" }\n        },\n        selectedRole = 1,\n        showEffectTester = false,\n        \n        -- Debugger State\n        searchFilter = \"\",\n        selectedIndex = -1\n    }\n    \n    _G.LJ_Toolbox.State = {\n        lastJob = 0,\n        cachedRoleOptions = nil,\n        cachedRoleType = nil,\n        lastRoleType = nil,\n        mapEffectsCache = {}\n    }\n\n    local currentPID = GetCurrentPID()\n    local handle = io.popen(string.format('tasklist /M /FI \"PID eq %d\" /FO CSV', currentPID))\n    local hasDalamud = false\n    if handle then\n        local result = handle:read(\"*a\")\n        handle:close()\n        hasDalamud = result:match(\"Dalamud%.dll\") ~= nil\n    end\n    \n    _G.LJ_Toolbox.Status = { dalamud = hasDalamud, optifine = Optifine ~= nil }\nend\n\n-- ==========================================\n-- FUNCTION DEFINITIONS & DOCUMENTATION\n-- ==========================================\n\n--- Helper to draw the YES (Green) / NO (Red) text tags in the main toolbox\n--- @param label string The text label (e.g. \"Dalamud\")\n--- @param isActive boolean Whether the status is true or false\n_G.LJ_Toolbox.DrawStatus = function(label, isActive)\n    GUI:Text(label .. \":\")\n    GUI:SameLine()\n    GUI:TextColored(isActive and 0 or 1, isActive and 1 or 0, 0, 1, isActive and \"YES\" or \"NO\")\nend\n\n--- Retrieves the role array (MT/OT, etc.) and color type based on the player's current job\n--- @return table The array of string roles available for the current job\n--- @return string The string key representing the role type (\"tank\", \"healer\", \"dps\")\n_G.LJ_Toolbox.GetRoleOptions = function()\n    local job = TensorCore.mGetPlayer().job\n    if job == 19 or job == 21 or job == 32 or job == 37 then return _G.LJ_Toolbox.Settings.roleOptions.tank, \"tank\"\n    elseif job == 24 or job == 28 or job == 33 or job == 40 then return _G.LJ_Toolbox.Settings.roleOptions.healer, \"healer\"\n    else return _G.LJ_Toolbox.Settings.roleOptions.dps, \"dps\" end\nend\n\n--- Caching wrapper for GetRoleOptions. Prevents executing job logic on every single draw frame.\n--- @return table, string Passed through from GetRoleOptions\n_G.LJ_Toolbox.UpdateRoleOptions = function()\n    local currentJob = TensorCore.mGetPlayer().job\n    local state = _G.LJ_Toolbox.State\n    \n    if currentJob ~= state.lastJob then\n        state.lastJob = currentJob\n        state.cachedRoleOptions, state.cachedRoleType = _G.LJ_Toolbox.GetRoleOptions()\n        \n        if state.lastRoleType ~= state.cachedRoleType then\n            state.lastRoleType = state.cachedRoleType\n            if _G.LJ_Toolbox.Settings.selectedRole > #state.cachedRoleOptions then\n                _G.LJ_Toolbox.Settings.selectedRole = 1\n            end\n        end\n    end\n    return state.cachedRoleOptions, state.cachedRoleType\nend\n\n--- Scans all active Argus map effects and formats them for the UI list\n_G.LJ_Toolbox.RefreshMapEffects = function()\n    local cache = {}\n    local typeNames = { [2] = \"Model\", [4] = \"VFX\", [6] = \"Script\", [7] = \"Sound\" }\n    \n    if Argus and Argus.getNumCurrentMapEffects then\n        local numEffects = Argus.getNumCurrentMapEffects()\n        for i = 0, numEffects - 1 do\n            local res = Argus.getMapEffectResource(i)\n            if res then\n                local resId, resPath, resType, isActive = Argus.getEffectResourceInfo(res)\n                local typeStr = typeNames[resType] or tostring(resType)\n                \n                -- Count only valid scripts\n                local validScriptCount = 0\n                if resType == 6 then\n                    local rawNum = Argus.getNumEffectResourceScripts(res) or 0\n                    for si = 0, rawNum - 1 do\n                        local sName = Argus.getEffectResourceScriptInfo(res, si)\n                        if sName and sName ~= \"\" then\n                            validScriptCount = validScriptCount + 1\n                        end\n                    end\n                end\n                \n                -- Restore full information to the display label\n                local displayLabel = string.format(\"[%d] id=%d type=%s active=%s scripts=%d | %s\",\n                    i, resId or 0, typeStr, tostring(isActive), validScriptCount, tostring(resPath))\n                \n                table.insert(cache, {\n                    index = i,\n                    label = displayLabel,\n                    searchString = string.lower(displayLabel),\n                    isActive = isActive\n                })\n            end\n        end\n    end\n    _G.LJ_Toolbox.State.mapEffectsCache = cache\nend\n\n-- ==========================================\n-- EXPOSED GLOBAL API\n-- ==========================================\n--- @return string The currently selected raid role string\nif not _G.GetCurrentRole then\n    _G.GetCurrentRole = function()\n        local roleOptions = _G.LJ_Toolbox.GetRoleOptions()\n        return roleOptions[_G.LJ_Toolbox.Settings.selectedRole]\n    end\nend\n\n_G.LJ_Toolbox.Buttons = {\n    { \"Reactions\", function() if AnyoneCore then AnyoneCore.openTensorReactions() end end },\n    { \"Dev Monitor\", function() if AnyoneCore then AnyoneCore.Settings.DevMonitor = not AnyoneCore.Settings.DevMonitor end end },\n    { \"ACR Options\", ACR.OpenProfileOptions },\n    { \"Effects Debug\", function() \n        _G.LJ_Toolbox.Settings.showEffectTester = not _G.LJ_Toolbox.Settings.showEffectTester \n        if _G.LJ_Toolbox.Settings.showEffectTester then _G.LJ_Toolbox.RefreshMapEffects() end\n    end }\n}\n\n\n-- ==========================================\n-- MAIN TOOLBOX GUI\n-- ==========================================\nGUI:Begin(\"Toolbox###LJ_Toolbox\", true, GUI_FLAGS)\n\nif AnyoneCore then\n    AnyoneCore.Settings.DutyHelper.enabled = GUI:Checkbox(\"DutyHelper\", AnyoneCore.Settings.DutyHelper.enabled)\n    GUI:SameLine()\nend\ngStartCombat = GUI:Checkbox(\"Combat\", gStartCombat)\n\nfor i, btn in ipairs(_G.LJ_Toolbox.Buttons) do\n    if GUI:Button(btn[1], BTN_WIDTH, BTN_HEIGHT) then btn[2]() end\n    if i % 2 ~= 0 then GUI:SameLine() end\nend\n\nGUI:Separator()\nGUI:Text(\"Role: \")\nGUI:SameLine()\n\nlocal roleOptions, roleType = _G.LJ_Toolbox.UpdateRoleOptions()\nlocal currentRole = roleOptions[_G.LJ_Toolbox.Settings.selectedRole]\nlocal color = ROLE_COLORS[roleType]\n\nGUI:PushStyleVar(GUI.StyleVar_FramePadding, 4, 2)\nif color then GUI:PushStyleColor(GUI.Col_Button, color[1], color[2], color[3], color[4]) end\nlocal clicked = GUI:Button(currentRole .. ROLE_BUTTON_ID, ROLE_BTN_WIDTH, ROLE_BTN_HEIGHT)\nif color then GUI:PopStyleColor() end\nGUI:PopStyleVar()\n\nif clicked then GUI:OpenPopup(ROLE_POPUP_ID) end\n\nif GUI:BeginPopup(ROLE_POPUP_ID) then\n    for i, role in ipairs(roleOptions) do\n        if GUI:MenuItem(role) then _G.LJ_Toolbox.Settings.selectedRole = i end\n    end\n    GUI:EndPopup()\nend\n\nGUI:Separator()\n_G.LJ_Toolbox.DrawStatus(\"Optifine\", _G.LJ_Toolbox.Status.optifine)\nGUI:SameLine()\nGUI:Dummy(1, 0)\nGUI:SameLine()\n_G.LJ_Toolbox.DrawStatus(\"Dalamud\", _G.LJ_Toolbox.Status.dalamud)\n\nGUI:End()\n\n\n-- ==========================================\n-- MAP EFFECTS DEBUGGER (DUAL PANE)\n-- ==========================================\nif _G.LJ_Toolbox.Settings.showEffectTester then\n\n    GUI:SetNextWindowSize(1100, 600, GUI.SetCond_FirstUseEver)\n    local visible, open = GUI:Begin(\"Map Effects Explorer###LJ_EffectDebugger\", _G.LJ_Toolbox.Settings.showEffectTester)\n    if not open then _G.LJ_Toolbox.Settings.showEffectTester = false end\n    \n    if visible then\n        local typeNames = { [2] = \"Model\", [4] = \"VFX\", [6] = \"Script\", [7] = \"Sound\" }\n\n        if GUI:Button(\"Refresh List\", 100, 24) then _G.LJ_Toolbox.RefreshMapEffects() end\n        GUI:SameLine()\n        \n        local filterLower = string.lower(_G.LJ_Toolbox.Settings.searchFilter)\n        local filteredItems = {}\n        for _, item in ipairs(_G.LJ_Toolbox.State.mapEffectsCache) do\n            if filterLower == \"\" or string.find(item.searchString, filterLower, 1, true) then\n                table.insert(filteredItems, item)\n            end\n        end\n        \n        GUI:PushItemWidth(300)\n        _G.LJ_Toolbox.Settings.searchFilter = GUI:InputText(\"Search Filter\", _G.LJ_Toolbox.Settings.searchFilter)\n        GUI:PopItemWidth()\n        GUI:Spacing()\n        \n        GUI:Columns(2, \"MapEffectsColumns\", true)\n        \n        -- ====================================\n        -- LEFT PANE: Scrollable List\n        -- ====================================\n        -- Setting the width parameter to ensure horizontal scrolling works for long strings\n        GUI:BeginChild(\"ME_LeftList\", 0, 0, true, GUI.WindowFlags_HorizontalScrollbar)\n        for _, item in ipairs(filteredItems) do\n            local isSelected = (_G.LJ_Toolbox.Settings.selectedIndex == item.index)\n            \n            if isSelected then\n                GUI:PushStyleColor(GUI.Col_Text, 1.0, 0.2, 0.2, 1.0) -- Selected Red\n            elseif item.isActive then\n                GUI:PushStyleColor(GUI.Col_Text, 0.9, 0.9, 0.9, 1.0) -- Active White\n            else\n                GUI:PushStyleColor(GUI.Col_Text, 0.5, 0.5, 0.5, 1.0) -- Inactive Grey\n            end\n            \n            if GUI:Selectable(item.label, isSelected) then\n                _G.LJ_Toolbox.Settings.selectedIndex = item.index\n            end\n            GUI:PopStyleColor()\n        end\n        GUI:EndChild()\n\n        GUI:NextColumn()\n        \n        -- ====================================\n        -- RIGHT PANE: Dashboard View\n        -- ====================================\n        GUI:BeginChild(\"ME_RightTree\", 0, 0, true)\n        if _G.LJ_Toolbox.Settings.selectedIndex ~= -1 then\n            \n            local targetRes = nil\n            if Argus and Argus.getMapEffectResource then\n                targetRes = Argus.getMapEffectResource(_G.LJ_Toolbox.Settings.selectedIndex)\n            end\n            \n            if targetRes then\n                local id, path, rType, isActive = Argus.getEffectResourceInfo(targetRes)\n                local rTypeStr = typeNames[rType] or tostring(rType)\n\n                -- Top Header Information\n                GUI:TextColored(0.95, 0.75, 0.20, 1.0, string.format(\"Index: %d\", _G.LJ_Toolbox.Settings.selectedIndex))\n                GUI:SameLine(100)\n                GUI:TextColored(0.40, 0.75, 1.00, 1.0, string.format(\"ID: %d\", id or 0))\n                GUI:SameLine(200)\n                GUI:TextColored(0.95, 0.75, 0.20, 1.0, string.format(\"Type: %s (%d)\", rTypeStr, rType or 0))\n                GUI:SameLine(350)\n                \n                if isActive then\n                    GUI:TextColored(0.30, 0.90, 0.40, 1.0, \"Status: ACTIVE\")\n                else\n                    GUI:TextColored(0.60, 0.60, 0.60, 1.0, \"Status: INACTIVE\")\n                end\n                \n                GUI:Spacing()\n                GUI:TextColored(0.8, 0.8, 0.8, 1.0, \"Path: \")\n                GUI:SameLine()\n                GUI:TextColored(1.0, 1.0, 1.0, 1.0, tostring(path))\n                \n                -- Copy Path Utility\n                GUI:SameLine()\n                if GUI:Button(\"[Copy]##Path\", 45, 18) then\n                    if GUI and GUI.SetClipboardText then GUI:SetClipboardText(tostring(path)) end\n                end\n                \n                GUI:Separator()\n                GUI:Spacing()\n                \n                -- Actions\n                GUI:Text(\"Actions:\")\n                GUI:SameLine()\n                if GUI:Button(\"Teleport to Me\", 120, 20) then\n                    if TensorCore and TensorCore.mGetPlayer then\n                        local p = TensorCore.mGetPlayer()\n                        if p and p.pos then Argus.setEffectResourcePosition(targetRes, p.pos.x, p.pos.y, p.pos.z) end\n                    end\n                end\n                GUI:SameLine()\n                if GUI:Button(\"Turn Off (Flag 4)\", 120, 20) then\n                    Argus.runMapEffect(_G.LJ_Toolbox.Settings.selectedIndex, 0, 4)\n                end\n                \n                GUI:Spacing()\n                GUI:Separator()\n                GUI:Spacing()\n                \n                -- Properties (Position, Scale, Orientation)\n                local px, py, pz = Argus.getEffectResourcePosition(targetRes)\n                if px then \n                    GUI:TextColored(0.4, 0.8, 1.0, 1.0, string.format(\"Position: X: %.3f   Y: %.3f   Z: %.3f\", px, py, pz)) \n                end\n                \n                local sx, sy, sz = Argus.getEffectResourceScale(targetRes)\n                if sx then \n                    GUI:TextColored(0.4, 1.0, 0.4, 1.0, string.format(\"Scale: X: %.3f   Y: %.3f   Z: %.3f\", sx, sy, sz)) \n                end\n                \n                local dx, dy, dz, ux, uy, uz = Argus.getEffectResourceOrientation(targetRes)\n                if dx then\n                    GUI:TextColored(1.0, 0.6, 0.6, 1.0, string.format(\"Dir: X: %.3f  Y: %.3f  Z: %.3f   |   Up: X: %.3f  Y: %.3f  Z: %.3f\", dx, dy, dz, ux, uy, uz))\n                end\n                \n                local rt, rs = Argus.getEffectResourceRenderInfo(targetRes)\n                if rt then\n                    GUI:Spacing()\n                    GUI:TextColored(0.8, 0.8, 0.8, 1.0, string.format(\"Render Type: %s   |   Render State: %s\", tostring(rt), tostring(rs)))\n                end\n                \n                GUI:Spacing()\n                GUI:Separator()\n                GUI:Spacing()\n\n                -- Flat Hierarchy Viewer for Type 6\n                if rType == 6 then\n                    local rawNumScripts = Argus.getNumEffectResourceScripts(targetRes) or 0\n                    \n                    -- Gather only valid scripts\n                    local validScripts = {}\n                    for si = 0, rawNumScripts - 1 do\n                        local sName, sNumSub, sRes, sRunning = Argus.getEffectResourceScriptInfo(targetRes, si)\n                        if sName and sName ~= \"\" then\n                            table.insert(validScripts, {\n                                index = si, name = sName, numSub = sNumSub, res = sRes, running = sRunning\n                            })\n                        end\n                    end\n                    \n                    if #validScripts > 0 then\n                        GUI:TextColored(0.95, 0.75, 0.20, 1.0, \"--- Script Explorer (\" .. #validScripts .. \" loaded) ---\")\n                        GUI:Spacing()\n                        \n                        for _, sInfo in ipairs(validScripts) do\n                            local scriptFlag = math.floor(2 ^ sInfo.index)\n                            \n                            -- Script Header\n                            local statusColor = sInfo.running and {0.3, 0.9, 0.4} or {0.9, 0.3, 0.3}\n                            GUI:TextColored(statusColor[1], statusColor[2], statusColor[3], 1.0, string.format(\"[%d] %s (Flag: %d)\", sInfo.index, tostring(sInfo.name), scriptFlag))\n                            \n                            GUI:SameLine(350)\n                            if GUI:Button(\"Run##\" .. sInfo.index, 40, 18) then \n                                Argus.startEffectResourceScript(targetRes, sInfo.index, 0) \n                            end\n                            GUI:SameLine()\n                            if GUI:Button(\"Stop##\" .. sInfo.index, 40, 18) then \n                                Argus.runMapEffect(_G.LJ_Toolbox.Settings.selectedIndex, 0, 4) \n                            end\n                            GUI:SameLine()\n                            if GUI:Button(\"Copy Reaction##\" .. sInfo.index, 110, 18) then\n                                local reactionStr = string.format(\"return eventArgs.a1 == %d and eventArgs.a2 == 0 and eventArgs.a3 == %d\", _G.LJ_Toolbox.Settings.selectedIndex, scriptFlag)\n                                if GUI and GUI.SetClipboardText then\n                                    GUI:SetClipboardText(reactionStr)\n                                end\n                            end\n                            \n                            -- Inner Subresources cleanly indented\n                            if sInfo.res and sInfo.numSub and sInfo.numSub > 0 then\n                                for subI = 0, sInfo.numSub - 1 do\n                                    local ssRes = Argus.getEffectResourceScriptSubresource(sInfo.res, subI)\n                                    if ssRes then\n                                        local ssId, ssPath, ssType, ssActive = Argus.getEffectResourceInfo(ssRes)\n                                        local ssTypeStr = typeNames[ssType] or tostring(ssType)\n                                        local shortPath = type(ssPath) == \"string\" and (ssPath:match(\".*/(.*)\") or ssPath) or \"Unknown\"\n                                        \n                                        GUI:TextColored(0.5, 0.5, 0.5, 1.0, \"      ↳ \")\n                                        GUI:SameLine()\n                                        GUI:TextColored(0.7, 0.7, 0.7, 1.0, string.format(\"[%s] ID: %d | %s\", ssTypeStr, ssId or 0, shortPath))\n                                        if GUI:IsItemHovered() then GUI:SetTooltip(tostring(ssPath)) end\n                                    end\n                                end\n                            end\n                            GUI:Spacing()\n                        end\n                    end\n                    \n                    -- Full Outer Subresources List\n                    local numFullSub = Argus.getNumEffectSubresources(targetRes) or 0\n                    if numFullSub > 0 then\n                        GUI:Spacing()\n                        GUI:TextColored(0.40, 0.75, 1.00, 1.0, \"--- Full Resource Pool (\" .. numFullSub .. \" total) ---\")\n                        GUI:Spacing()\n                        \n                        for fi = 0, numFullSub - 1 do\n                            local fRes = Argus.getEffectSubresource(targetRes, fi)\n                            if fRes then\n                                local fId, fPath, fType, fActive = Argus.getEffectResourceInfo(fRes)\n                                local fTypeStr = typeNames[fType] or tostring(fType)\n                                local aColor = fActive and {0.9, 0.9, 0.9} or {0.5, 0.5, 0.5}\n                                \n                                GUI:TextColored(aColor[1], aColor[2], aColor[3], 1.0, string.format(\"[%d] %s | ID: %d\", fi, fTypeStr, fId or 0))\n                                GUI:SameLine(180)\n                                GUI:TextColored(0.6, 0.6, 0.6, 1.0, tostring(fPath))\n                            end\n                        end\n                    end\n                end\n            else\n                GUI:TextColored(1.0, 0.4, 0.4, 1.0, \"Resource is nil or despawned.\")\n            end\n            \n        else\n            GUI:TextColored(0.5, 0.5, 0.5, 1.0, \"Select a map effect from the list on the left to inspect.\")\n        end\n        GUI:EndChild()\n\n        GUI:Columns(1)\n    end\n    GUI:End()\nend\n\nself.used = true",
						gVar = "ACR_RikuWAR3_CD",
						uuid = "ddefbec5-e0e4-a9e8-bf68-e0b3134c4f4f",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return InInstance()",
						dequeueIfLuaFalse = true,
						name = "In Instance",
						uuid = "a367a1bc-5882-a8d3-9acd-d695597d9892",
						version = 3,
					},
					inheritedIndex = 1,
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local dutyInfo = Duty:GetActiveDutyInfo()\nif not dutyInfo then return false end\n\nlocal highEndKeywords = {\"Extreme\", \"Minstrel\", \"Savage\", \"Unreal\", \"Chaotic\", \"Ultimate\"}\n\nfor _, keyword in ipairs(highEndKeywords) do\n    if dutyInfo.name:find(keyword) then\n        return true\n    end\nend\n\nreturn false",
						dequeueIfLuaFalse = true,
						name = "In Highend Duty",
						uuid = "64d7c855-cc05-f50d-a8b2-34c52aa84eed",
						version = 3,
					},
					inheritedIndex = 1,
				},
			},
			eventType = 13,
			name = "Lj: Toolbox",
			uuid = "641840f4-4755-468f-ba08-a2461b8d3fdf",
			version = 2,
		},
		inheritedIndex = 3,
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "local obsCommandPath = string.format('\"%s\" /server=%s /stoprecording', \n    AnyoneCore.Settings.obsCommandPath, \n    AnyoneCore.Settings.obsServerInfo\n)\n\nlocal handle = io.popen(obsCommandPath)\nif handle then\n    handle:close()\nend\n\nself.used = true",
						conditions = 
						{
							
							{
								"1a34ae05-c14f-3f29-919d-fb56e8e9027d",
								true,
							},
							
							{
								"a967c59f-f536-d157-a6e5-ec2efbc5b78e",
								true,
							},
						},
						gVar = "ACR_TensorMagnum3_CD",
						uuid = "03522db8-5990-ae4a-aff6-a7b2a5cfa847",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local dutyInfo = Duty:GetActiveDutyInfo()\nif not dutyInfo then return false end\n\nlocal highEndKeywords = {\"Extreme\", \"Minstrel\", \"Savage\", \"Unreal\", \"Chaotic\", \"Ultimate\"}\n\nfor _, keyword in ipairs(highEndKeywords) do\n    if dutyInfo.name:find(keyword) then\n        return true\n    end\nend\n\nreturn false",
						dequeueIfLuaFalse = true,
						name = "In Highend Duty",
						uuid = "1a34ae05-c14f-3f29-919d-fb56e8e9027d",
						version = 3,
					},
					inheritedIndex = 1,
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local exitIDs = {\n    [2006235] = true, [2000139] = true, [2000370] = true, [2000275] = true, \n    [2001610] = true, [2001871] = true, [2000683] = true, [2000605] = true, \n    [2000788] = true, [2000596] = true, [2001161] = true, [2000493] = true\n}\n\nlocal entity = TensorCore.mGetEntity(eventArgs.entityID)\n\nif eventArgs.isVisible and not eventArgs.wasVisible then\n    if exitIDs[entity.contentID] then\n        return true\n    end\nend\n\nreturn false",
						dequeueIfLuaFalse = true,
						name = "Exit Found",
						uuid = "a967c59f-f536-d157-a6e5-ec2efbc5b78e",
						version = 3,
					},
				},
			},
			eventType = 22,
			name = "Lj: End OBS",
			uuid = "43cd2fd7-3f76-18f5-978b-afbe342ecbe4",
			version = 2,
		},
		inheritedIndex = 23,
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "ml_global_information.ToggleRun()\nself.used = true",
						conditions = 
						{
							
							{
								"7ad85a47-c001-3ac1-b0c3-b2bf308876b5",
								true,
							},
						},
						gVar = "ACR_TensorViper3_CD",
						name = "Disable Assist",
						uuid = "18592099-f4f3-158a-a00b-c7381b19612b",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return FFXIV_Common_BotRunning",
						dequeueIfLuaFalse = true,
						name = "Assist Enabled",
						uuid = "7ad85a47-c001-3ac1-b0c3-b2bf308876b5",
						version = 3,
					},
				},
			},
			eventType = 10,
			name = "Lj; OnDeath",
			uuid = "beb284cf-d14a-48ec-8e1a-04c8cb2acb4b",
			version = 2,
		},
		inheritedIndex = 7,
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "gStartCombat = false\nArgus.deleteTimedShape()\nArgusDrawsPlus.setExtraBrightness(false)\nTensorDrift_SlidecastForceHold = false\nTensorCore.API.TensorACR.setHardLockFace(false)\nTensorCore.API.TensorACR.toggleLockFace(false)\nTensorCore.mGetPlayer():ClearTarget()\nACR_TensorACR_HotbarCancel = true\nACR_RikuRDM3_ResBreakCombo = false\nACR_TensorRequiem3_SongPriority = {\"WM\", \"MB\", \"AP\"}\nACR_TensorRuin3_PetOrder = {\"Titan\", \"Ifrit\", \"Garuda\"}\n\nself.used = true",
						gVar = "ACR_RikuRDM3_CD",
						uuid = "2d20d347-0b35-f029-b731-1faaa96bda8e",
						version = 2.1,
					},
				},
				
				{
					data = 
					{
						aType = "Alert",
						alertPriority = 3,
						alertScale = 1,
						alertTTS = true,
						alertText = "Food Missing",
						conditions = 
						{
							
							{
								"400cbbd5-fdc5-738d-9a1e-82140d7ff606",
								true,
							},
							
							{
								"fa3c09da-201e-a1ad-bdd6-1ae07aebcc0a",
								true,
							},
						},
						gVar = "ACR_RikuMNK3_CD",
						name = "Missing Food Alert",
						uuid = "b6dd3ed9-9cac-2828-b29a-3fdd7ebd4a41",
						version = 2.1,
					},
					inheritedIndex = 1,
				},
				
				{
					data = 
					{
						aType = "Alert",
						alertPriority = 2,
						alertScale = 1,
						alertTTS = true,
						alertText = "Food Expiring",
						conditions = 
						{
							
							{
								"f38cdf8d-89df-9e72-8d29-1d60a89fb39e",
								true,
							},
							
							{
								"fa3c09da-201e-a1ad-bdd6-1ae07aebcc0a",
								true,
							},
						},
						gVar = "ACR_RikuMNK3_CD",
						name = "Food Expiring Alert",
						uuid = "e894929d-8252-1b84-86a1-107a48463d20",
						version = 2.1,
					},
					inheritedIndex = 3,
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						buffCheckType = 2,
						buffID = 48,
						category = "Self",
						dequeueIfLuaFalse = true,
						name = "Missing Food",
						uuid = "400cbbd5-fdc5-738d-9a1e-82140d7ff606",
						version = 3,
					},
					inheritedIndex = 2,
				},
				
				{
					data = 
					{
						buffCheckType = 3,
						buffDuration = 912,
						buffID = 48,
						category = "Self",
						comparator = 2,
						dequeueIfLuaFalse = true,
						name = "Food Expiring",
						uuid = "f38cdf8d-89df-9e72-8d29-1d60a89fb39e",
						version = 3,
					},
					inheritedIndex = 1,
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local dutyInfo = Duty:GetActiveDutyInfo()\nif not dutyInfo then return false end\n\nlocal highEndKeywords = {\"Extreme\", \"Minstrel\", \"Savage\", \"Unreal\", \"Chaotic\", \"Ultimate\"}\n\nfor _, keyword in ipairs(highEndKeywords) do\n    if dutyInfo.name:find(keyword) then\n        return true\n    end\nend\n\nreturn false",
						dequeueIfLuaFalse = true,
						name = "In Highend Duty",
						uuid = "fa3c09da-201e-a1ad-bdd6-1ae07aebcc0a",
						version = 3,
					},
					inheritedIndex = 1,
				},
			},
			eventType = 9,
			name = "Lj: OnWipe",
			uuid = "007954f3-7809-9dc4-baaf-f5f0dd1f1396",
			version = 2,
		},
		inheritedIndex = 10,
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "local profile = gACRSelectedProfiles[TensorCore.mGetPlayer().job]\n\nfor i = 1, 5 do\n    TensorCore.API.TensorACR.setHotbarEnabled(\"ACR_\" .. profile .. \"_Hotbar_DutyAction\" .. i, false)\nend\nself.used = true",
						conditions = 
						{
							
							{
								"df74efb9-4705-7052-b131-02edb2689619",
								false,
							},
						},
						gVar = "ACR_TensorMagnum3_CD",
						name = "Disable Duty Hotbars",
						uuid = "c66c4f6c-f756-08eb-b3d4-d2b06ec97f1f",
						version = 2.1,
					},
				},
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "local profile = gACRSelectedProfiles[TensorCore.mGetPlayer().job]\n\nfor i = 1, 5 do\n    TensorCore.API.TensorACR.setHotbarEnabled(\"ACR_\" .. profile .. \"_Hotbar_DutyAction\" .. i, true)\nend\nself.used = true",
						conditions = 
						{
							
							{
								"df74efb9-4705-7052-b131-02edb2689619",
								true,
							},
						},
						gVar = "ACR_TensorMagnum3_CD",
						name = "Enable Duty Hotbars",
						uuid = "5ddea810-6d65-623e-ae9d-0d09e2070608",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Self",
						conditionType = 12,
						localMapIDList = 
						{
							1315,
							1316,
							1317,
							911,
							920,
							936,
							937,
							1075,
							1076,
							1155,
							1156,
							1179,
							1180,
							975,
							1252,
							1069,
							1137,
							1176,
						},
						name = "Duty Action Maps",
						uuid = "df74efb9-4705-7052-b131-02edb2689619",
						version = 3,
					},
				},
			},
			eventType = 11,
			name = "Lj: OnMapChange",
			throttleTime = 1500,
			uuid = "c6ed8d71-13e7-ee66-84aa-8301431dbbad",
			version = 2,
		},
		inheritedIndex = 9,
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Alert",
						alertPriority = 2,
						alertScale = 1,
						alertTTS = true,
						alertText = "Food Expiring",
						conditions = 
						{
							
							{
								"d166a055-7bd5-b752-beb9-677a90228bcb",
								true,
							},
							
							{
								"59e6e080-bc72-f01f-a86b-f8c415ce1089",
								true,
							},
						},
						gVar = "ACR_RikuMNK3_CD",
						name = "Food Expiring Alert",
						uuid = "3f1135f0-1973-09f7-b465-8cb90387b889",
						version = 2.1,
					},
					inheritedIndex = 1,
				},
				
				{
					data = 
					{
						aType = "Alert",
						alertPriority = 3,
						alertScale = 1,
						alertTTS = true,
						alertText = "Food Missing",
						conditions = 
						{
							
							{
								"e506760d-297e-3da5-bccc-3265bfe741eb",
								true,
							},
							
							{
								"59e6e080-bc72-f01f-a86b-f8c415ce1089",
								true,
							},
						},
						gVar = "ACR_RikuMNK3_CD",
						name = "Missing Food Alert",
						uuid = "bc5a1860-599d-9919-a876-b64ac8689079",
						version = 2.1,
					},
					inheritedIndex = 1,
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						buffCheckType = 3,
						buffDuration = 912,
						buffID = 48,
						category = "Self",
						comparator = 2,
						dequeueIfLuaFalse = true,
						name = "Food Expiring",
						uuid = "d166a055-7bd5-b752-beb9-677a90228bcb",
						version = 3,
					},
					inheritedIndex = 1,
				},
				
				{
					data = 
					{
						buffCheckType = 2,
						buffID = 48,
						category = "Self",
						dequeueIfLuaFalse = true,
						name = "Missing Food",
						uuid = "e506760d-297e-3da5-bccc-3265bfe741eb",
						version = 3,
					},
					inheritedIndex = 2,
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local dutyInfo = Duty:GetActiveDutyInfo()\nif not dutyInfo then return false end\n\nlocal highEndKeywords = {\"Extreme\", \"Minstrel\", \"Savage\", \"Unreal\", \"Chaotic\", \"Ultimate\"}\n\nfor _, keyword in ipairs(highEndKeywords) do\n    if dutyInfo.name:find(keyword) then\n        return true\n    end\nend\n\nreturn false",
						dequeueIfLuaFalse = true,
						name = "In Highend Duty",
						uuid = "59e6e080-bc72-f01f-a86b-f8c415ce1089",
						version = 3,
					},
					inheritedIndex = 1,
				},
			},
			eventType = 16,
			name = "Lj: CD | Food Alert",
			uuid = "cb262b9e-a027-e674-81ae-eb21fd482da7",
			version = 2,
		},
		inheritedIndex = 14,
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "ml_global_information.ToggleRun()\nself.used = true",
						conditions = 
						{
							
							{
								"6e40b1dc-3f06-5d29-9010-71cbfe4fb2d8",
								true,
							},
							
							{
								"a1bb26b8-385d-11b8-afe3-f3e7e30e4ed5",
								true,
							},
						},
						gVar = "ACR_TensorViper3_CD",
						name = "Disable Assist",
						uuid = "ef7eab92-17b2-c08b-a44d-2156ba9fceb3",
						version = 2.1,
					},
				},
				
				{
					data = 
					{
						aType = "Misc",
						conditions = 
						{
							
							{
								"6e40b1dc-3f06-5d29-9010-71cbfe4fb2d8",
								true,
							},
							
							{
								"a1bb26b8-385d-11b8-afe3-f3e7e30e4ed5",
								true,
							},
						},
						gVar = "ACR_RikuRDM3_CD",
						stopCasting = true,
						untarget = true,
						uuid = "1ff29aff-3b8a-fa42-9e1d-85d1aa16bfac",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local elist = TensorCore.entityList(\"myparty\")\nelist[Player.id] = TensorCore.mGetPlayer() -- add myself to the party xd\n\nfor _, ent in pairs(elist) do\n    if not ent.alive then \n        return true \n    end\nend\n\nreturn false",
						name = "Party Member Died",
						uuid = "6e40b1dc-3f06-5d29-9010-71cbfe4fb2d8",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return FFXIV_Common_BotRunning",
						name = "Assist Enabled",
						uuid = "a1bb26b8-385d-11b8-afe3-f3e7e30e4ed5",
						version = 3,
					},
				},
			},
			eventType = 16,
			name = "Lj: CD | Dead",
			uuid = "61204f8a-2db5-d890-bad7-c34845aff828",
			version = 2,
		},
		inheritedIndex = 14,
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "ml_global_information.ToggleRun()\nself.used = true",
						conditions = 
						{
							
							{
								"b497d225-1e84-8649-af35-54c3fb6909a4",
								true,
							},
						},
						gVar = "ACR_TensorViper3_CD",
						name = "Disable Assist",
						uuid = "c2cdb702-38e7-8f02-a0ca-1198ae161cf9",
						version = 2.1,
					},
				},
				
				{
					data = 
					{
						aType = "Misc",
						gVar = "ACR_RikuRDM3_CD",
						stopCasting = true,
						untarget = true,
						uuid = "4f636a18-e905-e4c2-99c7-df1dfec2c20a",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return FFXIV_Common_BotRunning",
						name = "Assist Enabled",
						uuid = "b497d225-1e84-8649-af35-54c3fb6909a4",
						version = 3,
					},
				},
			},
			eventType = 17,
			name = "Lj: CD | Cancel",
			uuid = "a9b5e472-2430-eb97-a980-1ba25dd5b92b",
			version = 2,
		},
		inheritedIndex = 13,
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "ml_global_information.ToggleRun()\nself.used = true",
						conditions = 
						{
							
							{
								"6e40b1dc-3f06-5d29-9010-71cbfe4fb2d8",
								true,
							},
							
							{
								"a1bb26b8-385d-11b8-afe3-f3e7e30e4ed5",
								true,
							},
						},
						gVar = "ACR_TensorViper3_CD",
						name = "Disable Assist",
						uuid = "ef7eab92-17b2-c08b-a44d-2156ba9fceb3",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return FFXIV_Common_BotRunning",
						name = "Assist Enabled",
						uuid = "a1bb26b8-385d-11b8-afe3-f3e7e30e4ed5",
						version = 3,
					},
					inheritedIndex = 1,
				},
				
				{
					data = 
					{
						category = "Event",
						comparator = 2,
						conditionLua = "local partyEntities = TensorCore.getEntityGroupList(\"Party\")\n\nfor entityId, entity in pairs(partyEntities) do\n    if entity.alive == false then\n        return true\n    end\nend\nreturn false",
						eventArgType = 2,
						eventCountdownTime = 5,
						name = "<= 5",
						uuid = "6e40b1dc-3f06-5d29-9010-71cbfe4fb2d8",
						version = 3,
					},
				},
			},
			eventType = 16,
			name = "Lj: CD | Quick Pull",
			uuid = "e2ab71de-e8d9-3696-b02d-275f5a56bb3c",
			version = 2,
		},
		inheritedIndex = 14,
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Misc",
						conditions = 
						{
							
							{
								"69b5b987-503d-e566-99ae-eaa127a88775",
								true,
							},
							
							{
								"3fd0ed4a-7460-c6db-a800-b72bb3c5826c",
								true,
							},
							
							{
								"de35216d-4e4b-8c85-9f3f-96c37cd28868",
								true,
							},
						},
						gVar = "ACR_TensorMagnum3_CD",
						name = "Stop Moving",
						stopMoving = true,
						uuid = "0ef0c68b-9cbe-576e-a961-7b8fc051f648",
						version = 2.1,
					},
				},
				
				{
					data = 
					{
						aType = "Misc",
						conditions = 
						{
							
							{
								"69b5b987-503d-e566-99ae-eaa127a88775",
								true,
							},
							
							{
								"3fd0ed4a-7460-c6db-a800-b72bb3c5826c",
								true,
							},
							
							{
								"341b749e-d3d2-18ef-ad58-c63378d6e58f",
								true,
							},
							
							{
								"d6170bfa-c9b7-ecf7-9705-2fab78018d52",
								false,
							},
							
							{
								"d2cb0e5d-b0e6-7553-996b-e1e8c2686861",
								false,
							},
							
							{
								"261043e7-929b-2eb9-aa8d-8d84b88fa1b8",
								false,
							},
						},
						gVar = "ACR_TensorMagnum3_CD",
						name = "Target Dark Boss",
						setTarget = true,
						targetContentID = 14038,
						targetType = "ContentID",
						uuid = "24dc9dcc-3dba-eb97-acd0-553360f6a99b",
						version = 2.1,
					},
				},
				
				{
					data = 
					{
						aType = "Misc",
						conditions = 
						{
							
							{
								"69b5b987-503d-e566-99ae-eaa127a88775",
								true,
							},
							
							{
								"3fd0ed4a-7460-c6db-a800-b72bb3c5826c",
								true,
							},
							
							{
								"57cb4439-f2f6-d1ed-9d03-16964315e7ab",
								true,
							},
							
							{
								"5a049175-4b1c-00c7-b7d0-211089c9e029",
								false,
							},
							
							{
								"d2cb0e5d-b0e6-7553-996b-e1e8c2686861",
								false,
							},
							
							{
								"261043e7-929b-2eb9-aa8d-8d84b88fa1b8",
								false,
							},
						},
						gVar = "ACR_TensorMagnum3_CD",
						name = "Target Light Boss",
						setTarget = true,
						targetContentID = 14037,
						targetType = "ContentID",
						uuid = "f86b9e09-d3f0-0034-bf14-022a1bff8f2f",
						version = 2.1,
					},
				},
				
				{
					data = 
					{
						aType = "Misc",
						conditions = 
						{
							
							{
								"69b5b987-503d-e566-99ae-eaa127a88775",
								true,
							},
							
							{
								"3fd0ed4a-7460-c6db-a800-b72bb3c5826c",
								true,
							},
							
							{
								"261043e7-929b-2eb9-aa8d-8d84b88fa1b8",
								true,
							},
						},
						gVar = "ACR_TensorMagnum3_CD",
						name = "Target Adds or Nail",
						setTarget = true,
						targetType = "Detection Target",
						uuid = "f1c739fc-db5f-65ad-9cd8-4147b66584d6",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Self",
						conditionType = 12,
						dequeueIfLuaFalse = true,
						localMapIDList = 
						{
							1311,
							1333,
							1290,
						},
						localmapid = 1311,
						uuid = "69b5b987-503d-e566-99ae-eaa127a88775",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return FFXIV_Common_BotRunning",
						name = "Assist Enabled",
						uuid = "3fd0ed4a-7460-c6db-a800-b72bb3c5826c",
						version = 3,
					},
				},
				
				{
					data = 
					{
						buffID = 4562,
						category = "Self",
						name = "Chains of Condemnation",
						uuid = "de35216d-4e4b-8c85-9f3f-96c37cd28868",
						version = 3,
					},
				},
				
				{
					data = 
					{
						buffID = 4559,
						category = "Self",
						name = "Dark Vengeance",
						uuid = "341b749e-d3d2-18ef-ad58-c63378d6e58f",
						version = 3,
					},
				},
				
				{
					data = 
					{
						buffID = 4560,
						category = "Self",
						name = "Light Vengeance",
						uuid = "57cb4439-f2f6-d1ed-9d03-16964315e7ab",
						version = 3,
					},
				},
				
				{
					data = 
					{
						conditionType = 2,
						contentid = 14038,
						name = "Dark Boss Target",
						uuid = "d6170bfa-c9b7-ecf7-9705-2fab78018d52",
						version = 3,
					},
				},
				
				{
					data = 
					{
						conditionType = 2,
						contentid = 14037,
						name = "Light Boss Target",
						uuid = "5a049175-4b1c-00c7-b7d0-211089c9e029",
						version = 3,
					},
				},
				
				{
					data = 
					{
						conditionType = 2,
						contentid = 14041,
						name = "Flameborn Target",
						uuid = "d2cb0e5d-b0e6-7553-996b-e1e8c2686861",
						version = 3,
					},
					inheritedIndex = 8,
				},
				
				{
					data = 
					{
						category = "Party",
						comparator = 2,
						conditionType = 4,
						inGroupTargetType = "Melee DPS",
						inRangeValue = 3.5,
						name = "Melee Range",
						partyTargetType = "Detection Target",
						uuid = "08f7141d-46a4-eb17-9f00-65805bcea673",
						version = 3,
					},
					inheritedIndex = 9,
				},
				
				{
					data = 
					{
						category = "Filter",
						conditions = 
						{
							
							{
								"08f7141d-46a4-eb17-9f00-65805bcea673",
								true,
							},
						},
						filterTargetType = "ContentID",
						name = "F - Adds",
						partyTargetContentID = 14039,
						uuid = "5b262d09-83e6-326d-865f-952f01d520c7",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Filter",
						conditions = 
						{
							
							{
								"08f7141d-46a4-eb17-9f00-65805bcea673",
								true,
							},
						},
						filterTargetType = "ContentID",
						name = "F - Nails",
						partyTargetContentID = 14042,
						uuid = "bffab478-527f-a4d8-b650-f69929fb93aa",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Filter",
						conditions = 
						{
							
							{
								"5b262d09-83e6-326d-865f-952f01d520c7",
								true,
							},
							
							{
								"bffab478-527f-a4d8-b650-f69929fb93aa",
								true,
							},
						},
						matchAnyBuff = true,
						name = "F - Adds OR Nails Exist",
						partyTargetNumber = 0,
						uuid = "261043e7-929b-2eb9-aa8d-8d84b88fa1b8",
						version = 3,
					},
				},
			},
			name = "Lj: Quantum | Target Selector",
			uuid = "19000f80-c532-f934-8064-b5795cabdfe2",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "self.used = true",
						conditions = 
						{
							
							{
								"f20be9b5-6eaa-6c13-beaf-880fa5d9da15",
								true,
							},
							
							{
								"31fc26ba-33c6-3697-be69-04ace2cf732f",
								true,
							},
							
							{
								"21801a39-f772-9e60-a675-2c120844cfd0",
								true,
							},
						},
						gVar = "ACR_RikuWAR3_CD",
						uuid = "9e3c368c-8fab-24e5-9fea-e6c08f0e01ed",
						version = 2.1,
					},
					inheritedIndex = 1,
				},
				
				{
					data = 
					{
						actionID = 29054,
						allowInterrupt = true,
						conditions = 
						{
							
							{
								"f20be9b5-6eaa-6c13-beaf-880fa5d9da15",
								true,
							},
							
							{
								"31fc26ba-33c6-3697-be69-04ace2cf732f",
								true,
							},
							
							{
								"21801a39-f772-9e60-a675-2c120844cfd0",
								true,
							},
						},
						gVar = "ACR_TensorMagnum3_CD",
						ignoreWeaveRules = true,
						uuid = "8fd5e789-4a5f-ad80-9be5-bba03463e2e2",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return IsPVPMap()",
						dequeueIfLuaFalse = true,
						name = "PVP Map",
						uuid = "f20be9b5-6eaa-6c13-beaf-880fa5d9da15",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Event",
						dequeueIfLuaFalse = true,
						eventArgType = 2,
						eventSpellID = 29415,
						name = "Marksman's Spite",
						uuid = "31fc26ba-33c6-3697-be69-04ace2cf732f",
						version = 3,
					},
					inheritedIndex = 2,
				},
				
				{
					data = 
					{
						category = "Party",
						conditionType = 10,
						dequeueIfLuaFalse = true,
						eventArgType = 3,
						inGroupTargetType = "Self",
						name = "Targeted at Me",
						partyTargetType = "Event Target",
						uuid = "21801a39-f772-9e60-a675-2c120844cfd0",
						version = 3,
					},
				},
			},
			eventType = 2,
			name = "Lj: PvP | Guard MCH LB",
			throttleTime = 1000,
			uuid = "bf97a3d6-d9f7-ca22-ab9a-af4c94fc4085",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "local pos = {x=eventArgs.x, y=eventArgs.y+1, z=eventArgs.z}\nlocal timer = eventArgs.duration * 1000\nlocal showBG = true\nlocal size = 2\n\nif pos and table.valid(pos) then\n\tAnyoneCore.addWorldTextCountdown(timer, pos, AnyoneCore.white, showBG, size)\nend\n\nself.used = true\nself.eventConditionMismatch = true",
						conditions = 
						{
							
							{
								"8ff7a7d1-a237-0a97-bfce-ee126ec199bb",
								false,
							},
							
							{
								"d4810160-6d62-2454-aa85-3e4ef1569106",
								false,
							},
						},
						gVar = "ACR_RikuWAR3_CD",
						uuid = "a893cb88-8eec-e686-bcd6-ac56155dee5a",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local dutyInfo = Duty:GetActiveDutyInfo()\nif not dutyInfo then return false end\n\nlocal highEndKeywords = {\"Extreme\", \"Minstrel\", \"Savage\", \"Unreal\", \"Chaotic\", \"Ultimate\"}\n\nfor _, keyword in ipairs(highEndKeywords) do\n    if dutyInfo.name:find(keyword) then\n        return true\n    end\nend\n\nreturn false",
						dequeueIfLuaFalse = true,
						name = "In Highend Duty",
						uuid = "8ff7a7d1-a237-0a97-bfce-ee126ec199bb",
						version = 3,
					},
					inheritedIndex = 1,
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return eventArgs.friendly",
						dequeueIfLuaFalse = true,
						name = "Friendly AoE",
						uuid = "d4810160-6d62-2454-aa85-3e4ef1569106",
						version = 3,
					},
				},
			},
			eventType = 18,
			name = "Lj: World | AoE Countdown",
			uuid = "19b188aa-b0b4-4f2f-a90e-86a5a6a8738d",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "local targetID = eventArgs.primaryEntityID\nlocal entity = TensorCore.mGetEntity(targetID)\nlocal player = TensorCore.mGetPlayer()\nlocal delayMs = 10000\nlocal heading = (TensorCore.getHeadingToTarget(player.pos, entity.pos) + math.pi)\n\ndata.ljActiveGazes = data.ljActiveGazes or {}\n\nif entity.castinginfo then\n    local maxTime = entity.castinginfo.casttime or 10\n    local elapsedTime = entity.castinginfo.channeltime or 0\n    delayMs = ((maxTime - elapsedTime) * 1000) + 250 \nend\n\ndata.ljActiveGazes[targetID] = Now() + delayMs\nd(\"Gaze Tracker: Added entity \" .. tostring(entity.name) .. \" | Active Gazes: \" .. tostring(table.size(data.ljActiveGazes)))\nd(\"Start LockFace\")\n\nTensorCore.API.TensorACR.setLockFaceHeading(heading)\nTensorCore.API.TensorACR.toggleLockFace(true)\n\nself.used = true",
						conditions = 
						{
							
							{
								"10c14f8e-6820-cbbb-a0f6-efdc3ec9237b",
								false,
							},
							
							{
								"c5886579-38cb-7ba9-9684-67a22930846b",
								true,
							},
						},
						gVar = "ACR_RikuWAR3_CD",
						uuid = "6beb0923-b879-03d5-9b24-5cfee10f2e67",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local dutyInfo = Duty:GetActiveDutyInfo()\nif not dutyInfo then return false end\n\nlocal highEndKeywords = {\"Extreme\", \"Minstrel\", \"Savage\", \"Unreal\", \"Chaotic\", \"Ultimate\"}\n\nfor _, keyword in ipairs(highEndKeywords) do\n    if dutyInfo.name:find(keyword) then\n        return true\n    end\nend\n\nreturn false",
						dequeueIfLuaFalse = true,
						name = "In Highend Duty",
						uuid = "10c14f8e-6820-cbbb-a0f6-efdc3ec9237b",
						version = 3,
					},
					inheritedIndex = 1,
				},
				
				{
					data = 
					{
						category = "Event",
						comparator = 3,
						dequeueIfLuaFalse = true,
						eventIntValue = 218,
						uuid = "c5886579-38cb-7ba9-9684-67a22930846b",
						version = 3,
					},
				},
			},
			eventType = 27,
			name = "Lj: World | Avoid Gaze",
			uuid = "9b395348-13a3-ecea-9141-d712cb2a9b74",
			version = 2,
		},
		inheritedIndex = 24,
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "local currentTime = Now()\n\nfor entID, unlockTime in pairs(data.ljActiveGazes) do\n    if currentTime > unlockTime then\n        data.ljActiveGazes[entID] = nil\n        d(\"Gaze Tracker: Gaze \" .. tostring(entID) .. \" resolved.\")\n    end\nend\n\nif table.size(data.ljActiveGazes) == 0 then\n    TensorCore.API.TensorACR.toggleLockFace(false)\n    d(\"Gaze Tracker: All gazes finished. End LockFace.\")\n    \n    data.ljActiveGazes = nil\nend\n\nself.eventConditionMismatch = true\nself.used = true\n",
						conditions = 
						{
							
							{
								"7484c6ae-8ef0-a59b-a76b-8e96b0d169f1",
								false,
							},
							
							{
								"efc279c1-1b95-9478-a1e5-e1415c44f8eb",
								true,
							},
						},
						gVar = "ACR_TensorMagnum3_CD",
						uuid = "7e06448e-14c1-e612-8e2f-cae3ce2edf8c",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local dutyInfo = Duty:GetActiveDutyInfo()\nif not dutyInfo then return false end\n\nlocal highEndKeywords = {\"Extreme\", \"Minstrel\", \"Savage\", \"Unreal\", \"Chaotic\", \"Ultimate\"}\n\nfor _, keyword in ipairs(highEndKeywords) do\n    if dutyInfo.name:find(keyword) then\n        return true\n    end\nend\n\nreturn false",
						dequeueIfLuaFalse = true,
						name = "In Highend Duty",
						uuid = "7484c6ae-8ef0-a59b-a76b-8e96b0d169f1",
						version = 3,
					},
					inheritedIndex = 1,
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return data.ljActiveGazes ~= nil and table.size(data.ljActiveGazes) > 0",
						dequeueIfLuaFalse = true,
						name = "Gaze Var",
						uuid = "efc279c1-1b95-9478-a1e5-e1415c44f8eb",
						version = 3,
					},
				},
			},
			name = "Lj: World | Avoid Gaze End",
			uuid = "1826f265-ba7b-e515-81fb-0acf19f30ca5",
			version = 2,
		},
		inheritedIndex = 25,
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						actionID = 46942,
						conditions = 
						{
							
							{
								"6d128ba5-8eb6-e96d-9def-0f35077277f0",
								true,
							},
							
							{
								"6625b085-e682-6937-b10f-d88d17f25b9d",
								true,
							},
							
							{
								"fa526f25-1c52-19a8-84ec-e072956139e0",
								true,
							},
							
							{
								"076677ea-360d-d868-8867-8d43ca710c70",
								true,
							},
						},
						gVar = "ACR_RikuWAR3_CD",
						targetSubType = "Highest HP",
						targetType = "Enemy",
						uuid = "13d5015a-74a1-90ac-90d0-001308bb78a6",
						version = 2.1,
					},
				},
				
				{
					data = 
					{
						actionID = 46940,
						conditions = 
						{
							
							{
								"6d128ba5-8eb6-e96d-9def-0f35077277f0",
								true,
							},
							
							{
								"6625b085-e682-6937-b10f-d88d17f25b9d",
								true,
							},
							
							{
								"fa526f25-1c52-19a8-84ec-e072956139e0",
								true,
							},
							
							{
								"5af485de-a28e-83f8-a13a-60a61b9cf488",
								true,
							},
							
							{
								"0fea527c-2162-7129-a55c-e74b263adfd3",
								true,
							},
						},
						gVar = "ACR_RikuWAR3_CD",
						targetType = "Current Target",
						uuid = "8ceca89c-777d-f9e5-b5d5-12d92885e403",
						version = 2.1,
					},
				},
				
				{
					data = 
					{
						actionID = 46941,
						conditions = 
						{
							
							{
								"6d128ba5-8eb6-e96d-9def-0f35077277f0",
								true,
							},
							
							{
								"6625b085-e682-6937-b10f-d88d17f25b9d",
								true,
							},
							
							{
								"fa526f25-1c52-19a8-84ec-e072956139e0",
								true,
							},
							
							{
								"fa3513f2-6b12-fedf-a6cd-a01adebf3a62",
								true,
							},
						},
						gVar = "ACR_TensorViper3_CD",
						uuid = "72760658-6612-71ca-a212-bd9313ea0228",
						version = 2.1,
					},
				},
				
				{
					data = 
					{
						actionID = 46939,
						conditions = 
						{
							
							{
								"6d128ba5-8eb6-e96d-9def-0f35077277f0",
								true,
							},
							
							{
								"6625b085-e682-6937-b10f-d88d17f25b9d",
								true,
							},
							
							{
								"fa526f25-1c52-19a8-84ec-e072956139e0",
								true,
							},
							
							{
								"2efcabe6-3aa1-5501-b514-b7aad2eab0a6",
								false,
							},
							
							{
								"66951871-1975-4cfa-b9f9-52395b208ff7",
								true,
							},
						},
						gVar = "ACR_RikuWAR3_CD",
						ignoreWeaveRules = true,
						targetType = "Detection Target",
						uuid = "4aa28261-1da9-833f-a91d-6da7d8ba2b53",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Self",
						conditionType = 12,
						dequeueIfLuaFalse = true,
						localMapIDList = 
						{
							1315,
							1316,
						},
						localmapid = 1315,
						name = "Merchant's Tale",
						uuid = "6d128ba5-8eb6-e96d-9def-0f35077277f0",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return FFXIV_Common_BotRunning",
						name = "Assist Enabled",
						uuid = "6625b085-e682-6937-b10f-d88d17f25b9d",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 7,
						uuid = "fa526f25-1c52-19a8-84ec-e072956139e0",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return TensorCore.API.RikuRDM3.inMeleeCombo(false)",
						name = "Self In RDM Combo",
						uuid = "2efcabe6-3aa1-5501-b514-b7aad2eab0a6",
						version = 3,
					},
				},
				
				{
					data = 
					{
						actionID = 46942,
						category = "Self",
						comparator = 2,
						conditionType = 4,
						name = "CD - Variant Eagle Eye",
						uuid = "076677ea-360d-d868-8867-8d43ca710c70",
						version = 3,
					},
				},
				
				{
					data = 
					{
						actionID = 46940,
						category = "Self",
						comparator = 2,
						conditionType = 4,
						name = "CD - Variant Spirit Dart",
						uuid = "5af485de-a28e-83f8-a13a-60a61b9cf488",
						version = 3,
					},
				},
				
				{
					data = 
					{
						actionID = 46941,
						category = "Self",
						comparator = 2,
						conditionType = 4,
						name = "CD - Variant Rampart",
						uuid = "fa3513f2-6b12-fedf-a6cd-a01adebf3a62",
						version = 3,
					},
				},
				
				{
					data = 
					{
						buffCheckType = 2,
						buffDuration = 2,
						buffID = 3359,
						comparator = 2,
						name = "Target Missing Spirit Dart",
						uuid = "bf5d208e-07e1-6479-9453-2fbd1eee2f89",
						version = 3,
					},
				},
				
				{
					data = 
					{
						buffCheckType = 3,
						buffDuration = 2,
						buffID = 3359,
						comparator = 2,
						name = "Target Expiring Spirit Dart",
						uuid = "77b3aad9-f944-551e-a3fb-316f5f83350e",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Party",
						comparator = 2,
						conditionType = 2,
						hpType = 2,
						hpValue = 55,
						name = "DT - HP <= 55% HP",
						partyTargetType = "Detection Target",
						uuid = "4ab9f8d7-de93-0699-88f7-38cf9ef572a5",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Party",
						comparator = 2,
						conditionType = 4,
						inRangeValue = 29,
						name = "DT - Range <= 29y",
						partyTargetType = "Detection Target",
						uuid = "bc7c07dd-f552-d5ef-b03e-77a667c72fe3",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Filter",
						conditions = 
						{
							
							{
								"bf5d208e-07e1-6479-9453-2fbd1eee2f89",
								true,
							},
							
							{
								"77b3aad9-f944-551e-a3fb-316f5f83350e",
								true,
							},
						},
						matchAnyBuff = true,
						name = "F - Spirit Dart",
						partyTargetNumber = 0,
						uuid = "0fea527c-2162-7129-a55c-e74b263adfd3",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Filter",
						conditions = 
						{
							
							{
								"4ab9f8d7-de93-0699-88f7-38cf9ef572a5",
								true,
							},
							
							{
								"bc7c07dd-f552-d5ef-b03e-77a667c72fe3",
								true,
							},
						},
						filterTargetSubtype = "Lowest HP",
						filterTargetType = "Party",
						name = "F - Cure Target",
						uuid = "66951871-1975-4cfa-b9f9-52395b208ff7",
						version = 3,
					},
				},
			},
			name = "Lj: Variant | Merchant's Tale",
			uuid = "3c0d1ba7-f030-135c-bca1-33f5d01cb92a",
			version = 2,
		},
		inheritedIndex = 15,
	}, 
	inheritedProfiles = 
	{
	},
}



return tbl
