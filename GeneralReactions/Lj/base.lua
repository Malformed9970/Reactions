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
						actionLua = "--[[\n-- ==========================================\n-- ENTITY ROLE HELPERS\n-- ==========================================\n\n-- Returns current player role string (e.g., \"MT\")\n-- function GetCurrentRole() end\n\n-- Returns the actual Entity Object table for the assigned player\n-- @param roleStr string: \"MT\", \"OT\", \"H1\", \"H2\", \"M1\", \"M2\", \"R1\", \"R2\"\n-- function GetRole(roleStr) end\n\n-- Returns 1 for Light Party 1 (MT, H1, M1, R1) or 2 for Light Party 2 (OT, H2, M2, R2)\n-- @param roleStr string (optional): Defaults to GetCurrentRole() if omitted.\n-- function GetLightParty(roleStr) end\n]]--",
						gVar = "ACR_RikuWAR3_CD",
						name = "Function Docs",
						uuid = "802cf8b4-f18e-3ddb-906a-a7e3c11c2e36",
						version = 2.1,
					},
					inheritedIndex = 1,
				},
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "if not gLj_Toolbox then \n    gLj_Toolbox = {} \nend\n\nif not gLj_Toolbox.Settings then\n    gLj_Toolbox.Settings = {\n        roleOptions = {\n            tank = { \"MT\", \"OT\" },\n            healer = { \"H1\", \"H2\" },\n            dps = { \"M1\", \"M2\", \"R1\", \"R2\" }\n        },\n        selectedRole = 1,\n        partyRoles = {},\n        savedProfiles = {}, \n        selectedAssignPlayer = nil,\n        showEffectTester = false,\n        showPartyAssigner = false,\n        showRaidOptions = false,\n        searchFilter = \"\",\n        selectedIndex = -1\n    }\nend\n\nif not gLj_Toolbox.State then\n    gLj_Toolbox.State = {\n        lastJob = 0,\n        cachedRoleOptions = nil,\n        cachedRoleType = nil,\n        lastRoleType = nil,\n        mapEffectsCache = {},\n        localRoleSynced = false,\n        hasLoadedProfiles = false\n    }\nend\n\ngLj_Toolbox.Constants = {\n    ROLE_COLORS = {\n        tank = { 0.2, 0.4, 0.8, 1.0 },\n        healer = { 0.2, 0.5, 0.2, 1.0 },\n        dps = { 0.7, 0.2, 0.2, 1.0 }\n    },\n    GUI_FLAGS = GUI.WindowFlags_AlwaysAutoResize + GUI.WindowFlags_NoTitleBar + GUI.WindowFlags_NoCollapse,\n    BTN_WIDTH = 95,\n    BTN_HEIGHT = 20,\n    ROLE_BTN_WIDTH = 155,\n    ROLE_BTN_HEIGHT = 18,\n    ROLE_BUTTON_ID = \"##RoleButton\",\n    \n    jobPriority = {\n        [21] = 1,  [19] = 2,  [32] = 3,  [37] = 4,  -- Tanks\n        [24] = 5,  [28] = 6,  [33] = 7,  [40] = 8,  -- Healers\n        [20] = 9,  [22] = 10, [30] = 11, [34] = 12, [39] = 13, [41] = 14, -- Melee\n        [23] = 15, [31] = 16, [38] = 17, -- Ranged\n        [25] = 18, [27] = 19, [35] = 20, [42] = 21  -- Casters\n    },\n    jobNames = {\n        [19]=\"PLD\", [21]=\"WAR\", [32]=\"DRK\", [37]=\"GNB\",\n        [24]=\"WHM\", [28]=\"SCH\", [33]=\"AST\", [40]=\"SGE\",\n        [20]=\"MNK\", [22]=\"DRG\", [30]=\"NIN\", [34]=\"SAM\", [39]=\"RPR\", [41]=\"VPR\",\n        [23]=\"BRD\", [31]=\"MCH\", [38]=\"DNC\",\n        [25]=\"BLM\", [27]=\"SMN\", [35]=\"RDM\", [42]=\"PCT\"\n    },\n    allRoles = {\"MT\", \"OT\", \"H1\", \"H2\", \"M1\", \"M2\", \"R1\", \"R2\"}\n}\n\ngLj_Toolbox.Paths = {\n    Folder = GetLuaModsPath() .. [[ffxivminion\\LjToolbox\\]],\n    File = GetLuaModsPath() .. [[ffxivminion\\LjToolbox\\SavedRoles.lua]]\n}\n\nif not gLj_Toolbox.Status then\n    local currentPID = GetCurrentPID()\n    local handle = io.popen(string.format('tasklist /M /FI \"PID eq %d\" /FO CSV', currentPID))\n    local hasDalamud = false\n    if handle then\n        local result = handle:read(\"*a\")\n        handle:close()\n        hasDalamud = result:match(\"Dalamud%.dll\") ~= nil\n    end\n    gLj_Toolbox.Status = { dalamud = hasDalamud, optifine = Optifine ~= nil }\nend\n\nif not gLj_PartyRoles then gLj_PartyRoles = {} end\nfor _, r in ipairs(gLj_Toolbox.Constants.allRoles) do\n    if not gLj_PartyRoles[r] then gLj_PartyRoles[r] = 0 end\n    if not _G[\"gLj_Role_\" .. r] then _G[\"gLj_Role_\" .. r] = 0 end\nend\n\ngLj_Toolbox.LoadProfiles = function()\n    if FileExists(gLj_Toolbox.Paths.File) then\n        gLj_Toolbox.Settings.savedProfiles = FileLoad(gLj_Toolbox.Paths.File) or {}\n    end\nend\n\nif not gLj_Toolbox.State.hasLoadedProfiles then\n    gLj_Toolbox.LoadProfiles()\n    gLj_Toolbox.State.hasLoadedProfiles = true\nend\n\ngLj_Toolbox.SaveProfile = function(name, job, role)\n    if not FolderExists(gLj_Toolbox.Paths.Folder) then FolderCreate(gLj_Toolbox.Paths.Folder) end\n    if name and job and role then\n        gLj_Toolbox.Settings.savedProfiles[name] = { job = job, role = role }\n        d(\"[LjToolbox] Saved preference for \" .. name .. \" as \" .. role)\n    elseif name then\n        gLj_Toolbox.Settings.savedProfiles[name] = nil\n        d(\"[LjToolbox] Cleared preference for \" .. name)\n    end\n    FileSave(gLj_Toolbox.Paths.File, gLj_Toolbox.Settings.savedProfiles)\nend\n\ngLj_Toolbox.DrawStatus = function(label, isActive)\n    GUI:Text(label .. \":\")\n    GUI:SameLine()\n    GUI:TextColored(isActive and 0 or 1, isActive and 1 or 0, 0, 1, isActive and \"YES\" or \"NO\")\nend\n\ngLj_Toolbox.GetRoleOptionsForJob = function(job)\n    if job == 19 or job == 21 or job == 32 or job == 37 then return gLj_Toolbox.Settings.roleOptions.tank, \"tank\"\n    elseif job == 24 or job == 28 or job == 33 or job == 40 then return gLj_Toolbox.Settings.roleOptions.healer, \"healer\"\n    else return gLj_Toolbox.Settings.roleOptions.dps, \"dps\" end\nend\n\ngLj_Toolbox.GetDefaultRoleIndexForJob = function(job)\n    if job == 28 or job == 40 then return 2 end \n    if job == 23 or job == 31 or job == 38 then return 3 end \n    if job == 25 or job == 27 or job == 35 or job == 42 then return 4 end \n    return 1 \nend\n\ngLj_Toolbox.GetRoleOptions = function()\n    return gLj_Toolbox.GetRoleOptionsForJob(TensorCore.mGetPlayer().job)\nend\n\ngLj_Toolbox.UpdateRoleOptions = function()\n    local p = TensorCore.mGetPlayer()\n    local state = gLj_Toolbox.State\n    \n    if p.job ~= state.lastJob then\n        state.lastJob = p.job\n        state.cachedRoleOptions, state.cachedRoleType = gLj_Toolbox.GetRoleOptions()\n        \n        local saved = gLj_Toolbox.Settings.savedProfiles[p.name]\n        local targetIdx = nil\n        \n        if saved and saved.job == p.job then\n            for i, r in ipairs(state.cachedRoleOptions) do\n                if r == saved.role then targetIdx = i break end\n            end\n        end\n        \n        targetIdx = targetIdx or gLj_Toolbox.GetDefaultRoleIndexForJob(p.job)\n        gLj_Toolbox.Settings.selectedRole = targetIdx\n        \n        local newRoleStr = state.cachedRoleOptions[targetIdx]\n        \n        for n, r in pairs(gLj_Toolbox.Settings.partyRoles) do\n            if n == p.name or r == newRoleStr then \n                gLj_Toolbox.Settings.partyRoles[n] = nil \n            end\n        end\n        gLj_Toolbox.Settings.partyRoles[p.name] = newRoleStr\n    end\n    return state.cachedRoleOptions, state.cachedRoleType\nend\n\ngLj_Toolbox.GetRoleColor = function(roleStr)\n    if roleStr == \"MT\" or roleStr == \"OT\" then return gLj_Toolbox.Constants.ROLE_COLORS.tank end\n    if roleStr == \"H1\" or roleStr == \"H2\" then return gLj_Toolbox.Constants.ROLE_COLORS.healer end\n    return gLj_Toolbox.Constants.ROLE_COLORS.dps\nend\n\n-- ==========================================\n-- RAID COMPOSITION GLOBALS\n-- ==========================================\nif not GetRole then\n    function GetRole(roleStr)\n        local entID = gLj_PartyRoles[roleStr]\n        if entID and entID > 0 then\n            return TensorCore.mGetEntity(entID)\n        end\n        return nil\n    end\nend\n\nif not GetLightParty then\n    function GetLightParty(roleStr)\n        local targetRole = roleStr or (GetCurrentRole and GetCurrentRole())\n        if targetRole == \"MT\" or targetRole == \"H1\" or targetRole == \"M1\" or targetRole == \"R1\" then return 1 end\n        if targetRole == \"OT\" or targetRole == \"H2\" or targetRole == \"M2\" or targetRole == \"R2\" then return 2 end\n        return 0\n    end\nend\n\n-- ==========================================\n-- MAP EFFECTS\n-- ==========================================\ngLj_Toolbox.RefreshMapEffects = function()\n    local cache = {}\n    local typeNames = { [2] = \"Model\", [4] = \"VFX\", [6] = \"Script\", [7] = \"Sound\" }\n    \n    if Argus and Argus.getNumCurrentMapEffects then\n        for i = 0, Argus.getNumCurrentMapEffects() - 1 do\n            local res = Argus.getMapEffectResource(i)\n            if res then\n                local resId, resPath, resType, isActive = Argus.getEffectResourceInfo(res)\n                local typeStr = typeNames[resType] or tostring(resType)\n                local validScriptCount = 0\n                if resType == 6 then\n                    for si = 0, (Argus.getNumEffectResourceScripts(res) or 0) - 1 do\n                        local sName = Argus.getEffectResourceScriptInfo(res, si)\n                        if sName and sName ~= \"\" then validScriptCount = validScriptCount + 1 end\n                    end\n                end\n                local displayLabel = string.format(\"[%d] id=%d type=%s active=%s scripts=%d | %s\",\n                    i, resId or 0, typeStr, tostring(isActive), validScriptCount, tostring(resPath))\n                table.insert(cache, { index = i, label = displayLabel, searchString = string.lower(displayLabel), isActive = isActive })\n            end\n        end\n    end\n    gLj_Toolbox.State.mapEffectsCache = cache\nend\n\nif not GetCurrentRole then\n    function GetCurrentRole()\n        local roleOptions = gLj_Toolbox.GetRoleOptions()\n        return roleOptions[gLj_Toolbox.Settings.selectedRole]\n    end\nend\n\ngLj_Toolbox.Buttons = {\n    { \"Reactions\", function() if AnyoneCore then AnyoneCore.openTensorReactions() end end },\n    { \"Dev Monitor\", function() if AnyoneCore then AnyoneCore.Settings.DevMonitor = not AnyoneCore.Settings.DevMonitor end end },\n    { \"ACR Options\", ACR.OpenProfileOptions },\n    { \"Effects Debug\", function() gLj_Toolbox.Settings.showEffectTester = not gLj_Toolbox.Settings.showEffectTester end }\n}\n\nself.used = true",
						conditions = 
						{
							
							{
								"ee7fc361-03c9-8c30-8d87-46747c9a820e",
								false,
							},
						},
						gVar = "ACR_RikuWAR3_CD",
						name = "Initialize",
						uuid = "ddefbec5-e0e4-a9e8-bf68-e0b3134c4f4f",
						version = 2.1,
					},
				},
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "if not gLj_Toolbox or not gLj_Toolbox.Constants then return end\n\nlocal localPlayer = TensorCore.mGetPlayer()\n\n-- 1. AGGRESSIVE JOB-CHANGE & SYNC TRACKER\nif not gLj_Toolbox.State.trackedJob then\n    gLj_Toolbox.State.trackedJob = localPlayer.job\nend\n\nif not gLj_Toolbox.State.localRoleSynced then\n    local pOpts = gLj_Toolbox.GetRoleOptionsForJob(localPlayer.job)\n    local saved = gLj_Toolbox.Settings.savedProfiles[localPlayer.name]\n    local targetIdx = nil\n    \n    if saved and saved.job == localPlayer.job then\n        for i, r in ipairs(pOpts) do\n            if r == saved.role then\n                targetIdx = i\n                break\n            end\n        end\n    end\n    \n    gLj_Toolbox.Settings.selectedRole = targetIdx or gLj_Toolbox.GetDefaultRoleIndexForJob(localPlayer.job)\n    gLj_Toolbox.Settings.partyRoles[localPlayer.name] = pOpts[gLj_Toolbox.Settings.selectedRole]\n    gLj_Toolbox.State.localRoleSynced = true\nend\n\nif gLj_Toolbox.State.trackedJob ~= localPlayer.job then\n    gLj_Toolbox.State.trackedJob = localPlayer.job\n    local pOpts = gLj_Toolbox.GetRoleOptionsForJob(localPlayer.job)\n\n    local saved = gLj_Toolbox.Settings.savedProfiles[localPlayer.name]\n    local targetIdx = nil\n\n    if saved and saved.job == localPlayer.job then\n        for i, r in ipairs(pOpts) do\n            if r == saved.role then\n                targetIdx = i\n                break\n            end\n        end\n    end\n\n    targetIdx = targetIdx or gLj_Toolbox.GetDefaultRoleIndexForJob(localPlayer.job)\n    gLj_Toolbox.Settings.selectedRole = targetIdx\n\n    local newRoleStr = pOpts[targetIdx]\n\n    for n, r in pairs(gLj_Toolbox.Settings.partyRoles) do\n        if n == localPlayer.name or r == newRoleStr then\n            gLj_Toolbox.Settings.partyRoles[n] = nil\n        end\n    end\n    gLj_Toolbox.Settings.partyRoles[localPlayer.name] = newRoleStr\nend\n\n-- 2. MAIN GUI DRAWING\nGUI:Begin(\"Toolbox###gLj_Toolbox\", true, gLj_Toolbox.Constants.GUI_FLAGS)\n\nif AnyoneCore then\n    AnyoneCore.Settings.DutyHelper.enabled = GUI:Checkbox(\"DutyHelper\", AnyoneCore.Settings.DutyHelper.enabled)\n    GUI:SameLine()\nend\ngStartCombat = GUI:Checkbox(\"Combat\", gStartCombat)\n\nfor i, btn in ipairs(gLj_Toolbox.Buttons) do\n    if GUI:Button(btn[1], gLj_Toolbox.Constants.BTN_WIDTH, gLj_Toolbox.Constants.BTN_HEIGHT) then btn[2]() end\n    if i % 2 ~= 0 then GUI:SameLine() end\nend\n\nif gLj_Toolbox.RaidOptions == true then\n    if GUI:Button(\"Raid Options\", -1, gLj_Toolbox.Constants.ROLE_BTN_HEIGHT or 20) then\n        gLj_Toolbox.Settings.showRaidOptions = not gLj_Toolbox.Settings.showRaidOptions\n    end\nend\n\nGUI:Separator()\nGUI:Text(\"Role: \")\nGUI:SameLine()\n\nlocal roleOptions, roleType = gLj_Toolbox.UpdateRoleOptions()\nlocal currentRole = roleOptions[gLj_Toolbox.Settings.selectedRole]\nlocal color = gLj_Toolbox.Constants.ROLE_COLORS[roleType]\n\nGUI:PushStyleVar(GUI.StyleVar_FramePadding, 4, 2)\nif color then GUI:PushStyleColor(GUI.Col_Button, color[1], color[2], color[3], color[4]) end\nlocal clicked = GUI:Button(currentRole .. gLj_Toolbox.Constants.ROLE_BUTTON_ID, gLj_Toolbox.Constants.ROLE_BTN_WIDTH,\n    gLj_Toolbox.Constants.ROLE_BTN_HEIGHT)\nlocal rightClicked = GUI:IsItemHovered() and GUI:IsMouseClicked(1)\nif color then GUI:PopStyleColor() end\nGUI:PopStyleVar()\n\nlocal ROLE_POPUP_ID = \"RoleSelectPopup\"\nif clicked then GUI:OpenPopup(ROLE_POPUP_ID) end\nif rightClicked then gLj_Toolbox.Settings.showPartyAssigner = not gLj_Toolbox.Settings.showPartyAssigner end\n\nif GUI:BeginPopup(ROLE_POPUP_ID) then\n    for i, role in ipairs(roleOptions) do\n        if GUI:MenuItem(role) then\n            gLj_Toolbox.Settings.selectedRole = i\n            \n            if localPlayer and localPlayer.name then\n                -- 1. Clear any existing slot the local player was in\n                for n, r in pairs(gLj_Toolbox.Settings.partyRoles) do\n                    if n == localPlayer.name then\n                        gLj_Toolbox.Settings.partyRoles[n] = nil\n                    end\n                end\n                \n                -- 2. If someone else is sitting in our new slot, unassign them\n                for name, r in pairs(gLj_Toolbox.Settings.partyRoles) do\n                    if r == role then\n                        gLj_Toolbox.Settings.partyRoles[name] = \"None\"\n                        \n                        local pJob = nil\n                        if gLj_Toolbox.Cache and gLj_Toolbox.Cache.sortedParty then\n                            for _, e in ipairs(gLj_Toolbox.Cache.sortedParty) do \n                                if e.name == name then pJob = e.job break end \n                            end\n                        end\n                        if pJob then gLj_Toolbox.SaveProfile(name, pJob, \"None\") end\n                    end\n                end\n                \n                -- 3. Lock the local player into the new role\n                gLj_Toolbox.Settings.partyRoles[localPlayer.name] = role\n                gLj_Toolbox.SaveProfile(localPlayer.name, localPlayer.job, role)\n                \n                -- 4. Instantly push the update to the Global GetRole() trackers\n                local eID = localPlayer.id\n                \n                -- Wipe our ID from any old global role slots\n                for _, r in ipairs(gLj_Toolbox.Constants.allRoles) do\n                    if gLj_PartyRoles[r] == eID then\n                        gLj_PartyRoles[r] = 0\n                        if _G[\"gLj_Role_\" .. r] then _G[\"gLj_Role_\" .. r] = 0 end\n                    end\n                end\n                \n                -- Inject our ID into the new global role slot instantly\n                gLj_PartyRoles[role] = eID\n                if _G[\"gLj_Role_\" .. role] then _G[\"gLj_Role_\" .. role] = eID end\n            end\n        end\n    end\n    GUI:EndPopup()\nend\n\nGUI:Separator()\ngLj_Toolbox.DrawStatus(\"Optifine\", gLj_Toolbox.Status.optifine)\nGUI:SameLine()\nGUI:Dummy(1, 0)\nGUI:SameLine()\ngLj_Toolbox.DrawStatus(\"Dalamud\", gLj_Toolbox.Status.dalamud)\n\nGUI:End()\n\nself.used = true",
						conditions = 
						{
							
							{
								"ee7fc361-03c9-8c30-8d87-46747c9a820e",
								true,
							},
						},
						gVar = "ACR_RikuWAR3_CD",
						name = "Draw Toolbox",
						uuid = "58b067df-2d37-8434-bd02-e98d3b3e7449",
						version = 2.1,
					},
				},
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "if not gLj_Toolbox.Cache then\n    gLj_Toolbox.Cache = {\n        sortedParty = {},\n        nameToId = {},\n        currentMemberNames = {},\n        globalStrings = {}\n    }\n    for _, r in ipairs(gLj_Toolbox.Constants.allRoles) do\n        gLj_Toolbox.Cache.globalStrings[r] = \"gLj_Role_\" .. r\n    end\nend\n\nif not gLj_Toolbox.State.lastTick then gLj_Toolbox.State.lastTick = 0 end\nlocal cache = gLj_Toolbox.Cache\n\nif Now() - gLj_Toolbox.State.lastTick > 500 then\n    gLj_Toolbox.State.lastTick = Now()\n\n    for k in pairs(cache.sortedParty) do cache.sortedParty[k] = nil end\n    for k in pairs(cache.nameToId) do cache.nameToId[k] = nil end\n    for k in pairs(cache.currentMemberNames) do cache.currentMemberNames[k] = nil end\n\n    local localPlayer = TensorCore.mGetPlayer()\n    local foundLocal = false\n    local cwCount = 0\n    local myPartyCount = 0\n\n    if EntityList.crossworldparty then\n        for _ in pairs(EntityList.crossworldparty) do cwCount = cwCount + 1 end\n    end\n    \n    local myParty = TensorCore.entityList(\"myparty\")\n    if myParty then\n        for _ in pairs(myParty) do myPartyCount = myPartyCount + 1 end\n    end\n\n    -- 1. CROSS-WORLD TIER\n    if cwCount > 1 then\n        for _, cw in pairs(EntityList.crossworldparty) do\n            local ent = TensorCore.mGetEntity(cw.id) or { type = 1, id = cw.id, name = cw.name, job = cw.job }\n            table.insert(cache.sortedParty, ent)\n            cache.nameToId[ent.name] = ent.id\n            cache.currentMemberNames[ent.name] = true\n            if localPlayer and ent.id == localPlayer.id then foundLocal = true end\n        end\n    -- 2. LOCAL PARTY TIER\n    elseif myPartyCount > 1 then\n        for _, p in pairs(myParty) do\n            local ent = TensorCore.mGetEntity(p.id) or { type = 1, id = p.id, name = p.name, job = p.job }\n            table.insert(cache.sortedParty, ent)\n            cache.nameToId[ent.name] = ent.id\n            cache.currentMemberNames[ent.name] = true\n            if localPlayer and ent.id == localPlayer.id then foundLocal = true end\n        end\n    -- 3. DUTY RECORDER\n    else\n        local fallbackParty = TensorCore.entityList(\"type=1\")\n        if fallbackParty then\n            local count = 0\n            for _, p in pairs(fallbackParty) do\n                if count < 8 then\n                    local ent = TensorCore.mGetEntity(p.id) or { type = 1, id = p.id, name = p.name, job = p.job }\n                    table.insert(cache.sortedParty, ent)\n                    cache.nameToId[ent.name] = ent.id\n                    cache.currentMemberNames[ent.name] = true\n                    if localPlayer and ent.id == localPlayer.id then foundLocal = true end\n                    count = count + 1\n                end\n            end\n        end\n    end\n\n    if not foundLocal and localPlayer and localPlayer.name then\n        table.insert(cache.sortedParty, localPlayer)\n        cache.nameToId[localPlayer.name] = localPlayer.id\n        cache.currentMemberNames[localPlayer.name] = true\n    end\n\n    for name, _ in pairs(gLj_Toolbox.Settings.partyRoles) do\n        if not cache.currentMemberNames[name] then gLj_Toolbox.Settings.partyRoles[name] = nil end\n    end\n\n    table.sort(cache.sortedParty, function(a, b)\n        local prioA = gLj_Toolbox.Constants.jobPriority[a.job] or 99\n        local prioB = gLj_Toolbox.Constants.jobPriority[b.job] or 99\n        if prioA == prioB then return a.name < b.name end\n        return prioA < prioB\n    end)\n\n    for _, ent in ipairs(cache.sortedParty) do\n        local currentRole = gLj_Toolbox.Settings.partyRoles[ent.name]\n\n        if currentRole and currentRole ~= \"None\" then\n            local rOpts = gLj_Toolbox.GetRoleOptionsForJob(ent.job)\n            local isValid = false\n            if rOpts then\n                for _, vr in ipairs(rOpts) do\n                    if vr == currentRole then\n                        isValid = true\n                        break\n                    end\n                end\n            end\n            if not isValid then\n                gLj_Toolbox.Settings.partyRoles[ent.name] = nil\n                gLj_Toolbox.Settings.savedProfiles[ent.name] = nil\n                currentRole = nil\n            end\n        end\n\n        if not currentRole then\n            local rOpts = gLj_Toolbox.GetRoleOptionsForJob(ent.job)\n            if rOpts then\n                local targetRoleStr = nil\n                local saved = gLj_Toolbox.Settings.savedProfiles[ent.name]\n\n                if saved and saved.job == ent.job then\n                    if saved.role == \"None\" then\n                        targetRoleStr = \"None\"\n                    else\n                        for _, vr in ipairs(rOpts) do\n                            if vr == saved.role then\n                                targetRoleStr = saved.role\n                                break\n                            end\n                        end\n                    end\n                end\n\n                if not targetRoleStr then targetRoleStr = rOpts[gLj_Toolbox.GetDefaultRoleIndexForJob(ent.job)] end\n\n                if targetRoleStr == \"None\" then\n                    gLj_Toolbox.Settings.partyRoles[ent.name] = \"None\"\n                else\n                    local isOccupied = false\n                    for _, r in pairs(gLj_Toolbox.Settings.partyRoles) do\n                        if r == targetRoleStr then\n                            isOccupied = true\n                            break\n                        end\n                    end\n\n                    if not isOccupied then\n                        gLj_Toolbox.Settings.partyRoles[ent.name] = targetRoleStr\n                    else\n                        for _, fallbackRole in ipairs(rOpts) do\n                            local fbOccupied = false\n                            for _, r in pairs(gLj_Toolbox.Settings.partyRoles) do\n                                if r == fallbackRole then\n                                    fbOccupied = true\n                                    break\n                                end\n                            end\n                            if not fbOccupied then\n                                gLj_Toolbox.Settings.partyRoles[ent.name] = fallbackRole\n                                break\n                            end\n                        end\n                    end\n                end\n            end\n        end\n    end\n\n    for _, r in ipairs(gLj_Toolbox.Constants.allRoles) do\n        gLj_PartyRoles[r] = 0\n        _G[cache.globalStrings[r]] = 0\n    end\n    for n, r in pairs(gLj_Toolbox.Settings.partyRoles) do\n        if r ~= \"None\" then\n            local eID = cache.nameToId[n]\n            if eID then\n                gLj_PartyRoles[r] = eID\n                if cache.globalStrings[r] then\n                    _G[cache.globalStrings[r]] = eID\n                end\n            end\n        end\n    end\nend\n\nGUI:SetNextWindowSize(480, 420, GUI.SetCond_FirstUseEver)\nlocal visible, open = GUI:Begin(\"Party Role Assigner###gLj_PartyAssigner\", gLj_Toolbox.Settings.showPartyAssigner)\n\nif not open then\n    gLj_Toolbox.Settings.showPartyAssigner = false\nend\n\nif visible then\n    local localPlayer = TensorCore.mGetPlayer()\n    local validRolesForSelected = nil\n    if gLj_Toolbox.Settings.selectedAssignPlayer then\n        local pJob = nil\n        for _, ent in ipairs(cache.sortedParty) do\n            if ent.name == gLj_Toolbox.Settings.selectedAssignPlayer then\n                pJob = ent.job\n                break\n            end\n        end\n        if pJob then validRolesForSelected = gLj_Toolbox.GetRoleOptionsForJob(pJob) end\n    end\n\n    -- ========================\n    -- CONTROLS HEADER\n    -- ========================\n    if GUI:Button(\"Clear All\", 95, 24) then\n        gLj_Toolbox.Settings.partyRoles = {}\n        gLj_Toolbox.Settings.savedProfiles = {}\n\n        for _, ent in ipairs(cache.sortedParty) do\n            if localPlayer and ent.name ~= localPlayer.name then\n                gLj_Toolbox.Settings.partyRoles[ent.name] = \"None\"\n                gLj_Toolbox.Settings.savedProfiles[ent.name] = { job = ent.job, role = \"None\" }\n            end\n        end\n\n        if gLj_Toolbox.Paths and gLj_Toolbox.Paths.File then\n            FileSave(gLj_Toolbox.Paths.File, gLj_Toolbox.Settings.savedProfiles)\n        end\n\n        if localPlayer and localPlayer.name then\n            gLj_Toolbox.Settings.selectedRole = gLj_Toolbox.GetDefaultRoleIndexForJob(localPlayer.job)\n            local rOpts = gLj_Toolbox.GetRoleOptionsForJob(localPlayer.job)\n            if rOpts then gLj_Toolbox.Settings.partyRoles[localPlayer.name] = rOpts[gLj_Toolbox.Settings.selectedRole] end\n        end\n    end\n\n    GUI:SameLine()\n\n    if GUI:Button(\"Defaults\", 95, 24) then\n        gLj_Toolbox.Settings.partyRoles = {}\n        gLj_Toolbox.Settings.savedProfiles = {}\n\n        if gLj_Toolbox.Paths and gLj_Toolbox.Paths.File then\n            FileSave(gLj_Toolbox.Paths.File, gLj_Toolbox.Settings.savedProfiles)\n        end\n\n        if localPlayer and localPlayer.name then\n            gLj_Toolbox.Settings.selectedRole = gLj_Toolbox.GetDefaultRoleIndexForJob(localPlayer.job)\n        end\n    end\n    \n    GUI:SameLine()\n    \n    if GUI:Button(\"Prune Saves\", 95, 24) then\n        local removedCount = 0\n        for name, _ in pairs(gLj_Toolbox.Settings.savedProfiles) do\n            if not cache.currentMemberNames[name] then\n                gLj_Toolbox.Settings.savedProfiles[name] = nil\n                removedCount = removedCount + 1\n            end\n        end\n        if gLj_Toolbox.Paths and gLj_Toolbox.Paths.File then\n            FileSave(gLj_Toolbox.Paths.File, gLj_Toolbox.Settings.savedProfiles)\n        end\n        d(\"[LjToolbox] Pruned \" .. removedCount .. \" absent players from memory.\")\n    end\n\n    GUI:Spacing()\n    GUI:TextColored(0.7, 0.7, 0.7, 1.0, \"Tip: Roles are auto-assigned by default based on Job priority.\")\n    GUI:Separator()\n    GUI:Columns(2, \"PartyAssignerCols\", true)\n\n    if gLj_Toolbox.Settings.selectedAssignPlayer then\n        GUI:TextColored(0.4, 1.0, 0.4, 1.0, \"Assigning: \" .. gLj_Toolbox.Settings.selectedAssignPlayer)\n    else\n        GUI:TextColored(0.4, 0.8, 1.0, 1.0, \"Unassigned Players\")\n    end\n    GUI:NextColumn()\n    GUI:TextColored(0.4, 1.0, 0.4, 1.0, \"Role Slots\")\n    GUI:NextColumn()\n    GUI:Separator()\n\n    GUI:BeginChild(\"UnassignedList\", 0, 0, true)\n    for _, ent in ipairs(cache.sortedParty) do\n        local currentRole = gLj_Toolbox.Settings.partyRoles[ent.name]\n        if not currentRole or currentRole == \"None\" then\n            local displayStr = string.format(\"[%s] %s\", gLj_Toolbox.Constants.jobNames[ent.job] or \"???\", ent.name)\n            local isSelected = (gLj_Toolbox.Settings.selectedAssignPlayer == ent.name)\n\n            local pushedColor = false\n            if isSelected then\n                GUI:PushStyleColor(GUI.Col_Text, 1.0, 0.8, 0.2, 1.0)\n                pushedColor = true\n            else\n                local _, rType = gLj_Toolbox.GetRoleOptionsForJob(ent.job)\n                local rCol = gLj_Toolbox.Constants.ROLE_COLORS[rType]\n                if rCol then\n                    local brightenR = math.min(rCol[1] * 2.0, 1.0)\n                    local brightenG = math.min(rCol[2] * 2.0, 1.0)\n                    local brightenB = math.min(rCol[3] * 2.0, 1.0)\n                    GUI:PushStyleColor(GUI.Col_Text, brightenR, brightenG, brightenB, 1.0)\n                    pushedColor = true\n                end\n            end\n\n            if GUI:Selectable(displayStr, isSelected) then\n                gLj_Toolbox.Settings.selectedAssignPlayer = isSelected and nil or ent.name\n            end\n\n            if pushedColor then GUI:PopStyleColor() end\n        end\n    end\n    GUI:EndChild()\n\n    GUI:NextColumn()\n\n    GUI:BeginChild(\"RoleSlotsList\", 0, 0, true)\n\n    for _, roleStr in ipairs(gLj_Toolbox.Constants.allRoles) do\n        local occupantName = nil\n        local occupantJobStr = \"???\"\n\n        for name, r in pairs(gLj_Toolbox.Settings.partyRoles) do\n            if r == roleStr then\n                occupantName = name\n                for _, ent in ipairs(cache.sortedParty) do\n                    if ent.name == name then\n                        occupantJobStr = gLj_Toolbox.Constants.jobNames[ent.job] or \"???\"\n                        break\n                    end\n                end\n                break\n            end\n        end\n\n        local isValidTarget = true\n        if validRolesForSelected then\n            isValidTarget = false\n            for _, vr in ipairs(validRolesForSelected) do\n                if vr == roleStr then\n                    isValidTarget = true\n                    break\n                end\n            end\n        end\n\n        GUI:Text(roleStr .. \":\")\n        GUI:SameLine(35)\n\n        local btnText = (occupantName and string.format(\" [%s] %s\", occupantJobStr, occupantName) or \" [ Empty ]\") ..\n        \"###\" .. roleStr\n\n        GUI:PushStyleVar(GUI.StyleVar_ButtonTextAlign, 0.0, 0.5)\n        \n        local btnClicked = false\n        local btnRightClicked = false\n\n        if not isValidTarget and not occupantName then\n            GUI:PushStyleColor(GUI.Col_Button, 0.1, 0.1, 0.1, 0.5)\n            GUI:PushStyleColor(GUI.Col_Text, 0.4, 0.4, 0.4, 1.0)\n            btnClicked = GUI:Button(btnText, -1, 24)\n            GUI:PopStyleColor(2)\n        else\n            if occupantName then\n                local rCol = gLj_Toolbox.GetRoleColor(roleStr)\n                if gLj_Toolbox.Settings.selectedAssignPlayer == occupantName then\n                    GUI:PushStyleColor(GUI.Col_Button, rCol[1] * 1.4, rCol[2] * 1.4, rCol[3] * 1.4, 1.0)\n                else\n                    GUI:PushStyleColor(GUI.Col_Button, rCol[1], rCol[2], rCol[3], rCol[4])\n                end\n            else\n                GUI:PushStyleColor(GUI.Col_Button, gLj_Toolbox.Settings.selectedAssignPlayer and 0.3 or 0.15,\n                    gLj_Toolbox.Settings.selectedAssignPlayer and 0.3 or 0.15,\n                    gLj_Toolbox.Settings.selectedAssignPlayer and 0.3 or 0.15, 1.0)\n            end\n\n            btnClicked = GUI:Button(btnText, -1, 24)\n            btnRightClicked = GUI:IsItemHovered() and GUI:IsMouseClicked(1)\n            GUI:PopStyleColor()\n        end\n        \n        GUI:PopStyleVar()\n\n        if btnRightClicked and occupantName then\n            gLj_Toolbox.Settings.partyRoles[occupantName] = \"None\"\n\n            local pJob = nil\n            for _, e in ipairs(cache.sortedParty) do if e.name == occupantName then\n                    pJob = e.job\n                    break\n                end end\n            if pJob then gLj_Toolbox.SaveProfile(occupantName, pJob, \"None\") end\n\n            if gLj_Toolbox.Settings.selectedAssignPlayer == occupantName then\n                gLj_Toolbox.Settings.selectedAssignPlayer = nil\n            end\n        elseif btnClicked then\n            if gLj_Toolbox.Settings.selectedAssignPlayer then\n                local pName = gLj_Toolbox.Settings.selectedAssignPlayer\n                if pName == occupantName then\n                    gLj_Toolbox.Settings.selectedAssignPlayer = nil\n                else\n                    gLj_Toolbox.Settings.partyRoles[pName] = roleStr\n                    if occupantName then\n                        gLj_Toolbox.Settings.partyRoles[occupantName] = \"None\"\n                        local oldJob = nil\n                        for _, e in ipairs(cache.sortedParty) do if e.name == occupantName then\n                                oldJob = e.job\n                                break\n                            end end\n                        if oldJob then gLj_Toolbox.SaveProfile(occupantName, oldJob, \"None\") end\n                    end\n\n                    local pJob = nil\n                    for _, e in ipairs(cache.sortedParty) do if e.name == pName then\n                            pJob = e.job\n                            break\n                        end end\n                    if pJob then gLj_Toolbox.SaveProfile(pName, pJob, roleStr) end\n\n                    if localPlayer and pName == localPlayer.name then\n                        local pOptions = gLj_Toolbox.GetRoleOptionsForJob(localPlayer.job)\n                        if pOptions then\n                            for i, r in ipairs(pOptions) do\n                                if r == roleStr then\n                                    gLj_Toolbox.Settings.selectedRole = i\n                                    break\n                                end\n                            end\n                        end\n                    end\n                    gLj_Toolbox.Settings.selectedAssignPlayer = nil\n                end\n            elseif occupantName then\n                gLj_Toolbox.Settings.selectedAssignPlayer = occupantName\n                gLj_Toolbox.Settings.partyRoles[occupantName] = \"None\"\n\n                local pJob = nil\n                for _, e in ipairs(cache.sortedParty) do if e.name == occupantName then\n                        pJob = e.job\n                        break\n                    end end\n                if pJob then gLj_Toolbox.SaveProfile(occupantName, pJob, \"None\") end\n            end\n        end\n    end\n\n    GUI:EndChild()\n    GUI:Columns(1)\nend\nGUI:End()\n\nself.used = true",
						conditions = 
						{
							
							{
								"ee7fc361-03c9-8c30-8d87-46747c9a820e",
								true,
							},
							
							{
								"1c71b517-9340-8478-9f9e-6887f578a600",
								true,
							},
						},
						gVar = "ACR_RikuWAR3_CD",
						name = "Draw Party Roles Assigner",
						uuid = "83476b1d-bc07-4e32-a4c8-a06b1cb5a81d",
						version = 2.1,
					},
				},
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "GUI:SetNextWindowSize(1100, 600, GUI.SetCond_FirstUseEver)\nlocal visible, open = GUI:Begin(\"Map Effects Explorer###gLj_EffectDebugger\", gLj_Toolbox.Settings.showEffectTester)\n\nif not open then\n    gLj_Toolbox.Settings.showEffectTester = false\nend\n\nif visible then\n    local typeNames = { [2] = \"Model\", [4] = \"VFX\", [6] = \"Script\", [7] = \"Sound\" }\n    local localPlayer = TensorCore.mGetPlayer()\n\n    if GUI:Button(\"Refresh List\", 100, 24) then gLj_Toolbox.RefreshMapEffects() end\n    GUI:SameLine()\n\n    local filterLower = string.lower(gLj_Toolbox.Settings.searchFilter)\n    local filteredItems = {}\n    for _, item in ipairs(gLj_Toolbox.State.mapEffectsCache) do\n        if filterLower == \"\" or string.find(item.searchString, filterLower, 1, true) then\n            table.insert(filteredItems, item)\n        end\n    end\n\n    GUI:PushItemWidth(300)\n    gLj_Toolbox.Settings.searchFilter = GUI:InputText(\"Search Filter\", gLj_Toolbox.Settings.searchFilter)\n    GUI:PopItemWidth()\n    GUI:Spacing()\n\n    GUI:Columns(2, \"MapEffectsColumns\", true)\n\n    GUI:BeginChild(\"ME_LeftList\", 0, 0, true, GUI.WindowFlags_HorizontalScrollbar)\n    for _, item in ipairs(filteredItems) do\n        local isSelected = (gLj_Toolbox.Settings.selectedIndex == item.index)\n\n        if isSelected then\n            GUI:PushStyleColor(GUI.Col_Text, 1.0, 0.2, 0.2, 1.0)\n        elseif item.isActive then\n            GUI:PushStyleColor(GUI.Col_Text, 0.9, 0.9, 0.9, 1.0)\n        else\n            GUI:PushStyleColor(GUI.Col_Text, 0.5, 0.5, 0.5, 1.0)\n        end\n\n        if GUI:Selectable(item.label, isSelected) then\n            gLj_Toolbox.Settings.selectedIndex = item.index\n        end\n        GUI:PopStyleColor()\n    end\n    GUI:EndChild()\n\n    GUI:NextColumn()\n\n    GUI:BeginChild(\"ME_RightTree\", 0, 0, true)\n    if gLj_Toolbox.Settings.selectedIndex ~= -1 then\n        local targetRes = nil\n        if Argus and Argus.getMapEffectResource then targetRes = Argus.getMapEffectResource(gLj_Toolbox.Settings\n            .selectedIndex) end\n\n        if targetRes then\n            local id, path, rType, isActive = Argus.getEffectResourceInfo(targetRes)\n            local rTypeStr = typeNames[rType] or tostring(rType)\n\n            GUI:TextColored(0.95, 0.75, 0.20, 1.0, string.format(\"Index: %d\", gLj_Toolbox.Settings.selectedIndex))\n            GUI:SameLine(100)\n            GUI:TextColored(0.40, 0.75, 1.00, 1.0, string.format(\"ID: %d\", id or 0))\n            GUI:SameLine(200)\n            GUI:TextColored(0.95, 0.75, 0.20, 1.0, string.format(\"Type: %s (%d)\", rTypeStr, rType or 0))\n            GUI:SameLine(350)\n\n            if isActive then\n                GUI:TextColored(0.30, 0.90, 0.40, 1.0, \"Status: ACTIVE\")\n            else\n                GUI:TextColored(0.60, 0.60, 0.60, 1.0, \"Status: INACTIVE\")\n            end\n\n            GUI:Spacing()\n            GUI:TextColored(0.8, 0.8, 0.8, 1.0, \"Path: \")\n            GUI:SameLine()\n            GUI:TextColored(1.0, 1.0, 1.0, 1.0, tostring(path))\n\n            GUI:SameLine()\n            if GUI:Button(\"[Copy]##Path\", 45, 18) then if GUI and GUI.SetClipboardText then GUI:SetClipboardText(\n                    tostring(path)) end end\n\n            GUI:Separator()\n            GUI:Spacing()\n\n            GUI:Text(\"Actions:\")\n            GUI:SameLine()\n            if GUI:Button(\"Spawn on Me\", 120, 20) then\n                if localPlayer and localPlayer.pos then Argus.setEffectResourcePosition(targetRes, localPlayer.pos.x,\n                        localPlayer.pos.y, localPlayer.pos.z) end\n            end\n            GUI:SameLine()\n            if GUI:Button(\"Turn Off (Flag 4)\", 120, 20) then\n                Argus.runMapEffect(gLj_Toolbox.Settings.selectedIndex, 0, 4)\n            end\n\n            GUI:Spacing()\n            GUI:Separator()\n            GUI:Spacing()\n\n            local px, py, pz = Argus.getEffectResourcePosition(targetRes)\n            if px then GUI:TextColored(0.4, 0.8, 1.0, 1.0,\n                    string.format(\"Position: X: %.3f   Y: %.3f   Z: %.3f\", px, py, pz)) end\n\n            local sx, sy, sz = Argus.getEffectResourceScale(targetRes)\n            if sx then GUI:TextColored(0.4, 1.0, 0.4, 1.0,\n                    string.format(\"Scale: X: %.3f   Y: %.3f   Z: %.3f\", sx, sy, sz)) end\n\n            local dx, dy, dz, ux, uy, uz = Argus.getEffectResourceOrientation(targetRes)\n            if dx then GUI:TextColored(1.0, 0.6, 0.6, 1.0,\n                    string.format(\"Dir: X: %.3f  Y: %.3f  Z: %.3f   |   Up: X: %.3f  Y: %.3f  Z: %.3f\", dx, dy, dz, ux,\n                        uy, uz)) end\n\n            local rt, rs = Argus.getEffectResourceRenderInfo(targetRes)\n            if rt then\n                GUI:Spacing()\n                GUI:TextColored(0.8, 0.8, 0.8, 1.0,\n                    string.format(\"Render Type: %s   |   Render State: %s\", tostring(rt), tostring(rs)))\n            end\n\n            GUI:Spacing()\n            GUI:Separator()\n            GUI:Spacing()\n\n            if rType == 6 then\n                local rawNumScripts = Argus.getNumEffectResourceScripts(targetRes) or 0\n                local validScripts = {}\n                for si = 0, rawNumScripts - 1 do\n                    local sName, sNumSub, sRes, sRunning = Argus.getEffectResourceScriptInfo(targetRes, si)\n                    if sName and sName ~= \"\" then table.insert(validScripts,\n                            { index = si, name = sName, numSub = sNumSub, res = sRes, running = sRunning }) end\n                end\n\n                if #validScripts > 0 then\n                    GUI:TextColored(0.95, 0.75, 0.20, 1.0, \"--- Script Explorer (\" .. #validScripts .. \" loaded) ---\")\n                    GUI:Spacing()\n\n                    for _, sInfo in ipairs(validScripts) do\n                        local scriptFlag = math.floor(2 ^ sInfo.index)\n                        local statusColor = sInfo.running and { 0.3, 0.9, 0.4 } or { 0.9, 0.3, 0.3 }\n\n                        GUI:TextColored(statusColor[1], statusColor[2], statusColor[3], 1.0,\n                            string.format(\"[%d] %s (Flag: %d)\", sInfo.index, tostring(sInfo.name), scriptFlag))\n\n                        GUI:SameLine(350)\n                        if GUI:Button(\"Run##\" .. sInfo.index, 40, 18) then Argus.startEffectResourceScript(targetRes,\n                                sInfo.index, 0) end\n                        GUI:SameLine()\n                        if GUI:Button(\"Stop##\" .. sInfo.index, 40, 18) then Argus.runMapEffect(\n                            gLj_Toolbox.Settings.selectedIndex, 0, 4) end\n                        GUI:SameLine()\n                        if GUI:Button(\"Copy Reaction##\" .. sInfo.index, 110, 18) then\n                            local reactionStr = string.format(\n                            \"return eventArgs.a1 == %d and eventArgs.a2 == 0 and eventArgs.a3 == %d\",\n                                gLj_Toolbox.Settings.selectedIndex, scriptFlag)\n                            if GUI and GUI.SetClipboardText then GUI:SetClipboardText(reactionStr) end\n                        end\n\n                        if sInfo.res and sInfo.numSub and sInfo.numSub > 0 then\n                            for subI = 0, sInfo.numSub - 1 do\n                                local ssRes = Argus.getEffectResourceScriptSubresource(sInfo.res, subI)\n                                if ssRes then\n                                    local ssId, ssPath, ssType, ssActive = Argus.getEffectResourceInfo(ssRes)\n                                    local ssTypeStr = typeNames[ssType] or tostring(ssType)\n                                    local shortPath = type(ssPath) == \"string\" and (ssPath:match(\".*/(.*)\") or ssPath) or\n                                    \"Unknown\"\n\n                                    GUI:TextColored(0.5, 0.5, 0.5, 1.0, \"      ↳ \")\n                                    GUI:SameLine()\n                                    GUI:TextColored(0.7, 0.7, 0.7, 1.0,\n                                        string.format(\"[%s] ID: %d | %s\", ssTypeStr, ssId or 0, shortPath))\n                                    if GUI:IsItemHovered() then GUI:SetTooltip(tostring(ssPath)) end\n                                end\n                            end\n                        end\n                        GUI:Spacing()\n                    end\n                end\n\n                local numFullSub = Argus.getNumEffectSubresources(targetRes) or 0\n                if numFullSub > 0 then\n                    GUI:Spacing()\n                    GUI:TextColored(0.40, 0.75, 1.00, 1.0, \"--- Full Resource Pool (\" .. numFullSub .. \" total) ---\")\n                    GUI:Spacing()\n                    for fi = 0, numFullSub - 1 do\n                        local fRes = Argus.getEffectSubresource(targetRes, fi)\n                        if fRes then\n                            local fId, fPath, fType, fActive = Argus.getEffectResourceInfo(fRes)\n                            local fTypeStr = typeNames[fType] or tostring(fType)\n                            local aColor = fActive and { 0.9, 0.9, 0.9 } or { 0.5, 0.5, 0.5 }\n                            GUI:TextColored(aColor[1], aColor[2], aColor[3], 1.0,\n                                string.format(\"[%d] %s | ID: %d\", fi, fTypeStr, fId or 0))\n                            GUI:SameLine(180)\n                            GUI:TextColored(0.6, 0.6, 0.6, 1.0, tostring(fPath))\n                        end\n                    end\n                end\n            end\n        else\n            GUI:TextColored(1.0, 0.4, 0.4, 1.0, \"Resource is nil or despawned.\")\n        end\n    else\n        GUI:TextColored(0.5, 0.5, 0.5, 1.0, \"Select a map effect from the list on the left to inspect.\")\n    end\n    GUI:EndChild()\n    GUI:Columns(1)\nend\nGUI:End()\n\nself.used = true",
						conditions = 
						{
							
							{
								"ee7fc361-03c9-8c30-8d87-46747c9a820e",
								true,
							},
							
							{
								"d011e231-0d5f-dc7b-afe1-4e844574b667",
								true,
							},
						},
						gVar = "ACR_RikuWAR3_CD",
						name = "Draw Map Effects Debugger",
						uuid = "e6ecea36-1ab2-e492-b77a-34338ab7029b",
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
						conditionLua = "return ljHighendDuty",
						dequeueIfLuaFalse = true,
						name = "In Highend Duty",
						uuid = "64d7c855-cc05-f50d-a8b2-34c52aa84eed",
						version = 3,
					},
					inheritedIndex = 1,
				},
				
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
					inheritedIndex = 2,
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return gLj_Toolbox ~= nil",
						name = "Initialized",
						uuid = "ee7fc361-03c9-8c30-8d87-46747c9a820e",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return gLj_Toolbox.Settings.showPartyAssigner",
						name = "Party Roles Assigner",
						uuid = "1c71b517-9340-8478-9f9e-6887f578a600",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return gLj_Toolbox.Settings.showEffectTester",
						name = "Map Effects Debugger",
						uuid = "d011e231-0d5f-dc7b-afe1-4e844574b667",
						version = 3,
					},
				},
			},
			eventType = 13,
			name = "Lj: Toolbox",
			uuid = "944ecaeb-9b2c-3dbd-bfed-7a33915d3caf",
			version = 2,
		},
		inheritedIndex = 1,
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
						conditionLua = "return ljHighendDuty == true",
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
		inheritedIndex = 12,
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
						actionLua = "local profile = gACRSelectedProfiles[TensorCore.mGetPlayer().job]\n\nif profile then\n    for i = 1, 5 do\n    \tTensorCore.API.TensorACR.setHotbarEnabled(\"ACR_\" .. profile .. \"_Hotbar_DutyAction\" .. i, false)\n    end\nend\nself.used = true",
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
						actionLua = "local profile = gACRSelectedProfiles[TensorCore.mGetPlayer().job]\n\nif profile then\n    for i = 1, 5 do\n    \tTensorCore.API.TensorACR.setHotbarEnabled(\"ACR_\" .. profile .. \"_Hotbar_DutyAction\" .. i, true)\n    end\nend\nself.used = true",
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
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "ljHighendDuty = false\nlocal dutyInfo = Duty:GetActiveDutyInfo()\n\nif dutyInfo then\n    local highendKeywords = {\"Extreme\", \"Minstrel\", \"Savage\", \"Unreal\", \"Chaotic\", \"Ultimate\"}\n\n    for _, keyword in ipairs(highendKeywords) do\n        if dutyInfo.name:find(keyword) then\n            ljHighendDuty = true\n            break\n        end\n    end\nend\n\nself.used = true",
						gVar = "ACR_RikuWAR3_CD",
						name = "Set Highend Duty",
						uuid = "7c1ac2b9-7ffb-7f47-94e3-ba7ff9a8a93f",
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
			uuid = "c6ed8d71-13e7-ee66-84aa-8301431dbbad",
			version = 2,
		},
		inheritedIndex = 11,
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
						conditionLua = "return ljHighendDuty == true",
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
		inheritedIndex = 16,
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
						conditionLua = "local party = TensorCore.entityList(\"myparty\") -- Do not use Party as it doesn't work for this\nparty[Player.id] = TensorCore.mGetPlayer() -- add myself to the party xd\n\nfor _, ent in pairs(party) do\n    if not ent.alive then \n        return true \n    end\nend\n\nreturn false",
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
		inheritedIndex = 16,
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
		inheritedIndex = 16,
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
						endIfUsed = true,
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
						endIfUsed = true,
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
						endIfUsed = true,
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
						endIfUsed = true,
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
						category = "Filter",
						filterTargetType = "ContentID",
						name = "F - Nails",
						partyTargetContentID = 14042,
						uuid = "9ae42868-9b03-b53a-a0e0-d4113f256468",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Filter",
						filterTargetSubtype = "Highest HP",
						filterTargetType = "ContentID",
						name = "F - Adds",
						partyTargetContentID = 14039,
						uuid = "86444aec-84dc-a94d-a96a-e8de70879292",
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
								"9ae42868-9b03-b53a-a0e0-d4113f256468",
								true,
							},
							
							{
								"86444aec-84dc-a94d-a96a-e8de70879292",
								true,
							},
						},
						matchAnyBuff = true,
						name = "F - Adds OR Nails Exist",
						partyTargetNumber = 0,
						uuid = "261043e7-929b-2eb9-aa8d-8d84b88fa1b8",
						version = 3,
					},
					inheritedIndex = 11,
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
						conditionLua = "return FFXIV_Common_BotRunning or (KitanoiFuncs and KitanoiFuncs.AreKitanoiAddonsRunning()) or (HusbandoMaxStatus and HusbandoMaxStatus()) or false",
						name = "Bot Enabled",
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
						actionLua = "local pos = {x=eventArgs.x, y=eventArgs.y+1, z=eventArgs.z}\nlocal timer = eventArgs.duration * 1000\nlocal showBG = true\nlocal size = 1\n\nif pos and table.valid(pos) then\n\tAnyoneCore.addWorldTextCountdown(timer, pos, AnyoneCore.white, showBG, size)\nend\n\nself.used = true\nself.eventConditionMismatch = true",
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
						conditionLua = "return ljHighendDuty == true",
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
								"715ef1e2-eb78-fb50-9037-b5c483c79ece",
								true,
							},
							
							{
								"10c14f8e-6820-cbbb-a0f6-efdc3ec9237b",
								false,
							},
							
							{
								"c5886579-38cb-7ba9-9684-67a22930846b",
								true,
							},
							
							{
								"219829a1-d2b4-b322-890e-1b530a44d348",
								true,
							},
							
							{
								"3fc4a180-f5de-c78a-83a7-304882ea972b",
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
						conditionLua = "return FFXIV_Common_BotRunning",
						dequeueIfLuaFalse = true,
						name = "Assist Enabled",
						uuid = "715ef1e2-eb78-fb50-9037-b5c483c79ece",
						version = 3,
					},
					inheritedIndex = 1,
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return ljHighendDuty == true",
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
				
				{
					data = 
					{
						category = "Self",
						conditionType = 7,
						uuid = "219829a1-d2b4-b322-890e-1b530a44d348",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return TensorCore.mGetEntity(eventArgs.primaryEntityID).aggropercentage > 0",
						name = "Combat with Gaze Entity",
						uuid = "3fc4a180-f5de-c78a-83a7-304882ea972b",
						version = 3,
					},
				},
			},
			eventType = 27,
			name = "Lj: World | Avoid Gaze",
			uuid = "9b395348-13a3-ecea-9141-d712cb2a9b74",
			version = 2,
		},
		inheritedIndex = 15,
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
								"492694b5-1e9b-e7f9-9e97-ec283930ebbe",
								true,
							},
							
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
						conditionLua = "return FFXIV_Common_BotRunning",
						dequeueIfLuaFalse = true,
						name = "Assist Enabled",
						uuid = "492694b5-1e9b-e7f9-9e97-ec283930ebbe",
						version = 3,
					},
					inheritedIndex = 1,
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return ljHighendDuty == true",
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
						aType = "Alert",
						actionLua = "local text = \"Tank Buster on \" .. eventArgs.entityID\nTensorCore.addAlertText(5000, text, 1, 1, false)\nself.used = true",
						alertText = "Tank Buster on {entity:Event Entity}",
						conditions = 
						{
							
							{
								"63eb6ec9-d08e-902c-b4b5-c77d5653f41d",
								false,
							},
							
							{
								"4245fe15-9a3f-c8d4-a19d-101830f3a472",
								true,
							},
						},
						gVar = "ACR_TensorMagnum3_CD",
						name = "Alert: Tank Buster",
						uuid = "69088f8d-43b1-5396-9fee-cff0b0f14793",
						version = 2.1,
					},
				},
				
				{
					data = 
					{
						aType = "Alert",
						alertText = "Stack on {entity:Event Entity}",
						conditions = 
						{
							
							{
								"63eb6ec9-d08e-902c-b4b5-c77d5653f41d",
								false,
							},
							
							{
								"10c9ae96-43fc-62b5-a6b8-1388433fc039",
								true,
							},
						},
						gVar = "ACR_TensorMagnum3_CD",
						name = "Alert: Stack",
						uuid = "7c062a88-5536-bb63-87fe-9ff9becb02c0",
						version = 2.1,
					},
				},
				
				{
					data = 
					{
						aType = "Alert",
						alertText = "Spread",
						conditions = 
						{
							
							{
								"63eb6ec9-d08e-902c-b4b5-c77d5653f41d",
								false,
							},
							
							{
								"a98a3ee1-a9fa-8527-9186-389e0d126ed8",
								true,
							},
							
							{
								"cca46ce3-86a2-8d5a-9979-8dec07181243",
								true,
							},
						},
						gVar = "ACR_TensorMagnum3_CD",
						name = "Alert: Spread",
						uuid = "cdb3a0b3-ef72-32c6-b015-dca01cc22fad",
						version = 2.1,
					},
				},
				
				{
					data = 
					{
						aType = "Alert",
						alertText = "Stop Everything",
						conditions = 
						{
							
							{
								"63eb6ec9-d08e-902c-b4b5-c77d5653f41d",
								false,
							},
							
							{
								"a98a3ee1-a9fa-8527-9186-389e0d126ed8",
								true,
							},
							
							{
								"5b7eeb83-bf44-6c3d-8ffc-4173e72ce085",
								true,
							},
						},
						gVar = "ACR_TensorMagnum3_CD",
						name = "Alert: Stop Everything",
						uuid = "00ccca00-8dd7-8172-9347-9deefdf1bdca",
						version = 2.1,
					},
					inheritedIndex = 4,
				},
				
				{
					data = 
					{
						aType = "Alert",
						alertText = "Keep Moving",
						conditions = 
						{
							
							{
								"63eb6ec9-d08e-902c-b4b5-c77d5653f41d",
								false,
							},
							
							{
								"a98a3ee1-a9fa-8527-9186-389e0d126ed8",
								true,
							},
							
							{
								"458023aa-7f58-dfa5-9ab9-37a27f063d06",
								true,
							},
						},
						gVar = "ACR_TensorMagnum3_CD",
						name = "Alert: Keep Moving",
						uuid = "03ba9f3e-0f57-d9f5-99b3-6ea5c2ffccf3",
						version = 2.1,
					},
				},
				
				{
					data = 
					{
						aType = "Alert",
						alertText = "Look at Boss",
						conditions = 
						{
							
							{
								"63eb6ec9-d08e-902c-b4b5-c77d5653f41d",
								false,
							},
							
							{
								"a98a3ee1-a9fa-8527-9186-389e0d126ed8",
								true,
							},
							
							{
								"74e3c978-7973-258f-8674-218fe0ef091c",
								true,
							},
						},
						gVar = "ACR_TensorMagnum3_CD",
						name = "Alert: Look at Boss",
						uuid = "c15275e3-11d5-7093-a205-f5120243d230",
						version = 2.1,
					},
				},
				
				{
					data = 
					{
						aType = "Alert",
						alertText = "Look away from Boss",
						conditions = 
						{
							
							{
								"63eb6ec9-d08e-902c-b4b5-c77d5653f41d",
								false,
							},
							
							{
								"a98a3ee1-a9fa-8527-9186-389e0d126ed8",
								true,
							},
							
							{
								"48967971-08b9-d263-a7c7-ac1b64de4dc1",
								true,
							},
						},
						gVar = "ACR_TensorMagnum3_CD",
						name = "Alert: Look away from Boss",
						uuid = "ec3d2fc5-9c5b-71ef-8dd7-9702d11a93e5",
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
						conditionLua = "return ljHighendDuty == true",
						dequeueIfLuaFalse = true,
						name = "In Highend Duty",
						uuid = "63eb6ec9-d08e-902c-b4b5-c77d5653f41d",
						version = 3,
					},
					inheritedIndex = 1,
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 9,
						name = "Self: Event Entity",
						partyTargetType = "Event Entity",
						uuid = "a98a3ee1-a9fa-8527-9186-389e0d126ed8",
						version = 3,
					},
					inheritedIndex = 2,
				},
				
				{
					data = 
					{
						category = "Event",
						eventArgType = 3,
						markerIDList = 
						{
							198,
							218,
							230,
							259,
							343,
							344,
							381,
							615,
							570,
							498,
							471,
							243,
							256,
							259,
							314,
							341,
							342,
							343,
							344,
							412,
							463,
							464,
							465,
							467,
							468,
							475,
						},
						name = "Markers: Tank Busters",
						uuid = "4245fe15-9a3f-c8d4-a19d-101830f3a472",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Event",
						eventArgType = 3,
						markerIDList = 
						{
							62,
							161,
							318,
							305,
							93,
							100,
							113,
							132,
							221,
							266,
							289,
							316,
							317,
							719,
							161,
						},
						name = "Markers: Stack",
						uuid = "10c9ae96-43fc-62b5-a6b8-1388433fc039",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Event",
						eventArgType = 3,
						markerIDList = 
						{
							96,
							139,
							315,
							558,
							466,
							215,
							95,
							101,
							108,
							120,
							129,
							130,
							135,
							139,
							138,
							140,
							141,
							169,
							189,
							196,
							220,
							233,
							310,
							311,
							324,
							328,
							329,
							345,
							353,
							371,
							372,
							373,
							375,
							376,
							385,
							450,
							466,
							712,
							558,
						},
						name = "Markers: Spread",
						uuid = "cca46ce3-86a2-8d5a-9979-8dec07181243",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Event",
						eventArgType = 3,
						markerIDList = 
						{
							682,
						},
						name = "Markers: Stop Everything",
						uuid = "5b7eeb83-bf44-6c3d-8ffc-4173e72ce085",
						version = 3,
					},
					inheritedIndex = 5,
				},
				
				{
					data = 
					{
						category = "Event",
						eventArgType = 3,
						markerIDList = 
						{
							683,
						},
						name = "Markers: Keep Moving",
						uuid = "458023aa-7f58-dfa5-9ab9-37a27f063d06",
						version = 3,
					},
					inheritedIndex = 6,
				},
				
				{
					data = 
					{
						category = "Event",
						eventArgType = 3,
						markerIDList = 
						{
							681,
						},
						name = "Markers: Look at Boss",
						uuid = "74e3c978-7973-258f-8674-218fe0ef091c",
						version = 3,
					},
					inheritedIndex = 7,
				},
				
				{
					data = 
					{
						category = "Event",
						eventArgType = 3,
						markerIDList = 
						{
							680,
						},
						name = "Markers: Look away from Boss",
						uuid = "48967971-08b9-d263-a7c7-ac1b64de4dc1",
						version = 3,
					},
					inheritedIndex = 8,
				},
			},
			eventType = 4,
			name = "Lj: World | TTS | OnEntityMarkerAdd",
			uuid = "08eff1f2-96bc-4f2c-b7f0-c27246a74fd4",
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
						aType = "Alert",
						alertText = "Raidwide",
						conditions = 
						{
							
							{
								"af4d2d93-32e2-2d1d-bf7e-6db614738b19",
								false,
							},
							
							{
								"ebbc6ec2-d05a-d7ad-b2c6-18d9db464144",
								true,
							},
							
							{
								"b95d02f0-40f6-8254-99c1-1042a2ac159e",
								false,
							},
						},
						gVar = "ACR_TensorMagnum3_CD",
						name = "Alert: Raidwide",
						uuid = "9916e894-9888-9af9-9b11-de57631e702a",
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
						conditionLua = "return ljHighendDuty == true",
						dequeueIfLuaFalse = true,
						name = "In Highend Duty",
						uuid = "af4d2d93-32e2-2d1d-bf7e-6db614738b19",
						version = 3,
					},
					inheritedIndex = 1,
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "if TensorCore.Avoidance.inUnavoidableAOE(TensorCore.mGetPlayer().id) then\n    if (eventArgs.aoeCastType == 2 or eventArgs.aoeCastType == 5 or eventArgs.aoeCastType == 7) and eventArgs.aoeLength >= 30 then\n        return true\n    end\nend\n\nreturn false",
						dequeueIfLuaFalse = true,
						name = "Self: In Raidwide",
						uuid = "ebbc6ec2-d05a-d7ad-b2c6-18d9db464144",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return eventArgs.friendly",
						dequeueIfLuaFalse = true,
						name = "AoE: Friendly",
						uuid = "b95d02f0-40f6-8254-99c1-1042a2ac159e",
						version = 3,
					},
				},
			},
			eventType = 18,
			name = "Lj: World | TTS | Raidwide",
			uuid = "103632d8-41b0-e702-9ae0-316801b7a72f",
			version = 2,
		},
	}, 
	inheritedProfiles = 
	{
	},
}



return tbl
