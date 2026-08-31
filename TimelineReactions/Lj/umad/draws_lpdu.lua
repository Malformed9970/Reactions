local tbl = 
{
	
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
							actionLua = "local dmu = AnyoneCore.Settings.Reactions.dmu\n\ndmu.p1TeleTrounceStrat = 1\n\ndmu.p2ForsakenStrat = 12\n\ndmu.p3BlackHoleSolverStrategy = 2\n\ndmu.p4HelperEnabled = true\ndmu.p4StackSpreadOrientation = 1\n\ndmu.p5HelperEnabled = true\ndmu.p5MaddeningFacing = 1\ndmu.p5TowerRotation = 1\n\nself.used = true",
							conditions = 
							{
								
								{
									"2aed0f1e-619c-595c-a114-55aeb01af52f",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_CD",
							uuid = "72436b0d-a28a-4e51-a27b-9dbefa347f5e",
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
							conditionLua = "return AnyoneCore ~= nil",
							dequeueIfLuaFalse = true,
							name = "AnyoneCore",
							uuid = "2aed0f1e-619c-595c-a114-55aeb01af52f",
							version = 3,
						},
					},
				},
				enabled = false,
				mechanicTime = 15.261765625,
				name = "[Lj Data] Set LPDU",
				timelineIndex = 1,
				timerOffset = -15,
				uuid = "b669dc81-9d0a-9894-a562-7e61f5f1cf1c",
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
							actionLua = "local center = { x = 100, z = 100 } -- arena center (given as 100, 0, 100)\nlocal innerRadius = 20              -- arena radius in yalms; the donut hole\nlocal outerRadius = 2000           -- far enough to swallow any off-arena draw\nlocal timeout = 1200000            -- set-and-forget (20 min); re-fire as needed\nlocal occlusionChannel = 0         -- default channel; matches normal draws\n\nlocal floorY = 0\nlocal normalFlags = Argus2.RenderFlags.FLAG_OCCLUDE\nlocal overlayFlags =\n    Argus2.RenderFlags.FLAG_OCCLUDE |\n    Argus2.RenderFlags.FLAG_RENDER_OVERLAY\n\nlocal normalDrawer = TensorCore.getStaticFlatDrawer(0x00000000, 0, occlusionChannel, normalFlags)\nlocal overlayDrawer = TensorCore.getStaticFlatDrawer(0x00000000, 0, occlusionChannel, overlayFlags)\n\nnormalDrawer:addTimedDonut(\n    timeout,\n    center.x, floorY, center.z,\n    innerRadius, outerRadius,\n    0,      -- delay\n    false,  -- oldDraw\n    false,  -- doNotDetect: FALSE so the off-arena ring feeds safe-jump detection\n            --              and acts as an in-bounds boundary (won't jump the edge)\n    normalFlags\n)\n\noverlayDrawer:addTimedDonut(\n    timeout,\n    center.x, floorY, center.z,\n    innerRadius, outerRadius,\n    0,      -- delay\n    false,  -- oldDraw\n    true,   -- doNotDetect: visual-only duplicate of the normal blocker\n    overlayFlags\n)\n\nself.used = true",
							gVar = "ACR_TensorRequiem3_DoTs",
							uuid = "db198ef7-8353-e3f7-9b45-eac5269b4ec5",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				mechanicTime = 15.261765625,
				name = "[Lj Draw] Arena Boundary Occlusion",
				timelineIndex = 1,
				timerOffset = -15.300000190735,
				uuid = "816a832a-cc07-ce25-a574-0f420da516dd",
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
							actionLua = "data.ljPlayerRole = \"DPS\"\nself.used = true",
							conditions = 
							{
								
								{
									"d0356ac7-88fa-19c6-b08e-9a44bdca8ec4",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_CD",
							name = "DPS",
							uuid = "d8538738-a2b3-b3e7-b88a-8835f247a734",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "data.ljPlayerRole = \"Support\"\nself.used = true",
							conditions = 
							{
								
								{
									"d0356ac7-88fa-19c6-b08e-9a44bdca8ec4",
									false,
								},
							},
							gVar = "ACR_RikuSGE3_CD",
							name = "Support",
							uuid = "7e60cf45-b037-b1a8-9c72-785bbd62dfce",
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
							conditionType = 9,
							name = "Self: DPS",
							partyTargetType = "DPS",
							uuid = "d0356ac7-88fa-19c6-b08e-9a44bdca8ec4",
							version = 3,
						},
					},
				},
				mechanicTime = 15.261765625,
				name = "[Lj Data] Set Support/DPS",
				timelineIndex = 1,
				timerOffset = -15,
				uuid = "8d4c0a7b-4342-fa56-95bc-dc334b8a14ee",
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
							actionLua = "local settingsFolder = GetLuaModsPath() .. [[ffxivminion\\\\\\\\Lj\\\\\\\\]]\nlocal settingsPath = settingsFolder .. [[UMADSDrawSettings.lua]]\n\nif not Lj_UMADDRAWS_Settings then\n    Lj_UMADDRAWS_Settings = {}\n    if FileExists(settingsPath) then\n        Lj_UMADDRAWS_Settings = FileLoad(settingsPath) or {}\n    end\nend\n\nlocal settings = Lj_UMADDRAWS_Settings\nlocal settingsChanged = false\n\nif settings.stompies ~= \"Roles\" and settings.stompies ~= \"Group 1/Group 2\" then\n    settings.stompies = \"Group 1/Group 2\"\n    settingsChanged = true\nend\n\nif settings.accelBombStillness ~= true and settings.accelBombStillness ~= false then\n    settings.accelBombStillness = true\n    settingsChanged = true\nend\n\nif settings.accelBombMotion ~= true and settings.accelBombMotion ~= false then\n    settings.accelBombMotion = true\n    settingsChanged = true\nend\n\nif settings.limitCutMacro ~= \"Disabled\" and settings.limitCutMacro ~= \"Echo Chat\" and settings.limitCutMacro ~= \"Party Chat\" then\n    settings.limitCutMacro = \"Disabled\"\n    settingsChanged = true\nend\n\nif settings.p4Macro ~= \"Disabled\" and settings.p4Macro ~= \"Echo Chat\" and settings.p4Macro ~= \"Party Chat\" then\n    settings.p4Macro = \"Disabled\"\n    settingsChanged = true\nend\n\nif settings.p4IceLightningMacro == nil then\n    settings.p4IceLightningMacro = settings.p4Macro\n    settingsChanged = true\nelseif settings.p4IceLightningMacro ~= \"Disabled\" and settings.p4IceLightningMacro ~= \"Echo Chat\" and settings.p4IceLightningMacro ~= \"Party Chat\" then\n    settings.p4IceLightningMacro = \"Disabled\"\n    settingsChanged = true\nend\n\nif settings.p4AutoMark == nil and settings.p4SelfMark ~= nil then\n    settings.p4AutoMark = settings.p4SelfMark\n    settings.p4SelfMark = nil\n    settingsChanged = true\nelseif settings.p4SelfMark ~= nil then\n    settings.p4SelfMark = nil\n    settingsChanged = true\nend\n\nif settings.p4AutoMark == true then\n    settings.p4AutoMark = \"Self Only\"\n    settingsChanged = true\nelseif settings.p4AutoMark == false then\n    settings.p4AutoMark = \"Disabled\"\n    settingsChanged = true\nelseif settings.p4AutoMark ~= \"Disabled\" and settings.p4AutoMark ~= \"Self Only\" then\n    settings.p4AutoMark = \"Disabled\"\n    settingsChanged = true\nend\n\nif settingsChanged then\n    if not FolderExists(settingsFolder) then\n        FolderCreate(settingsFolder)\n    end\n    FileSave(settingsPath, settings)\nend\n\nLj_UMADDRAWS_Stompies = settings.stompies\nLj_UMADDRAWS_AccelBombStillness = settings.accelBombStillness\nLj_UMADDRAWS_AccelBombMotion = settings.accelBombMotion\nLj_UMADDRAWS_LimitCutMacro = settings.limitCutMacro\nLj_UMADDRAWS_P4Macro = settings.p4Macro\nLj_UMADDRAWS_P4IceLightningMacro = settings.p4IceLightningMacro\nLj_UMADDRAWS_P4AutoMark = settings.p4AutoMark\n\nlocal flags = GUI.WindowFlags_NoTitleBar + GUI.WindowFlags_NoCollapse + GUI.WindowFlags_AlwaysAutoResize + GUI.WindowFlags_NoSavedSettings\nGUI:SetNextWindowSize(300, 0, GUI.SetCond_Always)\nlocal visible = GUI:Begin(\"Lj Draw Settings###LjUMADSDRAWSettings\", true, flags)\n\nif visible then\n    GUI:Text(\"Lj Draw Settings\")\n\n    GUI:Text(\"Stompies\")\n    GUI:SameLine(150)\n    local stompiesIndex = settings.stompies == \"Group 1/Group 2\" and 2 or 1\n    GUI:PushItemWidth(140)\n    local newStompiesIndex, stompiesChanged = GUI:Combo(\"##LjUMADRAWStompies\", stompiesIndex, {\"Roles\", \"Group 1/Group 2\"})\n    if GUI:IsItemHovered() then\n        if settings.stompies == \"Group 1/Group 2\" then\n            GUI:SetTooltip(\"ZsQ Raidplan, Group 1 West, Group 2 East\")\n        else\n            GUI:SetTooltip(\"Tanks and Melee Pos to West, Healers and Ranged to East/LPDU\")\n        end\n    end\n    GUI:PopItemWidth()\n    if stompiesChanged then\n        settings.stompies = newStompiesIndex == 2 and \"Group 1/Group 2\" or \"Roles\"\n        Lj_UMADDRAWS_Stompies = settings.stompies\n        FileSave(settingsPath, settings)\n    end\n\n    GUI:Text(\"Limit Cut Macro\")\n    GUI:SameLine(150)\n    local limitCutMacroIndex = settings.limitCutMacro == \"Echo Chat\" and 2 or (settings.limitCutMacro == \"Party Chat\" and 3 or 1)\n    GUI:PushItemWidth(140)\n    local newLimitCutMacroIndex, limitCutMacroChanged = GUI:Combo(\"##LjUMADRAWLimitCutMacro\", limitCutMacroIndex, {\"Disabled\", \"Echo Chat\", \"Party Chat\"})\n    GUI:PopItemWidth()\n    if limitCutMacroChanged then\n        settings.limitCutMacro = ({\"Disabled\", \"Echo Chat\", \"Party Chat\"})[newLimitCutMacroIndex]\n        Lj_UMADDRAWS_LimitCutMacro = settings.limitCutMacro\n        FileSave(settingsPath, settings)\n    end\n\n    GUI:Text(\"P4 Macro\")\n    GUI:SameLine(150)\n    local p4MacroIndex = settings.p4Macro == \"Echo Chat\" and 2 or (settings.p4Macro == \"Party Chat\" and 3 or 1)\n    GUI:PushItemWidth(140)\n    local newP4MacroIndex, p4MacroChanged = GUI:Combo(\"##LjUMADRAWP4Macro\", p4MacroIndex, {\"Disabled\", \"Echo Chat\", \"Party Chat\"})\n    GUI:PopItemWidth()\n    if p4MacroChanged then\n        settings.p4Macro = ({\"Disabled\", \"Echo Chat\", \"Party Chat\"})[newP4MacroIndex]\n        Lj_UMADDRAWS_P4Macro = settings.p4Macro\n        FileSave(settingsPath, settings)\n    end\n\n    if settings.p4Macro ~= \"Disabled\" then\n        GUI:Text(\"P4 Ice/Lightning Macro\")\n        GUI:SameLine(150)\n        local p4IceLightningMacroIndex = settings.p4IceLightningMacro == \"Echo Chat\" and 2 or (settings.p4IceLightningMacro == \"Party Chat\" and 3 or 1)\n        GUI:PushItemWidth(140)\n        local newP4IceLightningMacroIndex, p4IceLightningMacroChanged = GUI:Combo(\"##LjUMADRAWP4IceLightningMacro\", p4IceLightningMacroIndex, {\"Disabled\", \"Echo Chat\", \"Party Chat\"})\n        GUI:PopItemWidth()\n        if p4IceLightningMacroChanged then\n            settings.p4IceLightningMacro = ({\"Disabled\", \"Echo Chat\", \"Party Chat\"})[newP4IceLightningMacroIndex]\n            Lj_UMADDRAWS_P4IceLightningMacro = settings.p4IceLightningMacro\n            FileSave(settingsPath, settings)\n        end\n    end\n\n    GUI:Text(\"P4 Auto Mark\")\n    if GUI:IsItemHovered() then\n        GUI:SetTooltip(\"Support: Short Spread = Bind 1, Long Spread = Ignore 1\\nDPS: Short Spread = Bind 2, Long Spread = Ignore 2\")\n    end\n    GUI:SameLine(150)\n    local p4AutoMarkIndex = settings.p4AutoMark == \"Self Only\" and 2 or 1\n    GUI:PushItemWidth(140)\n    local newP4AutoMarkIndex, p4AutoMarkChanged = GUI:Combo(\"##LjUMADRAWP4AutoMark\", p4AutoMarkIndex, {\"Disabled\", \"Self Only\"})\n    if GUI:IsItemHovered() then\n        GUI:SetTooltip(\"Support: Short Spread = Bind 1, Long Spread = Ignore 1\\nDPS: Short Spread = Bind 2, Long Spread = Ignore 2\")\n    end\n    GUI:PopItemWidth()\n    if p4AutoMarkChanged then\n        settings.p4AutoMark = newP4AutoMarkIndex == 2 and \"Self Only\" or \"Disabled\"\n        Lj_UMADDRAWS_P4AutoMark = settings.p4AutoMark\n        FileSave(settingsPath, settings)\n    end\n\n    GUI:Text(\"Accel Bomb Stillness\")\n    GUI:SameLine(150)\n    local stillnessIndex = settings.accelBombStillness and 1 or 2\n    GUI:PushItemWidth(140)\n    local newStillnessIndex, stillnessChanged = GUI:Combo(\"##LjUMADRAWAccelBombStillness\", stillnessIndex, {\"Enabled\", \"Disabled\"})\n    GUI:PopItemWidth()\n    if stillnessChanged then\n        settings.accelBombStillness = newStillnessIndex == 1\n        Lj_UMADDRAWS_AccelBombStillness = settings.accelBombStillness\n        FileSave(settingsPath, settings)\n    end\n\n    GUI:Text(\"Accel Bomb Motion\")\n    if GUI:IsItemHovered() then\n        GUI:SetTooltip(\"This will jump up and down for you, don't move!\")\n    end\n    GUI:SameLine(150)\n    local motionIndex = settings.accelBombMotion and 1 or 2\n    GUI:PushItemWidth(140)\n    local newMotionIndex, motionChanged = GUI:Combo(\"##LjUMADRAWAccelBombMotion\", motionIndex, {\"Enabled\", \"Disabled\"})\n    if GUI:IsItemHovered() then\n        GUI:SetTooltip(\"This will jump up and down for you, don't move!\")\n    end\n    GUI:PopItemWidth()\n    if motionChanged then\n        settings.accelBombMotion = newMotionIndex == 1\n        Lj_UMADDRAWS_AccelBombMotion = settings.accelBombMotion\n        FileSave(settingsPath, settings)\n    end\nend\n\nGUI:End()\nself.used = true",
							name = "[Lj Draw] Settings",
							uuid = "6156b892-c4a6-d230-86c7-939835f0f9dd",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				eventType = 13,
				mechanicTime = 15.261765625,
				name = "[Lj Draw] Settings",
				timeRange = true,
				timelineIndex = 1,
				timerEndOffset = 15,
				timerStartOffset = -30,
				uuid = "ad66fd7b-a5e5-24dd-a872-dcfec6fb87c7",
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
							actionLua = "TensorCore.sendParsedChatMessage('/mk clear <me>')\nself.used = true",
							conditions = 
							{
								
								{
									"6ade1cf2-6666-bfea-bf39-1161e481d19e",
									true,
								},
							},
							uuid = "1171bf1a-69b6-6aed-8473-8548703e6e3a",
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
							conditionLua = "return Lj_UMADDRAWS_P4AutoMark == \"Self Only\"",
							dequeueIfLuaFalse = true,
							name = "Self Marking",
							uuid = "6ade1cf2-6666-bfea-bf39-1161e481d19e",
							version = 3,
						},
					},
				},
				mechanicTime = 15.261765625,
				name = "[Lj Macro] Clear Self Marker",
				timeRandomRange = true,
				timeRange = true,
				timelineIndex = 1,
				timerEndOffset = 2,
				timerStartOffset = -15,
				uuid = "821c9a89-7133-e592-86be-2a97b1ef372c",
				version = 2,
			},
		},
	}, 
	[3] = 
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
							actionLua = "local timeout = 4000\nlocal player = TensorCore.mGetPlayer()\nlocal sourcePos = player.pos\nlocal heading = math.pi\n\nlocal centerX, centerZ = 100.0, 100.0\nlocal arenaRadius = 20.0\n\n-- Calculate the exact Z-coordinate of the northern edge at the player's current X-coordinate\n-- Circle equation: (x - h)^2 + (z - k)^2 = r^2\nlocal xOffset = sourcePos.x - centerX\nlocal maxOffset = math.min(math.abs(xOffset), arenaRadius) -- Clamp to avoid errors if slightly out of bounds\nlocal edgeZ = centerZ - math.sqrt((arenaRadius^2) - (maxOffset^2))\n\n-- Distance from player to the calculated northern edge\nlocal totalDistance = math.max(0, sourcePos.z - edgeZ)\n\n-- Dynamic proportional sizing based on distance to the edge\nlocal scale = math.min(1, totalDistance / arenaRadius)\nlocal baseWidth = math.max(0.5, 1 * scale) \nlocal tipWidth = math.max(1.5, 3 * scale)\nlocal tipLength = math.max(2, 3 * scale)\n\nlocal baseLength = totalDistance - tipLength\n\n-- Draw the Arrow\nif baseLength > 0 then\n    local colorStart = 0xFF00FFFF\n    local colorMid = 0xFF0088FF\n    local colorEnd = 0xFF0000FF\n    local colorOutline = 0xFFFFFFFF\n    local outlineThickness = 2\n\n    local drawer = TensorCore.getCachedDrawer(colorStart, colorMid, colorEnd, colorOutline, outlineThickness)\n    drawer:addTimedArrow(\n        timeout,\n        sourcePos.x, sourcePos.y, sourcePos.z,\n        heading,\n        baseLength, baseWidth, tipLength, tipWidth,\n        0, false, Argus2.RenderFlags.FLAG_RENDER_OVERLAY\n    )\nend\n\nself.used = true",
							conditions = 
							{
								
								{
									"51cb042f-f582-f6d3-bb5e-64dcc3d6a11c",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_CD",
							uuid = "b8dbef5a-9758-b977-91ef-99f7420fa48e",
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
							conditionLua = "local tethers = Argus.getTethersOnEnt(TensorCore.mGetPlayer().id)\n\nif tethers then\n    for _, tether in pairs(tethers) do\n        if tether.type == 45 then \n            return true \n        end\n    end\nend\n\nreturn false",
							dequeueIfLuaFalse = true,
							name = "Knockback Tether",
							uuid = "51cb042f-f582-f6d3-bb5e-64dcc3d6a11c",
							version = 3,
						},
					},
				},
				mechanicTime = 29.049328125,
				name = "[Lj Draw] Draw North",
				timelineIndex = 3,
				timerOffset = 1,
				uuid = "91a37a2c-1c54-9492-aa2f-2a7b2f0ad1e7",
				version = 2,
			},
		},
	},
	[6] = 
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
							actionLua = "local timeout = 4000\nlocal center = 100\nlocal spacing = 32 / 7\nlocal order = { \"H2\", \"H1\", \"OT\", \"MT\", \"M1\", \"M2\", \"R1\", \"R2\" }\nlocal xPositions = {}\nfor i, role in ipairs(order) do\n    xPositions[role] = center + spacing * (i - (#order + 1) / 2)\nend\n\nlocal sourcePos = { x = center, y = 0, z = center }\nlocal mySlot = AnyoneCore.Roster.mySlot()\nlocal myRole = (mySlot == \"T1\" and \"MT\") or (mySlot == \"T2\" and \"OT\") or mySlot\nlocal targetPos = { x = xPositions[myRole], y = 0, z = center }\n\nlocal heading = TensorCore.getHeadingToTarget(sourcePos, targetPos)\nlocal totalDistance = TensorCore.getDistance2d(sourcePos, targetPos)\n\n-- Proximity scaling\nlocal scale = math.min(1, totalDistance / 15)\nlocal baseWidth = math.max(0.5, 1 * scale)\nlocal tipWidth = math.max(1.5, 3 * scale)\nlocal tipLength = math.max(2, 3 * scale)\nlocal baseLength = totalDistance - tipLength\n\nif baseLength > 0 then\n    local colorStart = 0xFF00FFFF\n    local colorMid = 0xFF0088FF\n    local colorEnd = 0xFF0000FF\n    local colorOutline = 0xFFFFFFFF\n    local outlineThickness = 2\n\n    local drawer = TensorCore.getCachedDrawer(colorStart, colorMid, colorEnd, colorOutline, outlineThickness)\n    drawer:addTimedArrow(\n        timeout,\n        sourcePos.x, sourcePos.y, sourcePos.z,\n        heading,\n        baseLength, baseWidth, tipLength, tipWidth,\n        0, false, Argus2.RenderFlags.FLAG_RENDER_OVERLAY\n    )\nend\n\nself.used = true",
							conditions = 
							{
								
								{
									"c5bafdfa-4352-f094-9392-198940ca1a79",
									true,
								},
								
								{
									"8ad4ed37-77da-fb98-a67e-947414d9b101",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_CD",
							uuid = "0e3e4797-c37b-d5c4-8037-930312b7c3c2",
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
							conditionLua = "return AnyoneCore.Roster ~= nil and AnyoneCore.Roster.mySlot() ~= nil",
							dequeueIfLuaFalse = true,
							name = "Role Set",
							uuid = "c5bafdfa-4352-f094-9392-198940ca1a79",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return AnyoneCore ~= nil",
							dequeueIfLuaFalse = true,
							name = "AnyoneCore",
							uuid = "8ad4ed37-77da-fb98-a67e-947414d9b101",
							version = 3,
						},
					},
				},
				mechanicTime = 38.012854917972,
				name = "[Lj Draw] Draw Wavecannon Arrow",
				timelineIndex = 6,
				uuid = "5256c151-0318-5a08-ab65-c1d14d55f3ca",
				version = 2,
			},
		},
	},
	[16] = 
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
							actionLua = "local timeout = 7000 \nlocal x, y, z = 100, 0, 100\n\n-- Determine heading based on Light Party\nlocal myId = TensorCore.mGetPlayer().id\nlocal isLP2 = false\nfor _, id in ipairs(AnyoneCore.Roster.groups(\"g2\")) do\n    if id == myId then isLP2 = true break end\nend\nlocal heading = math.pi -- Default to North for Light Party 1\nif isLP2 then\n    heading = 0         -- Face South for Light Party 2\nend\n\nlocal baseLength = 15\nlocal baseWidth = 1\nlocal tipLength = 3\nlocal tipWidth = 3\n\nlocal colorStart = 0xFF00FFFF\nlocal colorMid = 0xFF0088FF\nlocal colorEnd = 0xFF0000FF\nlocal colorOutline = 0xFFFFFFFF\nlocal outlineThickness = 2\n\nlocal drawer = TensorCore.getCachedDrawer(colorStart, colorMid, colorEnd, colorOutline, outlineThickness)\ndrawer:addTimedArrow(timeout, x, y, z, heading, baseLength, baseWidth, tipLength, tipWidth, 0, nil, Argus2.RenderFlags.FLAG_RENDER_OVERLAY)\n\nself.used = true",
							conditions = 
							{
								
								{
									"b66ef0db-52b2-34d0-b728-7b1236a4a478",
									true,
								},
								
								{
									"83e6eba5-bae1-8170-8fa9-a6b54383eea0",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_CD",
							uuid = "a7a394f6-4eda-07b7-a707-bb5ad36ea4fa",
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
							conditionLua = "return AnyoneCore.Roster ~= nil and AnyoneCore.Roster.mySlot() ~= nil",
							dequeueIfLuaFalse = true,
							name = "Light Party Set",
							uuid = "b66ef0db-52b2-34d0-b728-7b1236a4a478",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return AnyoneCore ~= nil",
							dequeueIfLuaFalse = true,
							name = "AnyoneCore",
							uuid = "83e6eba5-bae1-8170-8fa9-a6b54383eea0",
							version = 3,
						},
					},
				},
				enabled = false,
				mechanicTime = 80.121849240769,
				name = "[Lj Draw] OLD Light Party Stacks",
				timelineIndex = 16,
				uuid = "8c775e64-8f5c-613e-b510-ac62a4acc88f",
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
							actionLua = "local drawer = TensorCore.getCachedDrawer(0xFF00FFFF, 0xFF0088FF, 0xFF0000FF, 0xFFFFFFFF, 2)\ndrawer:addTimedArrow(10000, 100, 0, 100, math.pi, 7, 1, 3, 3, 0, nil, Argus2.RenderFlags.FLAG_RENDER_OVERLAY)\n\nself.used = true",
							gVar = "ACR_RikuSGE3_CD",
							uuid = "a7a394f6-4eda-07b7-a707-bb5ad36ea4fa",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				mechanicTime = 80.121849240769,
				name = "[Lj Draw] Party Stack",
				timelineIndex = 16,
				timerOffset = -4,
				uuid = "6d67b360-1975-7421-a9f4-e67b9c566dd9",
				version = 2,
			},
		},
	},
	[17] = 
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
							actionLua = "local player = TensorCore.mGetPlayer()\nlocal centerPos = {x = 100, y = 0, z = 100}\nlocal heading = TensorCore.getHeadingToTarget(player.pos, centerPos)\nlocal distance = TensorCore.getDistance2d(player.pos, centerPos)\n\nlocal tipLength, tipWidth = 3, 3\nlocal baseWidth = 1\nlocal baseLength = math.max(0, distance - tipLength)\n\nlocal drawer = TensorCore.getCachedDrawer(0xFF00FFFF, 0xFF0088FF, 0xFF0000FF, 0xFFFFFFFF, 2)\ndrawer:addTimedArrow(5000, player.pos.x, player.pos.y, player.pos.z, heading, baseLength, baseWidth, tipLength, tipWidth, 0, nil, Argus2.RenderFlags.FLAG_RENDER_OVERLAY)\n\nself.used = true",
							conditions = 
							{
								
								{
									"e971aed8-3eb1-a2bb-9b22-05139fd960eb",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_CD",
							name = "Stack",
							uuid = "f5f7a3a6-40fc-e553-a726-24889f06b688",
							version = 2.1,
						},
						inheritedIndex = 1,
					},
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local player = TensorCore.mGetPlayer()\nlocal mySlot = AnyoneCore.Roster.mySlot()\nlocal role = (mySlot == \"T1\" and \"MT\") or (mySlot == \"T2\" and \"OT\") or mySlot\nlocal targetX, targetZ = 100, 100\n\n-- Map shared positions based on role\nif role == \"H2\" or role == \"R2\" then\n    targetX, targetZ = 85, 95    -- Left Outer (West/North-West)\nelseif role == \"OT\" or role == \"M2\" then\n    targetX, targetZ = 91, 100   -- Left Inner (Directly West, 9 yalms out)\nelseif role == \"MT\" or role == \"M1\" then\n    targetX, targetZ = 109, 100  -- Right Inner (Directly East, 9 yalms out)\nelseif role == \"H1\" or role == \"R1\" then\n    targetX, targetZ = 115, 95   -- Right Outer (East/North-East)\nend\n\nlocal targetPos = {x = targetX, z = targetZ}\n\nlocal heading = TensorCore.getHeadingToTarget(player.pos, targetPos)\nlocal distance = TensorCore.getDistance2d(player.pos, targetPos)\n\nlocal tipLength, tipWidth = 3, 3\nlocal baseWidth = 1\nlocal baseLength = math.max(0, distance - tipLength)\n\n\nlocal drawer = TensorCore.getCachedDrawer(0xFF00FFFF, 0xFF0088FF, 0xFF0000FF, 0xFFFFFFFF, 2)\ndrawer:addTimedArrow(5000, player.pos.x, player.pos.y, player.pos.z, heading, baseLength, baseWidth, tipLength, tipWidth, 0, nil, Argus2.RenderFlags.FLAG_RENDER_OVERLAY)\n\nself.used = true",
							conditions = 
							{
								
								{
									"10d0485b-4faf-55b3-a838-a3f2c78eb8a1",
									true,
								},
								
								{
									"aacd6563-fc48-2a2f-98ce-936b401203a0",
									true,
								},
								
								{
									"f46574d0-bb79-9069-bb5b-9f88b4dc8b0d",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_CD",
							name = "Meteor",
							uuid = "6ba38979-527c-16b6-ba7e-8e97062ab026",
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
							conditionLua = "local player = TensorCore.mGetPlayer()\nlocal tethers = Argus.getTethersOnEnt(player.id)\n\nif tethers then\n    for _, tether in pairs(tethers) do\n        if tether.type == 45 then \n            local sourceEnt = TensorCore.mGetEntity(tether.partnerid)\n            if sourceEnt.pos.x < 105 then\n                return true \n            end\n        end\n    end\nend\n\nreturn false",
							dequeueIfLuaFalse = true,
							name = "Self: Stack Tether",
							uuid = "e971aed8-3eb1-a2bb-9b22-05139fd960eb",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local player = TensorCore.mGetPlayer()\nlocal tethers = Argus.getTethersOnEnt(player.id)\n\nif tethers then\n    for _, tether in pairs(tethers) do\n        if tether.type == 45 then \n            local sourceEnt = TensorCore.mGetEntity(tether.partnerid)\n            if sourceEnt.pos.x > 105 then\n                return true \n            end\n        end\n    end\nend\n\nreturn false",
							dequeueIfLuaFalse = true,
							name = "Self: Meteor Tether",
							uuid = "10d0485b-4faf-55b3-a838-a3f2c78eb8a1",
							version = 3,
						},
						inheritedIndex = 2,
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return AnyoneCore.Roster ~= nil and AnyoneCore.Roster.mySlot() ~= nil",
							dequeueIfLuaFalse = true,
							name = "Role Set",
							uuid = "aacd6563-fc48-2a2f-98ce-936b401203a0",
							version = 3,
						},
						inheritedIndex = 3,
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return AnyoneCore ~= nil",
							dequeueIfLuaFalse = true,
							name = "AnyoneCore",
							uuid = "f46574d0-bb79-9069-bb5b-9f88b4dc8b0d",
							version = 3,
						},
					},
				},
				mechanicTime = 87.304550672705,
				name = "[Lj Draw] Draw Positions",
				timelineIndex = 17,
				timerOffset = -0.5,
				uuid = "3cda5876-be00-30df-889c-76ee11b1f5dd",
				version = 2,
			},
		},
	},
	[20] = 
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
							actionLua = "local drawer = TensorCore.getCachedDrawer(0xFF00FFFF, 0xFF0088FF, 0xFF0000FF, 0xFFFFFFFF, 2)\ndrawer:addTimedArrow(6000, 100, 0, 100, 0, 7, 1, 3, 3, 0, nil, Argus2.RenderFlags.FLAG_RENDER_OVERLAY)\n\nself.used = true",
							gVar = "ACR_RikuSGE3_CD",
							uuid = "a7a394f6-4eda-07b7-a707-bb5ad36ea4fa",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				mechanicTime = 100.29172113594,
				name = "[Lj Draw] Party Stack",
				timelineIndex = 20,
				timerOffset = -1,
				uuid = "c0a6e3e7-aa25-24e0-b264-4957f754ced0",
				version = 2,
			},
		},
	},
	[22] = 
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
							actionLua = "local player = TensorCore.mGetPlayer()\nlocal centerPos = {x = 100, y = 0, z = 100}\nlocal heading = TensorCore.getHeadingToTarget(player.pos, centerPos)\nlocal distance = TensorCore.getDistance2d(player.pos, centerPos)\n\nlocal tipLength, tipWidth = 3, 3\nlocal baseWidth = 1\nlocal baseLength = math.max(0, distance - tipLength)\n\nlocal drawer = TensorCore.getCachedDrawer(0xFF00FFFF, 0xFF0088FF, 0xFF0000FF, 0xFFFFFFFF, 2)\ndrawer:addTimedArrow(4000, player.pos.x, player.pos.y, player.pos.z, heading, baseLength, baseWidth, tipLength, tipWidth, 0, nil, Argus2.RenderFlags.FLAG_RENDER_OVERLAY)\n\nself.used = true",
							conditions = 
							{
								
								{
									"53f07135-3634-cf83-a925-c96cae876a84",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_CD",
							name = "Stack",
							uuid = "f5f7a3a6-40fc-e553-a726-24889f06b688",
							version = 2.1,
						},
						inheritedIndex = 1,
					},
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local player = TensorCore.mGetPlayer()\nlocal mySlot = AnyoneCore.Roster.mySlot()\nlocal role = (mySlot == \"T1\" and \"MT\") or (mySlot == \"T2\" and \"OT\") or mySlot\nlocal targetX, targetZ = 100, 100\n\n-- Map shared positions based on role\nif role == \"H1\" or role == \"R1\" then\n    targetX, targetZ = 85, 105   -- Left Outer (West/South-West)\nelseif role == \"MT\" or role == \"M1\" then\n    targetX, targetZ = 91, 100   -- Left Inner (Directly West, 9 yalms out)\nelseif role == \"OT\" or role == \"M2\" then\n    targetX, targetZ = 109, 100  -- Right Inner (Directly East, 9 yalms out)\nelseif role == \"H2\" or role == \"R2\" then\n    targetX, targetZ = 115, 105  -- Right Outer (East/South-East)\nend\n\nlocal targetPos = {x = targetX, z = targetZ}\n\nlocal heading = TensorCore.getHeadingToTarget(player.pos, targetPos)\nlocal distance = TensorCore.getDistance2d(player.pos, targetPos)\n\nlocal tipLength, tipWidth = 3, 3\nlocal baseWidth = 1\nlocal baseLength = math.max(0, distance - tipLength)\n\n\nlocal drawer = TensorCore.getCachedDrawer(0xFF00FFFF, 0xFF0088FF, 0xFF0000FF, 0xFFFFFFFF, 2)\ndrawer:addTimedArrow(4000, player.pos.x, player.pos.y, player.pos.z, heading, baseLength, baseWidth, tipLength, tipWidth, 0, nil, Argus2.RenderFlags.FLAG_RENDER_OVERLAY)\n\nself.used = true",
							conditions = 
							{
								
								{
									"e9e2d0b7-7170-c06c-80df-aa5ddb475046",
									true,
								},
								
								{
									"9b66bcae-bb93-b194-8f3b-17469cb772c3",
									true,
								},
								
								{
									"852b78f8-c37a-82a7-adc0-1b091e260e8f",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_CD",
							name = "Meteor",
							uuid = "c03aefdc-0a8f-82a2-980e-acfcc65d01d1",
							version = 2.1,
						},
						inheritedIndex = 2,
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local player = TensorCore.mGetPlayer()\nlocal tethers = Argus.getTethersOnEnt(player.id)\n\nif tethers then\n    for _, tether in pairs(tethers) do\n        if tether.type == 45 then \n            local sourceEnt = TensorCore.mGetEntity(tether.partnerid)\n            if sourceEnt.pos.x < 105 then\n                return true \n            end\n        end\n    end\nend\n\nreturn false",
							dequeueIfLuaFalse = true,
							name = "Self: Stack Tether",
							uuid = "53f07135-3634-cf83-a925-c96cae876a84",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local player = TensorCore.mGetPlayer()\nlocal tethers = Argus.getTethersOnEnt(player.id)\n\nif tethers then\n    for _, tether in pairs(tethers) do\n        if tether.type == 45 then \n            local sourceEnt = TensorCore.mGetEntity(tether.partnerid)\n            if sourceEnt.pos.x > 105 then\n                return true \n            end\n        end\n    end\nend\n\nreturn false",
							dequeueIfLuaFalse = true,
							name = "Self: Meteor Tether",
							uuid = "e9e2d0b7-7170-c06c-80df-aa5ddb475046",
							version = 3,
						},
						inheritedIndex = 2,
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return AnyoneCore.Roster ~= nil and AnyoneCore.Roster.mySlot() ~= nil",
							dequeueIfLuaFalse = true,
							name = "Role Set",
							uuid = "9b66bcae-bb93-b194-8f3b-17469cb772c3",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return AnyoneCore ~= nil",
							dequeueIfLuaFalse = true,
							name = "AnyoneCore",
							uuid = "852b78f8-c37a-82a7-adc0-1b091e260e8f",
							version = 3,
						},
					},
				},
				mechanicTime = 105.78798877162,
				name = "[Lj Draw] Draw Positions",
				timelineIndex = 22,
				timerOffset = -0.5,
				uuid = "7573f352-28d2-dce4-b947-c1c14158473a",
				version = 2,
			},
		},
	},
	[23] = 
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
							actionLua = "data.ljGravenSafe = \"East\"\nself.used = true",
							conditions = 
							{
								
								{
									"6a9af4bd-63fb-5b24-9a83-738cec4e3620",
									true,
								},
								
								{
									"168281ab-144c-1006-9e11-ed39ca71964a",
									true,
								},
								
								{
									"9398168b-6a91-ffb9-9680-7bdd50d1de34",
									true,
								},
							},
							endIfUsed = true,
							gVar = "ACR_RikuSGE3_CD",
							name = "East Safe",
							uuid = "8b9ed1ee-94b8-315f-9d26-0e47d4200f5c",
							version = 2.1,
						},
						inheritedIndex = 1,
					},
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "data.ljGravenSafe = \"West\"\nself.used = true",
							conditions = 
							{
								
								{
									"6a9af4bd-63fb-5b24-9a83-738cec4e3620",
									true,
								},
								
								{
									"168281ab-144c-1006-9e11-ed39ca71964a",
									true,
								},
								
								{
									"ba4a4167-f3ca-e950-8243-7b6ed2e58e11",
									true,
								},
							},
							endIfUsed = true,
							gVar = "ACR_RikuSGE3_CD",
							name = "West Safe",
							uuid = "d21a04fe-82c9-d813-a114-d24f7e0b4e1c",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Event",
							comparator = 3,
							dequeueIfLuaFalse = true,
							eventArgType = 2,
							eventIntValue = 64,
							name = "Event: A2 == 64",
							uuid = "6a9af4bd-63fb-5b24-9a83-738cec4e3620",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Event",
							comparator = 3,
							dequeueIfLuaFalse = true,
							eventArgType = 3,
							eventIntValue = 128,
							name = "Event: A3 == 128",
							uuid = "168281ab-144c-1006-9e11-ed39ca71964a",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Event",
							dequeueIfLuaFalse = true,
							eventArgOptionType = 2,
							eventEntityContentID = 2015164,
							name = "Event: West Cleave",
							uuid = "9398168b-6a91-ffb9-9680-7bdd50d1de34",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Event",
							dequeueIfLuaFalse = true,
							eventArgOptionType = 2,
							eventEntityContentID = 2015165,
							name = "Event: East Cleave",
							uuid = "ba4a4167-f3ca-e950-8243-7b6ed2e58e11",
							version = 3,
						},
					},
				},
				eventType = 19,
				mechanicTime = 109.77404737751,
				name = "[Lj Data] Detect Cleaves",
				timeRange = true,
				timelineIndex = 23,
				timerEndOffset = 5,
				timerStartOffset = -5,
				uuid = "c5ce59b6-c3c8-be2b-9581-88324ed8cf0c",
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
							actionLua = "-- OnFrame: arrow from the player to their role's WEST corner.\n-- Support -> NW (94,94), DPS -> SW (94,106).\n\nlocal sourcePos = TensorCore.mGetPlayer().pos\n\n-- Determine target coordinate based on Role\nlocal mySlot = AnyoneCore.Roster.mySlot()\nlocal myRole = (mySlot == \"T1\" and \"MT\") or (mySlot == \"T2\" and \"OT\") or mySlot\nlocal isSupport = { [\"MT\"] = true, [\"OT\"] = true, [\"H1\"] = true, [\"H2\"] = true }\n\n-- Set the fixed destination coordinates for each group\nlocal targetPos = { x = 94, y = 0, z = 106 } -- Default to South group for DPS\nif isSupport[myRole] then\n    targetPos = { x = 94, y = 0, z = 94 }    -- North group for Supports\nend\n\nlocal heading = TensorCore.getHeadingToTarget(sourcePos, targetPos)\nlocal totalDistance = TensorCore.getDistance2d(sourcePos, targetPos)\n\n-- Proximity scaling\nlocal scale = math.min(1, totalDistance / 15)\nlocal baseWidth = math.max(0.5, 1 * scale)\nlocal tipWidth = math.max(1.5, 3 * scale)\nlocal tipLength = math.max(2, 3 * scale)\nlocal baseLength = totalDistance - tipLength\n\n-- Draw the arrow\nif baseLength > 1 then\n    local arrowDrawer = TensorCore.getCachedDrawer(0xFF00FFFF, 0xFF0088FF, 0xFF0000FF, 0xFFFFFFFF, 2)\n    arrowDrawer:addArrow(\n        sourcePos.x, sourcePos.y, sourcePos.z,\n        heading,\n        baseLength, baseWidth, tipLength, tipWidth,\n        false, Argus2.RenderFlags.FLAG_RENDER_OVERLAY\n    )\nend\n\nself.used = true\n",
							conditions = 
							{
								
								{
									"8d225e33-197e-25ee-8da1-1db2b022b760",
									true,
								},
								
								{
									"c056aee7-6cab-68b9-bc05-bff8cd5202c3",
									true,
								},
								
								{
									"c57efa49-644f-6a19-9720-931ee867f1fc",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_CD",
							name = "West Safe",
							uuid = "f7769e01-cd44-da60-85e3-5240f0c4e930",
							version = 2.1,
						},
						inheritedIndex = 1,
					},
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "-- OnFrame: arrow from the player to their role's EAST corner.\n-- Support -> NE (106,94), DPS -> SE (106,106).\n\nlocal sourcePos = TensorCore.mGetPlayer().pos\n\n-- Determine target coordinate based on Role\nlocal mySlot = AnyoneCore.Roster.mySlot()\nlocal myRole = (mySlot == \"T1\" and \"MT\") or (mySlot == \"T2\" and \"OT\") or mySlot\nlocal isSupport = { [\"MT\"] = true, [\"OT\"] = true, [\"H1\"] = true, [\"H2\"] = true }\n\n-- Set the fixed destination coordinates for each group\nlocal targetPos = { x = 106, y = 0, z = 106 } -- Default to South group for DPS\nif isSupport[myRole] then\n    targetPos = { x = 106, y = 0, z = 94 }    -- North group for Supports\nend\n\nlocal heading = TensorCore.getHeadingToTarget(sourcePos, targetPos)\nlocal totalDistance = TensorCore.getDistance2d(sourcePos, targetPos)\n\n-- Proximity scaling\nlocal scale = math.min(1, totalDistance / 15)\nlocal baseWidth = math.max(0.5, 1 * scale)\nlocal tipWidth = math.max(1.5, 3 * scale)\nlocal tipLength = math.max(2, 3 * scale)\nlocal baseLength = totalDistance - tipLength\n\n-- Draw the arrow\nif baseLength > 1 then\n    local arrowDrawer = TensorCore.getCachedDrawer(0xFF00FFFF, 0xFF0088FF, 0xFF0000FF, 0xFFFFFFFF, 2)\n    arrowDrawer:addArrow(\n        sourcePos.x, sourcePos.y, sourcePos.z,\n        heading,\n        baseLength, baseWidth, tipLength, tipWidth,\n        false, Argus2.RenderFlags.FLAG_RENDER_OVERLAY\n    )\nend\n\nself.used = true\n",
							conditions = 
							{
								
								{
									"8d225e33-197e-25ee-8da1-1db2b022b760",
									true,
								},
								
								{
									"c056aee7-6cab-68b9-bc05-bff8cd5202c3",
									true,
								},
								
								{
									"85120373-77c5-99c0-bb7e-40ed439bb84a",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_CD",
							name = "East Safe",
							uuid = "ebf05135-99e0-3b20-bbf4-99345ec53c73",
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
							conditionLua = "return AnyoneCore ~= nil",
							dequeueIfLuaFalse = true,
							name = "AnyoneCore",
							uuid = "8d225e33-197e-25ee-8da1-1db2b022b760",
							version = 3,
						},
						inheritedIndex = 1,
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return AnyoneCore.Roster ~= nil and AnyoneCore.Roster.mySlot() ~= nil",
							dequeueIfLuaFalse = true,
							name = "Role Set",
							uuid = "c056aee7-6cab-68b9-bc05-bff8cd5202c3",
							version = 3,
						},
						inheritedIndex = 2,
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return data.ljGravenSafe == \"West\"",
							dequeueIfLuaFalse = true,
							name = "West Safe",
							uuid = "c57efa49-644f-6a19-9720-931ee867f1fc",
							version = 3,
						},
						inheritedIndex = 3,
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return data.ljGravenSafe == \"East\"",
							dequeueIfLuaFalse = true,
							name = "East Safe",
							uuid = "85120373-77c5-99c0-bb7e-40ed439bb84a",
							version = 3,
						},
					},
				},
				eventType = 12,
				mechanicTime = 109.77404737751,
				name = "[Lj Draw] Light Party Stacks",
				timeRange = true,
				timelineIndex = 23,
				timerEndOffset = 5,
				timerStartOffset = -5,
				uuid = "eedb07bb-314c-ae05-bef9-4fcedcf972eb",
				version = 2,
			},
		},
	},
	[32] = 
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
							actionLua = "local timeout = 5500 \nlocal player = TensorCore.mGetPlayer()\nlocal sourcePos = player.pos\n\n-- Determine target X coordinate based on Role\nlocal mySlot = AnyoneCore.Roster.mySlot()\nlocal myRole = (mySlot == \"T1\" and \"MT\") or (mySlot == \"T2\" and \"OT\") or mySlot\nlocal isSupport = { [\"MT\"] = true, [\"OT\"] = true, [\"H1\"] = true, [\"H2\"] = true }\n\nlocal targetX = 104\nif isSupport[myRole] then\n    targetX = 96\nend\n\nlocal targetPos = { x = targetX, y = 0, z = 100 }\n\n-- Calculate exact heading and distance from player to target\nlocal heading = TensorCore.getHeadingToTarget(sourcePos, targetPos)\nlocal totalDistance = TensorCore.getDistance2d(sourcePos, targetPos)\n\n-- Dynamic sizing to make the arrow stretch exactly from player to coordinate\nlocal tipLength = 3\nlocal baseLength = totalDistance - tipLength\n\n-- Static widths keep the arrow sleek regardless of how long it stretches\nlocal baseWidth = 1\nlocal tipWidth = 3\n\nlocal colorStart = 0xFF00FFFF\nlocal colorMid = 0xFF0088FF\nlocal colorEnd = 0xFF0000FF\nlocal colorOutline = 0xFFFFFFFF\nlocal outlineThickness = 2\n\nlocal drawer = TensorCore.getCachedDrawer(colorStart, colorMid, colorEnd, colorOutline, outlineThickness)\n\nif baseLength > 0 then\n    local renderFlags = Argus2.RenderFlags.FLAG_RENDER_OVERLAY\n    drawer:addTimedArrow(\n        timeout, \n        sourcePos.x, sourcePos.y, sourcePos.z, \n        heading, \n        baseLength, baseWidth, tipLength, tipWidth, \n        0, nil, renderFlags\n    )\nend\n\nself.used = true",
							conditions = 
							{
								
								{
									"b66ef0db-52b2-34d0-b728-7b1236a4a478",
									true,
								},
								
								{
									"7c441bac-3569-90bd-b1a4-e72b4aeb8599",
									true,
								},
								
								{
									"723f1a71-86ff-e49f-8ef5-62184183033b",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_CD",
							name = "2x2",
							uuid = "a7a394f6-4eda-07b7-a707-bb5ad36ea4fa",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local timeout = 5500\nlocal player = TensorCore.mGetPlayer()\nlocal sourcePos = player.pos\n\n-- Determine target X and Z coordinates based on Role\nlocal mySlot = AnyoneCore.Roster.mySlot()\nlocal myRole = (mySlot == \"T1\" and \"MT\") or (mySlot == \"T2\" and \"OT\") or mySlot\nlocal isSupport = { [\"MT\"] = true, [\"OT\"] = true, [\"H1\"] = true, [\"H2\"] = true }\n\nlocal targetX = 106\nlocal targetZ = 106\n\nif isSupport[myRole] then\n    targetX = 94\n    targetZ = 94\nend\n\nlocal targetPos = { x = targetX, y = 0, z = targetZ }\n\n-- Calculate exact heading and distance from player to target\nlocal heading = TensorCore.getHeadingToTarget(sourcePos, targetPos)\nlocal totalDistance = TensorCore.getDistance2d(sourcePos, targetPos)\n\n-- Head kept ~1:1 (length ≈ width) so it reads as a point, not a flat chevron\nlocal tipLength = 3\nlocal baseLength = totalDistance - tipLength\n\n-- Static widths keep the arrow sleek: 3:1 head-to-shaft flare\nlocal baseWidth = 1\nlocal tipWidth = 3\n\nlocal drawer = TensorCore.getCachedDrawer(0xFF00FFFF, 0xFF0088FF, 0xFF0000FF, 0xFFFFFFFF, 2)\n\nif baseLength > 0 then\n    drawer:addTimedArrow(\n        timeout,\n        sourcePos.x, sourcePos.y, sourcePos.z,\n        heading,\n        baseLength, baseWidth, tipLength, tipWidth,\n        0, nil, Argus2.RenderFlags.FLAG_RENDER_OVERLAY\n    )\nend\n\nself.used = true",
							conditions = 
							{
								
								{
									"b66ef0db-52b2-34d0-b728-7b1236a4a478",
									true,
								},
								
								{
									"7c441bac-3569-90bd-b1a4-e72b4aeb8599",
									true,
								},
								
								{
									"bb58c5ac-1622-a80f-875b-f41598d897d8",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_CD",
							name = "Freaky CW",
							uuid = "d45a2e22-c5fc-96fd-94db-e86c4d9a65ac",
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
							conditionLua = "return AnyoneCore.Roster ~= nil and AnyoneCore.Roster.mySlot() ~= nil",
							dequeueIfLuaFalse = true,
							name = "Light Party Set",
							uuid = "b66ef0db-52b2-34d0-b728-7b1236a4a478",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return AnyoneCore ~= nil",
							dequeueIfLuaFalse = true,
							name = "AnyoneCore",
							uuid = "7c441bac-3569-90bd-b1a4-e72b4aeb8599",
							version = 3,
						},
						inheritedIndex = 2,
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return AnyoneCore.Settings.Reactions.dmu.p1TeleTrounceStrat == 2",
							dequeueIfLuaFalse = true,
							name = "2x2",
							uuid = "723f1a71-86ff-e49f-8ef5-62184183033b",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return AnyoneCore.Settings.Reactions.dmu.p1TeleTrounceStrat == 1",
							dequeueIfLuaFalse = true,
							name = "Freaky CW",
							uuid = "bb58c5ac-1622-a80f-875b-f41598d897d8",
							version = 3,
						},
					},
				},
				mechanicTime = 162.3021905977,
				name = "[Lj Draw] Light Party Stacks",
				timelineIndex = 32,
				uuid = "446aa024-96f3-88d6-a884-9cadcc94085a",
				version = 2,
			},
		},
	},
	[33] = 
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
							actionLua = "local myColorStart = 0xFF00FFFF\nlocal myColorMid = 0xFF0088FF\nlocal myColorEnd = 0xFF0000FF\n\nlocal uuidsToDelete = {}\n\nfor i = 1, Argus.getNumTimedDraws() do\n    local shapeType, _, _, _, _, _, _, uuid, drawColorStart, drawColorEnd = Argus.getTimedDrawBaseInfo(i)\n    \n    if shapeType == \"arrow\" and uuid then\n        -- Grab colorMid (6th return of OptArgs)\n        local _, _, _, _, _, drawColorMid = Argus.getTimedDrawOptArgs(i)\n        \n        -- If any of the colors don't match mine, mark it for deletion.\n        if drawColorStart ~= myColorStart or drawColorMid ~= myColorMid or drawColorEnd ~= myColorEnd then\n            table.insert(uuidsToDelete, uuid)\n        end\n    end\nend\n\nfor _, uuid in ipairs(uuidsToDelete) do\n    Argus.deleteTimedShape(uuid)\nend\n\nself.used = true",
							conditions = 
							{
								
								{
									"a45c68c2-6365-416b-bbcc-f228cd9556bb",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_CD",
							uuid = "0c9a2faf-d70b-7a53-aa31-aa8b25d2ab7e",
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
							conditionLua = "return AnyoneCore ~= nil",
							dequeueIfLuaFalse = true,
							name = "AnyoneCore",
							uuid = "a45c68c2-6365-416b-bbcc-f228cd9556bb",
							version = 3,
						},
						inheritedIndex = 1,
					},
				},
				eventType = 12,
				mechanicTime = 163.54778319029,
				name = "[Lj Draw] Delete Teletrounce Arrow",
				timeRange = true,
				timelineIndex = 33,
				timerEndOffset = 2,
				timerOffset = -2,
				timerStartOffset = -1,
				uuid = "cfa881c7-45b1-ac97-994b-36179d9abdee",
				version = 2,
			},
		},
	},
	[34] = 
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
							actionLua = "local player = TensorCore.mGetPlayer()\nlocal sourcePos = player.pos\nlocal mySlot = AnyoneCore.Roster.mySlot()\nlocal myRole = (mySlot == \"T1\" and \"MT\") or (mySlot == \"T2\" and \"OT\") or mySlot\n\n-- Outers (H2, H1, R1, R2) and Inners (MT, OT, M1, M2) based on cardinal pairs\nlocal rolePositions = {\n    [\"MT\"] = { x = 100.0, y = 0, z = 93.0 },  -- North Inner\n    [\"R1\"] = { x = 100.0, y = 0, z = 84.0 },  -- North Outer\n    [\"M2\"] = { x = 107.0, y = 0, z = 100.0 }, -- East Inner\n    [\"H2\"] = { x = 115.0, y = 0, z = 100.0 }, -- East Outer\n    [\"M1\"] = { x = 100.0, y = 0, z = 107.0 }, -- South Inner\n    [\"H1\"] = { x = 100.0, y = 0, z = 116.5 }, -- South Outer\n    [\"OT\"] = { x = 93.0,  y = 0, z = 100.0 }, -- West Inner\n    [\"R2\"] = { x = 84.0,  y = 0, z = 100.0 }  -- West Outer\n}\n\nlocal targetPos = rolePositions[myRole]\n\nif targetPos then\n    local heading = TensorCore.getHeadingToTarget(sourcePos, targetPos)\n    local totalDistance = TensorCore.getDistance2d(sourcePos, targetPos)\n\n    -- Proximity Scaling\n    local scale = math.min(1, totalDistance / 15)\n    local baseWidth = math.max(0.5, 1 * scale) \n    local tipWidth = math.max(1.5, 3 * scale)\n    local tipLength = math.max(2, 3 * scale)\n\n    local baseLength = totalDistance - tipLength\n\n    if baseLength > 0 then\n        local arrowDrawer = TensorCore.getCachedDrawer(0xFF00FFFF, 0xFF0088FF, 0xFF0000FF, 0xFFFFFFFF, 2)\n        arrowDrawer:addArrow(\n            sourcePos.x, sourcePos.y, sourcePos.z, \n            heading, \n            baseLength, baseWidth, tipLength, tipWidth, \n            false, Argus2.RenderFlags.FLAG_RENDER_OVERLAY\n        )\n    end\nend\n\nself.used = true",
							conditions = 
							{
								
								{
									"b66ef0db-52b2-34d0-b728-7b1236a4a478",
									true,
								},
								
								{
									"e2652640-1edb-11c2-88df-b5c5930fa5e6",
									true,
								},
								
								{
									"4c9b852f-a462-e475-bac2-748f04f42434",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_CD",
							name = "Lua",
							uuid = "749b0e81-a683-b443-bd31-dde468c06320",
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
							conditionLua = "return AnyoneCore.Roster ~= nil and AnyoneCore.Roster.mySlot() ~= nil",
							dequeueIfLuaFalse = true,
							name = "Role Set",
							uuid = "b66ef0db-52b2-34d0-b728-7b1236a4a478",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return AnyoneCore ~= nil",
							dequeueIfLuaFalse = true,
							name = "AnyoneCore",
							uuid = "e2652640-1edb-11c2-88df-b5c5930fa5e6",
							version = 3,
						},
						inheritedIndex = 2,
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return AnyoneCore.Settings.Reactions.dmu.p1TeleTrounceStrat == 1",
							dequeueIfLuaFalse = true,
							name = "Merry Go Round",
							uuid = "4c9b852f-a462-e475-bac2-748f04f42434",
							version = 3,
						},
					},
				},
				eventType = 12,
				mechanicTime = 167.71168967762,
				name = "[Lj Draw] Arrow Positions",
				timeRange = true,
				timelineIndex = 34,
				timerEndOffset = 6.5,
				timerOffset = 1,
				timerStartOffset = 0.20000000298023,
				uuid = "6f97c48d-0d87-b515-aa9e-1d1db1670ed8",
				version = 2,
			},
		},
	},
	[41] = 
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
							actionLua = "local playerPos = TensorCore.mGetPlayer().pos\nlocal purple = 3539271935\n\nlocal tx, ty, tz\nfor i = 1, Argus.getNumTimedDraws() do\n    local shapeType, x, y, z, _, _, _, _, colorStart, colorEnd = Argus.getTimedDrawBaseInfo(i)\n    if shapeType == \"circle\" and (colorEnd == purple or colorStart == purple) then\n        tx, ty, tz = x, y, z\n        break\n    end\nend\n\nif tx then\n    local dx, dy, dz = playerPos.x - tx, playerPos.y - ty, playerPos.z - tz\n    if dx * dx + dy * dy + dz * dz > 4 then -- > 2 yalms, squared\n        local drawer = TensorCore.getCachedDrawer(0xFF00FF00, 0xFF00FF00, 0xFF00FF00, 0xFF00FF00, 1)\n        drawer:addLine(playerPos.x, playerPos.y, playerPos.z, tx, ty, tz, 4)\n    end\nend\n\nself.used = true",
							conditions = 
							{
								
								{
									"8aca302c-8cf8-d665-9c38-46b0683d48fa",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_CD",
							uuid = "bd5ee627-a904-1e68-9cea-ced4f12d5be9",
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
							conditionLua = "return AnyoneCore ~= nil",
							dequeueIfLuaFalse = true,
							name = "AnyoneCore",
							uuid = "8aca302c-8cf8-d665-9c38-46b0683d48fa",
							version = 3,
						},
						inheritedIndex = 1,
					},
				},
				eventType = 12,
				mechanicTime = 235.34477128997,
				name = "[Lj Draw] Line to Forsaken Spot",
				timeRange = true,
				timelineIndex = 41,
				timerEndOffset = 24,
				timerStartOffset = 3,
				uuid = "c82fa154-ac96-3a16-acc6-87efd7b7f1b5",
				version = 2,
			},
		},
	},
	[44] = 
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
							actionLua = "local ahead = 3.5 -- yalms ahead of the arrow tip the target spot sits\nlocal playerPos = TensorCore.mGetPlayer().pos\n\nfor i = 1, Argus.getNumTimedDraws() do\n    local shapeType, x, y, z = Argus.getTimedDrawBaseInfo(i)\n    if shapeType == \"arrow\" and x then\n        local length, _, tipLength, _, heading = Argus.getTimedArrowInfo(i)\n        local source  = { x = x, y = y, z = z }\n        local tipDist = (length or 0) + (tipLength or 0)\n\n        -- Target spot: AHEAD yalms past the arrow tip, along its heading.\n        local spot = TensorCore.getPosInDirection(source, heading, tipDist + ahead)\n\n        local dx, dy, dz = playerPos.x - spot.x, playerPos.y - spot.y, playerPos.z - spot.z\n        if dx * dx + dy * dy + dz * dz > 4 then -- > 2 yalms, squared to skip sqrt + table alloc\n            local drawer = TensorCore.getCachedDrawer(0xFF00FF00, 0xFF00FF00, 0xFF00FF00, 0xFF00FF00, 1)\n            drawer:addLine(playerPos.x, playerPos.y, playerPos.z, spot.x, spot.y, spot.z, 4)\n        end\n        break\n    end\nend\n\nself.used = true",
							conditions = 
							{
								
								{
									"2675f632-5873-6be8-a5ae-1feac327082c",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_CD",
							uuid = "1e1e5507-8e77-97af-a1a6-1d001d15396e",
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
							conditionLua = "return AnyoneCore ~= nil",
							dequeueIfLuaFalse = true,
							name = "AnyoneCore",
							uuid = "2675f632-5873-6be8-a5ae-1feac327082c",
							version = 3,
						},
						inheritedIndex = 1,
					},
				},
				eventType = 12,
				mechanicTime = 257.94281774788,
				name = "[Lj Draw] Line to Bait",
				randomOffset = 5,
				timeRange = true,
				timelineIndex = 44,
				timerEndOffset = 5,
				timerOffset = -5,
				timerStartOffset = 0.5,
				uuid = "5627de4b-a77c-3bcf-bf30-48f0809d4f79",
				version = 2,
			},
		},
	},
	[48] = 
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
							actionLua = "local playerPos = TensorCore.mGetPlayer().pos\nlocal purple = 3539271935\n\nlocal tx, ty, tz\nfor i = 1, Argus.getNumTimedDraws() do\n    local shapeType, x, y, z, _, _, _, _, colorStart, colorEnd = Argus.getTimedDrawBaseInfo(i)\n    if shapeType == \"circle\" and (colorEnd == purple or colorStart == purple) then\n        tx, ty, tz = x, y, z\n        break\n    end\nend\n\nif tx then\n    local dx, dy, dz = playerPos.x - tx, playerPos.y - ty, playerPos.z - tz\n    if dx * dx + dy * dy + dz * dz > 4 then -- > 2 yalms, squared\n        local drawer = TensorCore.getCachedDrawer(0xFF00FF00, 0xFF00FF00, 0xFF00FF00, 0xFF00FF00, 1)\n        drawer:addLine(playerPos.x, playerPos.y, playerPos.z, tx, ty, tz, 4)\n    end\nend\n\nself.used = true",
							conditions = 
							{
								
								{
									"202011a2-3c26-23a8-bf30-7f570cda3dff",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_CD",
							uuid = "bd5ee627-a904-1e68-9cea-ced4f12d5be9",
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
							conditionLua = "return AnyoneCore ~= nil",
							dequeueIfLuaFalse = true,
							name = "AnyoneCore",
							uuid = "202011a2-3c26-23a8-bf30-7f570cda3dff",
							version = 3,
						},
						inheritedIndex = 1,
					},
				},
				eventType = 12,
				mechanicTime = 269.6455060413,
				name = "[Lj Draw] Line to Forsaken Spot",
				timeRange = true,
				timelineIndex = 48,
				timerEndOffset = 11,
				timerStartOffset = -5,
				uuid = "e01f33a3-f127-2546-9c76-41a9fdbf94af",
				version = 2,
			},
		},
	},
	[50] = 
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
							actionLua = "local ahead = 3.5 -- yalms ahead of the arrow tip the target spot sits\nlocal playerPos = TensorCore.mGetPlayer().pos\n\nfor i = 1, Argus.getNumTimedDraws() do\n    local shapeType, x, y, z = Argus.getTimedDrawBaseInfo(i)\n    if shapeType == \"arrow\" and x then\n        local length, _, tipLength, _, heading = Argus.getTimedArrowInfo(i)\n        local source  = { x = x, y = y, z = z }\n        local tipDist = (length or 0) + (tipLength or 0)\n\n        -- Target spot: AHEAD yalms past the arrow tip, along its heading.\n        local spot = TensorCore.getPosInDirection(source, heading, tipDist + ahead)\n\n        local dx, dy, dz = playerPos.x - spot.x, playerPos.y - spot.y, playerPos.z - spot.z\n        if dx * dx + dy * dy + dz * dz > 4 then -- > 2 yalms, squared to skip sqrt + table alloc\n            local drawer = TensorCore.getCachedDrawer(0xFF00FF00, 0xFF00FF00, 0xFF00FF00, 0xFF00FF00, 1)\n            drawer:addLine(playerPos.x, playerPos.y, playerPos.z, spot.x, spot.y, spot.z, 4)\n        end\n        break\n    end\nend\n\nself.used = true",
							conditions = 
							{
								
								{
									"66316e86-564d-3166-96aa-5d3a96b791d0",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_CD",
							uuid = "1e1e5507-8e77-97af-a1a6-1d001d15396e",
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
							conditionLua = "return AnyoneCore ~= nil",
							dequeueIfLuaFalse = true,
							name = "AnyoneCore",
							uuid = "66316e86-564d-3166-96aa-5d3a96b791d0",
							version = 3,
						},
						inheritedIndex = 1,
					},
				},
				eventType = 12,
				mechanicTime = 278.89733564761,
				name = "[Lj Draw] Line to Bait",
				randomOffset = 5,
				timeRange = true,
				timelineIndex = 50,
				timerEndOffset = 5,
				timerOffset = -5,
				timerStartOffset = 0.5,
				uuid = "daa7cd95-03a4-86e2-8431-eb12f2d8faf4",
				version = 2,
			},
		},
	},
	[53] = 
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
							actionLua = "local playerPos = TensorCore.mGetPlayer().pos\nlocal purple = 3539271935\n\nlocal tx, ty, tz\nfor i = 1, Argus.getNumTimedDraws() do\n    local shapeType, x, y, z, _, _, _, _, colorStart, colorEnd = Argus.getTimedDrawBaseInfo(i)\n    if shapeType == \"circle\" and (colorEnd == purple or colorStart == purple) then\n        tx, ty, tz = x, y, z\n        break\n    end\nend\n\nif tx then\n    local dx, dy, dz = playerPos.x - tx, playerPos.y - ty, playerPos.z - tz\n    if dx * dx + dy * dy + dz * dz > 4 then -- > 2 yalms, squared\n        local drawer = TensorCore.getCachedDrawer(0xFF00FF00, 0xFF00FF00, 0xFF00FF00, 0xFF00FF00, 1)\n        drawer:addLine(playerPos.x, playerPos.y, playerPos.z, tx, ty, tz, 4)\n    end\nend\n\nself.used = true",
							conditions = 
							{
								
								{
									"fa1d8fe1-da61-83f3-a9a1-6451474c9c2a",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_CD",
							uuid = "bd5ee627-a904-1e68-9cea-ced4f12d5be9",
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
							conditionLua = "return AnyoneCore ~= nil",
							dequeueIfLuaFalse = true,
							name = "AnyoneCore",
							uuid = "fa1d8fe1-da61-83f3-a9a1-6451474c9c2a",
							version = 3,
						},
						inheritedIndex = 1,
					},
				},
				eventType = 12,
				mechanicTime = 280.23863811015,
				name = "[Lj Draw] Line to Forsaken Spot",
				timeRange = true,
				timelineIndex = 53,
				timerEndOffset = 20,
				timerStartOffset = 5,
				uuid = "d5725a3e-beff-5b2e-84c7-5c400f429642",
				version = 2,
			},
		},
	},
	[56] = 
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
							actionLua = "local ahead = 3.5 -- yalms ahead of the arrow tip the target spot sits\nlocal playerPos = TensorCore.mGetPlayer().pos\n\nfor i = 1, Argus.getNumTimedDraws() do\n    local shapeType, x, y, z = Argus.getTimedDrawBaseInfo(i)\n    if shapeType == \"arrow\" and x then\n        local length, _, tipLength, _, heading = Argus.getTimedArrowInfo(i)\n        local source  = { x = x, y = y, z = z }\n        local tipDist = (length or 0) + (tipLength or 0)\n\n        -- Target spot: AHEAD yalms past the arrow tip, along its heading.\n        local spot = TensorCore.getPosInDirection(source, heading, tipDist + ahead)\n\n        local dx, dy, dz = playerPos.x - spot.x, playerPos.y - spot.y, playerPos.z - spot.z\n        if dx * dx + dy * dy + dz * dz > 4 then -- > 2 yalms, squared to skip sqrt + table alloc\n            local drawer = TensorCore.getCachedDrawer(0xFF00FF00, 0xFF00FF00, 0xFF00FF00, 0xFF00FF00, 1)\n            drawer:addLine(playerPos.x, playerPos.y, playerPos.z, spot.x, spot.y, spot.z, 4)\n        end\n        break\n    end\nend\n\nself.used = true",
							conditions = 
							{
								
								{
									"54f55f12-af38-aa9a-91b3-16b899b9ed1e",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_CD",
							uuid = "1e1e5507-8e77-97af-a1a6-1d001d15396e",
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
							conditionLua = "return AnyoneCore ~= nil",
							dequeueIfLuaFalse = true,
							name = "AnyoneCore",
							uuid = "54f55f12-af38-aa9a-91b3-16b899b9ed1e",
							version = 3,
						},
						inheritedIndex = 1,
					},
				},
				eventType = 12,
				mechanicTime = 299.97907895232,
				name = "[Lj Draw] Line to Bait",
				randomOffset = 5,
				timeRange = true,
				timelineIndex = 56,
				timerEndOffset = 5,
				timerOffset = -5,
				timerStartOffset = 0.5,
				uuid = "426c7d2b-0802-693f-bcf8-c63e718b29fd",
				version = 2,
			},
		},
	},
	[59] = 
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
							actionLua = "local playerPos = TensorCore.mGetPlayer().pos\nlocal purple = 3539271935\n\nlocal tx, ty, tz\nfor i = 1, Argus.getNumTimedDraws() do\n    local shapeType, x, y, z, _, _, _, _, colorStart, colorEnd = Argus.getTimedDrawBaseInfo(i)\n    if shapeType == \"circle\" and (colorEnd == purple or colorStart == purple) then\n        tx, ty, tz = x, y, z\n        break\n    end\nend\n\nif tx then\n    local dx, dy, dz = playerPos.x - tx, playerPos.y - ty, playerPos.z - tz\n    if dx * dx + dy * dy + dz * dz > 4 then -- > 2 yalms, squared\n        local drawer = TensorCore.getCachedDrawer(0xFF00FF00, 0xFF00FF00, 0xFF00FF00, 0xFF00FF00, 1)\n        drawer:addLine(playerPos.x, playerPos.y, playerPos.z, tx, ty, tz, 4)\n    end\nend\n\nself.used = true",
							conditions = 
							{
								
								{
									"2d02cffc-1ff1-f7ed-a674-92e4e44d4b60",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_CD",
							uuid = "bd5ee627-a904-1e68-9cea-ced4f12d5be9",
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
							conditionLua = "return AnyoneCore ~= nil",
							dequeueIfLuaFalse = true,
							name = "AnyoneCore",
							uuid = "2d02cffc-1ff1-f7ed-a674-92e4e44d4b60",
							version = 3,
						},
						inheritedIndex = 1,
					},
				},
				eventType = 12,
				mechanicTime = 301.30844266449,
				name = "[Lj Draw] Line to Forsaken Spot",
				timeRange = true,
				timelineIndex = 59,
				timerEndOffset = 19,
				timerStartOffset = 5,
				uuid = "a98b00da-0ec4-a064-807a-b298cfd5e148",
				version = 2,
			},
		},
	},
	[62] = 
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
							actionLua = "for i = 1, Argus.getNumTimedDraws() do\n    local shapeType, _, _, _, _, _, _, uuid = Argus.getTimedDrawBaseInfo(i)\n    if shapeType == \"arrow\" and uuid then\n        Argus.deleteTimedShape(uuid)\n        break\n    end\nend\n\nself.used = true",
							conditions = 
							{
								
								{
									"2345597f-cb7e-bb31-9a43-f713c8658cca",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_CD",
							uuid = "0c9a2faf-d70b-7a53-aa31-aa8b25d2ab7e",
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
							conditionLua = "return AnyoneCore ~= nil",
							dequeueIfLuaFalse = true,
							name = "AnyoneCore",
							uuid = "2345597f-cb7e-bb31-9a43-f713c8658cca",
							version = 3,
						},
						inheritedIndex = 1,
					},
				},
				eventType = 12,
				mechanicTime = 321.02450192489,
				name = "[Lj Draw] Delete Past/Future Arrow",
				timeRange = true,
				timelineIndex = 62,
				timerEndOffset = -1,
				timerOffset = -2,
				timerStartOffset = -4,
				uuid = "04a2cb6e-23f8-b5ea-9b29-1b4a1aa7da02",
				version = 2,
			},
		},
	},
	[64] = 
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
							actionLua = "local sourcePos = TensorCore.mGetPlayer().pos\n\n-- Waymark 1 = 'A' (markers 1-8 map to A B C D 1 2 3 4).\nlocal targetX, targetY, targetZ, isActive = Argus.getWaymarkInfo(1)\n\n-- Proceed only if the waymark is placed and active.\nif isActive then\n    local targetPos = { x = targetX, y = targetY, z = targetZ }\n\n    -- Exact heading and distance from the player to the waymark.\n    local heading = TensorCore.getHeadingToTarget(sourcePos, targetPos)\n    local totalDistance = TensorCore.getDistance2d(sourcePos, targetPos)\n\n    -- Proximity scaling (use totalDistance to keep scaling visually consistent).\n    local scale = math.min(1, totalDistance / 15)\n    local baseWidth = math.max(0.5, 1 * scale)\n    local tipWidth = math.max(1.5, 3 * scale)\n    local tipLength = math.max(2, 3 * scale)\n\n    -- Arrow spans the full distance from the player to the waymark, minus the tip.\n    local baseLength = totalDistance - tipLength\n\n    if baseLength > 0 then\n        local arrowDrawer = TensorCore.getCachedDrawer(0xFF00FFFF, 0xFF0088FF, 0xFF0000FF, 0xFFFFFFFF, 2)\n        arrowDrawer:addArrow(\n            sourcePos.x, sourcePos.y, sourcePos.z,\n            heading,\n            baseLength, baseWidth, tipLength, tipWidth,\n            false, Argus2.RenderFlags.FLAG_RENDER_OVERLAY\n        )\n    end\nend\n\nself.used = true",
							gVar = "ACR_RikuSGE3_CD",
							uuid = "8fdb0cac-68d8-97dd-8579-50405d001bc5",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				eventType = 12,
				mechanicTime = 321.78311722413,
				name = "[Lj Draw] Arrow to A Waymark",
				timeRange = true,
				timelineIndex = 64,
				timerEndOffset = 5,
				timerOffset = -0.5799999833107,
				timerStartOffset = -0.5,
				uuid = "4c31f755-6e64-8a32-ac8d-4bda4afe8845",
				version = 2,
			},
		},
	},
	[67] = 
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
							actionLua = "local arenaOrigin = { x = 100, y = 0, z = 100 }\nlocal displayDuration = 5000\nlocal displayDelay = 10000\n\ndata.ljClockwiseTrineLocations = data.ljClockwiseTrineLocations or {}\n\nlocal spawnedObject = TensorCore.mGetEntity(eventArgs.entityID)\nlocal recordedLocations = data.ljClockwiseTrineLocations\nif #recordedLocations >= 3 then\n    self.used = true\n    return\nend\n\nrecordedLocations[#recordedLocations + 1] = {\n    x = spawnedObject.pos.x,\n    y = spawnedObject.pos.y,\n    z = spawnedObject.pos.z,\n}\n\nif #recordedLocations == 3 then\n    local destination = recordedLocations[1]\n    local smallestTurn = math.huge\n\n    for index = 1, #recordedLocations do\n        local candidate = recordedLocations[index]\n        local eastwardOffset = candidate.x - arenaOrigin.x\n        local northwardOffset = arenaOrigin.z - candidate.z\n        local clockwiseTurn = math.atan2(eastwardOffset, northwardOffset)\n\n        if clockwiseTurn < 0 then\n            clockwiseTurn = clockwiseTurn + (math.pi * 2)\n        end\n\n        if clockwiseTurn < smallestTurn then\n            smallestTurn = clockwiseTurn\n            destination = candidate\n        end\n    end\n\n    local origin = TensorCore.mGetPlayer().pos\n    local travelDistance = TensorCore.getDistance2d(origin, destination)\n    local scale = math.min(1, travelDistance / 15)\n    local baseWidth = math.max(0.5, 1 * scale)\n    local tipWidth = math.max(1.5, 3 * scale)\n    local tipLength = math.max(2, 3 * scale)\n    local baseLength = travelDistance - tipLength\n\n    if baseLength > 0 then\n        local heading = TensorCore.getHeadingToTarget(origin, destination)\n        local arrowDrawer = TensorCore.getCachedDrawer(\n            0xFF00FFFF,\n            0xFF0088FF,\n            0xFF0000FF,\n            0xFFFFFFFF,\n            2\n        )\n\n        arrowDrawer:addTimedArrow(\n            displayDuration,\n            origin.x, origin.y, origin.z,\n            heading,\n            baseLength, baseWidth, tipLength, tipWidth,\n            displayDelay, false, Argus2.RenderFlags.FLAG_RENDER_OVERLAY\n        )\n    end\nend\n\nself.used = true",
							conditions = 
							{
								
								{
									"f1a7c30d-b35e-012e-a7e1-93a1ef6e1b8e",
									true,
								},
								
								{
									"56ca98b2-9f3a-50fe-8428-eef29bff4fd9",
									true,
								},
								
								{
									"c432a01f-f902-79bc-9890-b270769a04b6",
									false,
								},
								
								{
									"1d642120-c55b-a5ac-a0c0-9d14f7a1a4ba",
									true,
								},
							},
							gVar = "ACR_TensorMagnum3_CD",
							name = "Clockwise",
							uuid = "5cbb9f6c-4c7a-8962-9e27-dae3ee1c7504",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local arenaOrigin = { x = 100, y = 0, z = 100 }\nlocal displayDuration = 5000\nlocal displayDelay = 10000\n\ndata.ljCounterclockwiseTrineLocations = data.ljCounterclockwiseTrineLocations or {}\n\nlocal spawnedObject = TensorCore.mGetEntity(eventArgs.entityID)\nlocal recordedLocations = data.ljCounterclockwiseTrineLocations\nif #recordedLocations >= 3 then\n    self.used = true\n    return\nend\n\nrecordedLocations[#recordedLocations + 1] = {\n    x = spawnedObject.pos.x,\n    y = spawnedObject.pos.y,\n    z = spawnedObject.pos.z,\n}\n\nif #recordedLocations == 3 then\n    local destination = recordedLocations[1]\n    local smallestTurn = math.huge\n\n    for index = 1, #recordedLocations do\n        local candidate = recordedLocations[index]\n        local westwardOffset = arenaOrigin.x - candidate.x\n        local northwardOffset = arenaOrigin.z - candidate.z\n        local counterclockwiseTurn = math.atan2(westwardOffset, northwardOffset)\n\n        if counterclockwiseTurn < 0 then\n            counterclockwiseTurn = counterclockwiseTurn + (math.pi * 2)\n        end\n\n        if counterclockwiseTurn < smallestTurn then\n            smallestTurn = counterclockwiseTurn\n            destination = candidate\n        end\n    end\n\n    local origin = TensorCore.mGetPlayer().pos\n    local travelDistance = TensorCore.getDistance2d(origin, destination)\n    local scale = math.min(1, travelDistance / 15)\n    local baseWidth = math.max(0.5, 1 * scale)\n    local tipWidth = math.max(1.5, 3 * scale)\n    local tipLength = math.max(2, 3 * scale)\n    local baseLength = travelDistance - tipLength\n\n    if baseLength > 0 then\n        local heading = TensorCore.getHeadingToTarget(origin, destination)\n        local arrowDrawer = TensorCore.getCachedDrawer(\n            0xFF00FFFF,\n            0xFF0088FF,\n            0xFF0000FF,\n            0xFFFFFFFF,\n            2\n        )\n\n        arrowDrawer:addTimedArrow(\n            displayDuration,\n            origin.x, origin.y, origin.z,\n            heading,\n            baseLength, baseWidth, tipLength, tipWidth,\n            displayDelay, false, Argus2.RenderFlags.FLAG_RENDER_OVERLAY\n        )\n    end\nend\n\nself.used = true",
							conditions = 
							{
								
								{
									"f1a7c30d-b35e-012e-a7e1-93a1ef6e1b8e",
									true,
								},
								
								{
									"56ca98b2-9f3a-50fe-8428-eef29bff4fd9",
									true,
								},
								
								{
									"c432a01f-f902-79bc-9890-b270769a04b6",
									true,
								},
								
								{
									"1d642120-c55b-a5ac-a0c0-9d14f7a1a4ba",
									true,
								},
							},
							gVar = "ACR_RikuWAR3_CD",
							name = "Counter Clockwise",
							uuid = "64d27cad-d625-a48b-9f21-1fd390384074",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Event",
							comparator = 3,
							dequeueIfLuaFalse = true,
							eventArgType = 2,
							eventIntValue = 16,
							name = "Event: A2 == 16",
							uuid = "f1a7c30d-b35e-012e-a7e1-93a1ef6e1b8e",
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
							eventArgType = 3,
							eventIntValue = 32,
							name = "Event: A3 == 32",
							uuid = "56ca98b2-9f3a-50fe-8428-eef29bff4fd9",
							version = 3,
						},
						inheritedIndex = 2,
					},
					
					{
						data = 
						{
							category = "Event",
							dequeueIfLuaFalse = true,
							eventArgOptionType = 2,
							eventEntityContentID = 2015154,
							name = "Event: ContentID 2015154",
							uuid = "0077309c-948d-c8b1-8d85-8e5c93a4bcf9",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Event",
							dequeueIfLuaFalse = true,
							eventArgOptionType = 2,
							eventEntityContentID = 2015155,
							name = "Event: ContentID 2015155",
							uuid = "85e013db-f4ef-7eef-81b4-d286f0e485fd",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 9,
							name = "Self: Tank",
							partyTargetType = "Tank",
							uuid = "c432a01f-f902-79bc-9890-b270769a04b6",
							version = 3,
						},
						inheritedIndex = 5,
					},
					
					{
						data = 
						{
							category = "Filter",
							conditions = 
							{
								
								{
									"0077309c-948d-c8b1-8d85-8e5c93a4bcf9",
									true,
								},
								
								{
									"85e013db-f4ef-7eef-81b4-d286f0e485fd",
									true,
								},
							},
							matchAnyBuff = true,
							name = "F - OR Gate ContentIDs",
							partyTargetNumber = 0,
							uuid = "1d642120-c55b-a5ac-a0c0-9d14f7a1a4ba",
							version = 3,
						},
						inheritedIndex = 6,
					},
				},
				eventType = 19,
				loop = true,
				mechanicTime = 352.92100258191,
				name = "[Lj Draw] Draw Arrow to Trine Safespot",
				timeRange = true,
				timelineIndex = 67,
				timerEndOffset = 15,
				timerStartOffset = -5,
				uuid = "1b0ef89a-2e9f-f6c1-a18a-4517dd784975",
				version = 2,
			},
			inheritedIndex = 1,
		},
	},
	[70] = 
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
							actionLua = "local target = TensorCore.mGetEntity(eventArgs.detectionTargetID)\n\nif target then\n    local drawer = TensorCore.getMoogleDrawer(\n        nil,\n        Argus2.RenderFlags.FLAG_RENDER_OVERLAY\n    )\n\n    drawer:addCircle(\n        target.pos.x,\n        target.pos.y,\n        target.pos.z,\n        7,\n        false\n    )\nend\n\nself.used = true",
							conditions = 
							{
								
								{
									"34ebc686-3c66-beef-b3f9-0c96e75de520",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_CD",
							uuid = "ade79668-270a-8259-83fb-22affb19dcf3",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Filter",
							filterTargetType = "Party",
							subtypeRangeCheckSourceType = "ContentID",
							subtypeRangeSourceContentID = 7131,
							uuid = "34ebc686-3c66-beef-b3f9-0c96e75de520",
							version = 3,
						},
					},
				},
				eventType = 12,
				mechanicTime = 367.80061742504,
				name = "[Lj Draw] Tankbuster Closest",
				timeRange = true,
				timelineIndex = 70,
				timerEndOffset = 2.5,
				timerStartOffset = -0.80000001192093,
				uuid = "43ccc00d-cfad-b947-94ef-f835e2d23120",
				version = 2,
			},
		},
	},
	[74] = 
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
							actionLua = "local player = TensorCore.mGetPlayer()\nlocal playerPos = player.pos\n\nlocal kbSourcePos = {\n    x = 100,\n    y = 0,\n    z = 100\n}\nlocal kbDistance = 15\n\nlocal distanceToPlayer = TensorCore.getDistance2d(kbSourcePos, playerPos)\nlocal totalDistance = distanceToPlayer + kbDistance\nlocal heading = TensorCore.getHeadingToTarget(kbSourcePos, playerPos)\n\nlocal baseWidth = 0.50\nlocal tipWidth = 1.5\nlocal tipLength = 1.5\nlocal baseLength = totalDistance - tipLength\n\nlocal arrowDrawer = TensorCore.getCachedDrawer(0xFF00FFFF, 0xFF0088FF, 0xFF0000FF, 0xFFFFFFFF, 2)\n\narrowDrawer:addArrow(kbSourcePos.x, kbSourcePos.y + 0.15, kbSourcePos.z, heading, baseLength, baseWidth, tipLength,\n    tipWidth, false, Argus2.RenderFlags.FLAG_RENDER_OVERLAY)\n\nself.used = true",
							gVar = "ACR_RikuMNK3_CD",
							uuid = "0a43bb3f-77dc-669a-b343-8afbb51ac482",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				eventType = 12,
				mechanicTime = 381.48132335556,
				name = "[Lj Draw] KB Arrow",
				timeRange = true,
				timelineIndex = 74,
				timerEndOffset = 6,
				uuid = "7cce803f-ee1a-0fc8-a9ba-eae74acd1a88",
				version = 2,
			},
		},
	},
	[76] = 
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
							actionLua = "local timeout = 7000\nlocal player = TensorCore.mGetPlayer()\nlocal sourcePos = player.pos\n\nlocal Roster = AnyoneCore.Roster\n\n-- Fixed destinations\nlocal exdeathPos = { x = 108.000, y = 0.000, z = 100.000 } -- Exdeath (higher-priority tank)\nlocal chaosPos   = { x = 92.000,  y = 0.000, z = 100.000 } -- Chaos   (other tank)\n\n-- Tank priority toward Exdeath (lower rank = goes to Exdeath first)\nlocal tankPrio = { war = 1, drk = 2, gnb = 3, pld = 4 }\n\n-- Rank a tank entity by its job (lower = higher priority for Exdeath)\nlocal function tankRank(ent)\n    return tankPrio[AnyoneCore.jobs[ent.job]] or 50\nend\n\n-- Resolve the two tank seats and decide which one takes Exdeath.\nlocal t1, t2 = Roster.entOf(\"T1\"), Roster.entOf(\"T2\")\nlocal r1, r2 = tankRank(t1), tankRank(t2)\n\nlocal exdeathSlot\nif r1 ~= r2 then\n    exdeathSlot = (r1 < r2) and \"T1\" or \"T2\"\nelse\n    -- Same job: tiebreak by entity id but shit's gonna be fucked anyway\n    exdeathSlot = (id1 <= id2) and \"T1\" or \"T2\"\nend\n\n-- Determine my group. Tanks are decided by job priority above; everyone else is fixed by slot.\nlocal mySlot = Roster.mySlot()\nlocal nonTankExdeath = { H2 = true, R1 = true, R2 = true } -- others go to Chaos (H1, M1, M2)\n\nlocal targetPos\nif mySlot == \"T1\" or mySlot == \"T2\" then\n    targetPos = (mySlot == exdeathSlot) and exdeathPos or chaosPos\nelseif nonTankExdeath[mySlot] then\n    targetPos = exdeathPos\nelseif mySlot then\n    targetPos = chaosPos\nend\n\n-- Proceed only if a destination was assigned\nif targetPos then\n    local heading = TensorCore.getHeadingToTarget(sourcePos, targetPos)\n    local totalDistance = TensorCore.getDistance2d(sourcePos, targetPos)\n\n    -- Proximity Scaling\n    local scale = math.min(1, totalDistance / 15)\n    local baseWidth = math.max(0.5, 1 * scale)\n    local tipWidth = math.max(1.5, 3 * scale)\n    local tipLength = math.max(2, 3 * scale)\n\n    local baseLength = totalDistance - tipLength\n\n    -- Draw the Arrow\n    if baseLength > 0 then\n        local arrowDrawer = TensorCore.getCachedDrawer(0xFF00FFFF, 0xFF0088FF, 0xFF0000FF, 0xFFFFFFFF, 2\n)\n        arrowDrawer:addTimedArrow(\n            timeout,\n            sourcePos.x, sourcePos.y, sourcePos.z,\n            heading,\n            baseLength, baseWidth, tipLength, tipWidth,\n            0, false, Argus2.RenderFlags.FLAG_RENDER_OVERLAY\n        )\n    end\nend\n\nself.used = true",
							conditions = 
							{
								
								{
									"064ab097-39cb-d8a0-9652-f1bd5bfad9c2",
									true,
								},
								
								{
									"d26fbdae-e67d-1aff-a86f-724281e7e456",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_CD",
							uuid = "a48e13c4-8a20-9de0-8ef4-8d3c5b6f3e2c",
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
							conditionLua = "return AnyoneCore.Roster ~= nil and AnyoneCore.Roster.mySlot() ~= nil",
							dequeueIfLuaFalse = true,
							name = "Role Set",
							uuid = "064ab097-39cb-d8a0-9652-f1bd5bfad9c2",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return AnyoneCore ~= nil",
							dequeueIfLuaFalse = true,
							name = "AnyoneCore",
							uuid = "d26fbdae-e67d-1aff-a86f-724281e7e456",
							version = 3,
						},
					},
				},
				mechanicTime = 424.39347120621,
				name = "[Lj Draw] Arrow to Boss",
				timelineIndex = 76,
				timerOffset = -5,
				uuid = "12089b8f-4a71-f6be-b499-46319a83ba8f",
				version = 2,
			},
		},
	},
	[79] = 
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
							actionLua = "local timeout = 9000\n\nlocal roleTargets = {\n    [\"H1\"] = 2015291, [\"H2\"] = 2015291, -- Water Crystal\n    [\"R1\"] = 2015290, [\"R2\"] = 2015290, -- Fire Crystal\n    [\"MT\"] = 2015292, [\"OT\"] = 2015292, [\"M1\"] = 2015292, [\"M2\"] = 2015292  -- Wind Crystal\n}\n\nlocal Roster = AnyoneCore.Roster\n\n-- Tank priority toward Exdeath (lower rank = points to centre; the other tank points at the wind crystal).\nlocal tankPrio = { war = 1, drk = 2, gnb = 3, pld = 4 }\nlocal function tankRank(ent)\n    return tankPrio[AnyoneCore.jobs[ent.job]] or 50\nend\n\n-- Decide which tank seat is the Exdeath (centre) tank by job, not by roster MT/OT.\nlocal t1, t2 = Roster.entOf(\"T1\"), Roster.entOf(\"T2\")\nlocal r1, r2 = tankRank(t1), tankRank(t2)\nlocal exdeathSlot\nif r1 ~= r2 then\n    exdeathSlot = (r1 < r2) and \"T1\" or \"T2\"\nelse\n    exdeathSlot = (t1.id <= t2.id) and \"T1\" or \"T2\" -- same job: deterministic tiebreak by id\nend\n\nlocal contentID = eventArgs.entityContentID\nlocal mySlot = Roster.mySlot()\nlocal myRole = (mySlot == \"T1\" and \"MT\") or (mySlot == \"T2\" and \"OT\") or mySlot\n\nif roleTargets[myRole] == contentID then\n    local entity = TensorCore.mGetEntity(eventArgs.entityID)\n    local sourcePos = TensorCore.mGetPlayer().pos\n    local targetPos = { x = entity.pos.x, y = entity.pos.y, z = entity.pos.z }\n\n    if mySlot == exdeathSlot then -- Exdeath tank -> Mid\n        targetPos.x = 100.0\n        targetPos.z = 100.0\n    end\n\n    local heading = TensorCore.getHeadingToTarget(sourcePos, targetPos)\n    local totalDistance = TensorCore.getDistance2d(sourcePos, targetPos)\n    local scale = math.min(1, totalDistance / 15)\n    local baseWidth = math.max(0.5, 1 * scale)\n    local tipWidth = math.max(1.5, 3 * scale)\n    local tipLength = math.max(2, 3 * scale)\n    local baseLength = totalDistance - tipLength\n\n    if baseLength > 0 then\n        local arrowDrawer = TensorCore.getCachedDrawer(0xFF00FFFF, 0xFF0088FF, 0xFF0000FF, 0xFFFFFFFF, 2)\n        arrowDrawer:addTimedArrow(\n            timeout,\n            sourcePos.x, sourcePos.y, sourcePos.z,\n            heading,\n            baseLength, baseWidth, tipLength, tipWidth,\n            0, false, Argus2.RenderFlags.FLAG_RENDER_OVERLAY\n        )\n    end\nend\n\nself.used = true",
							conditions = 
							{
								
								{
									"a0225b2c-4cb9-7884-9db9-620a44267b80",
									true,
								},
								
								{
									"1b28bf19-6f7f-2c6e-866e-f426448ccb85",
									true,
								},
								
								{
									"ef3e2b6a-bbfb-502a-afdf-1ff3f02c6e8a",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_CD",
							name = "Arrow to Crystals",
							uuid = "c9dd2649-2492-fe24-aac7-9148d86367f9",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local timeout = 48000\n\nlocal crystalNames = {\n    [2015291] = { name = \"Water\", color = 0xFFFFBF00 }, -- blue\n    [2015290] = { name = \"Fire\",  color = 0xFF1133FF }, -- red\n    [2015292] = { name = \"Wind\",  color = 0xFF55FF55 }, -- green\n}\n\nlocal info = crystalNames[eventArgs.entityContentID]\nAnyoneCore.addTimedWorldTextOnEnt(timeout, info.name, eventArgs.entityID, info.color, true, 1.5, 2.0)\n\nself.used = true",
							conditions = 
							{
								
								{
									"1b28bf19-6f7f-2c6e-866e-f426448ccb85",
									true,
								},
								
								{
									"ef3e2b6a-bbfb-502a-afdf-1ff3f02c6e8a",
									true,
								},
							},
							gVar = "ACR_RikuWAR3_CD",
							name = "Crystal WorldText",
							uuid = "fd280aa2-1dfa-6789-8c9f-74a2e497b2f0",
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
							conditionLua = "return AnyoneCore.Roster ~= nil and AnyoneCore.Roster.mySlot() ~= nil",
							dequeueIfLuaFalse = true,
							name = "Role Set",
							uuid = "a0225b2c-4cb9-7884-9db9-620a44267b80",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return eventArgs.entityContentID == 2015290\n    or eventArgs.entityContentID == 2015291\n    or eventArgs.entityContentID == 2015292",
							dequeueIfLuaFalse = true,
							name = "Crystals Spawned",
							uuid = "1b28bf19-6f7f-2c6e-866e-f426448ccb85",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return AnyoneCore ~= nil",
							dequeueIfLuaFalse = true,
							name = "AnyoneCore",
							uuid = "ef3e2b6a-bbfb-502a-afdf-1ff3f02c6e8a",
							version = 3,
						},
					},
				},
				eventType = 29,
				loop = true,
				mechanicTime = 450.00390950196,
				name = "[Lj Draw] Crystals",
				timeRange = true,
				timelineIndex = 79,
				timerEndOffset = 2,
				timerOffset = 1,
				timerStartOffset = -2,
				uuid = "44a0fef8-f1b9-37f1-b679-6d457d815898",
				version = 2,
			},
		},
	},
	[91] = 
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
							actionLua = "local timeout = 7700\nlocal player = TensorCore.mGetPlayer()\nlocal targetEntity = TensorCore.mGetEntity(eventArgs.entityID)\nlocal mySlot = AnyoneCore.Roster.mySlot()\nlocal myRole = (mySlot == \"T1\" and \"MT\") or (mySlot == \"T2\" and \"OT\") or mySlot\n\nif targetEntity ~= nil and myRole ~= nil then\n    local roleAngles = {\n        [\"H1\"] = -45, [\"H2\"] = -45, -- Far Left\n        [\"MT\"] = -15, [\"OT\"] = -15, -- Mid Left\n        [\"M1\"] = 15,  [\"M2\"] = 15,  -- Mid Right\n        [\"R1\"] = 45,  [\"R2\"] = 45   -- Far Right\n    }\n\n    local angleOffset = roleAngles[myRole]\n\n    if angleOffset then\n        local centerX = 100.0\n        local centerZ = 100.0\n        local radius = 5.0 -- Shared radius to stack the role pairs\n\n        -- Determine the angle from the entity towards the center of the arena (Relative South)\n        local dx = centerX - targetEntity.pos.x\n        local dz = centerZ - targetEntity.pos.z\n        local baseAngle = math.atan2(dx, dz) \n\n        -- Apply the role's specific spread offset\n        local finalAngle = baseAngle + math.rad(angleOffset)\n\n        local destPos = {\n            x = targetEntity.pos.x + (radius * math.sin(finalAngle)),\n            y = targetEntity.pos.y,\n            z = targetEntity.pos.z + (radius * math.cos(finalAngle))\n        }\n\n        local heading = TensorCore.getHeadingToTarget(player.pos, destPos)\n        local totalDistance = TensorCore.getDistance2d(player.pos, destPos)\n        local scale = math.min(1, totalDistance / 15)\n        local baseWidth = math.max(0.5, 1 * scale) \n        local tipWidth = math.max(1.5, 3 * scale)\n        local tipLength = math.max(2, 3 * scale)\n        local baseLength = totalDistance - tipLength\n\n        if baseLength > 0 then\n            local arrowDrawer = TensorCore.getCachedDrawer(0xFF00FFFF, 0xFF0088FF, 0xFF0000FF, 0xFFFFFFFF, 2)\n            arrowDrawer:addTimedArrow(\n                timeout, \n                player.pos.x, player.pos.y, player.pos.z, \n                heading, \n                baseLength, baseWidth, tipLength, tipWidth, \n                0, false, Argus2.RenderFlags.FLAG_RENDER_OVERLAY\n            )\n        end\n    end\nend\n\nself.used = true",
							conditions = 
							{
								
								{
									"27c30f8d-5374-c890-9e3d-9aef3b3c13af",
									true,
								},
								
								{
									"4309361d-7d58-2019-990e-f081251313e5",
									true,
								},
								
								{
									"f67643db-618a-4761-a4ef-a814863de01f",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_CD",
							uuid = "8eb6f957-15c0-c1ab-bcf3-59276b4513ab",
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
							conditionLua = "return AnyoneCore.Roster ~= nil and AnyoneCore.Roster.mySlot() ~= nil",
							dequeueIfLuaFalse = true,
							name = "Role Set",
							uuid = "27c30f8d-5374-c890-9e3d-9aef3b3c13af",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Event",
							eventArgType = 2,
							eventSpellID = 47891,
							name = "Event Spell ID: Vacuum Wave",
							uuid = "4309361d-7d58-2019-990e-f081251313e5",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return AnyoneCore ~= nil",
							dequeueIfLuaFalse = true,
							name = "AnyoneCore",
							uuid = "f67643db-618a-4761-a4ef-a814863de01f",
							version = 3,
						},
					},
				},
				eventType = 3,
				mechanicTime = 507.31761539671,
				name = "[Lj Draw] Draw Vacuum KB Preposition",
				timeRange = true,
				timelineIndex = 91,
				timerEndOffset = 5,
				timerStartOffset = -5,
				uuid = "87b1398d-f809-94e7-b6c3-f66b03d7534f",
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
							actionLua = "local entityId = eventArgs.entityID\nlocal kefka = TensorCore.mGetEntity(entityId)\n\ndata.ljUltimaBlasterSources = data.ljUltimaBlasterSources or {}\ndata.ljUltimaBlasterSourceIds = data.ljUltimaBlasterSourceIds or {}\n\nif not data.ljUltimaBlasterSourceIds[entityId] then\n    local order = #data.ljUltimaBlasterSources + 1\n\n    data.ljUltimaBlasterSourceIds[entityId] = true\n    data.ljUltimaBlasterSources[order] = {\n        entityId = entityId,\n        order = order,\n        position = {\n            x = kefka.pos.x,\n            y = kefka.pos.y,\n            z = kefka.pos.z,\n        },\n        dashHeading = kefka.pos.h,\n    }\n\n    if order == 1 then\n        data.ljUltimaBlasterChatReadyAt = nil\n    elseif order == 2 then\n        data.ljUltimaBlasterChatReadyAt = Now() + math.random(1000, 2500)\n    end\nend\n\nself.used = true",
							conditions = 
							{
								
								{
									"355ec23a-d070-8f8f-8047-293fd11a46e5",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_CD",
							uuid = "a1e07456-b429-9aeb-a7fa-7594b216ec43",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Event",
							dequeueIfLuaFalse = true,
							eventArgType = 2,
							eventSpellID = 47843,
							name = "Event: Ultima Blaster",
							uuid = "355ec23a-d070-8f8f-8047-293fd11a46e5",
							version = 3,
						},
					},
				},
				eventType = 2,
				loop = true,
				mechanicTime = 507.31761539671,
				name = "[Lj Data] Limit Cut Sources",
				timeRange = true,
				timelineIndex = 91,
				timerEndOffset = 20,
				timerStartOffset = -5,
				uuid = "5030a90a-2a4b-8535-86bc-24e0b8d956e6",
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
							actionLua = "local sources = data.ljUltimaBlasterSources\nlocal first = sources[1].position\nlocal second = sources[2].position\nlocal step = math.pi / 4\nlocal firstDirection = math.floor(math.atan2(first.x - 100, 100 - first.z) / step + 0.5) % 8\nlocal secondDirection = math.floor(math.atan2(second.x - 100, 100 - second.z) / step + 0.5) % 8\nlocal delta = (secondDirection - firstDirection) % 8\nlocal dashStep = delta < 4 and 1 or -1\nlocal partyStep = -dashStep\n\nlocal waymarkLabels = {\"A\", \"B\", \"C\", \"D\", \"1\", \"2\", \"3\", \"4\"}\nlocal waymarks = {}\nlocal radiusTotal = 0\n\nfor markerID = 1, 8 do\n    local x, y, z, isActive = Argus.getWaymarkInfo(markerID)\n    if not isActive then\n        data.ljUltimaBlasterMacro = nil\n        d(\"[Lj Macro] Ultima Blaster: all 8 waymarks must be active\")\n        self.used = true\n        return\n    end\n\n    waymarks[markerID] = {\n        label = waymarkLabels[markerID],\n        x = x,\n        z = z,\n    }\n\n    local dx = x - 100\n    local dz = z - 100\n    radiusTotal = radiusTotal + math.sqrt(dx * dx + dz * dz)\nend\n\nlocal waymarkRadius = radiusTotal / 8\nlocal markers = {}\n\nfor direction = 0, 7 do\n    local angle = direction * step\n    local targetX = 100 + math.sin(angle) * waymarkRadius\n    local targetZ = 100 - math.cos(angle) * waymarkRadius\n    local closestLabel\n    local closestDistance\n\n    for markerID = 1, 8 do\n        local waymark = waymarks[markerID]\n        local dx = waymark.x - targetX\n        local dz = waymark.z - targetZ\n        local distance = dx * dx + dz * dz\n\n        if closestDistance == nil or distance < closestDistance then\n            closestLabel = waymark.label\n            closestDistance = distance\n        end\n    end\n\n    markers[direction + 1] = closestLabel\nend\n\nlocal firstPairDirection = (firstDirection + (dashStep > 0 and 3 or 4)) % 8\nlocal lines = {}\n\nfor number = 1, 8 do\n    local pairStart = (firstPairDirection + partyStep * (number - 1)) % 8\n    local pairEnd = (pairStart + 1) % 8\n    lines[number] = number .. \" -> \" .. markers[pairStart + 1] .. markers[pairEnd + 1]\nend\n\ndata.ljUltimaBlasterMacro = {\n    startMarker = markers[firstDirection + 1],\n    direction = dashStep > 0 and \"Clockwise\" or \"Counterclockwise\",\n    waymarkRing = markers,\n    lines = lines,\n}\n\nlocal prefix = Lj_UMADDRAWS_LimitCutMacro == \"Party Chat\" and \"/p \" or \"/e \"\nTensorCore.sendParsedChatMessage(prefix .. lines[1])\nself.used = true",
							conditions = 
							{
								
								{
									"d0196d3b-4974-9cf0-8bf8-91cef6eaca06",
									true,
								},
							},
							name = "Chat 1 - Limit Cut 1",
							uuid = "62146819-e2af-ce8b-9f16-fb2916bcd0af",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local macro = data.ljUltimaBlasterMacro\nif macro == nil or macro.lines == nil or macro.lines[2] == nil then\n    self.used = true\n    return\nend\n\nlocal prefix = Lj_UMADDRAWS_LimitCutMacro == \"Party Chat\" and \"/p \" or \"/e \"\nTensorCore.sendParsedChatMessage(prefix .. macro.lines[2])\nself.used = true",
							conditions = 
							{
								
								{
									"d0196d3b-4974-9cf0-8bf8-91cef6eaca06",
									true,
								},
							},
							name = "Chat 2 - Limit Cut 2",
							uuid = "a3cfd1d6-c971-8404-a65e-da023c3502e0",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local macro = data.ljUltimaBlasterMacro\nif macro == nil or macro.lines == nil or macro.lines[3] == nil then\n    self.used = true\n    return\nend\n\nlocal prefix = Lj_UMADDRAWS_LimitCutMacro == \"Party Chat\" and \"/p \" or \"/e \"\nTensorCore.sendParsedChatMessage(prefix .. macro.lines[3])\nself.used = true",
							conditions = 
							{
								
								{
									"d0196d3b-4974-9cf0-8bf8-91cef6eaca06",
									true,
								},
							},
							name = "Chat 3 - Limit Cut 3",
							uuid = "82b01cc8-b573-8e5e-9c3b-359415494115",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local macro = data.ljUltimaBlasterMacro\nif macro == nil or macro.lines == nil or macro.lines[4] == nil then\n    self.used = true\n    return\nend\n\nlocal prefix = Lj_UMADDRAWS_LimitCutMacro == \"Party Chat\" and \"/p \" or \"/e \"\nTensorCore.sendParsedChatMessage(prefix .. macro.lines[4])\nself.used = true",
							conditions = 
							{
								
								{
									"d0196d3b-4974-9cf0-8bf8-91cef6eaca06",
									true,
								},
							},
							name = "Chat 4 - Limit Cut 4",
							uuid = "8092ea8d-9e41-5cba-8d4c-ba6930db59bb",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local macro = data.ljUltimaBlasterMacro\nif macro == nil or macro.lines == nil or macro.lines[5] == nil then\n    self.used = true\n    return\nend\n\nlocal prefix = Lj_UMADDRAWS_LimitCutMacro == \"Party Chat\" and \"/p \" or \"/e \"\nTensorCore.sendParsedChatMessage(prefix .. macro.lines[5])\nself.used = true",
							conditions = 
							{
								
								{
									"d0196d3b-4974-9cf0-8bf8-91cef6eaca06",
									true,
								},
							},
							name = "Chat 5 - Limit Cut 5",
							uuid = "aceb7c18-656a-d387-ab6b-3e8d4ed9f70d",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local macro = data.ljUltimaBlasterMacro\nif macro == nil or macro.lines == nil or macro.lines[6] == nil then\n    self.used = true\n    return\nend\n\nlocal prefix = Lj_UMADDRAWS_LimitCutMacro == \"Party Chat\" and \"/p \" or \"/e \"\nTensorCore.sendParsedChatMessage(prefix .. macro.lines[6])\nself.used = true",
							conditions = 
							{
								
								{
									"d0196d3b-4974-9cf0-8bf8-91cef6eaca06",
									true,
								},
							},
							name = "Chat 6 - Limit Cut 6",
							uuid = "87970e7c-78ec-643e-810f-3d20d828c708",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local macro = data.ljUltimaBlasterMacro\nif macro == nil or macro.lines == nil or macro.lines[7] == nil then\n    self.used = true\n    return\nend\n\nlocal prefix = Lj_UMADDRAWS_LimitCutMacro == \"Party Chat\" and \"/p \" or \"/e \"\nTensorCore.sendParsedChatMessage(prefix .. macro.lines[7])\nself.used = true",
							conditions = 
							{
								
								{
									"d0196d3b-4974-9cf0-8bf8-91cef6eaca06",
									true,
								},
							},
							name = "Chat 7 - Limit Cut 7",
							uuid = "711aa97d-1794-578c-b1e2-34c5ec07c3ab",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local macro = data.ljUltimaBlasterMacro\nif macro == nil or macro.lines == nil or macro.lines[8] == nil then\n    self.used = true\n    return\nend\n\nlocal prefix = Lj_UMADDRAWS_LimitCutMacro == \"Party Chat\" and \"/p \" or \"/e \"\nTensorCore.sendParsedChatMessage(prefix .. macro.lines[8])\nself.used = true",
							conditions = 
							{
								
								{
									"d0196d3b-4974-9cf0-8bf8-91cef6eaca06",
									true,
								},
							},
							name = "Chat 8 - Limit Cut 8",
							uuid = "b8efc672-bb9e-48a8-b61f-88075359f6c9",
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
							conditionLua = "local mode = Lj_UMADDRAWS_LimitCutMacro\nlocal sources = data.ljUltimaBlasterSources\nif mode ~= \"Echo Chat\" and mode ~= \"Party Chat\" then\n    return false\nend\nif sources == nil or #sources < 2 then\n    return false\nend\n\nlocal first = sources[1].position\nlocal second = sources[2].position\nif first == nil or second == nil then\n    return false\nend\n\nlocal step = math.pi / 4\nlocal firstDirection = math.floor(math.atan2(first.x - 100, 100 - first.z) / step + 0.5) % 8\nlocal secondDirection = math.floor(math.atan2(second.x - 100, 100 - second.z) / step + 0.5) % 8\nlocal delta = (secondDirection - firstDirection) % 8\nif delta == 0 or delta == 4 then\n    return false\nend\n\nlocal readyAt = data.ljUltimaBlasterChatReadyAt\nreturn readyAt ~= nil and Now() >= readyAt",
							name = "Macro Enabled + First 2 Hits",
							uuid = "d0196d3b-4974-9cf0-8bf8-91cef6eaca06",
							version = 3,
						},
					},
				},
				mechanicTime = 507.31761539671,
				name = "[Lj Macro] Ultima Blaster Limit Cut",
				throttleTime = 250,
				timeRange = true,
				timelineIndex = 91,
				timerEndOffset = 20,
				timerStartOffset = -5,
				uuid = "b41993a0-1492-0ea0-bb8c-f7734be79852",
				version = 2,
			},
		},
	},
	[93] = 
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
							actionLua = "-- Pairs are T1/T2, H1/H2, M1/M2, and R1/R2.\n\nlocal Roster = AnyoneCore.Roster\nlocal player = TensorCore.mGetPlayer()\nlocal mySlot = Roster.mySlot()\nlocal _, partnerOf = Roster.pairsOf(\"rolePairs\")\nlocal partnerID = partnerOf[player.id]\nlocal partner = partnerID and TensorCore.mGetEntity(partnerID)\n\nif partner then\n    local color\n\n    if mySlot == \"H1\" or mySlot == \"H2\" then\n        color = 0xFF00FF00 -- Green\n    elseif mySlot == \"T1\" or mySlot == \"T2\" then\n        color = 0xFFFF0000 -- Blue (ABGR)\n    else\n        color = 0xFF0000FF -- Red for melee and ranged DPS (ABGR)\n    end\n\n    local drawer = TensorCore.getCachedDrawer(color, color, color, color, 2)\n    drawer:addLine(\n        player.pos.x, player.pos.y, player.pos.z,\n        partner.pos.x, partner.pos.y, partner.pos.z,\n        5, 5\n    )\nend\n\nself.used = true",
							conditions = 
							{
								
								{
									"ce197692-1216-e128-afc3-fb5cbdc5f296",
									true,
								},
							},
							gVar = "ACR_RikuWAR3_CD",
							uuid = "2bfd56a1-878f-a8e2-9e99-c77fece8cb31",
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
							conditionLua = "return AnyoneCore.Roster ~= nil and AnyoneCore.Roster.mySlot() ~= nil",
							dequeueIfLuaFalse = true,
							name = "Role Set",
							uuid = "57932d35-132d-fd55-87bf-a5f121c170af",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return AnyoneCore ~= nil",
							dequeueIfLuaFalse = true,
							name = "AnyoneCore",
							uuid = "ce197692-1216-e128-afc3-fb5cbdc5f296",
							version = 3,
						},
					},
				},
				eventType = 12,
				mechanicTime = 511.44225832111,
				name = "[Lj Draw] Line to Role Pair",
				timeRange = true,
				timelineIndex = 93,
				timerEndOffset = 8,
				uuid = "51c47eb1-929d-ccce-8f41-0c0a04d710f1",
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
							actionLua = "local markerToNumber = {\n    [336] = 1,\n    [337] = 2,\n    [338] = 3,\n    [339] = 4,\n    [437] = 5,\n    [438] = 6,\n    [439] = 7,\n    [440] = 8,\n}\n\nlocal entityId = eventArgs.entityID\nlocal playerNumber = markerToNumber[eventArgs.markerID]\n\ndata.ljUltimaBlasterTargets = data.ljUltimaBlasterTargets or {}\ndata.ljUltimaBlasterTargets[playerNumber] = entityId\n\nif entityId == TensorCore.mGetPlayer().id then\n    data.ljUltimaBlasterPlayerNumber = playerNumber\nend\n\nself.used = true",
							conditions = 
							{
								
								{
									"101b1a1f-9a30-6174-a3b9-e712fbc902e3",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_CD",
							uuid = "d9a1ed22-a863-bdf7-a111-d9c8ba3f0ea0",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Event",
							eventArgType = 3,
							markerIDList = 
							{
								336,
								337,
								338,
								339,
								437,
								438,
								439,
								440,
							},
							name = "Event: Limit Cut Numbers",
							uuid = "101b1a1f-9a30-6174-a3b9-e712fbc902e3",
							version = 3,
						},
					},
				},
				eventType = 4,
				loop = true,
				mechanicTime = 511.44225832111,
				name = "[Lj Data] Record Limit Cut Markers",
				timeRange = true,
				timelineIndex = 93,
				timerEndOffset = 10,
				timerStartOffset = -2,
				uuid = "12d5008f-702e-d059-9298-fd666059504f",
				version = 2,
			},
		},
	},
	[101] = 
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
							actionLua = "local center = { x = 100, y = 0, z = 100 }\nlocal arenaRadius = 20\nlocal lineLength = 40\nlocal lineWidth = 6\nlocal playerCutoutRadius = 1.25\nlocal firstHitTimeout = 4500\nlocal hitInterval = 225\nlocal finalHitTimeout = firstHitTimeout + hitInterval * 7\nlocal green = 0x9900FF00 -- pure green, 60% alpha\nlocal transparent = 0x00000000\nlocal drawHeight = 0.05 -- raised flat overlay clears the decorative floor mesh\n\nlocal function normaliseAngle(angle)\n    while angle > math.pi do angle = angle - 2 * math.pi end\n    while angle <= -math.pi do angle = angle + 2 * math.pi end\n    return angle\nend\n\nlocal function buildExpectedLines()\n    local first = data.ljUltimaBlasterSources[1].position\n    local second = data.ljUltimaBlasterSources[2].position\n    local firstAngle = math.atan2(first.x - center.x, first.z - center.z)\n    local secondAngle = math.atan2(second.x - center.x, second.z - center.z)\n    local initialStep = normaliseAngle(secondAngle - firstAngle)\n    local sourceRadius = TensorCore.getDistance2d(center, first)\n    local targetRadius = 19\n    local lines = {}\n\n    for order = 1, 8 do\n        -- The final sequence rotates in the opposite direction to the dashes.\n        local sourceAngle = firstAngle - initialStep * (order - 1)\n        -- Players resolve halfway toward the next intercardinal on the far side.\n        local targetAngle = sourceAngle + math.pi - initialStep * 0.5\n        local sourcePos = {\n            x = center.x + math.sin(sourceAngle) * sourceRadius,\n            y = drawHeight,\n            z = center.z + math.cos(sourceAngle) * sourceRadius,\n        }\n        local targetPos = {\n            x = center.x + math.sin(targetAngle) * targetRadius,\n            y = drawHeight,\n            z = center.z + math.cos(targetAngle) * targetRadius,\n        }\n\n        lines[order] = {\n            sourcePos = sourcePos,\n            heading = TensorCore.getHeadingToTarget(sourcePos, targetPos),\n        }\n    end\n\n    return lines\nend\n\nlocal channel = Argus2.getNextUnusedChannel(true)\nif channel == nil then\n    self.used = true\n    return\nend\n\nlocal expectedLines = buildExpectedLines()\n\n-- Keep the occlusion pipeline, but omit terrain warping. The slightly raised\n-- flat base bridges the decorative holes instead of reproducing their shape.\nlocal baseFlags =\n    Argus2.RenderFlags.FLAG_OCCLUSION_BASE |\n    Argus2.RenderFlags.FLAG_RENDER_OVERLAY\nlocal occludeFlags =\n    Argus2.RenderFlags.FLAG_OCCLUDE |\n    Argus2.RenderFlags.FLAG_RENDER_OVERLAY\nlocal safeDrawer = TensorCore.getStaticFlatDrawer(green, 0, channel, baseFlags)\nlocal dangerDrawer = TensorCore.getStaticFlatDrawer(transparent, 0, channel, occludeFlags)\ndangerDrawer.heightOffset = drawHeight\nlocal player = TensorCore.mGetPlayer()\n\nsafeDrawer:addTimedCircle(\n    finalHitTimeout,\n    center.x, drawHeight, center.z,\n    arenaRadius,\n    0,     -- delay\n    false, -- oldDraw\n    true,  -- doNotDetect\n    baseFlags\n)\n\n-- Keep the character readable beneath the overlay without reducing the green\n-- visibility across the rest of the arena.\ndangerDrawer:addTimedCircleOnEnt(\n    finalHitTimeout,\n    player.id,\n    playerCutoutRadius,\n    0,     -- delay\n    false, -- oldDraw\n    true,  -- doNotDetect: visibility cutout, not a danger area\n    occludeFlags\n)\n\nfor order, line in ipairs(expectedLines) do\n    if order ~= data.ljUltimaBlasterPlayerNumber then\n        local lineTimeout = firstHitTimeout + hitInterval * (order - 1)\n        dangerDrawer:addTimedRect(\n            lineTimeout,\n            line.sourcePos.x, line.sourcePos.y, line.sourcePos.z,\n            lineLength,\n            lineWidth,\n            line.heading,\n            0,     -- delay\n            false, -- oldDraw\n            false, -- doNotDetect: block dashes until this numbered hit resolves\n            occludeFlags\n        )\n    end\nend\n\nself.used = true",
							conditions = 
							{
								
								{
									"ba69b783-143c-3260-b1f9-cd5227e1ab68",
									true,
								},
								
								{
									"ff1a697a-4f89-391d-92a4-e4538935aa30",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_CD",
							name = "ArgusDraws+",
							uuid = "d97edc60-87a7-17b0-9d09-9d6a5960cd72",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local lineLength = 40\nlocal lineWidth = 6\nlocal firstHitTimeout = 4500\nlocal hitInterval = 225\nlocal red = 0x330000FF -- pure red, 20% alpha\nlocal redOutline = 0xBF0000FF -- pure red, 75% alpha\nlocal renderFlags = Argus2.RenderFlags.FLAG_WARP_TERRAIN\nlocal center = { x = 100, y = 0, z = 100 }\nlocal drawHeight = 0.05\n\nlocal function normaliseAngle(angle)\n    while angle > math.pi do angle = angle - 2 * math.pi end\n    while angle <= -math.pi do angle = angle + 2 * math.pi end\n    return angle\nend\n\nlocal function buildExpectedLines()\n    local first = data.ljUltimaBlasterSources[1].position\n    local second = data.ljUltimaBlasterSources[2].position\n    local firstAngle = math.atan2(first.x - center.x, first.z - center.z)\n    local secondAngle = math.atan2(second.x - center.x, second.z - center.z)\n    local initialStep = normaliseAngle(secondAngle - firstAngle)\n    local sourceRadius = TensorCore.getDistance2d(center, first)\n    local targetRadius = 19\n    local lines = {}\n\n    for order = 1, 8 do\n        local sourceAngle = firstAngle - initialStep * (order - 1)\n        local targetAngle = sourceAngle + math.pi - initialStep * 0.5\n        local sourcePos = {\n            x = center.x + math.sin(sourceAngle) * sourceRadius,\n            y = drawHeight,\n            z = center.z + math.cos(sourceAngle) * sourceRadius,\n        }\n        local targetPos = {\n            x = center.x + math.sin(targetAngle) * targetRadius,\n            y = drawHeight,\n            z = center.z + math.cos(targetAngle) * targetRadius,\n        }\n\n        lines[order] = {\n            sourcePos = sourcePos,\n            heading = TensorCore.getHeadingToTarget(sourcePos, targetPos),\n        }\n    end\n\n    return lines\nend\n\nlocal dangerDrawer = TensorCore.getCachedDrawer(red, red, red, redOutline, 1)\nfor order, line in ipairs(buildExpectedLines()) do\n    if order ~= data.ljUltimaBlasterPlayerNumber then\n        local lineTimeout = firstHitTimeout + hitInterval * (order - 1)\n        dangerDrawer:addTimedRect(\n            lineTimeout,\n            line.sourcePos.x, line.sourcePos.y, line.sourcePos.z,\n            lineLength,\n            lineWidth,\n            line.heading,\n            0,     -- delay\n            true,  -- oldDraw\n            false, -- doNotDetect\n            renderFlags\n        )\n    end\nend\n\nself.used = true",
							conditions = 
							{
								
								{
									"ba69b783-143c-3260-b1f9-cd5227e1ab68",
									true,
								},
								
								{
									"ff1a697a-4f89-391d-92a4-e4538935aa30",
									false,
								},
							},
							gVar = "ACR_RikuSGE3_CD",
							name = "PoorDraws-",
							uuid = "8d358205-5b97-dce0-8c56-bb995776580b",
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
							conditionLua = "return data.ljUltimaBlasterSources ~= nil\n      and #data.ljUltimaBlasterSources == 8\n      and data.ljUltimaBlasterPlayerNumber ~= nil",
							dequeueIfLuaFalse = true,
							name = "Data Vars",
							uuid = "ba69b783-143c-3260-b1f9-cd5227e1ab68",
							version = 3,
						},
						inheritedIndex = 1,
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return ArgusDrawsPlus ~= nil and ArgusDrawsPlus.getEnabled() == true",
							dequeueIfLuaFalse = true,
							name = "ArgusDraws+",
							uuid = "ff1a697a-4f89-391d-92a4-e4538935aa30",
							version = 3,
						},
					},
				},
				mechanicTime = 521.36069634686,
				name = "[Lj Draw] Limit Cut",
				timeRange = true,
				timelineIndex = 101,
				timerEndOffset = 5,
				timerStartOffset = 3,
				uuid = "79a87816-ba96-842b-b714-a43ddd347ffb",
				version = 2,
			},
		},
	},
	[104] = 
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
							actionLua = "local player = TensorCore.mGetPlayer()\nlocal sourcePos = player.pos\n\nlocal Roster = AnyoneCore.Roster\nlocal mySlot = Roster.mySlot()\n\n-- Tank priority toward Exdeath (flipped): PLD > GNB > DRK > WAR.\n-- Lower rank = Exdeath tank (no draw); the other tank is the Chaos tank (draws).\nlocal tankPrio = { pld = 1, gnb = 2, drk = 3, war = 4 }\nlocal function tankRank(ent)\n    return tankPrio[AnyoneCore.jobs[ent.job]] or 50\nend\n\nlocal t1, t2 = Roster.entOf(\"T1\"), Roster.entOf(\"T2\")\nlocal r1, r2 = tankRank(t1), tankRank(t2)\nlocal exdeathSlot\nif r1 ~= r2 then\n    exdeathSlot = (r1 < r2) and \"T1\" or \"T2\"\nelse\n    exdeathSlot = (t1.id <= t2.id) and \"T1\" or \"T2\" -- same job: deterministic tiebreak by id\nend\nlocal chaosSlot = (exdeathSlot == \"T1\") and \"T2\" or \"T1\"\n\n-- Chaos (boss) group: the Chaos tank plus the fixed non-tank members.\nlocal isBossNonTank = { [\"H1\"] = true, [\"M1\"] = true, [\"M2\"] = true }\nlocal inBossGroup = (mySlot == chaosSlot) or isBossNonTank[mySlot]\n\nlocal targetPos\n\n-- Assign the destination based on the dynamically detected entity\nif inBossGroup then\n    local targetEntity = TensorCore.mGetEntity(eventArgs.detectionTargetID)\n    if targetEntity then\n        targetPos = targetEntity.pos\n    end\nend\n\n-- Proceed only if in the Chaos group and the target entity position was found\nif targetPos then\n    -- Calculate exact heading and distance from the player to the target spot\n    local heading = TensorCore.getHeadingToTarget(sourcePos, targetPos)\n    local totalDistance = TensorCore.getDistance2d(sourcePos, targetPos)\n\n    -- Proximity Scaling\n    local scale = math.min(1, totalDistance / 15)\n    local baseWidth = math.max(0.5, 1 * scale)\n    local tipWidth = math.max(1.5, 3 * scale)\n    local tipLength = math.max(2, 3 * scale)\n\n    local baseLength = totalDistance - tipLength\n\n    -- Draw the Arrow\n    if baseLength > 0 then\n        local arrowDrawer = TensorCore.getCachedDrawer(0xFF00FFFF, 0xFF0088FF, 0xFF0000FF, 0xFFFFFFFF, 2)\n        arrowDrawer:addArrow(\n            sourcePos.x, sourcePos.y, sourcePos.z,\n            heading,\n            baseLength, baseWidth, tipLength, tipWidth,\n            false, Argus2.RenderFlags.FLAG_RENDER_OVERLAY\n        )\n    end\nend\n\nself.used = true",
							conditions = 
							{
								
								{
									"064ab097-39cb-d8a0-9652-f1bd5bfad9c2",
									true,
								},
								
								{
									"4a06c095-1de6-e60d-aad8-e7cb877e6d15",
									true,
								},
								
								{
									"e4070211-fdf7-b2d9-95f4-e00d6fabf762",
									true,
								},
							},
							gVar = "ACR_RikuWAR3_CD",
							name = "Chaos",
							uuid = "05b3385c-9358-7563-9609-64ea4507b850",
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
							conditionLua = "return AnyoneCore.Roster ~= nil and AnyoneCore.Roster.mySlot() ~= nil",
							dequeueIfLuaFalse = true,
							name = "Role Set",
							uuid = "064ab097-39cb-d8a0-9652-f1bd5bfad9c2",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Filter",
							filterTargetType = "ContentID",
							name = "F - Exdeath",
							partyTargetContentID = 6052,
							uuid = "1c873dd6-1af0-eef4-85b3-0492aa8fec1f",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Filter",
							filterTargetType = "ContentID",
							name = "F - Chaos",
							partyTargetContentID = 7691,
							uuid = "4a06c095-1de6-e60d-aad8-e7cb877e6d15",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return AnyoneCore ~= nil",
							dequeueIfLuaFalse = true,
							name = "AnyoneCore",
							uuid = "e4070211-fdf7-b2d9-95f4-e00d6fabf762",
							version = 3,
						},
					},
				},
				eventType = 12,
				mechanicTime = 544.89209076626,
				name = "[Lj Draw] Arrow to Chaos",
				timeRange = true,
				timelineIndex = 104,
				timerOffset = -5,
				timerStartOffset = -5,
				uuid = "c229ef51-9041-404b-b01f-ea63594385e6",
				version = 2,
			},
		},
	},
	[107] = 
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
							actionLua = "data.ljEarthquakeRole = \"DPS\"\nself.used = true",
							conditions = 
							{
								
								{
									"41d53325-2cb4-602f-bc3c-22aa179f10ba",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_CD",
							name = "Set DPS",
							uuid = "bc11c41b-97e6-89f9-86f2-e85a41913b64",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "data.ljEarthquakeRole = \"Support\"\nself.used = true",
							conditions = 
							{
								
								{
									"41d53325-2cb4-602f-bc3c-22aa179f10ba",
									false,
								},
							},
							gVar = "ACR_RikuSGE3_CD",
							name = "Set Support",
							uuid = "0b02563f-3412-9776-9139-d6a58c3196f3",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "data.ljInLine = \"First\"\nself.used = true",
							conditions = 
							{
								
								{
									"ccfeb826-b3da-8071-a821-22a32244b1af",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_CD",
							name = "Set First in Line",
							uuid = "bff96f10-3908-c8d7-80aa-72e5c588bd43",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "data.ljInLine = \"Second\"\nself.used = true",
							conditions = 
							{
								
								{
									"bbd05f55-8f9a-1dea-bfad-f2d9a5e642be",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_CD",
							name = "Set Second in Line",
							uuid = "d2a5cafd-6919-afa5-a4c9-c1c42fe677da",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "data.ljInLine = \"Third\"\nself.used = true",
							conditions = 
							{
								
								{
									"d3314c52-265c-68e6-8da3-e3615ffaa14c",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_CD",
							name = "Set Third in Line",
							uuid = "10730296-0501-0242-8c8d-48b5f4985747",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "data.ljAccretion = true\n--TensorCore.sendParsedChatMessage(\"/e {color:255,0,0} Accretion true\")\nself.used = true",
							conditions = 
							{
								
								{
									"e1c2964f-06c6-e444-9eec-621de08be1cd",
									true,
								},
							},
							endIfUsed = true,
							gVar = "ACR_RikuSGE3_CD",
							name = "Set Accretion True",
							uuid = "4a6b1032-54e9-9973-a77f-9f0535fba6eb",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "data.ljAccretion = false\n--TensorCore.sendParsedChatMessage(\"/e {color:0,255,0} Accretion false\")\nself.used = true",
							conditions = 
							{
								
								{
									"e1c2964f-06c6-e444-9eec-621de08be1cd",
									false,
								},
							},
							endIfUsed = true,
							gVar = "ACR_RikuSGE3_CD",
							name = "Set Accretion False",
							uuid = "05d1cce8-7757-482b-ad90-248f8a82bf58",
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
							conditionType = 9,
							name = "Self Group: DPS",
							partyTargetType = "DPS",
							uuid = "41d53325-2cb4-602f-bc3c-22aa179f10ba",
							version = 3,
						},
					},
					
					{
						data = 
						{
							buffID = 3004,
							category = "Self",
							dequeueIfLuaFalse = true,
							name = "Self Buff: First in Line",
							uuid = "ccfeb826-b3da-8071-a821-22a32244b1af",
							version = 3,
						},
					},
					
					{
						data = 
						{
							buffID = 3005,
							category = "Self",
							dequeueIfLuaFalse = true,
							name = "Self Buff: Second in Line",
							uuid = "bbd05f55-8f9a-1dea-bfad-f2d9a5e642be",
							version = 3,
						},
					},
					
					{
						data = 
						{
							buffID = 3006,
							category = "Self",
							dequeueIfLuaFalse = true,
							name = "Self Buff: Third in Line",
							uuid = "d3314c52-265c-68e6-8da3-e3615ffaa14c",
							version = 3,
						},
					},
					
					{
						data = 
						{
							buffID = 1604,
							category = "Self",
							name = "Self Buff: Accretion",
							uuid = "e1c2964f-06c6-e444-9eec-621de08be1cd",
							version = 3,
						},
					},
				},
				mechanicTime = 557.21788210262,
				name = "[Lj Data] Init Earthquake",
				timelineIndex = 107,
				timerOffset = 5,
				uuid = "dfd846c1-4d5d-a8e8-9090-4718dc6a1208",
				version = 2,
			},
			inheritedIndex = 1,
		},
	},
	[108] = 
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
							actionLua = "local timeout = 8000\nlocal spotDistance = 9.5\n\nlocal ent = TensorCore.mGetEntity(eventArgs.entityID)\nlocal sourcePos = {\n    x = 100,\n    y = 0,\n    z = 100\n}\nlocal targetPos = TensorCore.getPosInDirection(ent.pos, ent.pos.h + (math.pi / 2), spotDistance)\nlocal totalDistance = TensorCore.getDistance2d(sourcePos, targetPos)\n\nlocal scale = math.min(1, totalDistance / 15)\nlocal baseWidth = math.max(0.5, 1 * scale)\nlocal tipWidth = math.max(1.5, 3 * scale)\nlocal tipLength = math.max(2, 3 * scale)\nlocal baseLength = totalDistance - tipLength\n\nlocal heading = TensorCore.getHeadingToTarget(sourcePos, targetPos)\nlocal drawer = TensorCore.getCachedDrawer(0xFF00FFFF, 0xFF0088FF, 0xFF0000FF, 0xFFFFFFFF, 2)\ndrawer:addTimedArrow(timeout, sourcePos.x, sourcePos.y, sourcePos.z, heading, baseLength, baseWidth, tipLength,\n    tipWidth, 0, false, Argus2.RenderFlags.FLAG_RENDER_OVERLAY)\n\nself.used = true",
							conditions = 
							{
								
								{
									"cfbf8985-cfd2-2699-a7ac-fd0940b9a1b1",
									true,
								},
							},
							gVar = "ACR_RikuWAR3_CD",
							name = "Group Stack",
							uuid = "6d3b6f06-eac7-2d4a-9608-515ee16f574a",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local timeout = 8000\nlocal spotDistance = 9.5\n\nlocal ent = TensorCore.mGetEntity(eventArgs.entityID)\nlocal sourcePos = {\n    x = 100,\n    y = 0,\n    z = 100\n}\nlocal targetPos = TensorCore.getPosInDirection(ent.pos, ent.pos.h - (math.pi * 3 / 4), spotDistance)\nlocal totalDistance = TensorCore.getDistance2d(sourcePos, targetPos)\n\nlocal scale = math.min(1, totalDistance / 15)\nlocal baseWidth = math.max(0.5, 1 * scale)\nlocal tipWidth = math.max(1.5, 3 * scale)\nlocal tipLength = math.max(2, 3 * scale)\nlocal baseLength = totalDistance - tipLength\n\nlocal heading = TensorCore.getHeadingToTarget(sourcePos, targetPos)\nlocal drawer = TensorCore.getCachedDrawer(0xFF00FFFF, 0xFF0088FF, 0xFF0000FF, 0xFFFFFFFF, 2)\ndrawer:addTimedArrow(timeout, sourcePos.x, sourcePos.y, sourcePos.z, heading, baseLength, baseWidth, tipLength,\n    tipWidth, 0, false, Argus2.RenderFlags.FLAG_RENDER_OVERLAY)\n\nself.used = true",
							conditions = 
							{
								
								{
									"92995fe8-e313-5d04-b1f4-f8dff2d704cd",
									true,
								},
								
								{
									"a631a59f-9417-f43d-833c-8e5e2c9e1897",
									true,
								},
							},
							gVar = "ACR_RikuWAR3_CD",
							name = "Tank",
							uuid = "bbac486a-2e17-df35-a6c5-cf97fe7de16b",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local timeout = 8000\nlocal spotDistance = 9.5\n\nlocal ent = TensorCore.mGetEntity(eventArgs.entityID)\nlocal sourcePos = {\n    x = 100,\n    y = 0,\n    z = 100\n}\nlocal targetPos = TensorCore.getPosInDirection(ent.pos, ent.pos.h - (math.pi / 2), spotDistance)\nlocal totalDistance = TensorCore.getDistance2d(sourcePos, targetPos)\n\nlocal scale = math.min(1, totalDistance / 15)\nlocal baseWidth = math.max(0.5, 1 * scale)\nlocal tipWidth = math.max(1.5, 3 * scale)\nlocal tipLength = math.max(2, 3 * scale)\nlocal baseLength = totalDistance - tipLength\n\nlocal heading = TensorCore.getHeadingToTarget(sourcePos, targetPos)\nlocal drawer = TensorCore.getCachedDrawer(0xFF00FFFF, 0xFF0088FF, 0xFF0000FF, 0xFFFFFFFF, 2)\ndrawer:addTimedArrow(timeout, sourcePos.x, sourcePos.y, sourcePos.z, heading, baseLength, baseWidth, tipLength,\n    tipWidth, 0, false, Argus2.RenderFlags.FLAG_RENDER_OVERLAY)\n\nself.used = true",
							conditions = 
							{
								
								{
									"92995fe8-e313-5d04-b1f4-f8dff2d704cd",
									true,
								},
								
								{
									"207b4766-2d53-57e2-9a99-4094936b83ed",
									true,
								},
							},
							gVar = "ACR_RikuWAR3_CD",
							name = "Healer",
							uuid = "2bdc507a-c37d-b344-bc14-650fedfe2aa7",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local timeout = 8000\nlocal spotDistance = 9.5\n\nlocal ent = TensorCore.mGetEntity(eventArgs.entityID)\nlocal sourcePos = {\n    x = 100,\n    y = 0,\n    z = 100\n}\nlocal targetPos = TensorCore.getPosInDirection(ent.pos, ent.pos.h - (math.pi / 4), spotDistance)\nlocal totalDistance = TensorCore.getDistance2d(sourcePos, targetPos)\n\nlocal scale = math.min(1, totalDistance / 15)\nlocal baseWidth = math.max(0.5, 1 * scale)\nlocal tipWidth = math.max(1.5, 3 * scale)\nlocal tipLength = math.max(2, 3 * scale)\nlocal baseLength = totalDistance - tipLength\n\nlocal heading = TensorCore.getHeadingToTarget(sourcePos, targetPos)\nlocal drawer = TensorCore.getCachedDrawer(0xFF00FFFF, 0xFF0088FF, 0xFF0000FF, 0xFFFFFFFF, 2)\ndrawer:addTimedArrow(timeout, sourcePos.x, sourcePos.y, sourcePos.z, heading, baseLength, baseWidth, tipLength,\n    tipWidth, 0, false, Argus2.RenderFlags.FLAG_RENDER_OVERLAY)\n\nself.used = true",
							conditions = 
							{
								
								{
									"92995fe8-e313-5d04-b1f4-f8dff2d704cd",
									true,
								},
								
								{
									"36d9c36f-0a36-7b1d-b1f2-c045389d6cd0",
									true,
								},
							},
							gVar = "ACR_RikuWAR3_CD",
							name = "DPS",
							uuid = "02eea43d-88d6-dfc5-b74d-fc0e3c55404a",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Event",
							dequeueIfLuaFalse = true,
							eventArgType = 2,
							eventSpellID = 47846,
							name = "Event: West Cleave 47846",
							uuid = "cfbf8985-cfd2-2699-a7ac-fd0940b9a1b1",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Event",
							dequeueIfLuaFalse = true,
							eventArgType = 2,
							eventSpellID = 47847,
							name = "Event: East Cleave 47847",
							uuid = "92995fe8-e313-5d04-b1f4-f8dff2d704cd",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 9,
							dequeueIfLuaFalse = true,
							name = "Self: Tank",
							partyTargetType = "Tank",
							uuid = "a631a59f-9417-f43d-833c-8e5e2c9e1897",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 9,
							dequeueIfLuaFalse = true,
							name = "Self: Healer",
							partyTargetType = "Healer",
							uuid = "207b4766-2d53-57e2-9a99-4094936b83ed",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 9,
							dequeueIfLuaFalse = true,
							name = "Self: DPS",
							partyTargetType = "DPS",
							uuid = "36d9c36f-0a36-7b1d-b1f2-c045389d6cd0",
							version = 3,
						},
					},
				},
				eventType = 3,
				mechanicTime = 574.57649748723,
				name = "[Lj Draw] Slappies",
				timeRange = true,
				timelineIndex = 108,
				timerEndOffset = 10,
				timerStartOffset = -10,
				uuid = "15123963-dcfd-78a3-b1c9-086d88739345",
				version = 2,
			},
		},
	},
	[112] = 
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
							actionLua = "local drawer = TensorCore.getMoogleDrawer()\ndrawer:addTimedCircle(3000, 100, 0, 100, 6)\n\nself.used = true",
							gVar = "ACR_RikuWAR3_CD",
							uuid = "63eab906-fcfd-238b-af94-626405b11107",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				mechanicTime = 578.01131609381,
				name = "[Lj Draw] 4th Slap Pre-Draw",
				timeRange = true,
				timelineIndex = 112,
				timerStartOffset = -3,
				uuid = "0950355b-5357-76e8-a427-981b71a020ec",
				version = 2,
			},
		},
	},
	[113] = 
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
							actionLua = "-- All credit to megaminx for the draw\n-- 0x4000FF00 = Alpha: 0x40 (25%), Red: 0x00, Green: 0xFF, Blue: 0x00\nlocal green = TensorCore.getStaticDrawer(0x4000FF00, 2)\nlocal elist = TensorCore.entityList('contentid=7131')\nlocal kfk = nil\n\nif table.valid(elist) then\n    for k, v in pairs(elist) do\n        local ent = TensorCore.mGetEntity(k)\n        if ent and Argus.getEntityModel(ent) == 19504 then\n            kfk = ent\n            break\n        end\n    end\nend\n\nif kfk ~= nil then\n    green:addArrow(kfk.pos.x, kfk.pos.y, kfk.pos.z, kfk.pos.h + math.pi, 10, 1, 1, 1, true)\nend\n\nself.used = true",
							gVar = "ACR_RikuSGE3_Healbar_EukrasianPrognosis",
							uuid = "9f150df4-47fb-823d-a797-346087437cd2",
							variableTogglesType = 3,
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				eventType = 12,
				mechanicTime = 578.27023501273,
				name = "[Lj Draw] Arrow to Big Kefka (Thanks megaminx)",
				timeRange = true,
				timelineIndex = 113,
				timerEndOffset = 111,
				timerOffset = -10,
				timerStartOffset = -10,
				uuid = "5309b48e-f955-b13d-8196-5ad042a7c83d",
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
							actionLua = "if data.ljLastWaveIncrement and Now() - data.ljLastWaveIncrement < 500 then\n    self.used = true\n    return\nend\n\ndata.ljEarthquakeWave = (data.ljEarthquakeWave or 1) + 1\ndata.ljLastWaveIncrement = Now()\nself.used = true",
							conditions = 
							{
								
								{
									"fc05a631-c624-649f-a592-6cb07edceda5",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_CD",
							uuid = "dfb93fdc-8e93-5491-8a6e-86f38c73be18",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Event",
							dequeueIfLuaFalse = true,
							eventArgType = 2,
							eventSpellID = 47868,
							name = "Event: Spell ID Nothingness",
							uuid = "fc05a631-c624-649f-a592-6cb07edceda5",
							version = 3,
						},
					},
				},
				eventType = 2,
				loop = true,
				mechanicTime = 578.27023501273,
				name = "[Lj Data] BH Tracker",
				timeRange = true,
				timelineIndex = 113,
				timerEndOffset = 115,
				timerStartOffset = -1,
				uuid = "e0eb16e8-af90-26a7-acdb-2ba71db4f97b",
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
							actionLua = "-- ==========================================\n-- This follows your AnyoneCore options, set to DPS or Support first in there rather than in script here and it'll automatically adjust\n-- ==========================================\n\nlocal strategy = AnyoneCore.Settings.Reactions.dmu.p3BlackHoleSolverStrategy\nlocal firstRole = (strategy == 2 and \"DPS\") or \"Support\"\nlocal myRole = data.ljEarthquakeRole\nlocal myOrder = data.ljInLine\nlocal hasAccretion = data.ljAccretion\nlocal secondRole = firstRole == \"DPS\" and \"Support\" or \"DPS\"\n\nlocal waveMapping = {\n    [1]  = { [1] = firstRole .. \":First\" },\n    [2]  = { [1] = firstRole .. \":First\", [2] = secondRole .. \":First\" },\n    [3]  = { [1] = firstRole .. \":First\", [2] = secondRole .. \":First\", [3] = \"Accretion:First\" },\n    [4]  = { [1] = firstRole .. \":Second\", [2] = secondRole .. \":First\", [3] = \"Accretion:First\" },\n    [5]  = { [1] = firstRole .. \":Second\", [2] = secondRole .. \":Second\", [3] = \"Accretion:First\" },\n    [6]  = { [1] = firstRole .. \":Second\", [2] = secondRole .. \":Second\", [3] = \"Accretion:Second\" },\n    [7]  = { [1] = firstRole .. \":Third\", [2] = secondRole .. \":Second\", [3] = \"Accretion:Second\" },\n    [8]  = { [1] = firstRole .. \":Third\", [2] = secondRole .. \":Third\", [3] = \"Accretion:Second\" },\n    [9]  = { [1] = firstRole .. \":Third\", [2] = secondRole .. \":Third\" },\n    [10] = { [1] = secondRole .. \":Third\" }\n}\n\nlocal kfk = nil\nlocal entityList = TensorCore.entityList('contentid=7131')\nif table.valid(entityList) then\n    for k, v in pairs(entityList) do\n        local ent = TensorCore.mGetEntity(k)\n        if ent and Argus.getEntityModel(ent) == 19504 then\n            kfk = ent\n            break\n        end\n    end\nend\n\nif not kfk then\n    self.used = true\n    return\nend\n\nlocal currentWave = data.ljEarthquakeWave or 1\nlocal waveSettleMs = 500\nlocal sinceWaveIncrement = data.ljLastWaveIncrement\n    and (Now() - data.ljLastWaveIncrement)\n    or waveSettleMs\nlocal waveSettled = sinceWaveIncrement >= waveSettleMs\nif currentWave < 1 or currentWave > 10 then\n    self.used = true\n    return\nend\n\nlocal currentOrbs = {}\nlocal blackHoleEntities = TensorCore.entityList('alive,contentid=8343')\nif table.valid(blackHoleEntities) then\n    for k, v in pairs(blackHoleEntities) do\n        local ent = TensorCore.mGetEntity(k)\n        if ent then\n            local tethers = Argus.getTethersOnEnt(ent.id)\n            if table.valid(tethers) then\n                for _, tether in pairs(tethers) do\n                    if tether.type == 84 then\n                        table.insert(currentOrbs, {\n                            id = ent.id,\n                            x = ent.pos.x, y = ent.pos.y, z = ent.pos.z,\n                            tetherTargetID = tether.partnerid\n                        })\n                        break\n                    end\n                end\n            end\n        end\n    end\nend\n\nif #currentOrbs == 0 then\n    -- Tether 84 briefly disappears during a normal holder transfer. Keep a same-wave\n    -- assignment so the arrow resumes as soon as the tether returns. Only discard a\n    -- missing assignment after Nothingness has advanced the wave counter.\n    if data.ljAssignedBlackHole\n        and data.ljAssignedBlackHoleWave\n        and data.ljAssignedBlackHoleWave < currentWave\n        and waveSettled\n    then\n        data.ljAssignedBlackHole = nil\n        data.ljAssignedBlackHoleWave = nil\n    end\n    self.used = true\n    return\nend\n\nlocal function normAngle2Pi(a)\n    while a < 0 do a = a + 2 * math.pi end\n    while a >= 2 * math.pi do a = a - 2 * math.pi end\n    return a\nend\n\nlocal center = data.arenaCenter or { x = 100, y = 0, z = 100 }\nlocal northArrowLength = 18\nlocal northBuffer = math.rad(25)\nlocal northSnap = math.rad(8)\n\nlocal northHeading = normAngle2Pi(tonumber(kfk.pos.h) + math.pi)\nlocal northTip = TensorCore.getPosInDirection(center, northHeading, northArrowLength)\nif not northTip then\n    self.used = true\n    return\nend\n\n-- Clockwise-from-north angle for a world position (x = East, z = South).\nlocal function clockwiseAngle(x, z)\n    return math.atan2(x - center.x, -(z - center.z))\nend\n\nlocal northAngle = clockwiseAngle(northTip.x, northTip.z)\n\nfor _, orb in ipairs(currentOrbs) do\n    local cw = normAngle2Pi(clockwiseAngle(orb.x, orb.z) - northAngle + northBuffer)\n    if cw > 2 * math.pi - northSnap then\n        cw = 0\n    end\n    orb.cw = cw\nend\n\ntable.sort(currentOrbs, function(a, b)\n    return a.cw < b.cw\nend)\n\nlocal activeBlackHole = nil\n\nif data.ljAssignedBlackHole then\n    for _, orb in ipairs(currentOrbs) do\n        if orb.id == data.ljAssignedBlackHole then\n            activeBlackHole = orb\n            break\n        end\n    end\n\n    if not activeBlackHole then\n        if not data.ljAssignedBlackHoleWave\n            or data.ljAssignedBlackHoleWave >= currentWave\n        then\n            -- The assigned orb is still part of this wave; its tether is only between\n            -- holders. Retain the ID instead of poisoning the wave as finished.\n            self.used = true\n            return\n        end\n\n        if not waveSettled then\n            self.used = true\n            return\n        end\n\n        -- The wave advanced while the old assigned orb was absent, so it genuinely\n        -- resolved. Clear it and allow the mapping below to select the next assignment.\n        data.ljAssignedBlackHole = nil\n        data.ljAssignedBlackHoleWave = nil\n    end\nend\n\nif not activeBlackHole then\n    if not waveSettled then\n        self.used = true\n        return\n    end\n\n    local myPriority = (hasAccretion and \"Accretion\" or myRole) .. \":\" .. myOrder\n    local myTargetIndex = nil\n    local waveSetup = waveMapping[currentWave]\n    local expectedOrbs = 0\n\n    if waveSetup then\n        for index, role in pairs(waveSetup) do\n            expectedOrbs = math.max(expectedOrbs, index)\n            if role == myPriority then\n                myTargetIndex = index\n            end\n        end\n    end\n\n    if not myTargetIndex then\n        self.used = true\n        return\n    end\n\n    if #currentOrbs < expectedOrbs then\n        self.used = true\n        return\n    end\n\n    activeBlackHole = currentOrbs[myTargetIndex]\n    if not activeBlackHole then\n        self.used = true\n        return\n    end\n\n    data.ljAssignedBlackHole = activeBlackHole.id\n    data.ljAssignedBlackHoleWave = currentWave\nend\n\nlocal player = TensorCore.mGetPlayer()\nlocal targetPos\n\nif activeBlackHole.tetherTargetID == player.id then\n    -- We already hold the correct tether: point at a spot clockwise of the orb and pulled in toward arena centre to keep uptime on the boss and consistent angles\n    local standClockwiseDistance = 6   -- yalms clockwise (tangential) of the orb\n    local standInwardDistance = 14     -- yalms pulled in toward arena centre\n\n    local dx = activeBlackHole.x - center.x\n    local dz = activeBlackHole.z - center.z\n    local dist = math.sqrt(dx * dx + dz * dz)\n    if dist < 0.01 then\n        self.used = true\n        return\n    end\n\n    local radX, radZ = dx / dist, dz / dist   -- radial outward unit (centre -> orb)\n    local tanX, tanZ = -radZ, radX            -- clockwise tangent unit\n\n    targetPos = {\n        x = activeBlackHole.x + tanX * standClockwiseDistance - radX * standInwardDistance,\n        y = activeBlackHole.y,\n        z = activeBlackHole.z + tanZ * standClockwiseDistance - radZ * standInwardDistance\n    }\nelse\n    -- Heading out to grab the tether: aim at the midpoint between the orb and its current holder.\n    local tetherTarget = TensorCore.mGetEntity(activeBlackHole.tetherTargetID)\n    if not tetherTarget then\n        self.used = true\n        return\n    end\n\n    targetPos = {\n        x = activeBlackHole.x + (tetherTarget.pos.x - activeBlackHole.x) * 0.5,\n        y = activeBlackHole.y + (tetherTarget.pos.y - activeBlackHole.y) * 0.5,\n        z = activeBlackHole.z + (tetherTarget.pos.z - activeBlackHole.z) * 0.5\n    }\nend\n\nlocal heading = TensorCore.getHeadingToTarget(player.pos, targetPos)\nlocal totalDistance = TensorCore.getDistance2d(player.pos, targetPos)\n\nlocal scale = math.min(1, totalDistance / 15)\nlocal baseWidth = math.max(0.5, 1 * scale)\nlocal tipWidth = math.max(1.5, 3 * scale)\nlocal tipLength = math.max(2, 3 * scale)\nlocal baseLength = totalDistance - tipLength\n\nif baseLength > 1 then\n    local arrowDrawer = TensorCore.getCachedDrawer(0xFF00FFFF, 0xFF0088FF, 0xFF0000FF, 0xFFFFFFFF, 2)\n    if arrowDrawer then\n        arrowDrawer:addArrow(\n            player.pos.x, player.pos.y, player.pos.z,\n            heading,\n            baseLength, baseWidth, tipLength, tipWidth,\n            false, Argus2.RenderFlags.FLAG_RENDER_OVERLAY\n        )\n    end\nend\n\nself.used = true",
							conditions = 
							{
								
								{
									"b72a2753-74e7-a1d6-9f53-49007659e6bb",
									true,
								},
								
								{
									"89fe774e-1fad-214a-b598-85971659486d",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_CD",
							name = "Single Tether",
							uuid = "3dfd73ec-3c67-32c8-a84a-1fec379a3bdd",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "-- ==========================================\n-- Double-tether variant of the Black Hole solver. Fixed priority, no DPS/Support toggle.\n--   BH1: Support First grabs the solo tether, DPS First grabs the double.\n--   BH2/BH3: normal DPS > Support > Accretion order.\n--   BH4: Support Third grabs the double, DPS Third grabs the solo.\n-- Double grabbers are baited to the exact midpoint of their two orbs so the tethers cross out\n-- at the edge and don't sweep the party in the centre.\n-- ==========================================\n\nlocal myRole = data.ljEarthquakeRole\nlocal myOrder = data.ljInLine\nlocal hasAccretion = data.ljAccretion\n\nlocal waveMapping = {\n    [1]  = { [1] = \"Support:First\" },\n    [2]  = {},\n    [3]  = { [1] = \"DPS:First\",  [2] = \"Support:First\",  [3] = \"Accretion:First\" },\n    [4]  = { [1] = \"DPS:Second\", [2] = \"Support:First\",  [3] = \"Accretion:First\" },\n    [5]  = { [1] = \"DPS:Second\", [2] = \"Support:Second\", [3] = \"Accretion:First\" },\n    [6]  = { [1] = \"DPS:Second\", [2] = \"Support:Second\", [3] = \"Accretion:Second\" },\n    [7]  = { [1] = \"DPS:Third\",  [2] = \"Support:Second\", [3] = \"Accretion:Second\" },\n    [8]  = { [1] = \"DPS:Third\",  [2] = \"Support:Third\",  [3] = \"Accretion:Second\" },\n    [9]  = {},\n    [10] = { [1] = \"DPS:Third\" }\n}\n\n-- Waves where one role grabs BOTH tethers and stands between the two orbs.\nlocal doubleTethers = {\n    [2] = \"DPS:First\",     -- BH1: DPS takes both\n    [9] = \"Support:Third\"  -- BH4: Support takes both\n}\n\nlocal kfk = nil\nlocal entityList = TensorCore.entityList('contentid=7131')\nif table.valid(entityList) then\n    for k, v in pairs(entityList) do\n        local ent = TensorCore.mGetEntity(k)\n        if ent and Argus.getEntityModel(ent) == 19504 then\n            kfk = ent\n            break\n        end\n    end\nend\n\nif not kfk then\n    self.used = true\n    return\nend\n\nlocal currentWave = data.ljEarthquakeWave or 1\nlocal waveSettleMs = 500\nlocal sinceWaveIncrement = data.ljLastWaveIncrement\n    and (Now() - data.ljLastWaveIncrement)\n    or waveSettleMs\nlocal waveSettled = sinceWaveIncrement >= waveSettleMs\nif currentWave < 1 or currentWave > 10 then\n    self.used = true\n    return\nend\n\nlocal currentOrbs = {}\nlocal blackHoleEntities = TensorCore.entityList('alive,contentid=8343')\nif table.valid(blackHoleEntities) then\n    for k, v in pairs(blackHoleEntities) do\n        local ent = TensorCore.mGetEntity(k)\n        if ent then\n            local tethers = Argus.getTethersOnEnt(ent.id)\n            if table.valid(tethers) then\n                for _, tether in pairs(tethers) do\n                    if tether.type == 84 then\n                        table.insert(currentOrbs, {\n                            id = ent.id,\n                            x = ent.pos.x, y = ent.pos.y, z = ent.pos.z,\n                            tetherTargetID = tether.partnerid\n                        })\n                        break\n                    end\n                end\n            end\n        end\n    end\nend\n\nif #currentOrbs == 0 then\n    -- Tether 84 briefly disappears during normal holder transfers. Preserve all\n    -- same-wave assignments so solo and double guidance resumes when the tether returns.\n    -- A missing assignment is stale only after Nothingness advances the wave counter.\n    if data.ljAssignedBlackHoles\n        and data.ljAssignedBlackHoleWave\n        and data.ljAssignedBlackHoleWave < currentWave\n        and waveSettled\n    then\n        data.ljAssignedBlackHoles = nil\n        data.ljAssignedBlackHoleWave = nil\n        data.ljAssignedBlackHoleDouble = nil\n    end\n    self.used = true\n    return\nend\n\nlocal function normAngle2Pi(a)\n    while a < 0 do a = a + 2 * math.pi end\n    while a >= 2 * math.pi do a = a - 2 * math.pi end\n    return a\nend\n\nlocal center = data.arenaCenter or { x = 100, y = 0, z = 100 }\nlocal northArrowLength = 18\nlocal northBuffer = math.rad(25)\nlocal northSnap = math.rad(8)\n\nlocal northHeading = normAngle2Pi(tonumber(kfk.pos.h) + math.pi)\nlocal northTip = TensorCore.getPosInDirection(center, northHeading, northArrowLength)\nif not northTip then\n    self.used = true\n    return\nend\n\n-- Clockwise-from-north angle for a world position (x = East, z = South).\nlocal function clockwiseAngle(x, z)\n    return math.atan2(x - center.x, -(z - center.z))\nend\n\nlocal northAngle = clockwiseAngle(northTip.x, northTip.z)\n\nfor _, orb in ipairs(currentOrbs) do\n    local cw = normAngle2Pi(clockwiseAngle(orb.x, orb.z) - northAngle + northBuffer)\n    if cw > 2 * math.pi - northSnap then\n        cw = 0\n    end\n    orb.cw = cw\nend\n\ntable.sort(currentOrbs, function(a, b)\n    return a.cw < b.cw\nend)\n\nlocal myPriority = (hasAccretion and \"Accretion\" or myRole) .. \":\" .. myOrder\nlocal player = TensorCore.mGetPlayer()\nlocal iAmDouble = false\nlocal myOrbs = {}\n\nif data.ljAssignedBlackHoles then\n    for _, assignedID in ipairs(data.ljAssignedBlackHoles) do\n        for _, orb in ipairs(currentOrbs) do\n            if orb.id == assignedID then\n                myOrbs[#myOrbs + 1] = orb\n                break\n            end\n        end\n    end\n\n    if #myOrbs == #data.ljAssignedBlackHoles then\n        iAmDouble = data.ljAssignedBlackHoleDouble\n    elseif not data.ljAssignedBlackHoleWave\n        or data.ljAssignedBlackHoleWave >= currentWave\n    then\n        -- One or both assigned tethers are between holders in the current wave. Keep the\n        -- complete assignment rather than treating a partial list as completion.\n        self.used = true\n        return\n    else\n        if not waveSettled then\n            self.used = true\n            return\n        end\n\n        -- The wave advanced while an old assigned orb was absent, so the old assignment\n        -- genuinely resolved. Clear it and calculate the new wave's assignment below.\n        data.ljAssignedBlackHoles = nil\n        data.ljAssignedBlackHoleWave = nil\n        data.ljAssignedBlackHoleDouble = nil\n        myOrbs = {}\n    end\nend\n\nif #myOrbs == 0 then\n    if not waveSettled then\n        self.used = true\n        return\n    end\n\n    iAmDouble = doubleTethers[currentWave] == myPriority\n\n    if iAmDouble then\n        if #currentOrbs < 2 then\n            self.used = true\n            return\n        end\n\n        for _, orb in ipairs(currentOrbs) do\n            myOrbs[#myOrbs + 1] = orb\n        end\n    else\n        local waveSetup = waveMapping[currentWave]\n        local expectedOrbs = 0\n        if waveSetup then\n            for index, _ in pairs(waveSetup) do\n                expectedOrbs = math.max(expectedOrbs, index)\n            end\n        end\n\n        if #currentOrbs < expectedOrbs then\n            self.used = true\n            return\n        end\n\n        if waveSetup then\n            for index, role in pairs(waveSetup) do\n                if role == myPriority then\n                    myOrbs[1] = currentOrbs[index]\n                    break\n                end\n            end\n        end\n    end\n\n    if #myOrbs == 0 then\n        self.used = true\n        return\n    end\n\n    data.ljAssignedBlackHoles = {}\n    for _, orb in ipairs(myOrbs) do\n        data.ljAssignedBlackHoles[#data.ljAssignedBlackHoles + 1] = orb.id\n    end\n    data.ljAssignedBlackHoleWave = currentWave\n    data.ljAssignedBlackHoleDouble = iAmDouble\nend\n\nlocal holding = false\nfor _, orb in ipairs(myOrbs) do\n    if orb.tetherTargetID == player.id then\n        holding = true\n        break\n    end\nend\n\nlocal targetPos\n\nif iAmDouble then\n    -- Collect the tethers one at a time, then bait the midpoint once we hold both.\n    local ungrabbed = {}\n    for _, orb in ipairs(myOrbs) do\n        if orb.tetherTargetID ~= player.id then\n            ungrabbed[#ungrabbed + 1] = orb\n        end\n    end\n\n    if #ungrabbed > 0 then\n        -- Still a tether to collect: head to the nearest one we don't hold yet, aiming at the\n        -- midpoint between it and its current holder (same as a solo grab).\n        local nearest, nearestDist\n        for _, orb in ipairs(ungrabbed) do\n            local d = TensorCore.getDistance2d(player.pos, orb)\n            if not nearestDist or d < nearestDist then\n                nearestDist = d\n                nearest = orb\n            end\n        end\n\n        local tetherTarget = TensorCore.mGetEntity(nearest.tetherTargetID)\n        if not tetherTarget then\n            self.used = true\n            return\n        end\n\n        targetPos = {\n            x = nearest.x + (tetherTarget.pos.x - nearest.x) * 0.5,\n            y = nearest.y + (tetherTarget.pos.y - nearest.y) * 0.5,\n            z = nearest.z + (tetherTarget.pos.z - nearest.z) * 0.5\n        }\n    else\n        -- Hold both: bait the exact midpoint so the tethers cross out at the edge, off the party.\n        local sumX, sumY, sumZ = 0, 0, 0\n        for _, orb in ipairs(myOrbs) do\n            sumX = sumX + orb.x\n            sumY = sumY + orb.y\n            sumZ = sumZ + orb.z\n        end\n        local n = #myOrbs\n        targetPos = { x = sumX / n, y = sumY / n, z = sumZ / n }\n    end\nelseif holding then\n    -- We hold our solo tether: point clockwise of the orb and pulled in toward centre for uptime.\n    local orb = myOrbs[1]\n\n    local standClockwiseDistance = 6   -- yalms clockwise (tangential) of the orb\n    local standInwardDistance = 14     -- yalms pulled in toward arena centre\n\n    local dx = orb.x - center.x\n    local dz = orb.z - center.z\n    local dist = math.sqrt(dx * dx + dz * dz)\n    if dist < 0.01 then\n        self.used = true\n        return\n    end\n\n    local radX, radZ = dx / dist, dz / dist   -- radial outward unit (centre -> orb)\n    local tanX, tanZ = -radZ, radX            -- clockwise tangent unit\n\n    targetPos = {\n        x = orb.x + tanX * standClockwiseDistance - radX * standInwardDistance,\n        y = orb.y,\n        z = orb.z + tanZ * standClockwiseDistance - radZ * standInwardDistance\n    }\nelse\n    -- Heading out to grab our solo tether: aim at the midpoint between the orb and its holder.\n    local orb = myOrbs[1]\n    local tetherTarget = TensorCore.mGetEntity(orb.tetherTargetID)\n    if not tetherTarget then\n        self.used = true\n        return\n    end\n\n    targetPos = {\n        x = orb.x + (tetherTarget.pos.x - orb.x) * 0.5,\n        y = orb.y + (tetherTarget.pos.y - orb.y) * 0.5,\n        z = orb.z + (tetherTarget.pos.z - orb.z) * 0.5\n    }\nend\n\nlocal heading = TensorCore.getHeadingToTarget(player.pos, targetPos)\nlocal totalDistance = TensorCore.getDistance2d(player.pos, targetPos)\n\nlocal scale = math.min(1, totalDistance / 15)\nlocal baseWidth = math.max(0.5, 1 * scale)\nlocal tipWidth = math.max(1.5, 3 * scale)\nlocal tipLength = math.max(2, 3 * scale)\nlocal baseLength = totalDistance - tipLength\n\nif baseLength > 1 then\n    local arrowDrawer = TensorCore.getCachedDrawer(0xFF00FFFF, 0xFF0088FF, 0xFF0000FF, 0xFFFFFFFF, 2)\n    if arrowDrawer then\n        arrowDrawer:addArrow(\n            player.pos.x, player.pos.y, player.pos.z,\n            heading,\n            baseLength, baseWidth, tipLength, tipWidth,\n            false, Argus2.RenderFlags.FLAG_RENDER_OVERLAY\n        )\n    end\nend\n\nself.used = true",
							conditions = 
							{
								
								{
									"b72a2753-74e7-a1d6-9f53-49007659e6bb",
									true,
								},
								
								{
									"7430be5e-a98a-a76d-b517-4c772f8c32b8",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_CD",
							name = "Double Tether",
							uuid = "f59732cb-4e21-c30d-846a-f3a71f5de8e0",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							buffCheckType = 5,
							buffIDList = 
							{
								3004,
								3005,
								3006,
							},
							category = "Self",
							matchAnyBuff = true,
							name = "Self Buffs: Something in Line",
							uuid = "b72a2753-74e7-a1d6-9f53-49007659e6bb",
							version = 3,
						},
						inheritedIndex = 1,
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return (AnyoneCore.Settings.Reactions.dmu.p3BlackHoleSolverStrategy == 2 or AnyoneCore.Settings.Reactions.dmu.p3BlackHoleSolverStrategy == 3)",
							dequeueIfLuaFalse = true,
							name = "Kefka Relative Option Enabled",
							uuid = "89fe774e-1fad-214a-b598-85971659486d",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return AnyoneCore.Settings.Reactions.dmu.p3BlackHoleSolverStrategy == 4",
							dequeueIfLuaFalse = true,
							name = "Double Tether Option Enabled",
							uuid = "7430be5e-a98a-a76d-b517-4c772f8c32b8",
							version = 3,
						},
					},
				},
				eventType = 12,
				mechanicTime = 578.27023501273,
				name = "[Lj Draw] Arrow to Black Hole",
				timeRange = true,
				timelineIndex = 113,
				timerEndOffset = 115,
				timerOffset = -1,
				timerStartOffset = -1,
				uuid = "422fe658-92ff-3b77-88a1-dff098dd7884",
				version = 2,
			},
			inheritedIndex = 3,
		},
	},
	[118] = 
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
							actionLua = "local timeout = 8000\nlocal spotDistance = 9.5\n\nlocal ent = TensorCore.mGetEntity(eventArgs.entityID)\nlocal sourcePos = {\n    x = 100,\n    y = 0,\n    z = 100\n}\nlocal targetPos = TensorCore.getPosInDirection(ent.pos, ent.pos.h + (math.pi / 2), spotDistance)\nlocal totalDistance = TensorCore.getDistance2d(sourcePos, targetPos)\n\nlocal scale = math.min(1, totalDistance / 15)\nlocal baseWidth = math.max(0.5, 1 * scale)\nlocal tipWidth = math.max(1.5, 3 * scale)\nlocal tipLength = math.max(2, 3 * scale)\nlocal baseLength = totalDistance - tipLength\n\nlocal heading = TensorCore.getHeadingToTarget(sourcePos, targetPos)\nlocal drawer = TensorCore.getCachedDrawer(0xFF00FFFF, 0xFF0088FF, 0xFF0000FF, 0xFFFFFFFF, 2)\ndrawer:addTimedArrow(timeout, sourcePos.x, sourcePos.y, sourcePos.z, heading, baseLength, baseWidth, tipLength,\n    tipWidth, 0, false, Argus2.RenderFlags.FLAG_RENDER_OVERLAY)\n\nself.used = true",
							conditions = 
							{
								
								{
									"cfbf8985-cfd2-2699-a7ac-fd0940b9a1b1",
									true,
								},
							},
							gVar = "ACR_RikuWAR3_CD",
							name = "Group Stack",
							uuid = "6d3b6f06-eac7-2d4a-9608-515ee16f574a",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local timeout = 8000\nlocal spotDistance = 9.5\n\nlocal ent = TensorCore.mGetEntity(eventArgs.entityID)\nlocal sourcePos = {\n    x = 100,\n    y = 0,\n    z = 100\n}\nlocal targetPos = TensorCore.getPosInDirection(ent.pos, ent.pos.h - (math.pi * 3 / 4), spotDistance)\nlocal totalDistance = TensorCore.getDistance2d(sourcePos, targetPos)\n\nlocal scale = math.min(1, totalDistance / 15)\nlocal baseWidth = math.max(0.5, 1 * scale)\nlocal tipWidth = math.max(1.5, 3 * scale)\nlocal tipLength = math.max(2, 3 * scale)\nlocal baseLength = totalDistance - tipLength\n\nlocal heading = TensorCore.getHeadingToTarget(sourcePos, targetPos)\nlocal drawer = TensorCore.getCachedDrawer(0xFF00FFFF, 0xFF0088FF, 0xFF0000FF, 0xFFFFFFFF, 2)\ndrawer:addTimedArrow(timeout, sourcePos.x, sourcePos.y, sourcePos.z, heading, baseLength, baseWidth, tipLength,\n    tipWidth, 0, false, Argus2.RenderFlags.FLAG_RENDER_OVERLAY)\n\nself.used = true",
							conditions = 
							{
								
								{
									"92995fe8-e313-5d04-b1f4-f8dff2d704cd",
									true,
								},
								
								{
									"a631a59f-9417-f43d-833c-8e5e2c9e1897",
									true,
								},
							},
							gVar = "ACR_RikuWAR3_CD",
							name = "Tank",
							uuid = "bbac486a-2e17-df35-a6c5-cf97fe7de16b",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local timeout = 8000\nlocal spotDistance = 9.5\n\nlocal ent = TensorCore.mGetEntity(eventArgs.entityID)\nlocal sourcePos = {\n    x = 100,\n    y = 0,\n    z = 100\n}\nlocal targetPos = TensorCore.getPosInDirection(ent.pos, ent.pos.h - (math.pi / 2), spotDistance)\nlocal totalDistance = TensorCore.getDistance2d(sourcePos, targetPos)\n\nlocal scale = math.min(1, totalDistance / 15)\nlocal baseWidth = math.max(0.5, 1 * scale)\nlocal tipWidth = math.max(1.5, 3 * scale)\nlocal tipLength = math.max(2, 3 * scale)\nlocal baseLength = totalDistance - tipLength\n\nlocal heading = TensorCore.getHeadingToTarget(sourcePos, targetPos)\nlocal drawer = TensorCore.getCachedDrawer(0xFF00FFFF, 0xFF0088FF, 0xFF0000FF, 0xFFFFFFFF, 2)\ndrawer:addTimedArrow(timeout, sourcePos.x, sourcePos.y, sourcePos.z, heading, baseLength, baseWidth, tipLength,\n    tipWidth, 0, false, Argus2.RenderFlags.FLAG_RENDER_OVERLAY)\n\nself.used = true",
							conditions = 
							{
								
								{
									"92995fe8-e313-5d04-b1f4-f8dff2d704cd",
									true,
								},
								
								{
									"207b4766-2d53-57e2-9a99-4094936b83ed",
									true,
								},
							},
							gVar = "ACR_RikuWAR3_CD",
							name = "Healer",
							uuid = "2bdc507a-c37d-b344-bc14-650fedfe2aa7",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local timeout = 8000\nlocal spotDistance = 9.5\n\nlocal ent = TensorCore.mGetEntity(eventArgs.entityID)\nlocal sourcePos = {\n    x = 100,\n    y = 0,\n    z = 100\n}\nlocal targetPos = TensorCore.getPosInDirection(ent.pos, ent.pos.h - (math.pi / 4), spotDistance)\nlocal totalDistance = TensorCore.getDistance2d(sourcePos, targetPos)\n\nlocal scale = math.min(1, totalDistance / 15)\nlocal baseWidth = math.max(0.5, 1 * scale)\nlocal tipWidth = math.max(1.5, 3 * scale)\nlocal tipLength = math.max(2, 3 * scale)\nlocal baseLength = totalDistance - tipLength\n\nlocal heading = TensorCore.getHeadingToTarget(sourcePos, targetPos)\nlocal drawer = TensorCore.getCachedDrawer(0xFF00FFFF, 0xFF0088FF, 0xFF0000FF, 0xFFFFFFFF, 2)\ndrawer:addTimedArrow(timeout, sourcePos.x, sourcePos.y, sourcePos.z, heading, baseLength, baseWidth, tipLength,\n    tipWidth, 0, false, Argus2.RenderFlags.FLAG_RENDER_OVERLAY)\n\nself.used = true",
							conditions = 
							{
								
								{
									"92995fe8-e313-5d04-b1f4-f8dff2d704cd",
									true,
								},
								
								{
									"36d9c36f-0a36-7b1d-b1f2-c045389d6cd0",
									true,
								},
							},
							gVar = "ACR_RikuWAR3_CD",
							name = "DPS",
							uuid = "02eea43d-88d6-dfc5-b74d-fc0e3c55404a",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Event",
							dequeueIfLuaFalse = true,
							eventArgType = 2,
							eventSpellID = 47846,
							name = "Event: West Cleave 47846",
							uuid = "cfbf8985-cfd2-2699-a7ac-fd0940b9a1b1",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Event",
							dequeueIfLuaFalse = true,
							eventArgType = 2,
							eventSpellID = 47847,
							name = "Event: East Cleave 47847",
							uuid = "92995fe8-e313-5d04-b1f4-f8dff2d704cd",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 9,
							dequeueIfLuaFalse = true,
							name = "Self: Tank",
							partyTargetType = "Tank",
							uuid = "a631a59f-9417-f43d-833c-8e5e2c9e1897",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 9,
							dequeueIfLuaFalse = true,
							name = "Self: Healer",
							partyTargetType = "Healer",
							uuid = "207b4766-2d53-57e2-9a99-4094936b83ed",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 9,
							dequeueIfLuaFalse = true,
							name = "Self: DPS",
							partyTargetType = "DPS",
							uuid = "36d9c36f-0a36-7b1d-b1f2-c045389d6cd0",
							version = 3,
						},
					},
				},
				eventType = 3,
				mechanicTime = 604.98844481876,
				name = "[Lj Draw] Slappies",
				timeRange = true,
				timelineIndex = 118,
				timerEndOffset = 10,
				timerStartOffset = -10,
				uuid = "fb1fffbc-4b51-aee1-b759-483118c7d859",
				version = 2,
			},
		},
	},
	[122] = 
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
							actionLua = "local drawer = TensorCore.getMoogleDrawer()\ndrawer:addTimedCircle(3000, 100, 0, 100, 6)\n\nself.used = true",
							gVar = "ACR_RikuWAR3_CD",
							uuid = "63eab906-fcfd-238b-af94-626405b11107",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				mechanicTime = 608.39401598045,
				name = "[Lj Draw] 4th Slap Pre-Draw",
				timeRange = true,
				timelineIndex = 122,
				timerStartOffset = -3,
				uuid = "8b7acbe3-58e2-c7ec-b195-7ad71c371995",
				version = 2,
			},
		},
	},
	[131] = 
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
							actionLua = "local timeout = 8000\nlocal spotDistance = 9.5\n\nlocal ent = TensorCore.mGetEntity(eventArgs.entityID)\nlocal sourcePos = {\n    x = 100,\n    y = 0,\n    z = 100\n}\nlocal targetPos = TensorCore.getPosInDirection(ent.pos, ent.pos.h + (math.pi / 2), spotDistance)\nlocal totalDistance = TensorCore.getDistance2d(sourcePos, targetPos)\n\nlocal scale = math.min(1, totalDistance / 15)\nlocal baseWidth = math.max(0.5, 1 * scale)\nlocal tipWidth = math.max(1.5, 3 * scale)\nlocal tipLength = math.max(2, 3 * scale)\nlocal baseLength = totalDistance - tipLength\n\nlocal heading = TensorCore.getHeadingToTarget(sourcePos, targetPos)\nlocal drawer = TensorCore.getCachedDrawer(0xFF00FFFF, 0xFF0088FF, 0xFF0000FF, 0xFFFFFFFF, 2)\ndrawer:addTimedArrow(timeout, sourcePos.x, sourcePos.y, sourcePos.z, heading, baseLength, baseWidth, tipLength,\n    tipWidth, 0, false, Argus2.RenderFlags.FLAG_RENDER_OVERLAY)\n\nself.used = true",
							conditions = 
							{
								
								{
									"cfbf8985-cfd2-2699-a7ac-fd0940b9a1b1",
									true,
								},
							},
							gVar = "ACR_RikuWAR3_CD",
							name = "Group Stack",
							uuid = "6d3b6f06-eac7-2d4a-9608-515ee16f574a",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local timeout = 8000\nlocal spotDistance = 9.5\n\nlocal ent = TensorCore.mGetEntity(eventArgs.entityID)\nlocal sourcePos = {\n    x = 100,\n    y = 0,\n    z = 100\n}\nlocal targetPos = TensorCore.getPosInDirection(ent.pos, ent.pos.h - (math.pi * 3 / 4), spotDistance)\nlocal totalDistance = TensorCore.getDistance2d(sourcePos, targetPos)\n\nlocal scale = math.min(1, totalDistance / 15)\nlocal baseWidth = math.max(0.5, 1 * scale)\nlocal tipWidth = math.max(1.5, 3 * scale)\nlocal tipLength = math.max(2, 3 * scale)\nlocal baseLength = totalDistance - tipLength\n\nlocal heading = TensorCore.getHeadingToTarget(sourcePos, targetPos)\nlocal drawer = TensorCore.getCachedDrawer(0xFF00FFFF, 0xFF0088FF, 0xFF0000FF, 0xFFFFFFFF, 2)\ndrawer:addTimedArrow(timeout, sourcePos.x, sourcePos.y, sourcePos.z, heading, baseLength, baseWidth, tipLength,\n    tipWidth, 0, false, Argus2.RenderFlags.FLAG_RENDER_OVERLAY)\n\nself.used = true",
							conditions = 
							{
								
								{
									"92995fe8-e313-5d04-b1f4-f8dff2d704cd",
									true,
								},
								
								{
									"a631a59f-9417-f43d-833c-8e5e2c9e1897",
									true,
								},
							},
							gVar = "ACR_RikuWAR3_CD",
							name = "Tank",
							uuid = "bbac486a-2e17-df35-a6c5-cf97fe7de16b",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local timeout = 8000\nlocal spotDistance = 9.5\n\nlocal ent = TensorCore.mGetEntity(eventArgs.entityID)\nlocal sourcePos = {\n    x = 100,\n    y = 0,\n    z = 100\n}\nlocal targetPos = TensorCore.getPosInDirection(ent.pos, ent.pos.h - (math.pi / 2), spotDistance)\nlocal totalDistance = TensorCore.getDistance2d(sourcePos, targetPos)\n\nlocal scale = math.min(1, totalDistance / 15)\nlocal baseWidth = math.max(0.5, 1 * scale)\nlocal tipWidth = math.max(1.5, 3 * scale)\nlocal tipLength = math.max(2, 3 * scale)\nlocal baseLength = totalDistance - tipLength\n\nlocal heading = TensorCore.getHeadingToTarget(sourcePos, targetPos)\nlocal drawer = TensorCore.getCachedDrawer(0xFF00FFFF, 0xFF0088FF, 0xFF0000FF, 0xFFFFFFFF, 2)\ndrawer:addTimedArrow(timeout, sourcePos.x, sourcePos.y, sourcePos.z, heading, baseLength, baseWidth, tipLength,\n    tipWidth, 0, false, Argus2.RenderFlags.FLAG_RENDER_OVERLAY)\n\nself.used = true",
							conditions = 
							{
								
								{
									"92995fe8-e313-5d04-b1f4-f8dff2d704cd",
									true,
								},
								
								{
									"207b4766-2d53-57e2-9a99-4094936b83ed",
									true,
								},
							},
							gVar = "ACR_RikuWAR3_CD",
							name = "Healer",
							uuid = "2bdc507a-c37d-b344-bc14-650fedfe2aa7",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local timeout = 8000\nlocal spotDistance = 9.5\n\nlocal ent = TensorCore.mGetEntity(eventArgs.entityID)\nlocal sourcePos = {\n    x = 100,\n    y = 0,\n    z = 100\n}\nlocal targetPos = TensorCore.getPosInDirection(ent.pos, ent.pos.h - (math.pi / 4), spotDistance)\nlocal totalDistance = TensorCore.getDistance2d(sourcePos, targetPos)\n\nlocal scale = math.min(1, totalDistance / 15)\nlocal baseWidth = math.max(0.5, 1 * scale)\nlocal tipWidth = math.max(1.5, 3 * scale)\nlocal tipLength = math.max(2, 3 * scale)\nlocal baseLength = totalDistance - tipLength\n\nlocal heading = TensorCore.getHeadingToTarget(sourcePos, targetPos)\nlocal drawer = TensorCore.getCachedDrawer(0xFF00FFFF, 0xFF0088FF, 0xFF0000FF, 0xFFFFFFFF, 2)\ndrawer:addTimedArrow(timeout, sourcePos.x, sourcePos.y, sourcePos.z, heading, baseLength, baseWidth, tipLength,\n    tipWidth, 0, false, Argus2.RenderFlags.FLAG_RENDER_OVERLAY)\n\nself.used = true",
							conditions = 
							{
								
								{
									"92995fe8-e313-5d04-b1f4-f8dff2d704cd",
									true,
								},
								
								{
									"36d9c36f-0a36-7b1d-b1f2-c045389d6cd0",
									true,
								},
							},
							gVar = "ACR_RikuWAR3_CD",
							name = "DPS",
							uuid = "02eea43d-88d6-dfc5-b74d-fc0e3c55404a",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Event",
							dequeueIfLuaFalse = true,
							eventArgType = 2,
							eventSpellID = 47846,
							name = "Event: West Cleave 47846",
							uuid = "cfbf8985-cfd2-2699-a7ac-fd0940b9a1b1",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Event",
							dequeueIfLuaFalse = true,
							eventArgType = 2,
							eventSpellID = 47847,
							name = "Event: East Cleave 47847",
							uuid = "92995fe8-e313-5d04-b1f4-f8dff2d704cd",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 9,
							dequeueIfLuaFalse = true,
							name = "Self: Tank",
							partyTargetType = "Tank",
							uuid = "a631a59f-9417-f43d-833c-8e5e2c9e1897",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 9,
							dequeueIfLuaFalse = true,
							name = "Self: Healer",
							partyTargetType = "Healer",
							uuid = "207b4766-2d53-57e2-9a99-4094936b83ed",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 9,
							dequeueIfLuaFalse = true,
							name = "Self: DPS",
							partyTargetType = "DPS",
							uuid = "36d9c36f-0a36-7b1d-b1f2-c045389d6cd0",
							version = 3,
						},
					},
				},
				eventType = 3,
				mechanicTime = 672.96514955193,
				name = "[Lj Draw] Slappies",
				timeRange = true,
				timelineIndex = 131,
				timerEndOffset = 10,
				timerStartOffset = -10,
				uuid = "8f761a7a-6be9-0a0a-b839-5541fa28c9e6",
				version = 2,
			},
		},
	},
	[135] = 
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
							actionLua = "local drawer = TensorCore.getMoogleDrawer()\ndrawer:addTimedCircle(3000, 100, 0, 100, 6)\n\nself.used = true",
							gVar = "ACR_RikuWAR3_CD",
							uuid = "63eab906-fcfd-238b-af94-626405b11107",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				mechanicTime = 676.34203400282,
				name = "[Lj Draw] 4th Slap Pre-Draw",
				timeRange = true,
				timelineIndex = 135,
				timerStartOffset = -3,
				uuid = "01c3e3b5-c2e6-cba4-b035-6494d6fea016",
				version = 2,
			},
		},
	},
	[136] = 
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
							actionLua = "local elist = TensorCore.entityList('contentid=7131')\nlocal kfk = nil\n\nif table.valid(elist) then\n    for k, v in pairs(elist) do\n        local ent = TensorCore.mGetEntity(k)\n        if ent and Argus.getEntityModel(ent) == 19504 then\n            kfk = ent\n            break\n        end\n    end\nend\n\nif kfk == nil then return end\ndata.ljKefkaHeading = kfk.pos.h\n\nself.used = true",
							gVar = "ACR_RikuSGE3_CD",
							uuid = "7776dba7-65c1-01bb-8573-0fccb71c8e90",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				mechanicTime = 689.33031525282,
				name = "[Lj Data] Set Kefka Heading",
				timelineIndex = 136,
				uuid = "cf95d2eb-21d0-3331-9bc4-16f88de8eed5",
				version = 2,
			},
		},
	},
	[137] = 
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
							actionLua = "local timeout = 7500\n\nlocal center = { x = 100, y = 0, z = 100 }\nlocal dist = 9.5\nlocal rot = data.ljKefkaHeading\n\nlocal designTarget = { x = center.x, y = center.y, z = center.z - dist }\nlocal rotated = TensorCore.rotatePosAroundPos(center, designTarget, rot)\n\nlocal sourcePos = TensorCore.mGetPlayer().pos\nlocal targetPos = { x = rotated.x, y = sourcePos.y, z = rotated.z }\n\nlocal heading = TensorCore.getHeadingToTarget(sourcePos, targetPos)\nlocal totalDistance = TensorCore.getDistance2d(sourcePos, targetPos)\n\n-- Proximity scaling\nlocal scale = math.min(1, totalDistance / 15)\nlocal baseWidth = math.max(0.5, 1 * scale)\nlocal tipWidth = math.max(1.5, 3 * scale)\nlocal tipLength = math.max(2, 3 * scale)\nlocal baseLength = totalDistance - tipLength\n\nif baseLength > 0 then\n    local colorStart = 0xFF00FFFF\n    local colorMid = 0xFF0088FF\n    local colorEnd = 0xFF0000FF\n    local colorOutline = 0xFFFFFFFF\n    local outlineThickness = 2\n\n    local drawer = TensorCore.getCachedDrawer(colorStart, colorMid, colorEnd, colorOutline, outlineThickness)\n    drawer:addTimedArrow(\n        timeout,\n        sourcePos.x, sourcePos.y, sourcePos.z,\n        heading,\n        baseLength, baseWidth, tipLength, tipWidth,\n        0, false, Argus2.RenderFlags.FLAG_RENDER_OVERLAY\n    )\nend\n\nself.used = true",
							conditions = 
							{
								
								{
									"3f1de937-a6bc-9abe-9449-4b494eb4f337",
									true,
								},
								
								{
									"0cc7ad8b-3b26-f159-aa5d-60cb475b714d",
									false,
								},
							},
							gVar = "ACR_RikuSGE3_CD",
							name = "North",
							uuid = "36dd3a78-f92b-dbcc-aeb5-1f2898d2c824",
							version = 2.1,
						},
						inheritedIndex = 1,
					},
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local timeout = 7500\n\nlocal center = { x = 100, y = 0, z = 100 }\nlocal dist = 9.5\nlocal rot = data.ljKefkaHeading\n\nlocal designTarget = { x = center.x, y = center.y, z = center.z + dist }\nlocal rotated = TensorCore.rotatePosAroundPos(center, designTarget, rot)\n\nlocal sourcePos = TensorCore.mGetPlayer().pos\nlocal targetPos = { x = rotated.x, y = sourcePos.y, z = rotated.z }\n\nlocal heading = TensorCore.getHeadingToTarget(sourcePos, targetPos)\nlocal totalDistance = TensorCore.getDistance2d(sourcePos, targetPos)\n\n-- Proximity scaling\nlocal scale = math.min(1, totalDistance / 15)\nlocal baseWidth = math.max(0.5, 1 * scale)\nlocal tipWidth = math.max(1.5, 3 * scale)\nlocal tipLength = math.max(2, 3 * scale)\nlocal baseLength = totalDistance - tipLength\n\nif baseLength > 0 then\n    local colorStart = 0xFF00FFFF\n    local colorMid = 0xFF0088FF\n    local colorEnd = 0xFF0000FF\n    local colorOutline = 0xFFFFFFFF\n    local outlineThickness = 2\n\n    local drawer = TensorCore.getCachedDrawer(colorStart, colorMid, colorEnd, colorOutline, outlineThickness)\n    drawer:addTimedArrow(\n        timeout,\n        sourcePos.x, sourcePos.y, sourcePos.z,\n        heading,\n        baseLength, baseWidth, tipLength, tipWidth,\n        0, false, Argus2.RenderFlags.FLAG_RENDER_OVERLAY\n    )\nend\n\nself.used = true\n",
							conditions = 
							{
								
								{
									"3f1de937-a6bc-9abe-9449-4b494eb4f337",
									true,
								},
								
								{
									"0cc7ad8b-3b26-f159-aa5d-60cb475b714d",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_CD",
							name = "South",
							uuid = "7c6397c3-68f3-8aeb-9899-b20972b27e16",
							version = 2.1,
						},
						inheritedIndex = 2,
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return data.ljKefkaHeading ~= nil",
							dequeueIfLuaFalse = true,
							name = "Kefka Heading",
							uuid = "3f1de937-a6bc-9abe-9449-4b494eb4f337",
							version = 3,
						},
						inheritedIndex = 1,
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 9,
							name = "Self: DPS",
							partyTargetType = "DPS",
							uuid = "0cc7ad8b-3b26-f159-aa5d-60cb475b714d",
							version = 3,
						},
					},
				},
				mechanicTime = 690.41578400282,
				name = "[Lj Draw] Arrow to Baits",
				timelineIndex = 137,
				uuid = "9a017cfb-43fe-2110-92ed-7ca3fe8490a7",
				version = 2,
			},
		},
	},
	[138] = 
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
							actionLua = "data.ljP3Stack = \"DPS\"\nself.used = true",
							conditions = 
							{
								
								{
									"94a4ac27-9a85-caa0-aa7a-02aef8de54a4",
									true,
								},
								
								{
									"680f4375-2098-8506-a727-c6e427dde423",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_CD",
							name = "DPS Stack",
							uuid = "227d4272-7426-69e1-9782-6be64d603b65",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "data.ljP3Stack = \"Support\"\nself.used = true",
							conditions = 
							{
								
								{
									"94a4ac27-9a85-caa0-aa7a-02aef8de54a4",
									true,
								},
								
								{
									"680f4375-2098-8506-a727-c6e427dde423",
									false,
								},
							},
							gVar = "ACR_RikuSGE3_CD",
							name = "Support Stack",
							uuid = "f86ddb34-4116-8f6f-94b6-82a6189cb3a8",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Event",
							dequeueIfLuaFalse = true,
							eventArgType = 2,
							eventMarkerID = 161,
							name = "Event Marker: Stack",
							uuid = "94a4ac27-9a85-caa0-aa7a-02aef8de54a4",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Party",
							conditionType = 10,
							inGroupTargetType = "DPS",
							name = "Event Entity: DPS",
							partyTargetType = "Event Entity",
							uuid = "680f4375-2098-8506-a727-c6e427dde423",
							version = 3,
						},
					},
				},
				eventType = 4,
				mechanicTime = 699.71269025282,
				name = "[Lj Data] Get Stack",
				timeRange = true,
				timelineIndex = 138,
				timerEndOffset = 3,
				timerStartOffset = -3,
				uuid = "0ed49820-e4bb-26ee-b035-e65284bc2f89",
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
							actionLua = "local mode = Lj_UMADDRAWS_Stompies\n\nlocal center = { x = 100, y = 0, z = 100 }\nlocal cornerDist = 11                       -- distance from centre to each corner\nlocal offset = cornerDist / math.sqrt(2)    -- equal X/Z offset for a diagonal corner\nlocal rot = data.ljKefkaHeading\n\n-- Design (true-north) corners; rotated to Kefka below.\nlocal nw = { x = center.x - offset, z = center.z - offset }\nlocal ne = { x = center.x + offset, z = center.z - offset }\nlocal sw = { x = center.x - offset, z = center.z + offset }\nlocal se = { x = center.x + offset, z = center.z + offset }\n\n-- Exact persisted Stompies setting values -> role/corner pairings.\nlocal cornerByRoleByMode = {\n    [\"Group 1/Group 2\"] = {\n        H1 = nw, MT = nw,\n        H2 = ne, OT = ne,\n        R1 = sw, M1 = sw,\n        R2 = se, M2 = se,\n    },\n    [\"Roles\"] = {\n        MT = nw, OT = nw,\n        H1 = ne, H2 = ne,\n        M1 = sw, M2 = sw,\n        R1 = se, R2 = se,\n    },\n}\nlocal cornerByRole = cornerByRoleByMode[mode]\n\nlocal mySlot = AnyoneCore.Roster.mySlot()\nlocal myRole = (mySlot == \"T1\" and \"MT\") or (mySlot == \"T2\" and \"OT\") or mySlot\nlocal corner = cornerByRole and cornerByRole[myRole]\nif corner then\n    corner.y = center.y\n    local rotated = TensorCore.rotatePosAroundPos(center, corner, rot)\n\n    local sourcePos = TensorCore.mGetPlayer().pos\n    local targetPos = { x = rotated.x, y = sourcePos.y, z = rotated.z }\n\n    local heading = TensorCore.getHeadingToTarget(sourcePos, targetPos)\n    local totalDistance = TensorCore.getDistance2d(sourcePos, targetPos)\n\n    -- Proximity scaling\n    local scale = math.min(1, totalDistance / 15)\n    local baseWidth = math.max(0.5, 1 * scale)\n    local tipWidth = math.max(1.5, 3 * scale)\n    local tipLength = math.max(2, 3 * scale)\n    local baseLength = totalDistance - tipLength\n\n    if baseLength > 0 then\n        local arrowDrawer = TensorCore.getCachedDrawer(0xFF00FFFF, 0xFF0088FF, 0xFF0000FF, 0xFFFFFFFF, 2)\n        arrowDrawer:addArrow(\n            sourcePos.x, sourcePos.y, sourcePos.z,\n            heading,\n            baseLength, baseWidth, tipLength, tipWidth,\n            false, Argus2.RenderFlags.FLAG_RENDER_OVERLAY\n        )\n    end\nend\n\nself.used = true",
							conditions = 
							{
								
								{
									"6638cbae-31ef-2bc6-a0fe-c5e6de4690b3",
									true,
								},
								
								{
									"e68eed16-3ae6-7377-bc52-d14362eea2e0",
									true,
								},
								
								{
									"8b49ca6b-481e-dd63-9ca0-f1bc4bb0603c",
									true,
								},
							},
							uuid = "6b6586a8-063c-8231-91fd-82e9e98592da",
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
							conditionLua = "return AnyoneCore.Roster ~= nil and AnyoneCore.Roster.mySlot() ~= nil",
							dequeueIfLuaFalse = true,
							name = "Role Set",
							uuid = "6638cbae-31ef-2bc6-a0fe-c5e6de4690b3",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return data.ljKefkaHeading ~= nil",
							dequeueIfLuaFalse = true,
							name = "Kefka Heading",
							uuid = "e68eed16-3ae6-7377-bc52-d14362eea2e0",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return AnyoneCore ~= nil",
							dequeueIfLuaFalse = true,
							name = "AnyoneCore",
							uuid = "8b49ca6b-481e-dd63-9ca0-f1bc4bb0603c",
							version = 3,
						},
					},
				},
				eventType = 12,
				mechanicTime = 699.71269025282,
				name = "[Lj Draw] Draw Arrow to Corner Baits",
				timeRange = true,
				timelineIndex = 138,
				timerEndOffset = 3,
				timerStartOffset = -0.25,
				uuid = "4052c640-0efd-4731-a4e9-f1d950f53f10",
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
							actionLua = "local target = TensorCore.mGetEntity(eventArgs.targetID)\n\nif target ~= nil and target.pos ~= nil then\n    local RENDER_FLAG = Argus2.RenderFlags.FLAG_RENDER_OVERLAY\n    local revealTime = 710.741\n    local finishTime = 715.37264047081\n    local drawStart = math.max(TensorReactions_CurrentTimer, revealTime)\n    local delay = math.max(0, (revealTime - TensorReactions_CurrentTimer) * 1000)\n    local timeout = math.max(0, (finishTime - drawStart) * 1000)\n    local drawer = TensorCore.getMoogleDrawer(0, RENDER_FLAG)\n\n    drawer:addTimedCircle(\n        timeout,\n        target.pos.x, target.pos.y, target.pos.z,\n        6,\n        delay, false, false,\n        RENDER_FLAG\n    )\nend\n\nself.used = true",
							conditions = 
							{
								
								{
									"cf84bf67-54dc-8c90-99cf-a78d36a4e1f1",
									true,
								},
							},
							name = "Draw Delayed Big Bang Puddle",
							uuid = "034b1bd7-b8c7-5138-9383-3555665d7ace",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Event",
							dequeueIfLuaFalse = true,
							eventArgType = 2,
							eventSpellID = 47875,
							name = "Event: Spell ID Knock Down 47875",
							uuid = "cf84bf67-54dc-8c90-99cf-a78d36a4e1f1",
							version = 3,
						},
					},
				},
				eventType = 2,
				loop = true,
				mechanicTime = 699.71269025282,
				name = "[Lj Draw] Big Bang Puddles (Knock Down)",
				timeRange = true,
				timelineIndex = 138,
				timerEndOffset = 14,
				uuid = "d2433806-ea8c-d7cb-9cd7-e6f59af91d39",
				version = 2,
			},
		},
	},
	[140] = 
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
							actionLua = "local setting = Lj_UMADDRAWS_Stompies\n\nlocal center = { x = 100, y = 0, z = 100 }\nlocal towerDist = 10\nlocal towerRadius = 5\nlocal stackDotRadius = 0.225\nlocal rot = data.ljKefkaHeading\n\n-- Design (true-north) tower spots; rotated to Kefka below.\nlocal westTower = { x = center.x - towerDist, y = center.y, z = center.z }\nlocal eastTower = { x = center.x + towerDist, y = center.y, z = center.z }\n\n-- Always-on markers, drawn regardless of where this player is headed:\n-- red outlines on both towers, small filled red dot mid for the stack.\nlocal towerDrawer = TensorCore.getCachedDrawer(nil, nil, 0x00000000, 0xFF0000FF, 2)\nfor _, tower in pairs({ westTower, eastTower }) do\n    local rotatedTower = TensorCore.rotatePosAroundPos(center, tower, rot)\n    towerDrawer:addCircle(rotatedTower.x, rotatedTower.y, rotatedTower.z, towerRadius, false, Argus2.RenderFlags.FLAG_RENDER_OVERLAY)\nend\n\nlocal stackDotDrawer = TensorCore.getCachedDrawer(nil, nil, 0xFF0000FF)\nstackDotDrawer:addCircle(center.x, center.y, center.z, stackDotRadius, false, Argus2.RenderFlags.FLAG_RENDER_OVERLAY)\n\n-- Exact persisted Stompies setting values -> tower assignments.\nlocal towerByRoleBySetting = {\n    [\"Group 1/Group 2\"] = {\n        H1 = westTower, MT = westTower, R1 = westTower, M1 = westTower,\n        H2 = eastTower, OT = eastTower, R2 = eastTower, M2 = eastTower,\n    },\n    [\"Roles\"] = {\n        H1 = eastTower, H2 = eastTower, R1 = eastTower, R2 = eastTower,\n        MT = westTower, OT = westTower, M1 = westTower, M2 = westTower,\n    },\n}\nlocal towerByRole = towerByRoleBySetting[setting]\n\nlocal SUPPORT = { H1 = true, H2 = true, MT = true, OT = true }\n\nlocal mySlot = AnyoneCore.Roster.mySlot()\nlocal role = (mySlot == \"T1\" and \"MT\") or (mySlot == \"T2\" and \"OT\") or mySlot\nlocal playerGroup = SUPPORT[role] and \"Support\" or \"DPS\"\n\n-- Group named by data.ljP3Stack stacks mid; the other group soaks the towers.\n-- This flips later when the timeline changes data.ljP3Stack.\nlocal designTarget\nif playerGroup == data.ljP3Stack then\n    designTarget = { x = center.x, z = center.z }\nelse\n    designTarget = towerByRole and towerByRole[role]\nend\n\nif designTarget then\n    designTarget.y = center.y\n    local rotated = TensorCore.rotatePosAroundPos(center, designTarget, rot)\n\n    local sourcePos = TensorCore.mGetPlayer().pos\n    local targetPos = { x = rotated.x, y = sourcePos.y, z = rotated.z }\n\n    local heading = TensorCore.getHeadingToTarget(sourcePos, targetPos)\n    local totalDistance = TensorCore.getDistance2d(sourcePos, targetPos)\n\n    -- Proximity scaling\n    local scale = math.min(1, totalDistance / 15)\n    local baseWidth = math.max(0.5, 1 * scale)\n    local tipWidth = math.max(1.5, 3 * scale)\n    local tipLength = math.max(2, 3 * scale)\n    local baseLength = totalDistance - tipLength\n\n    if baseLength > 0 then\n        local arrowDrawer = TensorCore.getCachedDrawer(0xFF00FFFF, 0xFF0088FF, 0xFF0000FF, 0xFFFFFFFF, 2)\n        arrowDrawer:addArrow(\n            sourcePos.x, sourcePos.y, sourcePos.z,\n            heading,\n            baseLength, baseWidth, tipLength, tipWidth,\n            false, Argus2.RenderFlags.FLAG_RENDER_OVERLAY\n        )\n    end\nend\n\nself.used = true",
							conditions = 
							{
								
								{
									"6ca95d18-699d-e4bc-8639-84e40d63b11b",
									true,
								},
								
								{
									"9b8b7326-09e3-dd6a-9e87-72685c412ca2",
									true,
								},
								
								{
									"aa269837-1971-7c5b-a287-54a91f7f972f",
									true,
								},
							},
							uuid = "c3c0b92c-39c8-2d63-ad27-863c13b225d1",
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
							conditionLua = "return AnyoneCore.Roster ~= nil and AnyoneCore.Roster.mySlot() ~= nil",
							dequeueIfLuaFalse = true,
							name = "Role Set",
							uuid = "6ca95d18-699d-e4bc-8639-84e40d63b11b",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return data.ljP3Stack ~= nil",
							dequeueIfLuaFalse = true,
							name = "Stack Set",
							uuid = "9b8b7326-09e3-dd6a-9e87-72685c412ca2",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return AnyoneCore ~= nil",
							dequeueIfLuaFalse = true,
							name = "AnyoneCore",
							uuid = "aa269837-1971-7c5b-a287-54a91f7f972f",
							version = 3,
						},
					},
				},
				eventType = 12,
				mechanicTime = 703.58654115995,
				name = "[Lj Draw] Draw Arrow to Towers/Middle",
				timeRange = true,
				timelineIndex = 140,
				timerEndOffset = 6,
				timerStartOffset = -1,
				uuid = "87fcb95a-5d0c-ab62-9055-5c408d5b02d3",
				version = 2,
			},
		},
	},
	[141] = 
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
							actionLua = "data.ljP3Stack = (data.ljP3Stack == \"Support\") and \"DPS\" or \"Support\"\nself.used = true",
							conditions = 
							{
								
								{
									"baccdfab-101d-00c5-891f-b8f2ab46e3ef",
									true,
								},
								
								{
									"ef878e15-11ee-71d1-8947-cfb48c2bd0e6",
									true,
								},
								
								{
									"d9128e06-e3d0-3767-b211-6fa7a0c23b9e",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_CD",
							uuid = "ad52dea3-1b34-c7fd-bf4e-b020dd556631",
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
							conditionLua = "return data.ljP3Stack ~= nil",
							dequeueIfLuaFalse = true,
							name = "Stack Set",
							uuid = "baccdfab-101d-00c5-891f-b8f2ab46e3ef",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local myId = TensorCore.mGetPlayer().id\nlocal g1 = AnyoneCore.Roster and AnyoneCore.Roster.groups(\"g1\")\nif not g1 then return false end\nfor _, id in ipairs(g1) do if id == myId then return true end end\nreturn false",
							dequeueIfLuaFalse = true,
							name = "Group 1",
							uuid = "ef878e15-11ee-71d1-8947-cfb48c2bd0e6",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return Lj_UMADDRAWS_Stompies == \"Group 1/Group 2\"",
							dequeueIfLuaFalse = true,
							name = "Group 1/Group 2",
							uuid = "d9128e06-e3d0-3767-b211-6fa7a0c23b9e",
							version = 3,
						},
					},
				},
				mechanicTime = 705.28176295466,
				name = "[Lj Data] Flip Roles G1",
				timelineIndex = 141,
				timerOffset = -0.125,
				uuid = "c3b6d2c4-fa53-1725-a587-c8a6e4343d4a",
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
							actionLua = "data.ljP3Stack = (data.ljP3Stack == \"Support\") and \"DPS\" or \"Support\"\nself.used = true",
							conditions = 
							{
								
								{
									"8032f2ab-ea6f-8b6f-ba45-e6b3a13f6806",
									true,
								},
								
								{
									"83f4e746-a801-d222-b2df-058814e4a6ee",
									true,
								},
								
								{
									"d658c705-2a03-edca-abbf-75b3dcf76936",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_CD",
							uuid = "e4011a22-4e7e-97a1-9833-05e32b79a0c6",
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
							conditionLua = "return data.ljP3Stack ~= nil",
							dequeueIfLuaFalse = true,
							name = "Stack Set",
							uuid = "8032f2ab-ea6f-8b6f-ba45-e6b3a13f6806",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local Roster = AnyoneCore.Roster\nif not Roster then return false end\n\nlocal mySlot = Roster.mySlot()\nreturn mySlot == \"T1\"\n    or mySlot == \"T2\"\n    or mySlot == \"M1\"\n    or mySlot == \"M2\"",
							name = "West Group",
							uuid = "83f4e746-a801-d222-b2df-058814e4a6ee",
							version = 3,
						},
						inheritedIndex = 2,
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return Lj_UMADDRAWS_Stompies == \"Roles\"\n",
							dequeueIfLuaFalse = true,
							name = "Roles",
							uuid = "d658c705-2a03-edca-abbf-75b3dcf76936",
							version = 3,
						},
					},
				},
				mechanicTime = 705.28176295466,
				name = "[Lj Data] Flip Roles West",
				timelineIndex = 141,
				timerOffset = -0.125,
				uuid = "39ee1f2a-6ceb-cd54-b3ec-30ca4625260a",
				version = 2,
			},
		},
	},
	[143] = 
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
							actionLua = "data.ljP3Stack = (data.ljP3Stack == \"Support\") and \"DPS\" or \"Support\"\nself.used = true",
							conditions = 
							{
								
								{
									"baccdfab-101d-00c5-891f-b8f2ab46e3ef",
									true,
								},
								
								{
									"ef878e15-11ee-71d1-8947-cfb48c2bd0e6",
									true,
								},
								
								{
									"b77ff695-6a2b-95f7-bc88-3509690b7bfb",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_CD",
							uuid = "ad52dea3-1b34-c7fd-bf4e-b020dd556631",
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
							conditionLua = "return data.ljP3Stack ~= nil",
							dequeueIfLuaFalse = true,
							name = "Stack Set",
							uuid = "baccdfab-101d-00c5-891f-b8f2ab46e3ef",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local myId = TensorCore.mGetPlayer().id\nlocal g2 = AnyoneCore.Roster and AnyoneCore.Roster.groups(\"g2\")\nif not g2 then return false end\nfor _, id in ipairs(g2) do if id == myId then return true end end\nreturn false",
							dequeueIfLuaFalse = true,
							name = "Group 2",
							uuid = "ef878e15-11ee-71d1-8947-cfb48c2bd0e6",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return Lj_UMADDRAWS_Stompies == \"Group 1/Group 2\"",
							dequeueIfLuaFalse = true,
							name = "Group 1/Group 2",
							uuid = "b77ff695-6a2b-95f7-bc88-3509690b7bfb",
							version = 3,
						},
					},
				},
				mechanicTime = 706.58990945806,
				name = "[Lj Data] Flip Roles G2",
				timelineIndex = 143,
				timerOffset = -0.125,
				uuid = "f326cacd-cb74-aa06-88b9-3901054dfb49",
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
							actionLua = "data.ljP3Stack = (data.ljP3Stack == \"Support\") and \"DPS\" or \"Support\"\nself.used = true",
							conditions = 
							{
								
								{
									"baccdfab-101d-00c5-891f-b8f2ab46e3ef",
									true,
								},
								
								{
									"42105c8b-5b2e-a711-a9cf-99ae89e5a252",
									true,
								},
								
								{
									"bcfcb4c5-7070-9289-97aa-75496affefb2",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_CD",
							uuid = "ad52dea3-1b34-c7fd-bf4e-b020dd556631",
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
							conditionLua = "return data.ljP3Stack ~= nil",
							dequeueIfLuaFalse = true,
							name = "Stack Set",
							uuid = "baccdfab-101d-00c5-891f-b8f2ab46e3ef",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local Roster = AnyoneCore.Roster\nif not Roster then return false end\n\nlocal mySlot = Roster.mySlot()\nreturn mySlot == \"H1\"\n    or mySlot == \"H2\"\n    or mySlot == \"R1\"\n    or mySlot == \"R2\"",
							dequeueIfLuaFalse = true,
							name = "East Group",
							uuid = "42105c8b-5b2e-a711-a9cf-99ae89e5a252",
							version = 3,
						},
						inheritedIndex = 2,
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return Lj_UMADDRAWS_Stompies == \"Roles\"\n",
							dequeueIfLuaFalse = true,
							name = "Roles",
							uuid = "bcfcb4c5-7070-9289-97aa-75496affefb2",
							version = 3,
						},
					},
				},
				mechanicTime = 706.58990945806,
				name = "[Lj Data] Flip Roles East",
				timelineIndex = 143,
				timerOffset = -0.125,
				uuid = "7f30ca07-8632-2c9c-a723-460ef11fe2a1",
				version = 2,
			},
		},
	},
	[151] = 
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
							actionLua = "data.ljChaosAura = \"Lie\"\n--TensorCore.sendParsedChatMessage(\"/e {color:255,0,0} Chaos Lie\")\nself.used = true",
							conditions = 
							{
								
								{
									"98e42c37-f3da-9951-8873-683a6373a0ef",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_CD",
							name = "Chaos Lie",
							uuid = "52a17e1a-1b5e-4cd1-b64a-20b1e471984b",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "data.ljChaosAura = \"Truth\"\n--TensorCore.sendParsedChatMessage(\"/e {color:0,255,0} Chaos Truth\")\nself.used = true",
							conditions = 
							{
								
								{
									"2751e1ce-79f3-5c12-8d49-ad22d1aa2e5b",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_CD",
							name = "Chaos Truth",
							uuid = "1eace700-b94b-f268-aea2-f8475d50e205",
							version = 2.1,
						},
						inheritedIndex = 2,
					},
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "data.ljExdeathAura = \"Lie\"\n--TensorCore.sendParsedChatMessage(\"/e {color:255,0,0} Exdeath Lie\")\nself.used = true",
							conditions = 
							{
								
								{
									"ddbb6b21-ee24-b887-8583-b22ff7e77c59",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_CD",
							name = "Exdeath Lie",
							uuid = "8739abfb-67cc-d4c4-8ed1-f0c22377692a",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "data.ljExdeathAura = \"Truth\"\n--TensorCore.sendParsedChatMessage(\"/e {color:0,255,0} Exdeath Truth\")\nself.used = true",
							conditions = 
							{
								
								{
									"b4eabe06-0c7d-f0d3-9dce-f681b4335b26",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_CD",
							name = "Exdeath Truth",
							uuid = "3d7b414a-ccc3-7c6f-804d-edbe42d423bb",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Event",
							comparator = 3,
							eventArgType = 6,
							eventIntValue = 2913,
							name = "Event: Chaos Lie",
							uuid = "98e42c37-f3da-9951-8873-683a6373a0ef",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Event",
							comparator = 3,
							eventArgType = 6,
							eventIntValue = 2914,
							name = "Event: Chaos Truth",
							uuid = "2751e1ce-79f3-5c12-8d49-ad22d1aa2e5b",
							version = 3,
						},
						inheritedIndex = 2,
					},
					
					{
						data = 
						{
							category = "Event",
							comparator = 3,
							eventArgType = 6,
							eventIntValue = 2915,
							name = "Event: Exdeath Lie",
							uuid = "ddbb6b21-ee24-b887-8583-b22ff7e77c59",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Event",
							comparator = 3,
							eventArgType = 6,
							eventIntValue = 2916,
							name = "Event: Exdeath Truth",
							uuid = "b4eabe06-0c7d-f0d3-9dce-f681b4335b26",
							version = 3,
						},
					},
				},
				eventType = 25,
				loop = true,
				mechanicTime = 812.05085714286,
				name = "[Lj Data] Record Truth & Lie",
				timeRange = true,
				timelineIndex = 151,
				timerEndOffset = 58,
				timerStartOffset = 4,
				uuid = "31f79052-e779-e4fe-b087-4ba109432ffb",
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
							actionLua = "data.ljP4ElementTell = data.ljP4ElementTell or {}\nlocal state = data.ljP4ElementTell\n\nif eventArgs.markerID == 675 then\n    state.element = \"ice\"\nelseif eventArgs.markerID == 676 then\n    state.element = \"lighting\"\nelseif eventArgs.markerID == 677 then\n    state.truth = true\nelseif eventArgs.markerID == 678 then\n    state.truth = false\nend\n\nif state.element == nil or state.truth == nil then\n    self.used = true\n    return\nend\n\nif state.sendAt == nil then\n    state.sendAt = Now() + math.random(1000, 1500)\nend\n\nif Now() < state.sendAt then\n    return\nend\n\nlocal mode = Lj_UMADDRAWS_P4IceLightningMacro\nif Lj_UMADDRAWS_P4Macro ~= \"Disabled\"\n    and (mode == \"Echo Chat\" or mode == \"Party Chat\")\nthen\n    local line\n    if state.element == \"lighting\" then\n        line = state.truth and \"■      TRUE lightning (Lines)\" or \"□      FAKE lightning (Lines)\"\n    else\n        line = state.truth and \"▼      TRUE ice (Cones)\" or \"▽      FAKE ice (Cones)\"\n    end\n\n    local prefix = mode == \"Party Chat\" and \"/p \" or \"/e \"\n    TensorCore.sendParsedChatMessage(prefix .. line)\nend\n\nstate.element = nil\nstate.truth = nil\nstate.sendAt = nil\nself.used = true",
							conditions = 
							{
								
								{
									"bdc5bc48-989d-2f7d-ab8e-a76872117740",
									true,
								},
							},
							name = "Fancy Ice/Lightning Tell",
							uuid = "17a90bed-cc22-7398-9656-c8f715a2c7a3",
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
							conditionLua = "if Lj_UMADDRAWS_P4Macro == \"Disabled\" then\n    return false\nend\n\nlocal mode = Lj_UMADDRAWS_P4IceLightningMacro\nif mode ~= \"Echo Chat\" and mode ~= \"Party Chat\" then\n    return false\nend\n\nif eventArgs.entityContentID ~= 7131 then\n    return false\nend\n\nreturn eventArgs.markerID == 675\n    or eventArgs.markerID == 676\n    or eventArgs.markerID == 677\n    or eventArgs.markerID == 678",
							name = "P4 Ice/Lightning Marker",
							uuid = "bdc5bc48-989d-2f7d-ab8e-a76872117740",
							version = 3,
						},
					},
				},
				eventType = 4,
				loop = true,
				mechanicTime = 812.05085714286,
				name = "[Lj Macro] Ice/Lightning Tell",
				timeRange = true,
				timelineIndex = 151,
				timerEndOffset = 100,
				timerStartOffset = 4,
				uuid = "22511047-d04b-0e55-9dec-4f2ae047ad8a",
				version = 2,
			},
		},
	},
	[153] = 
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
							actionLua = "data.ljAccelBomb = true\n--SendTextCommand(\"/e Real Accel Bomb\")\nself.used = true",
							conditions = 
							{
								
								{
									"274f2dad-f7c1-b419-ad16-a81bca11d777",
									true,
								},
								
								{
									"2e0c317c-61c3-1330-a3f2-a7dc0efeb4ba",
									true,
								},
							},
							endIfUsed = true,
							gVar = "ACR_RikuWAR3_CD",
							name = "Stillness",
							uuid = "5c32ecc6-92bc-aab9-bfe4-eb1224e52be8",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "data.ljAccelBomb = false\n--SendTextCommand(\"/e Fake Accel Bomb\")\nself.used = true",
							conditions = 
							{
								
								{
									"274f2dad-f7c1-b419-ad16-a81bca11d777",
									false,
								},
								
								{
									"2e0c317c-61c3-1330-a3f2-a7dc0efeb4ba",
									true,
								},
							},
							endIfUsed = true,
							gVar = "ACR_RikuSGE3_CD",
							name = "Motion",
							uuid = "10d58f6e-0d5c-435b-a700-fc777dc939c4",
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
							conditionLua = "return data.ljExdeathAura == \"Truth\"",
							name = "Exdeath: Truth",
							uuid = "274f2dad-f7c1-b419-ad16-a81bca11d777",
							version = 3,
						},
						inheritedIndex = 1,
					},
					
					{
						data = 
						{
							buffID = 5546,
							category = "Self",
							name = "Self: Acceleration Bomb Buff",
							uuid = "2e0c317c-61c3-1330-a3f2-a7dc0efeb4ba",
							version = 3,
						},
					},
				},
				mechanicTime = 826.02524789261,
				name = "[Lj Data] Get Accel Bomb",
				timeRange = true,
				timelineIndex = 153,
				timerEndOffset = 20,
				timerStartOffset = -2,
				uuid = "fd1f966b-a60e-dbfc-9db3-d0dbc23998f0",
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
							actionLua = "local center = {x = 100, y = 0, z = 100}\nlocal orientation = AnyoneCore.Settings.Reactions.dmu.p4StackSpreadOrientation\nlocal spreadPos\nlocal stackPos\n\nif orientation == 2 then\n    spreadPos = {x = 100, y = 0, z = 87.5}  -- North\n    stackPos  = {x = 87.5, y = 0, z = 100}  -- West\nelse\n    spreadPos = {x = 87.5, y = 0, z = 100}  -- West\n    stackPos  = {x = 100, y = 0, z = 87.5}  -- North\nend\n\nlocal lead      = 8\nlocal firstIn   = 50   -- 877 - 827\nlocal secondIn  = 75   -- 902 - 827\n\nlocal player = TensorCore.mGetPlayer()\nlocal buff   = TensorCore.getBuff(player, 5544) or TensorCore.getBuff(player, 5545)\n\nif buff then\n    data.ljExdeathBuffClaimed = true\n\n    local truth  = data.ljExdeathAura == \"Truth\"\n    local spread = (buff.id == 5544)\n    if not truth then spread = not spread end\n\n    local resolvesFirst = math.abs(buff.duration - firstIn) <= math.abs(buff.duration - secondIn)\n    local otherIn = resolvesFirst and secondIn or firstIn\n\n    local drawer = TensorCore.getCachedDrawer(0xFF00FFFF, 0xFF0088FF, 0xFF0000FF, 0xFFFFFFFF, 2)\n    drawer:addTimedArrow(8000, center.x, center.y, center.z,\n        TensorCore.getHeadingToTarget(center, spread and spreadPos or stackPos),\n        9.5, 1, 3, 3, math.max(0, buff.duration - lead) * 1000, false, Argus2.RenderFlags.FLAG_RENDER_OVERLAY)\n    drawer:addTimedArrow(8000, center.x, center.y, center.z,\n        TensorCore.getHeadingToTarget(center, stackPos),\n        9.5, 1, 3, 3, (otherIn - lead) * 1000, false, Argus2.RenderFlags.FLAG_RENDER_OVERLAY)\nend\n\nself.used = true",
							conditions = 
							{
								
								{
									"162df881-c016-8e8a-b363-b0f345a8c6da",
									true,
								},
								
								{
									"faba3eab-7df5-75f5-bcc8-805f8106c79a",
									false,
								},
								
								{
									"5aabe516-20b8-30d6-a2b1-a739b8efe3e9",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_CD",
							name = "Support",
							uuid = "2eed23b6-13a5-63de-b393-6645da874b59",
							version = 2.1,
						},
						inheritedIndex = 1,
					},
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local center = {x = 100, y = 0, z = 100}\nlocal orientation = AnyoneCore.Settings.Reactions.dmu.p4StackSpreadOrientation\nlocal spreadPos\nlocal stackPos\n\nif orientation == 2 then\n    spreadPos = {x = 100, y = 0, z = 112.5}  -- South\n    stackPos  = {x = 112.5, y = 0, z = 100}  -- East\nelse\n    spreadPos = {x = 112.5, y = 0, z = 100}  -- East\n    stackPos  = {x = 100, y = 0, z = 112.5}  -- South\nend\n\nlocal lead      = 8\nlocal firstIn   = 50   -- 877 - 827\nlocal secondIn  = 75   -- 902 - 827\n\nlocal player = TensorCore.mGetPlayer()\nlocal buff   = TensorCore.getBuff(player, 5544) or TensorCore.getBuff(player, 5545)\n\nif buff then\n    data.ljExdeathBuffClaimed = true\n\n    local truth  = data.ljExdeathAura == \"Truth\"\n    local spread = (buff.id == 5544)\n    if not truth then spread = not spread end\n\n    local resolvesFirst = math.abs(buff.duration - firstIn) <= math.abs(buff.duration - secondIn)\n    local otherIn = resolvesFirst and secondIn or firstIn\n\n    local drawer = TensorCore.getCachedDrawer(0xFF00FFFF, 0xFF0088FF, 0xFF0000FF, 0xFFFFFFFF, 2)\n    drawer:addTimedArrow(8000, center.x, center.y, center.z,\n        TensorCore.getHeadingToTarget(center, spread and spreadPos or stackPos),\n        9.5, 1, 3, 3, math.max(0, buff.duration - lead) * 1000, false, Argus2.RenderFlags.FLAG_RENDER_OVERLAY)\n    drawer:addTimedArrow(8000, center.x, center.y, center.z,\n        TensorCore.getHeadingToTarget(center, stackPos),\n        9.5, 1, 3, 3, (otherIn - lead) * 1000, false, Argus2.RenderFlags.FLAG_RENDER_OVERLAY)\nend\n\nself.used = true",
							conditions = 
							{
								
								{
									"162df881-c016-8e8a-b363-b0f345a8c6da",
									true,
								},
								
								{
									"faba3eab-7df5-75f5-bcc8-805f8106c79a",
									true,
								},
								
								{
									"5aabe516-20b8-30d6-a2b1-a739b8efe3e9",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_CD",
							name = "DPS",
							uuid = "0a729d61-7ce4-7c95-9607-2ec280c1a486",
							version = 2.1,
						},
						inheritedIndex = 2,
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return data.ljExdeathAura ~= nil",
							dequeueIfLuaFalse = true,
							name = "Exdeath Aura Recorded",
							uuid = "162df881-c016-8e8a-b363-b0f345a8c6da",
							version = 3,
						},
						inheritedIndex = 1,
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 9,
							name = "Self: DPS",
							partyTargetType = "DPS",
							uuid = "faba3eab-7df5-75f5-bcc8-805f8106c79a",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return AnyoneCore ~= nil",
							dequeueIfLuaFalse = true,
							name = "AnyoneCore",
							uuid = "5aabe516-20b8-30d6-a2b1-a739b8efe3e9",
							version = 3,
						},
					},
				},
				mechanicTime = 826.02524789261,
				name = "[Lj Draw] Spread Stack Arrow",
				timelineIndex = 153,
				timerOffset = 1,
				uuid = "7c286e17-4f6b-dc85-ae73-de5b513879a3",
				version = 2,
			},
			inheritedIndex = 2,
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
							actionLua = "local truth = data.ljExdeathAura == \"Truth\"\nlocal line = truth and \"      Gaze1: Look OUT.\" or \"      Gaze1: Look INSIDE.\"\nlocal prefix = Lj_UMADDRAWS_P4Macro == \"Party Chat\" and \"/p \" or \"/e \"\nTensorCore.sendParsedChatMessage(prefix .. line)\nself.used = true",
							conditions = 
							{
								
								{
									"70ffaef4-ecca-338a-bd00-8145f63aad42",
									true,
								},
							},
							name = "Fancy Gaze 1 Tell",
							uuid = "8c2f1439-9a2f-c33c-aed3-6bba5b839065",
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
							conditionLua = "local mode = Lj_UMADDRAWS_P4Macro\nif mode ~= \"Echo Chat\" and mode ~= \"Party Chat\" then\n    return false\nend\nreturn data.ljExdeathAura == \"Truth\" or data.ljExdeathAura == \"Lie\"",
							dequeueIfLuaFalse = true,
							name = "GC1 Tell Ready",
							uuid = "70ffaef4-ecca-338a-bd00-8145f63aad42",
							version = 3,
						},
					},
				},
				mechanicTime = 826.02524789261,
				name = "[Lj Macro] Gaze 1 Call",
				randomTimeout = 8,
				timeRandomRange = true,
				timeRange = true,
				timelineIndex = 153,
				timerStartOffset = -8,
				uuid = "a04e233b-4d97-11bb-ba25-9a2fc1e795bc",
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
							actionLua = "local markState = data.ljP4SpreadMarks\nif not markState or markState.selfIsLong == nil then\n    self.used = true\n    return\nend\n\nlocal line = markState.selfIsLong and \"I'm LONG SPREAD\" or \"I'm SHORT SPREAD\"\nTensorCore.sendParsedChatMessage(\"/e \" .. line)\nself.used = true",
							conditions = 
							{
								
								{
									"97a8a3a1-c6f9-ebe6-8d2a-900dd332d586",
									true,
								},
							},
							name = "Echo Short/Long Spread",
							uuid = "e45f9d58-020b-f8be-a69b-6d5103b380a0",
							version = 2.1,
						},
						inheritedIndex = 1,
					},
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local markState = data.ljP4SpreadMarks\nif not markState or markState.selfIsLong == nil then\n    self.used = true\n    return\nend\n\nlocal isLong = markState.selfIsLong\nlocal isDPS = TensorCore.isDPS(Player) == true\nlocal sign\nif isDPS then\n    sign = isLong and \"ignore2\" or \"bind2\"\nelse\n    sign = isLong and \"ignore1\" or \"bind1\"\nend\n\nTensorCore.sendParsedChatMessage('/mk \"' .. sign .. '\" <me>')\nmarkState.selfMarked = true\nself.used = true",
							conditions = 
							{
								
								{
									"97a8a3a1-c6f9-ebe6-8d2a-900dd332d586",
									true,
								},
							},
							name = "Self Mark Short/Long Spread",
							uuid = "9691d33a-72b7-dc55-b9c8-f5c4905a338e",
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
							conditionLua = "if Lj_UMADDRAWS_P4AutoMark ~= \"Self Only\" or not Player then\n    return false\nend\n\nlocal markState = data.ljP4SpreadMarks\nif markState and markState.selfMarked then\n    return false\nend\n\nlocal tell = data.ljExdeathAura\nif tell ~= \"Truth\" and tell ~= \"Lie\" then\n    return false\nend\n\nlocal buff\nif tell == \"Truth\" then\n    buff = TensorCore.getBuff(Player, 587)\n        or TensorCore.getBuff(Player, 3799)\n        or TensorCore.getBuff(Player, 5544)\nelse\n    buff = TensorCore.getBuff(Player, 1023)\n        or TensorCore.getBuff(Player, 5545)\n        or TensorCore.getBuff(Player, 2142)\nend\n\nif not buff then\n    return false\nend\n\nmarkState = markState or {}\ndata.ljP4SpreadMarks = markState\nmarkState.selfIsLong = buff.duration > 60\nreturn true",
							name = "Self Spread Ready",
							uuid = "97a8a3a1-c6f9-ebe6-8d2a-900dd332d586",
							version = 3,
						},
					},
				},
				mechanicTime = 826.02524789261,
				name = "[Lj Macro] Self Mark Spreads",
				randomTimeout = 2,
				timeRandomRange = true,
				timeRange = true,
				timelineIndex = 153,
				timerEndOffset = 3,
				timerStartOffset = 1,
				uuid = "9ceb24be-40de-b8a1-ac41-7f05446be4a0",
				version = 2,
			},
		},
	},
	[154] = 
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
							actionLua = "self.used = true",
							conditions = 
							{
								
								{
									"af6c0fa5-4895-8e3d-bda6-f82f6bfe25df",
									true,
								},
							},
							uuid = "7700ddf8-c378-61ca-8d1b-e468fd8e0380",
							version = 2.1,
						},
						inheritedIndex = 1,
					},
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local truth = data.ljChaosAura == \"Truth\"\nlocal line\n\nif eventArgs.spellID == 47902 then\n    line = truth and \"● Fire is AOE (move)\" or \" Fire is DONUT (stay)\"\nelseif eventArgs.spellID == 47903 then\n    line = truth and \" Water is DONUT (stay)\" or \"● Water is AOE (move)\"\nelse\n    self.used = true\n    return\nend\n\nlocal prefix = Lj_UMADDRAWS_P4Macro == \"Party Chat\" and \"/p \" or \"/e \"\nTensorCore.sendParsedChatMessage(prefix .. line)\nself.used = true",
							conditions = 
							{
								
								{
									"af6c0fa5-4895-8e3d-bda6-f82f6bfe25df",
									true,
								},
							},
							name = "Fancy Chaos 1 Tell",
							uuid = "9fa5f3c6-c026-b5f3-9946-777c8242e003",
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
							conditionLua = "local mode = Lj_UMADDRAWS_P4Macro\nif mode ~= \"Echo Chat\" and mode ~= \"Party Chat\" then\n    return false\nend\nlocal tell = data.ljChaosAura\nif tell ~= \"Truth\" and tell ~= \"Lie\" then\n    return false\nend\nreturn eventArgs.spellID == 47902 or eventArgs.spellID == 47903",
							dequeueIfLuaFalse = true,
							name = "Chaos 1 Cast + Tell Ready",
							uuid = "af6c0fa5-4895-8e3d-bda6-f82f6bfe25df",
							version = 3,
						},
					},
				},
				eventType = 2,
				mechanicTime = 831.10515604713,
				name = "[Lj Macro] Donut Twister Call 1",
				throttleTime = 1500,
				timeRange = true,
				timelineIndex = 154,
				timerEndOffset = 5,
				timerStartOffset = -5,
				uuid = "b5fd05f1-b7bd-17fd-8ec3-add2e109bfd7",
				version = 2,
			},
		},
	},
	[156] = 
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
							actionLua = "local center = {x = 100, y = 0, z = 100}\nlocal orientation = AnyoneCore.Settings.Reactions.dmu.p4StackSpreadOrientation\nlocal spreadPos\nlocal stackPos\n\nif orientation == 2 then\n    spreadPos = {x = 100, y = 0, z = 87.5}  -- North\n    stackPos  = {x = 87.5, y = 0, z = 100}  -- West\nelse\n    spreadPos = {x = 87.5, y = 0, z = 100}  -- West\n    stackPos  = {x = 100, y = 0, z = 87.5}  -- North\nend\n\nlocal lead      = 10\nlocal firstIn   = 35   -- 877 - 842\nlocal secondIn  = 60   -- 902 - 842\n\nlocal player = TensorCore.mGetPlayer()\nlocal buff   = TensorCore.getBuff(player, 5544) or TensorCore.getBuff(player, 5545)\n\nif buff then\n    local truth  = data.ljExdeathAura == \"Truth\"\n    local spread = (buff.id == 5544)\n    if not truth then spread = not spread end\n\n    local resolvesFirst = math.abs(buff.duration - firstIn) <= math.abs(buff.duration - secondIn)\n    local otherIn = resolvesFirst and secondIn or firstIn\n\n    local drawer = TensorCore.getCachedDrawer(0xFF00FFFF, 0xFF0088FF, 0xFF0000FF, 0xFFFFFFFF, 2)\n    drawer:addTimedArrow(10000, center.x, center.y, center.z,\n        TensorCore.getHeadingToTarget(center, spread and spreadPos or stackPos),\n        9.5, 1, 3, 3, math.max(0, buff.duration - lead) * 1000, false, Argus2.RenderFlags.FLAG_RENDER_OVERLAY)\n    drawer:addTimedArrow(10000, center.x, center.y, center.z,\n        TensorCore.getHeadingToTarget(center, stackPos),\n        9.5, 1, 3, 3, (otherIn - lead) * 1000, false, Argus2.RenderFlags.FLAG_RENDER_OVERLAY)\nend\n\nself.used = true",
							conditions = 
							{
								
								{
									"162df881-c016-8e8a-b363-b0f345a8c6da",
									true,
								},
								
								{
									"ad360180-81d2-eeb0-9949-bded6a94e9f1",
									true,
								},
								
								{
									"faba3eab-7df5-75f5-bcc8-805f8106c79a",
									false,
								},
								
								{
									"737aa02b-cd93-9f73-98cd-861d3935358a",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_CD",
							name = "Support",
							uuid = "2eed23b6-13a5-63de-b393-6645da874b59",
							version = 2.1,
						},
						inheritedIndex = 1,
					},
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local center = {x = 100, y = 0, z = 100}\nlocal orientation = AnyoneCore.Settings.Reactions.dmu.p4StackSpreadOrientation\nlocal spreadPos\nlocal stackPos\n\nif orientation == 2 then\n    spreadPos = {x = 100, y = 0, z = 112.5}  -- South\n    stackPos  = {x = 112.5, y = 0, z = 100}  -- East\nelse\n    spreadPos = {x = 112.5, y = 0, z = 100}  -- East\n    stackPos  = {x = 100, y = 0, z = 112.5}  -- South\nend\n\nlocal lead      = 10\nlocal firstIn   = 35   -- 877 - 842\nlocal secondIn  = 60   -- 902 - 842\n\nlocal player = TensorCore.mGetPlayer()\nlocal buff   = TensorCore.getBuff(player, 5544) or TensorCore.getBuff(player, 5545)\n\nif buff then\n    local truth  = data.ljExdeathAura == \"Truth\"\n    local spread = (buff.id == 5544)\n    if not truth then spread = not spread end\n\n    local resolvesFirst = math.abs(buff.duration - firstIn) <= math.abs(buff.duration - secondIn)\n    local otherIn = resolvesFirst and secondIn or firstIn\n\n    local drawer = TensorCore.getCachedDrawer(0xFF00FFFF, 0xFF0088FF, 0xFF0000FF, 0xFFFFFFFF, 2)\n    drawer:addTimedArrow(10000, center.x, center.y, center.z,\n        TensorCore.getHeadingToTarget(center, spread and spreadPos or stackPos),\n        9.5, 1, 3, 3, math.max(0, buff.duration - lead) * 1000, false, Argus2.RenderFlags.FLAG_RENDER_OVERLAY)\n    drawer:addTimedArrow(10000, center.x, center.y, center.z,\n        TensorCore.getHeadingToTarget(center, stackPos),\n        9.5, 1, 3, 3, (otherIn - lead) * 1000, false, Argus2.RenderFlags.FLAG_RENDER_OVERLAY)\nend\n\nself.used = true",
							conditions = 
							{
								
								{
									"162df881-c016-8e8a-b363-b0f345a8c6da",
									true,
								},
								
								{
									"ad360180-81d2-eeb0-9949-bded6a94e9f1",
									true,
								},
								
								{
									"faba3eab-7df5-75f5-bcc8-805f8106c79a",
									true,
								},
								
								{
									"737aa02b-cd93-9f73-98cd-861d3935358a",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_CD",
							name = "DPS",
							uuid = "0a729d61-7ce4-7c95-9607-2ec280c1a486",
							version = 2.1,
						},
						inheritedIndex = 2,
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return data.ljExdeathAura ~= nil",
							dequeueIfLuaFalse = true,
							name = "Exdeath Aura Recorded",
							uuid = "162df881-c016-8e8a-b363-b0f345a8c6da",
							version = 3,
						},
						inheritedIndex = 1,
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return not data.ljExdeathBuffClaimed",
							dequeueIfLuaFalse = true,
							name = "Self: Stack Spread Unknown",
							uuid = "ad360180-81d2-eeb0-9949-bded6a94e9f1",
							version = 3,
						},
						inheritedIndex = 2,
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 9,
							name = "Self: DPS",
							partyTargetType = "DPS",
							uuid = "faba3eab-7df5-75f5-bcc8-805f8106c79a",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return AnyoneCore ~= nil",
							dequeueIfLuaFalse = true,
							name = "AnyoneCore",
							uuid = "737aa02b-cd93-9f73-98cd-861d3935358a",
							version = 3,
						},
					},
				},
				mechanicTime = 841.08843971594,
				name = "[Lj Draw] Spread Stack Arrow",
				timelineIndex = 156,
				timerOffset = 1,
				uuid = "ef0fc3d5-7870-4f0a-bf0e-f3773ff46d0f",
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
							actionLua = "local truth = data.ljExdeathAura == \"Truth\"\nlocal line = truth and \"      Gaze2: Look OUT.\" or \"      Gaze2: Look INSIDE.\"\nlocal prefix = Lj_UMADDRAWS_P4Macro == \"Party Chat\" and \"/p \" or \"/e \"\nTensorCore.sendParsedChatMessage(prefix .. line)\nself.used = true",
							conditions = 
							{
								
								{
									"1d8c37ab-1122-d20d-a79c-97b1fa121583",
									true,
								},
							},
							name = "Fancy Gaze 2 Tell",
							uuid = "cbd8eb1c-ca39-6e0a-9ea3-df72cb77e83e",
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
							conditionLua = "local mode = Lj_UMADDRAWS_P4Macro\nif mode ~= \"Echo Chat\" and mode ~= \"Party Chat\" then\n    return false\nend\nlocal tell = data.ljExdeathAura\nreturn tell == \"Truth\" or tell == \"Lie\"",
							dequeueIfLuaFalse = true,
							name = "GC2 Tell Ready",
							uuid = "1d8c37ab-1122-d20d-a79c-97b1fa121583",
							version = 3,
						},
					},
				},
				mechanicTime = 841.08843971594,
				name = "[Lj Macro] Gaze Call 2",
				timeRandomRange = true,
				timeRange = true,
				timelineIndex = 156,
				timerEndOffset = -3,
				timerStartOffset = -8,
				uuid = "92f5d94f-4111-71f3-bc8b-25ce7b1b0ada",
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
							actionLua = "local markState = data.ljP4SpreadMarks\nif not markState or markState.selfIsLong == nil then\n    self.used = true\n    return\nend\n\nlocal line = markState.selfIsLong and \"I'm LONG SPREAD\" or \"I'm SHORT SPREAD\"\nTensorCore.sendParsedChatMessage(\"/e \" .. line)\nself.used = true",
							conditions = 
							{
								
								{
									"9ea1e141-00be-cff2-a029-b56b07ddd2b4",
									true,
								},
							},
							name = "Echo Short/Long Spread",
							uuid = "e69e0d8c-9d25-eff7-ab61-29bf681a761e",
							version = 2.1,
						},
						inheritedIndex = 1,
					},
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local markState = data.ljP4SpreadMarks\nif not markState or markState.selfIsLong == nil then\n    self.used = true\n    return\nend\n\nlocal isLong = markState.selfIsLong\nlocal isDPS = TensorCore.isDPS(Player) == true\nlocal sign\nif isDPS then\n    sign = isLong and \"ignore2\" or \"bind2\"\nelse\n    sign = isLong and \"ignore1\" or \"bind1\"\nend\n\nTensorCore.sendParsedChatMessage('/mk \"' .. sign .. '\" <me>')\nmarkState.selfMarked = true\nself.used = true",
							conditions = 
							{
								
								{
									"9ea1e141-00be-cff2-a029-b56b07ddd2b4",
									true,
								},
							},
							name = "Self Mark Short/Long Spread",
							uuid = "a50d06f5-eebf-4920-a50a-e9cd73e7e840",
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
							conditionLua = "if Lj_UMADDRAWS_P4AutoMark ~= \"Self Only\" or not Player then\n    return false\nend\n\nlocal markState = data.ljP4SpreadMarks\nif markState and markState.selfMarked then\n    return false\nend\n\nlocal tell = data.ljExdeathAura\nif tell ~= \"Truth\" and tell ~= \"Lie\" then\n    return false\nend\n\nlocal buff\nif tell == \"Truth\" then\n    buff = TensorCore.getBuff(Player, 587)\n        or TensorCore.getBuff(Player, 3799)\n        or TensorCore.getBuff(Player, 5544)\nelse\n    buff = TensorCore.getBuff(Player, 1023)\n        or TensorCore.getBuff(Player, 5545)\n        or TensorCore.getBuff(Player, 2142)\nend\n\nif not buff then\n    return false\nend\n\nmarkState = markState or {}\ndata.ljP4SpreadMarks = markState\nmarkState.selfIsLong = buff.duration > 60\nreturn true",
							name = "Self Spread Ready",
							uuid = "9ea1e141-00be-cff2-a029-b56b07ddd2b4",
							version = 3,
						},
					},
				},
				mechanicTime = 841.08843971594,
				name = "[Lj Macro] Self Mark Spreads",
				randomTimeout = 2,
				timeRandomRange = true,
				timeRange = true,
				timelineIndex = 156,
				timerEndOffset = 3,
				timerStartOffset = 1,
				uuid = "aae6c397-ca79-b843-bd0b-0ddd38eea8c5",
				version = 2,
			},
		},
	},
	[157] = 
	{
		
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
									"e0f5a9bb-5891-79ad-b7ed-7fb815c0152e",
									true,
								},
								
								{
									"e6d90469-40d1-94f2-8f97-cc86c184c5bb",
									true,
								},
								
								{
									"c3af5c05-6b4e-4922-99a0-dfd62372d6e0",
									true,
								},
							},
							gVar = "ACR_RikuWAR3_CD",
							name = "Stop Everything",
							stopAllActions = true,
							uuid = "220568e8-2c1c-e615-840f-10b1db559f82",
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
									"e0f5a9bb-5891-79ad-b7ed-7fb815c0152e",
									true,
								},
								
								{
									"4663a60a-faba-f023-aa6d-dd2d0807e008",
									true,
								},
							},
							gVar = "ACR_RikuWAR3_CD",
							name = "Resume Everything",
							resumeAllActions = true,
							uuid = "6035706f-bf33-c304-96d1-7a36c2296c40",
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
							conditionLua = "return Lj_UMADDRAWS_AccelBombStillness == true",
							dequeueIfLuaFalse = true,
							name = "Enabled",
							uuid = "e0f5a9bb-5891-79ad-b7ed-7fb815c0152e",
							version = 3,
						},
						inheritedIndex = 1,
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return data.ljAccelBomb == true",
							dequeueIfLuaFalse = true,
							name = "Self: Stillness Bomb",
							uuid = "e6d90469-40d1-94f2-8f97-cc86c184c5bb",
							version = 3,
						},
					},
					
					{
						data = 
						{
							buffCheckType = 3,
							buffDuration = 2,
							buffID = 5546,
							category = "Self",
							comparator = 2,
							name = "Self: Accel Bomb Buff <= 2s",
							uuid = "c3af5c05-6b4e-4922-99a0-dfd62372d6e0",
							version = 3,
						},
						inheritedIndex = 3,
					},
					
					{
						data = 
						{
							actionUUID = "220568e8-2c1c-e615-840f-10b1db559f82",
							category = "Action",
							name = "Action Used: Stop Everything",
							uuid = "4663a60a-faba-f023-aa6d-dd2d0807e008",
							version = 3,
						},
					},
				},
				mechanicTime = 846.19462329432,
				name = "[Lj Opti] STOP EVERYTHING",
				throttleTime = 2500,
				timeRange = true,
				timelineIndex = 157,
				timerEndOffset = 60,
				timerOffset = -2,
				timerStartOffset = -3,
				uuid = "c8135b33-eeb8-ff45-9ca2-d49178ba1afd",
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
							actionLua = "TensorCore.mGetPlayer():Jump()\nself.used = true",
							conditions = 
							{
								
								{
									"4f46c5a8-5d5b-2586-80c1-e4dc1b5d8917",
									true,
								},
								
								{
									"e6d90469-40d1-94f2-8f97-cc86c184c5bb",
									true,
								},
								
								{
									"c3af5c05-6b4e-4922-99a0-dfd62372d6e0",
									true,
								},
							},
							gVar = "ACR_RikuWAR3_CD",
							name = "Jump",
							stopAllActions = true,
							uuid = "220568e8-2c1c-e615-840f-10b1db559f82",
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
							conditionLua = "return Lj_UMADDRAWS_AccelBombMotion == true",
							dequeueIfLuaFalse = true,
							name = "Enabled",
							uuid = "4f46c5a8-5d5b-2586-80c1-e4dc1b5d8917",
							version = 3,
						},
						inheritedIndex = 1,
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return data.ljAccelBomb == false",
							dequeueIfLuaFalse = true,
							name = "Self: Motion Bomb",
							uuid = "e6d90469-40d1-94f2-8f97-cc86c184c5bb",
							version = 3,
						},
					},
					
					{
						data = 
						{
							buffCheckType = 3,
							buffDuration = 1.5,
							buffID = 5546,
							category = "Self",
							comparator = 2,
							name = "Self: Accel Bomb Buff <= 1.5s",
							uuid = "c3af5c05-6b4e-4922-99a0-dfd62372d6e0",
							version = 3,
						},
						inheritedIndex = 3,
					},
				},
				loop = true,
				mechanicTime = 846.19462329432,
				name = "[Lj Opti] JUMP FOR MOTION",
				timeRange = true,
				timelineIndex = 157,
				timerEndOffset = 60,
				timerOffset = -2,
				timerStartOffset = -3,
				uuid = "52eb6ae3-c8c9-6836-b522-0c5d22da2bae",
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
							actionLua = "TensorDrift_SlidecastForceHold = true\nself.used = true",
							conditions = 
							{
								
								{
									"9e92cb67-1086-49f0-a48b-50c019806e0b",
									true,
								},
								
								{
									"c305123f-01e2-32b0-bd63-4424d6132137",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_CD",
							name = "Force Slidecast",
							uuid = "26b75ba9-ffe2-5289-bbe4-7548e58817b5",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "TensorDrift_SlidecastForceHold = false\nself.used = true",
							conditions = 
							{
								
								{
									"9e92cb67-1086-49f0-a48b-50c019806e0b",
									true,
								},
								
								{
									"a6528518-f553-c3f8-8bec-1ab1f62e6ab1",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_CD",
							name = "End Slide",
							uuid = "c9525cfd-c78c-8c38-b40b-09e5fe1fbe7b",
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
							conditionLua = "return TensorDrift_SlidecastForceHold ~= nil",
							dequeueIfLuaFalse = true,
							name = "TensorDrift",
							uuid = "9e92cb67-1086-49f0-a48b-50c019806e0b",
							version = 3,
						},
						inheritedIndex = 1,
					},
					
					{
						data = 
						{
							buffCheckType = 3,
							buffDuration = 3,
							buffID = 5546,
							category = "Self",
							comparator = 2,
							name = "Self: Accel Bomb Buff <= 3s",
							uuid = "c305123f-01e2-32b0-bd63-4424d6132137",
							version = 3,
						},
						inheritedIndex = 2,
					},
					
					{
						data = 
						{
							actionUUID = "26b75ba9-ffe2-5289-bbe4-7548e58817b5",
							category = "Action",
							name = "Action Used: Force Slidecast",
							uuid = "a6528518-f553-c3f8-8bec-1ab1f62e6ab1",
							version = 3,
						},
					},
				},
				mechanicTime = 846.19462329432,
				name = "[Lj Opti] Force Slidecast (Stillness/Motion)",
				throttleTime = 3500,
				timeRange = true,
				timelineIndex = 157,
				timerEndOffset = 60,
				timerStartOffset = -3,
				uuid = "68b15629-2225-0783-ac12-d6fdd5b9d9d3",
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
							actionLua = "self.used = true",
							conditions = 
							{
								
								{
									"b7f43efa-8433-da28-a3c2-2e6dc9c6ac90",
									true,
								},
							},
							uuid = "6eece6ab-1a4c-2f49-8633-aa2cccbfec8f",
							version = 2.1,
						},
						inheritedIndex = 1,
					},
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local truth = data.ljChaosAura == \"Truth\"\nlocal line\n\nif eventArgs.spellID == 47902 then\n    line = truth and \"● Fire is AOE (move)\" or \" Fire is DONUT (stay)\"\nelseif eventArgs.spellID == 47903 then\n    line = truth and \" Water is DONUT (stay)\" or \"● Water is AOE (move)\"\nelse\n    self.used = true\n    return\nend\n\nlocal prefix = Lj_UMADDRAWS_P4Macro == \"Party Chat\" and \"/p \" or \"/e \"\nTensorCore.sendParsedChatMessage(prefix .. line)\nself.used = true",
							conditions = 
							{
								
								{
									"b7f43efa-8433-da28-a3c2-2e6dc9c6ac90",
									true,
								},
							},
							name = "Fancy Chaos 2 Tell",
							uuid = "fa5064a3-424b-9117-bdc3-025f431199f5",
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
							conditionLua = "local mode = Lj_UMADDRAWS_P4Macro\nif mode ~= \"Echo Chat\" and mode ~= \"Party Chat\" then\n    return false\nend\nlocal tell = data.ljChaosAura\nif tell ~= \"Truth\" and tell ~= \"Lie\" then\n    return false\nend\nreturn eventArgs.spellID == 47902 or eventArgs.spellID == 47903",
							dequeueIfLuaFalse = true,
							name = "Chaos 2 Cast + Tell Ready",
							uuid = "b7f43efa-8433-da28-a3c2-2e6dc9c6ac90",
							version = 3,
						},
					},
				},
				eventType = 2,
				mechanicTime = 846.19462329432,
				name = "[Lj Macro] Donut Twister Call 2",
				throttleTime = 1500,
				timeRange = true,
				timelineIndex = 157,
				timerEndOffset = 5,
				timerStartOffset = -5,
				uuid = "667b343b-6b9d-9230-8a88-0ede8c541345",
				version = 2,
			},
		},
	},
	[162] = 
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
							actionLua = "local sourcePos = TensorCore.mGetPlayer().pos\nlocal targetPos = { x = 100, y = sourcePos.y, z = 100 }\n\nlocal totalDistance = TensorCore.getDistance2d(sourcePos, targetPos)\nlocal heading = TensorCore.getHeadingToTarget(sourcePos, targetPos)\n\nlocal scale = math.min(1, totalDistance / 15)\nlocal baseWidth = math.max(0.5, scale)\nlocal tipWidth = math.max(1.5, 3 * scale)\nlocal tipLength = math.max(2, 3 * scale)\nlocal baseLength = totalDistance - tipLength\n\nif baseLength > 0 then\n    local arrowDrawer = TensorCore.getCachedDrawer(\n        0x4000FF00,\n        0x4000FF00,\n        0x4000FF00,\n        0xFFFFFFFF,\n        2\n    )\n\n    arrowDrawer:addArrow(\n        sourcePos.x, sourcePos.y, sourcePos.z,\n        heading,\n        baseLength, baseWidth, tipLength, tipWidth,\n        false,\n        Argus2.RenderFlags.FLAG_RENDER_OVERLAY\n    )\nend\n\nself.used = true",
							conditions = 
							{
								
								{
									"b6678cb3-9b60-6103-ad00-78026c5a157d",
									true,
								},
							},
							gVar = "ACR_RikuWAR3_CD",
							uuid = "a92ec306-d8ad-c97e-b02f-4047569ebdfb",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							buffCheckType = 7,
							buffDuration = 5,
							buffIDList = 
							{
								5547,
								5548,
							},
							category = "Self",
							comparator = 2,
							matchAnyBuff = true,
							name = "Self: Entropy/Dynamic Field <= 5s Buff",
							uuid = "b6678cb3-9b60-6103-ad00-78026c5a157d",
							version = 3,
						},
					},
				},
				eventType = 12,
				mechanicTime = 872.48857073874,
				name = "[Lj Draw] Draw Donut/Twister Bait Positions",
				timeRange = true,
				timelineIndex = 162,
				timerEndOffset = 45,
				timerStartOffset = -10,
				uuid = "c4ee9f11-8b37-0459-8b6c-4d21bb53e8bc",
				version = 2,
			},
		},
	},
	[163] = 
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
							actionLua = "local sourcePos = TensorCore.mGetPlayer().pos\nlocal targetPos = { x = 100, y = 0, z = 96 }\n\nlocal heading = TensorCore.getHeadingToTarget(sourcePos, targetPos)\nlocal totalDistance = TensorCore.getDistance2d(sourcePos, targetPos)\n\nlocal scale = math.min(1, totalDistance / 15)\nlocal baseWidth = math.max(0.5, 1 * scale)\nlocal tipWidth = math.max(1.5, 3 * scale)\nlocal tipLength = math.max(2, 3 * scale)\nlocal baseLength = totalDistance - tipLength\n\nif baseLength > 0.75 then\n    local arrowDrawer = TensorCore.getCachedDrawer(\n        0xFF00FFFF,\n        0xFF0088FF,\n        0xFF0000FF,\n        0xFFFFFFFF,\n        2\n    )\n\n    arrowDrawer:addArrow(\n        sourcePos.x, sourcePos.y, sourcePos.z,\n        heading,\n        baseLength, baseWidth, tipLength, tipWidth,\n        false, Argus2.RenderFlags.FLAG_RENDER_OVERLAY\n    )\nend\n\nself.used = true",
							conditions = 
							{
								
								{
									"99c7f027-aad3-5984-a9f6-707857fa04c7",
									true,
								},
								
								{
									"c2dc8d6a-9854-0548-9c50-fb9ceddb58f7",
									false,
								},
							},
							gVar = "ACR_RikuWAR3_CD",
							name = "North",
							uuid = "0dd0dc2d-b322-6fdd-b593-019afbfed7ae",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local sourcePos = TensorCore.mGetPlayer().pos\nlocal targetPos = { x = 100, y = 0, z = 104 }\n\nlocal heading = TensorCore.getHeadingToTarget(sourcePos, targetPos)\nlocal totalDistance = TensorCore.getDistance2d(sourcePos, targetPos)\n\nlocal scale = math.min(1, totalDistance / 15)\nlocal baseWidth = math.max(0.5, 1 * scale)\nlocal tipWidth = math.max(1.5, 3 * scale)\nlocal tipLength = math.max(2, 3 * scale)\nlocal baseLength = totalDistance - tipLength\n\nif baseLength > 0.75 then\n    local arrowDrawer = TensorCore.getCachedDrawer(\n        0xFF00FFFF,\n        0xFF0088FF,\n        0xFF0000FF,\n        0xFFFFFFFF,\n        2\n    )\n\n    arrowDrawer:addArrow(\n        sourcePos.x, sourcePos.y, sourcePos.z,\n        heading,\n        baseLength, baseWidth, tipLength, tipWidth,\n        false, Argus2.RenderFlags.FLAG_RENDER_OVERLAY\n    )\nend\n\nself.used = true",
							conditions = 
							{
								
								{
									"99c7f027-aad3-5984-a9f6-707857fa04c7",
									true,
								},
								
								{
									"c2dc8d6a-9854-0548-9c50-fb9ceddb58f7",
									true,
								},
							},
							gVar = "ACR_RikuWAR3_CD",
							name = "South",
							uuid = "6002616b-0609-f148-8b39-700ef94f8be3",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							buffCheckType = 3,
							buffDuration = 7,
							buffID = 5543,
							category = "Self",
							comparator = 2,
							name = "Self: Cursed Shriek Buff",
							uuid = "99c7f027-aad3-5984-a9f6-707857fa04c7",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 9,
							name = "Self: DPS",
							partyTargetType = "DPS",
							uuid = "c2dc8d6a-9854-0548-9c50-fb9ceddb58f7",
							version = 3,
						},
					},
				},
				enabled = false,
				eventType = 12,
				mechanicTime = 877.06989073874,
				name = "[Lj Draw] Gaze Baits",
				timeRange = true,
				timelineIndex = 163,
				timerEndOffset = 33,
				uuid = "a4812aa0-abc6-4b8a-96c6-4111fd11cd10",
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
							actionLua = "data.ljGazeBaits = data.ljGazeBaits or {}\nlocal state = data.ljGazeBaits\n\nif state.north == nil then\n    state.north = {\n        { x = 100, y = 0, z = 96 },\n        { x = 104, y = 0, z = 94 },\n        { x = 96, y = 0, z = 94 },\n        { x = 100, y = 0, z = 92 },\n        { x = 106, y = 0, z = 96 },\n        { x = 94, y = 0, z = 96 },\n    }\n    state.south = {\n        { x = 100, y = 0, z = 104 },\n        { x = 96, y = 0, z = 106 },\n        { x = 104, y = 0, z = 106 },\n        { x = 100, y = 0, z = 108 },\n        { x = 94, y = 0, z = 104 },\n        { x = 106, y = 0, z = 104 },\n    }\nend\n\nlocal sourcePos = TensorCore.mGetPlayer().pos\nlocal candidates = state.north\nlocal targetPos = candidates[1]\n\nif TensorCore.Avoidance.inAnyAOE(targetPos.x, targetPos.y, targetPos.z) == true then\n    for i = 2, #candidates do\n        local candidate = candidates[i]\n        if TensorCore.Avoidance.inAnyAOE(candidate.x, candidate.y, candidate.z) == false then\n            targetPos = candidate\n            break\n        end\n    end\nend\n\nlocal heading = TensorCore.getHeadingToTarget(sourcePos, targetPos)\nlocal totalDistance = TensorCore.getDistance2d(sourcePos, targetPos)\n\nlocal scale = math.min(1, totalDistance / 15)\nlocal baseWidth = math.max(0.5, 1 * scale)\nlocal tipWidth = math.max(1.5, 3 * scale)\nlocal tipLength = math.max(2, 3 * scale)\nlocal baseLength = totalDistance - tipLength\n\nif baseLength > 0 then\n    local arrowDrawer = TensorCore.getCachedDrawer(\n        0xFF00FFFF,\n        0xFF0088FF,\n        0xFF0000FF,\n        0xFFFFFFFF,\n        2\n    )\n\n    arrowDrawer:addArrow(\n        sourcePos.x, sourcePos.y, sourcePos.z,\n        heading,\n        baseLength, baseWidth, tipLength, tipWidth,\n        false, Argus2.RenderFlags.FLAG_RENDER_OVERLAY\n    )\nend\n\nself.used = true",
							conditions = 
							{
								
								{
									"99c7f027-aad3-5984-a9f6-707857fa04c7",
									true,
								},
								
								{
									"c2dc8d6a-9854-0548-9c50-fb9ceddb58f7",
									false,
								},
							},
							gVar = "ACR_RikuWAR3_CD",
							name = "North",
							uuid = "0dd0dc2d-b322-6fdd-b593-019afbfed7ae",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "data.ljGazeBaits = data.ljGazeBaits or {}\nlocal state = data.ljGazeBaits\n\nif state.north == nil then\n    state.north = {\n        { x = 100, y = 0, z = 96 },\n        { x = 104, y = 0, z = 94 },\n        { x = 96, y = 0, z = 94 },\n        { x = 100, y = 0, z = 92 },\n        { x = 106, y = 0, z = 96 },\n        { x = 94, y = 0, z = 96 },\n    }\n    state.south = {\n        { x = 100, y = 0, z = 104 },\n        { x = 96, y = 0, z = 106 },\n        { x = 104, y = 0, z = 106 },\n        { x = 100, y = 0, z = 108 },\n        { x = 94, y = 0, z = 104 },\n        { x = 106, y = 0, z = 104 },\n    }\nend\n\nlocal sourcePos = TensorCore.mGetPlayer().pos\nlocal candidates = state.south\nlocal targetPos = candidates[1]\n\nif TensorCore.Avoidance.inAnyAOE(targetPos.x, targetPos.y, targetPos.z) == true then\n    for i = 2, #candidates do\n        local candidate = candidates[i]\n        if TensorCore.Avoidance.inAnyAOE(candidate.x, candidate.y, candidate.z) == false then\n            targetPos = candidate\n            break\n        end\n    end\nend\n\nlocal heading = TensorCore.getHeadingToTarget(sourcePos, targetPos)\nlocal totalDistance = TensorCore.getDistance2d(sourcePos, targetPos)\n\nlocal scale = math.min(1, totalDistance / 15)\nlocal baseWidth = math.max(0.5, 1 * scale)\nlocal tipWidth = math.max(1.5, 3 * scale)\nlocal tipLength = math.max(2, 3 * scale)\nlocal baseLength = totalDistance - tipLength\n\nif baseLength > 0 then\n    local arrowDrawer = TensorCore.getCachedDrawer(\n        0xFF00FFFF,\n        0xFF0088FF,\n        0xFF0000FF,\n        0xFFFFFFFF,\n        2\n    )\n\n    arrowDrawer:addArrow(\n        sourcePos.x, sourcePos.y, sourcePos.z,\n        heading,\n        baseLength, baseWidth, tipLength, tipWidth,\n        false, Argus2.RenderFlags.FLAG_RENDER_OVERLAY\n    )\nend\n\nself.used = true",
							conditions = 
							{
								
								{
									"99c7f027-aad3-5984-a9f6-707857fa04c7",
									true,
								},
								
								{
									"c2dc8d6a-9854-0548-9c50-fb9ceddb58f7",
									true,
								},
							},
							gVar = "ACR_RikuWAR3_CD",
							name = "South",
							uuid = "6002616b-0609-f148-8b39-700ef94f8be3",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							buffCheckType = 3,
							buffDuration = 7,
							buffID = 5543,
							category = "Self",
							comparator = 2,
							name = "Self: Cursed Shriek Buff",
							uuid = "99c7f027-aad3-5984-a9f6-707857fa04c7",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 9,
							name = "Self: DPS",
							partyTargetType = "DPS",
							uuid = "c2dc8d6a-9854-0548-9c50-fb9ceddb58f7",
							version = 3,
						},
					},
				},
				eventType = 12,
				mechanicTime = 877.06989073874,
				name = "[Lj Draw] Gaze Baits",
				timeRange = true,
				timelineIndex = 163,
				timerEndOffset = 33,
				uuid = "43945b17-c374-d680-88ef-e3e1b1b9edd4",
				version = 2,
			},
		},
	},
	[165] = 
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
							actionLua = "local timeout = 5000\nlocal position = { x = 100, y = 1, z = 100 }\nlocal white = 0xFFFFFFFF\n\nAnyoneCore.addWorldTextCountdown(timeout, position, white, true, 1.5)\n\nself.used = true",
							conditions = 
							{
								
								{
									"e0b8d51b-6e2f-361e-9597-9b1d0e6d9cf6",
									true,
								},
							},
							gVar = "ACR_RikuWAR3_CD",
							uuid = "90b0a2d0-ab3a-b7da-bf92-d6b6191e3564",
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
							conditionLua = "return AnyoneCore ~= nil",
							dequeueIfLuaFalse = true,
							name = "AnyoneCore",
							uuid = "e0b8d51b-6e2f-361e-9597-9b1d0e6d9cf6",
							version = 3,
						},
					},
				},
				mechanicTime = 895.49672653853,
				name = "[Lj Draw] Countdown",
				timelineIndex = 165,
				timerOffset = -2,
				uuid = "68e8cfea-514c-428a-869f-310a8ca1eddc",
				version = 2,
			},
		},
	},
	[167] = 
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
							actionLua = "local timeout = 5000\nlocal position = { x = 100, y = 1, z = 100 }\nlocal white = 0xFFFFFFFF\n\nAnyoneCore.addWorldTextCountdown(timeout, position, white, true, 1.5)\n\nself.used = true",
							conditions = 
							{
								
								{
									"a697e07a-768c-f355-bbfa-94035faf7030",
									true,
								},
							},
							gVar = "ACR_RikuWAR3_CD",
							uuid = "90b0a2d0-ab3a-b7da-bf92-d6b6191e3564",
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
							conditionLua = "return AnyoneCore ~= nil",
							dequeueIfLuaFalse = true,
							name = "AnyoneCore",
							uuid = "a697e07a-768c-f355-bbfa-94035faf7030",
							version = 3,
						},
					},
				},
				mechanicTime = 916.86652777982,
				name = "[Lj Draw] Countdown",
				timelineIndex = 167,
				timerOffset = -0.5,
				uuid = "d055c585-c4ed-61ff-8419-3303f991659b",
				version = 2,
			},
		},
	},
	[170] = 
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
							actionLua = "local drawTime = 35000\nlocal green = 0x5900FF00\nlocal white = 0xFFFFFFFF\n\nlocal tankPos = { x = 100, y = 0.05, z = 92 }\n\nAnyoneCore.addTimedWorldText(drawTime, \"Tanks\", tankPos, white, true, 1.5)\n\nlocal drawer = TensorCore.getStaticFlatDrawer(green)\ndrawer:addTimedCircle(\n    drawTime,\n    tankPos.x, tankPos.y, tankPos.z,\n    3,\n    0,\n    false,\n    true,\n    0\n)\n\nself.used = true",
							conditions = 
							{
								
								{
									"fb916d2c-906d-4b4f-b999-74a950467561",
									true,
								},
								
								{
									"d7c14c06-ed1a-186c-96d6-ac907da08967",
									true,
								},
							},
							gVar = "ACR_RikuWAR3_CD",
							name = "Tank",
							uuid = "f825f389-1163-3247-b28d-cf2fe6562cb9",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local drawTime = 35000\nlocal green = 0x5900FF00\nlocal white = 0xFFFFFFFF\n\nlocal healerPos = { x = 94.34, y = 0.05, z = 105.65 }\n\nAnyoneCore.addTimedWorldText(drawTime, \"Healers\", healerPos, white, true, 1.5)\n\nlocal drawer = TensorCore.getStaticFlatDrawer(green)\ndrawer:addTimedCircle(\n    drawTime,\n    healerPos.x, healerPos.y, healerPos.z,\n    5,\n    0,\n    false,\n    true,\n    0\n)\n\nself.used = true",
							conditions = 
							{
								
								{
									"584680ce-85af-5ae5-8115-971b2d09ed1e",
									true,
								},
								
								{
									"d7c14c06-ed1a-186c-96d6-ac907da08967",
									true,
								},
							},
							gVar = "ACR_RikuWAR3_CD",
							name = "Healer",
							uuid = "330dd5d0-3a29-7209-9371-bd5b9a0230f2",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local drawTime = 35000\nlocal green = 0x5900FF00\nlocal white = 0xFFFFFFFF\n\nlocal dpsPos = { x = 105.65, y = 0.05, z = 105.65 }\n\nAnyoneCore.addTimedWorldText(drawTime, \"DPS\", dpsPos, white, true, 1.5)\n\nlocal drawer = TensorCore.getStaticFlatDrawer(green)\ndrawer:addTimedCircle(\n    drawTime,\n    dpsPos.x, dpsPos.y, dpsPos.z,\n    5,\n    0,\n    false,\n    true,\n    0\n)\n\nself.used = true",
							conditions = 
							{
								
								{
									"4cf97ae8-3b68-99ed-9afa-d236d2dcb517",
									true,
								},
								
								{
									"d7c14c06-ed1a-186c-96d6-ac907da08967",
									true,
								},
							},
							gVar = "ACR_RikuWAR3_CD",
							name = "DPS",
							uuid = "4bab7f09-443a-f4d4-a6fe-9e953c8ace59",
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
							conditionType = 9,
							dequeueIfLuaFalse = true,
							name = "Self: Tank",
							partyTargetType = "Tank",
							uuid = "fb916d2c-906d-4b4f-b999-74a950467561",
							version = 3,
						},
						inheritedIndex = 1,
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 9,
							dequeueIfLuaFalse = true,
							name = "Self: Healer",
							partyTargetType = "Healer",
							uuid = "584680ce-85af-5ae5-8115-971b2d09ed1e",
							version = 3,
						},
						inheritedIndex = 2,
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 9,
							dequeueIfLuaFalse = true,
							name = "Self: DPS",
							partyTargetType = "DPS",
							uuid = "4cf97ae8-3b68-99ed-9afa-d236d2dcb517",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return AnyoneCore ~= nil",
							dequeueIfLuaFalse = true,
							name = "AnyoneCore",
							uuid = "d7c14c06-ed1a-186c-96d6-ac907da08967",
							version = 3,
						},
					},
				},
				mechanicTime = 934.65552902023,
				name = "[Lj Draw] Auto Baits",
				timelineIndex = 170,
				timerOffset = 4,
				uuid = "bc09bbbd-3d53-31be-8182-d608e74f3e73",
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
							actionLua = "TensorCore.sendParsedChatMessage('/mk clear <me>')\nself.used = true",
							conditions = 
							{
								
								{
									"6ade1cf2-6666-bfea-bf39-1161e481d19e",
									true,
								},
							},
							uuid = "1171bf1a-69b6-6aed-8473-8548703e6e3a",
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
							conditionLua = "return Lj_UMADDRAWS_P4AutoMark == \"Self Only\"",
							dequeueIfLuaFalse = true,
							name = "Self Marking",
							uuid = "6ade1cf2-6666-bfea-bf39-1161e481d19e",
							version = 3,
						},
					},
				},
				mechanicTime = 934.65552902023,
				name = "[Lj Macro] Clear Self Marker",
				timeRandomRange = true,
				timeRange = true,
				timelineIndex = 170,
				timerEndOffset = 15,
				timerStartOffset = 2,
				uuid = "b5495a7b-0f83-d0e3-a31c-e93644fbf0d0",
				version = 2,
			},
		},
	},
	[173] = 
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
							actionLua = "local playerPos = TensorCore.mGetPlayer().pos\nlocal green = 1493237504\n\nlocal tx, ty, tz\nfor i = 1, Argus.getNumTimedDraws() do\n    local shapeType, x, y, z, _, _, _, _, colorStart, colorEnd = Argus.getTimedDrawBaseInfo(i)\n    if shapeType == \"circle\" and (colorEnd == green or colorStart == green) then\n        tx, ty, tz = x, y, z\n        break\n    end\nend\n\nif tx then\n    local dx, dy, dz = playerPos.x - tx, playerPos.y - ty, playerPos.z - tz\n    if dx * dx + dy * dy + dz * dz > 4 then -- > 2 yalms, squared\n        local drawer = TensorCore.getCachedDrawer(0xFF00FF00, 0xFF00FF00, 0xFF00FF00, 0xFF00FF00, 1)\n        drawer:addLine(playerPos.x, playerPos.y, playerPos.z, tx, ty, tz, 4)\n    end\nend\n\nself.used = true",
							conditions = 
							{
								
								{
									"ff53ae6b-d64a-dc11-b861-e26a79f07a42",
									true,
								},
							},
							gVar = "ACR_RikuWAR3_CD",
							uuid = "9cb0a338-97ca-e5d7-91fb-c4057a2f3f68",
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
							conditionLua = "return AnyoneCore ~= nil",
							dequeueIfLuaFalse = true,
							name = "AnyoneCore",
							uuid = "ff53ae6b-d64a-dc11-b861-e26a79f07a42",
							version = 3,
						},
						inheritedIndex = 1,
					},
				},
				eventType = 12,
				mechanicTime = 973.84072239989,
				name = "[Lj Draw] Line to Role Stacks",
				timeRange = true,
				timelineIndex = 173,
				timerEndOffset = 12,
				timerStartOffset = -36,
				uuid = "0e1b544b-d075-6339-873e-9b70dc8239b2",
				version = 2,
			},
		},
	},
	[180] = 
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
							actionLua = "local state = data.ljP5FloodProjectionGuide\n\nif state == nil then\n    state = {\n        projections = {},\n        sequence = nil,\n        currentWave = 1,\n        castsInCurrentWave = 0,\n        pendingAdvanceAt = nil,\n        shotCalled = false,\n    }\n    data.ljP5FloodProjectionGuide = state\nend\n\n-- Eight projections appear as four consecutive pairs.\nif #state.projections < 8 then\n    local projectionNumber = #state.projections + 1\n\n    state.projections[projectionNumber] = {\n        entityID = eventArgs.entityID,\n        x = eventArgs.x,\n        z = eventArgs.z,\n        heading = eventArgs.heading,\n    }\n\nend\n\n-- The first two pairs reveal the starting cardinal and rotation direction.\nif state.sequence == nil and #state.projections >= 4 then\n    local testCards = {\n        { x = 100, z = 87 },\n        { x = 113, z = 100 },\n        { x = 100, z = 113 },\n        { x = 87, z = 100 },\n    }\n\n    local function wrapCard(index)\n        return ((index - 1) % 4) + 1\n    end\n\n    local function isCardSafe(cardIndex, firstProjectionIndex)\n        local card = testCards[cardIndex]\n\n        for projectionIndex = firstProjectionIndex, firstProjectionIndex + 1 do\n            local projection = state.projections[projectionIndex]\n            local directionX = math.sin(projection.heading)\n            local directionZ = math.cos(projection.heading)\n            local offsetX = card.x - projection.x\n            local offsetZ = card.z - projection.z\n            local perpendicularDistance = math.abs(\n                offsetX * directionZ - offsetZ * directionX\n            )\n\n            if perpendicularDistance <= 5 then\n                return false\n            end\n        end\n\n        return true\n    end\n\n    local safeInFirstWave = {}\n    local safeInSecondWave = {}\n\n    for cardIndex = 1, 4 do\n        safeInFirstWave[cardIndex] = isCardSafe(cardIndex, 1)\n        safeInSecondWave[cardIndex] = isCardSafe(cardIndex, 3)\n    end\n\n    local startingCard = nil\n\n    for cardIndex = 1, 4 do\n        if safeInFirstWave[cardIndex] and safeInSecondWave[cardIndex] then\n            startingCard = cardIndex\n            break\n        end\n    end\n\n    if startingCard ~= nil then\n        local rotationDirection = 1\n\n        if not safeInSecondWave[wrapCard(startingCard + 1)] then\n            rotationDirection = -1\n        end\n\n        state.sequence = {}\n\n        for waveNumber = 1, 4 do\n            state.sequence[waveNumber] = wrapCard(\n                startingCard + rotationDirection * (waveNumber - 1)\n            )\n        end\n\n        if not state.shotCalled then\n            local cardNames = { \"North\", \"East\", \"South\", \"West\" }\n            local directionName = rotationDirection == 1\n                and \"Clockwise\"\n                or \"Counterclockwise\"\n\n            AnyoneCore.Shotcall(\n                cardNames[startingCard] .. \" \" .. directionName,\n                true,\n                10,\n                false\n            )\n            state.shotCalled = true\n        end\n    end\nend\n\nself.used = true",
							conditions = 
							{
								
								{
									"1bb79a36-4409-66b4-89f7-b6df8e601dbc",
									true,
								},
								
								{
									"0cc6e3e4-416c-05ca-9840-9ee6f82aa6f8",
									true,
								},
							},
							gVar = "ACR_RikuWAR3_CD",
							uuid = "971d71c6-6514-de6a-921e-d55dcc6ba834",
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
							conditionLua = "return eventArgs.aoeID == 49539",
							dequeueIfLuaFalse = true,
							name = "Event: AoE ID 49539",
							uuid = "1bb79a36-4409-66b4-89f7-b6df8e601dbc",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return AnyoneCore ~= nil",
							dequeueIfLuaFalse = true,
							name = "AnyoneCore",
							uuid = "0cc6e3e4-416c-05ca-9840-9ee6f82aa6f8",
							version = 3,
						},
					},
				},
				eventType = 18,
				loop = true,
				mechanicTime = 990.28011146124,
				name = "[Lj Data] Get Flood Projections",
				timeRange = true,
				timelineIndex = 180,
				timerEndOffset = 10,
				timerStartOffset = -10,
				uuid = "ab161269-e6c2-812e-be87-7a9ce88ff70c",
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
							actionLua = "local state = data.ljP5FloodProjectionGuide\n\nif state ~= nil\n    and state.sequence ~= nil\n    and state.currentWave ~= nil\n    and state.currentWave >= 1\n    and state.currentWave <= 4\n    and state.pendingAdvanceAt == nil\nthen\n    state.castsInCurrentWave = (state.castsInCurrentWave or 0) + 1\n\n    if state.castsInCurrentWave >= 2 then\n        state.castsInCurrentWave = 0\n        state.pendingAdvanceAt = (TensorReactions_CurrentTimer) + 0.25\n    end\nend\n\nself.used = true",
							conditions = 
							{
								
								{
									"e1286cc9-8668-33c4-bab9-73218c3511f0",
									true,
								},
							},
							gVar = "ACR_RikuWAR3_CD",
							uuid = "a3e0ee3d-bd59-7e23-9c6c-d646a773d7ff",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Event",
							dequeueIfLuaFalse = true,
							eventArgType = 2,
							eventSpellID = 49769,
							name = "Event: Spell ID 49769",
							uuid = "e1286cc9-8668-33c4-bab9-73218c3511f0",
							version = 3,
						},
					},
				},
				eventType = 2,
				loop = true,
				mechanicTime = 990.28011146124,
				name = "[Lj Data] Flood Tracker",
				timeRange = true,
				timelineIndex = 180,
				timerEndOffset = 10,
				timerStartOffset = -10,
				uuid = "3fde8f8a-0abd-7707-8eec-c2ab4080ad0e",
				version = 2,
			},
			inheritedIndex = 2,
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
							actionLua = "local state = data.ljP5FloodProjectionGuide\nlocal player = TensorCore.mGetPlayer()\n\nif state.pendingAdvanceAt ~= nil\n    and (TensorReactions_CurrentTimer) >= state.pendingAdvanceAt\nthen\n    state.currentWave = state.currentWave + 1\n    state.pendingAdvanceAt = nil\nend\n\nif state.currentWave > 3 then\n    self.used = true\n    return\nend\n\nlocal guideRadius = 4\nlocal safeSpots = {\n    { x = 100, z = 100 - guideRadius },\n    { x = 100 + guideRadius, z = 100 },\n    { x = 100, z = 100 + guideRadius },\n    { x = 100 - guideRadius, z = 100 },\n}\nlocal safeSpot = safeSpots[state.sequence[state.currentWave]]\nlocal green = 0xFF00FF00\nlocal drawer = TensorCore.getCachedDrawer(green, green, green, green, 1)\n\ndrawer:addLine(\n    player.pos.x,\n    player.pos.y,\n    player.pos.z,\n    safeSpot.x,\n    player.pos.y,\n    safeSpot.z,\n    4\n)\n\ndrawer:addCircle(\n    safeSpot.x,\n    player.pos.y,\n    safeSpot.z,\n    1.5,\n    false\n)\n\nself.used = true",
							conditions = 
							{
								
								{
									"21217676-55f3-72d5-97a0-875a8a3dd68f",
									true,
								},
							},
							gVar = "ACR_RikuWAR3_CD",
							uuid = "1ea2ab24-87b9-96c5-b466-b146f1d9ba26",
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
							conditionLua = "local state = data.ljP5FloodProjectionGuide\n\nreturn state ~= nil\n    and state.sequence ~= nil\n    and state.currentWave >= 1\n    and state.currentWave <= 4",
							dequeueIfLuaFalse = true,
							name = "Data Vars",
							uuid = "21217676-55f3-72d5-97a0-875a8a3dd68f",
							version = 3,
						},
					},
				},
				eventType = 12,
				mechanicTime = 990.28011146124,
				name = "[Lj Draw] Tether to Dodge Spots",
				timeRange = true,
				timelineIndex = 180,
				timerEndOffset = 10,
				timerStartOffset = -10,
				uuid = "d4577a2c-cbac-7290-8dfd-8607b3f846c1",
				version = 2,
			},
		},
	},
	[185] = 
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
							actionLua = "local timeout = 7000\nlocal totalDistance = 10\nlocal scale = math.min(1, totalDistance / 15)\nlocal baseWidth = math.max(0.5, scale)\nlocal tipWidth = math.max(1.5, 3 * scale)\nlocal tipLength = math.max(2, 3 * scale)\nlocal baseLength = totalDistance - tipLength\n\n-- ShapeDrawer arrows render 180 degrees opposite Tensor entity headings here.\n-- Comments describe the resulting on-screen arrow direction.\nlocal headings = {\n    T1 = -7 * math.pi / 8,  -- NNW: 22.5 degrees west of north\n    T2 = 7 * math.pi / 8,   -- NNE: 22.5 degrees east of north\n    R1 = -5 * math.pi / 8,  -- WNW: 67.5 degrees west of north\n    R2 = 5 * math.pi / 8,   -- ENE: 67.5 degrees east of north\n    H1 = -3 * math.pi / 8,  -- WSW: 22.5 degrees south of west\n    H2 = 3 * math.pi / 8,   -- ESE: 22.5 degrees south of east\n    M1 = -math.pi / 8,      -- SSW: 22.5 degrees west of south\n    M2 = math.pi / 8,       -- SSE: 22.5 degrees east of south\n}\nlocal heading = headings[AnyoneCore.Roster.mySlot()]\nif heading == nil then\n    return\nend\n\nlocal drawer = TensorCore.getCachedDrawer(\n    0xFF00FFFF,\n    0xFF0088FF,\n    0xFF0000FF,\n    0xFFFFFFFF,\n    2\n)\ndrawer:addTimedArrow(\n    timeout,\n    100, 0, 100,\n    heading,\n    baseLength, baseWidth, tipLength, tipWidth,\n    0, false\n)\n\nself.used = true",
							conditions = 
							{
								
								{
									"0ebe22cd-85c1-9a75-8711-39b0708bb4da",
									true,
								},
							},
							name = "Clock Spread Arrow",
							uuid = "6f5c65d0-b7a1-54de-838e-8c6d8bf93744",
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
							conditionLua = "return AnyoneCore ~= nil and AnyoneCore.Roster ~= nil and AnyoneCore.Roster.mySlot() ~= nil",
							dequeueIfLuaFalse = true,
							name = "Role Set",
							uuid = "0ebe22cd-85c1-9a75-8711-39b0708bb4da",
							version = 3,
						},
					},
				},
				mechanicTime = 994.40031547983,
				name = "[Lj Draw] Clock Spreads",
				timelineIndex = 185,
				timerOffset = 2,
				uuid = "95ba86dd-8cff-247c-a5f9-a620add80791",
				version = 2,
			},
		},
	},
	[188] = 
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
							actionLua = "local playerPos = TensorCore.mGetPlayer().pos\nlocal green = 1493237504\n\nlocal tx, ty, tz\nfor i = 1, Argus.getNumTimedDraws() do\n    local shapeType, x, y, z, _, _, _, _, colorStart, colorEnd = Argus.getTimedDrawBaseInfo(i)\n    if shapeType == \"circle\" and (colorEnd == green or colorStart == green) then\n        tx, ty, tz = x, y, z\n        break\n    end\nend\n\nif tx then\n    local dx, dy, dz = playerPos.x - tx, playerPos.y - ty, playerPos.z - tz\n    if dx * dx + dy * dy + dz * dz > 4 then -- > 2 yalms, squared\n        local drawer = TensorCore.getCachedDrawer(0xFF00FF00, 0xFF00FF00, 0xFF00FF00, 0xFF00FF00, 1)\n        drawer:addLine(playerPos.x, playerPos.y, playerPos.z, tx, ty, tz, 4)\n    end\nend\n\nself.used = true",
							conditions = 
							{
								
								{
									"826399d1-d225-88a8-abc1-fc70ea7033f5",
									true,
								},
								
								{
									"3fe9af13-7367-ae1a-8138-08642251d086",
									true,
								},
							},
							gVar = "ACR_RikuWAR3_CD",
							uuid = "9cb0a338-97ca-e5d7-91fb-c4057a2f3f68",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							buffID = 2941,
							category = "Self",
							name = "Self: Vulnerability Up Debuff",
							uuid = "826399d1-d225-88a8-abc1-fc70ea7033f5",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return AnyoneCore ~= nil",
							dequeueIfLuaFalse = true,
							name = "AnyoneCore",
							uuid = "3fe9af13-7367-ae1a-8138-08642251d086",
							version = 3,
						},
						inheritedIndex = 2,
					},
				},
				eventType = 12,
				mechanicTime = 1006.5474749784,
				name = "[Lj Draw] Line to Role Stacks",
				timeRange = true,
				timelineIndex = 188,
				timerEndOffset = 2,
				uuid = "1e39b4c6-0bae-26a7-8d24-d368b97efc96",
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
							actionLua = "local playerPos = TensorCore.mGetPlayer().pos\nlocal green = 1493237504\n\nlocal tx, ty, tz\nfor i = 1, Argus.getNumTimedDraws() do\n    local shapeType, x, y, z, _, _, _, _, colorStart, colorEnd = Argus.getTimedDrawBaseInfo(i)\n    if shapeType == \"circle\" and (colorEnd == green or colorStart == green) then\n        tx, ty, tz = x, y, z\n        break\n    end\nend\n\nif tx then\n    local dx, dy, dz = playerPos.x - tx, playerPos.y - ty, playerPos.z - tz\n    if dx * dx + dy * dy + dz * dz > 4 then -- > 2 yalms, squared\n        local drawer = TensorCore.getCachedDrawer(0xFF00FF00, 0xFF00FF00, 0xFF00FF00, 0xFF00FF00, 1)\n        drawer:addLine(playerPos.x, playerPos.y, playerPos.z, tx, ty, tz, 4)\n    end\nend\n\nself.used = true",
							conditions = 
							{
								
								{
									"2714be76-8bdb-d608-8bf1-cbd48648acd3",
									true,
								},
							},
							gVar = "ACR_RikuWAR3_CD",
							uuid = "9cb0a338-97ca-e5d7-91fb-c4057a2f3f68",
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
							conditionLua = "return AnyoneCore ~= nil",
							dequeueIfLuaFalse = true,
							name = "AnyoneCore",
							uuid = "2714be76-8bdb-d608-8bf1-cbd48648acd3",
							version = 3,
						},
						inheritedIndex = 1,
					},
				},
				eventType = 12,
				mechanicTime = 1006.5474749784,
				name = "[Lj Draw] Line to Role Stacks",
				timeRange = true,
				timelineIndex = 188,
				timerEndOffset = 12,
				timerStartOffset = 1.75,
				uuid = "f2d4de03-aeae-bbb9-81d5-226168724a8b",
				version = 2,
			},
		},
	},
	[202] = 
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
							actionLua = "local drawTime = 7000\nlocal green = 0x5900FF00\nlocal white = 0xFFFFFFFF\n\nlocal tankPos = { x = 100, y = 0.05, z = 92 }\n\nAnyoneCore.addTimedWorldText(drawTime, \"Tanks\", tankPos, white, true, 1.5)\n\nlocal drawer = TensorCore.getStaticFlatDrawer(green)\ndrawer:addTimedCircle(\n    drawTime,\n    tankPos.x, tankPos.y, tankPos.z,\n    3,\n    0,\n    false,\n    true,\n    0\n)\n\nself.used = true",
							conditions = 
							{
								
								{
									"fb916d2c-906d-4b4f-b999-74a950467561",
									true,
								},
								
								{
									"b8af5213-e7e1-7469-b261-5ec91635d1e7",
									true,
								},
							},
							gVar = "ACR_RikuWAR3_CD",
							name = "Tank",
							uuid = "f825f389-1163-3247-b28d-cf2fe6562cb9",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local drawTime = 7000\nlocal green = 0x5900FF00\nlocal white = 0xFFFFFFFF\n\nlocal healerPos = { x = 94.34, y = 0.05, z = 105.65 }\n\nAnyoneCore.addTimedWorldText(drawTime, \"Healers\", healerPos, white, true, 1.5)\n\nlocal drawer = TensorCore.getStaticFlatDrawer(green)\ndrawer:addTimedCircle(\n    drawTime,\n    healerPos.x, healerPos.y, healerPos.z,\n    5,\n    0,\n    false,\n    true,\n    0\n)\n\nself.used = true",
							conditions = 
							{
								
								{
									"584680ce-85af-5ae5-8115-971b2d09ed1e",
									true,
								},
								
								{
									"b8af5213-e7e1-7469-b261-5ec91635d1e7",
									true,
								},
							},
							gVar = "ACR_RikuWAR3_CD",
							name = "Healer",
							uuid = "330dd5d0-3a29-7209-9371-bd5b9a0230f2",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local drawTime = 7000\nlocal green = 0x5900FF00\nlocal white = 0xFFFFFFFF\n\nlocal dpsPos = { x = 105.65, y = 0.05, z = 105.65 }\n\nAnyoneCore.addTimedWorldText(drawTime, \"DPS\", dpsPos, white, true, 1.5)\n\nlocal drawer = TensorCore.getStaticFlatDrawer(green)\ndrawer:addTimedCircle(\n    drawTime,\n    dpsPos.x, dpsPos.y, dpsPos.z,\n    5,\n    0,\n    false,\n    true,\n    0\n)\n\nself.used = true",
							conditions = 
							{
								
								{
									"4cf97ae8-3b68-99ed-9afa-d236d2dcb517",
									true,
								},
								
								{
									"b8af5213-e7e1-7469-b261-5ec91635d1e7",
									true,
								},
							},
							gVar = "ACR_RikuWAR3_CD",
							name = "DPS",
							uuid = "4bab7f09-443a-f4d4-a6fe-9e953c8ace59",
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
							conditionType = 9,
							dequeueIfLuaFalse = true,
							name = "Self: Tank",
							partyTargetType = "Tank",
							uuid = "fb916d2c-906d-4b4f-b999-74a950467561",
							version = 3,
						},
						inheritedIndex = 1,
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 9,
							dequeueIfLuaFalse = true,
							name = "Self: Healer",
							partyTargetType = "Healer",
							uuid = "584680ce-85af-5ae5-8115-971b2d09ed1e",
							version = 3,
						},
						inheritedIndex = 2,
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 9,
							dequeueIfLuaFalse = true,
							name = "Self: DPS",
							partyTargetType = "DPS",
							uuid = "4cf97ae8-3b68-99ed-9afa-d236d2dcb517",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return AnyoneCore ~= nil",
							dequeueIfLuaFalse = true,
							name = "AnyoneCore",
							uuid = "b8af5213-e7e1-7469-b261-5ec91635d1e7",
							version = 3,
						},
					},
				},
				mechanicTime = 1047.2843757912,
				name = "[Lj Draw] Auto Baits",
				timelineIndex = 202,
				timerOffset = 1,
				uuid = "238bed9c-c213-a311-9935-49dd9e50b619",
				version = 2,
			},
		},
	},
	[203] = 
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
							actionLua = "local playerPos = TensorCore.mGetPlayer().pos\nlocal green = 1493237504\n\nlocal tx, ty, tz\nfor i = 1, Argus.getNumTimedDraws() do\n    local shapeType, x, y, z, _, _, _, _, colorStart, colorEnd = Argus.getTimedDrawBaseInfo(i)\n    if shapeType == \"circle\" and (colorEnd == green or colorStart == green) then\n        tx, ty, tz = x, y, z\n        break\n    end\nend\n\nif tx then\n    local dx, dy, dz = playerPos.x - tx, playerPos.y - ty, playerPos.z - tz\n    if dx * dx + dy * dy + dz * dz > 4 then -- > 2 yalms, squared\n        local drawer = TensorCore.getCachedDrawer(0xFF00FF00, 0xFF00FF00, 0xFF00FF00, 0xFF00FF00, 1)\n        drawer:addLine(playerPos.x, playerPos.y, playerPos.z, tx, ty, tz, 4)\n    end\nend\n\nself.used = true",
							conditions = 
							{
								
								{
									"7d7cf07f-d01f-0c2f-aae0-660fe9ae15e9",
									true,
								},
							},
							gVar = "ACR_RikuWAR3_CD",
							uuid = "9cb0a338-97ca-e5d7-91fb-c4057a2f3f68",
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
							conditionLua = "return AnyoneCore ~= nil",
							dequeueIfLuaFalse = true,
							name = "AnyoneCore",
							uuid = "7d7cf07f-d01f-0c2f-aae0-660fe9ae15e9",
							version = 3,
						},
						inheritedIndex = 1,
					},
				},
				eventType = 12,
				mechanicTime = 1054.5292176297,
				name = "[Lj Draw] Line to Role Stacks",
				timeRange = true,
				timelineIndex = 203,
				timerEndOffset = 10,
				timerStartOffset = -6,
				uuid = "941e06e1-ff52-5647-87ad-542e70c58964",
				version = 2,
			},
		},
	},
	[209] = 
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
							actionLua = "local impactRadius = 6\nlocal stepDistance = math.sqrt(50)\nlocal firstImpactMs = 4220\nlocal stepCadenceMs = 520\n\nlocal renderFlags =\n    Argus2.RenderFlags.FLAG_WARP_TERRAIN |\n    Argus2.RenderFlags.FLAG_OCCLUSION_BASE\n\nlocal drawer = TensorCore.getCachedDrawer(\n    0xFF00FFFF,\n    0xFF0088FF,\n    0xFF0000FF,\n    0xFFFFFFFF,\n    2\n)\n\nlocal sourcePos = {\n    x = eventArgs.x,\n    y = eventArgs.y,\n    z = eventArgs.z\n}\n\nfor step = 0, 7 do\n    local pos = TensorCore.getPosInDirection(\n        sourcePos,\n        eventArgs.heading,\n        stepDistance * step\n    )\n\n    drawer:addTimedCircle(\n        firstImpactMs + stepCadenceMs * step,\n        pos.x,\n        pos.y,\n        pos.z,\n        impactRadius,\n        0,\n        false,\n        false,\n        renderFlags\n    )\nend\n\nself.used = true",
							conditions = 
							{
								
								{
									"9207737d-68be-b251-804a-cfa2f109fef0",
									true,
								},
								
								{
									"4df7efe1-f599-71ef-8c60-7a64b45aa10c",
									true,
								},
							},
							gVar = "ACR_TensorMagnum3_CD",
							uuid = "9f1bea58-6fc8-d2e2-bdf5-1b548d2ce87c",
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
							conditionLua = "return eventArgs.aoeID == 47932",
							dequeueIfLuaFalse = true,
							name = "Event: AoE ID 47932",
							uuid = "9207737d-68be-b251-804a-cfa2f109fef0",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return ArgusDrawsPlus ~= nil and ArgusDrawsPlus.getEnabled() == true",
							dequeueIfLuaFalse = true,
							name = "ArgusDraws+",
							uuid = "4df7efe1-f599-71ef-8c60-7a64b45aa10c",
							version = 3,
						},
					},
				},
				eventType = 18,
				loop = true,
				mechanicTime = 1063.6903949829,
				name = "[Lj Draw] Exaflares",
				timeRange = true,
				timelineIndex = 209,
				timerEndOffset = 15,
				uuid = "1c90096b-6c73-ec02-9994-043ec1ac4042",
				version = 2,
			},
		},
	},
	[210] = 
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
							actionLua = "local timeout = 6000\nlocal totalDistance = 10\nlocal scale = math.min(1, totalDistance / 15)\nlocal baseWidth = math.max(0.5, scale)\nlocal tipWidth = math.max(1.5, 3 * scale)\nlocal tipLength = math.max(2, 3 * scale)\nlocal baseLength = totalDistance - tipLength\n\n-- ShapeDrawer arrows render 180 degrees opposite Tensor entity headings here.\n-- Comments describe the resulting on-screen arrow direction.\nlocal headings = {\n    T1 = -7 * math.pi / 8,  -- NNW: 22.5 degrees west of north\n    T2 = 7 * math.pi / 8,   -- NNE: 22.5 degrees east of north\n    R1 = -5 * math.pi / 8,  -- WNW: 67.5 degrees west of north\n    R2 = 5 * math.pi / 8,   -- ENE: 67.5 degrees east of north\n    H1 = -3 * math.pi / 8,  -- WSW: 22.5 degrees south of west\n    H2 = 3 * math.pi / 8,   -- ESE: 22.5 degrees south of east\n    M1 = -math.pi / 8,      -- SSW: 22.5 degrees west of south\n    M2 = math.pi / 8,       -- SSE: 22.5 degrees east of south\n}\nlocal heading = headings[AnyoneCore.Roster.mySlot()]\nif heading == nil then\n    return\nend\n\nlocal drawer = TensorCore.getCachedDrawer(\n    0xFF00FFFF,\n    0xFF0088FF,\n    0xFF0000FF,\n    0xFFFFFFFF,\n    2\n)\ndrawer:addTimedArrow(\n    timeout,\n    100, 0, 100,\n    heading,\n    baseLength, baseWidth, tipLength, tipWidth,\n    0, false\n)\n\nself.used = true",
							conditions = 
							{
								
								{
									"0ebe22cd-85c1-9a75-8711-39b0708bb4da",
									true,
								},
							},
							name = "Clock Spread Arrow",
							uuid = "6f5c65d0-b7a1-54de-838e-8c6d8bf93744",
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
							conditionLua = "return AnyoneCore ~= nil and AnyoneCore.Roster ~= nil and AnyoneCore.Roster.mySlot() ~= nil",
							dequeueIfLuaFalse = true,
							name = "Role Set",
							uuid = "0ebe22cd-85c1-9a75-8711-39b0708bb4da",
							version = 3,
						},
					},
				},
				mechanicTime = 1095.4450949829,
				name = "[Lj Draw] Clock Spreads",
				timelineIndex = 210,
				timerOffset = -7,
				uuid = "6ae89e0c-7ddc-cc5e-b1f3-6720d9c52dad",
				version = 2,
			},
		},
	},
	[212] = 
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
							actionLua = "local playerPos = TensorCore.mGetPlayer().pos\nlocal green = 1493237504\n\nlocal tx, ty, tz\nfor i = 1, Argus.getNumTimedDraws() do\n    local shapeType, x, y, z, _, _, _, _, colorStart, colorEnd = Argus.getTimedDrawBaseInfo(i)\n    if shapeType == \"circle\" and (colorEnd == green or colorStart == green) then\n        tx, ty, tz = x, y, z\n        break\n    end\nend\n\nif tx then\n    local dx, dy, dz = playerPos.x - tx, playerPos.y - ty, playerPos.z - tz\n    if dx * dx + dy * dy + dz * dz > 4 then -- > 2 yalms, squared\n        local drawer = TensorCore.getCachedDrawer(0xFF00FF00, 0xFF00FF00, 0xFF00FF00, 0xFF00FF00, 1)\n        drawer:addLine(playerPos.x, playerPos.y, playerPos.z, tx, ty, tz, 4)\n    end\nend\n\nself.used = true",
							conditions = 
							{
								
								{
									"13f03249-69d3-4ff3-b06a-686a45c36a74",
									true,
								},
							},
							gVar = "ACR_RikuWAR3_CD",
							uuid = "9cb0a338-97ca-e5d7-91fb-c4057a2f3f68",
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
							conditionLua = "return AnyoneCore ~= nil",
							dequeueIfLuaFalse = true,
							name = "AnyoneCore",
							uuid = "13f03249-69d3-4ff3-b06a-686a45c36a74",
							version = 3,
						},
						inheritedIndex = 1,
					},
				},
				eventType = 12,
				mechanicTime = 1096.9713108088,
				name = "[Lj Draw] Line to Role Stacks",
				timeRange = true,
				timelineIndex = 212,
				timerEndOffset = 17,
				timerStartOffset = 2,
				uuid = "5f417c69-5caa-a27e-9f52-28c9e2c06e07",
				version = 2,
			},
		},
	},
	[218] = 
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
							actionLua = "local center = { x = 100, y = 0, z = 100 }\nlocal targetDist = 10\n\n-- South is +Z in FFXIV world space.\nlocal targetX = center.x\nlocal targetZ = center.z + targetDist\n\nlocal sourcePos = TensorCore.mGetPlayer().pos\nlocal targetPos = { x = targetX, y = sourcePos.y, z = targetZ }\n\nlocal heading = TensorCore.getHeadingToTarget(sourcePos, targetPos)\nlocal totalDistance = TensorCore.getDistance2d(sourcePos, targetPos)\n\nlocal scale = math.min(1, totalDistance / 15)\nlocal baseWidth  = math.max(0.5, 1 * scale)\nlocal tipWidth   = math.max(1.5, 3 * scale)\nlocal tipLength  = math.max(2, 3 * scale)\nlocal baseLength = totalDistance - tipLength\n\nif baseLength > 0 then\n    local arrowDrawer = TensorCore.getCachedDrawer(0xFF00FFFF, 0xFF0088FF, 0xFF0000FF, 0xFFFFFFFF, 2)\n    arrowDrawer:addArrow(\n        sourcePos.x, sourcePos.y, sourcePos.z,\n        heading,\n        baseLength, baseWidth, tipLength, tipWidth,\n        false, Argus2.RenderFlags.FLAG_RENDER_OVERLAY\n    )\nend\n\nself.used = true",
							gVar = "ACR_RikuWAR3_CD",
							uuid = "7587a9cd-948e-a6b6-9556-94b07df56d78",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				eventType = 12,
				mechanicTime = 1113.9009474604,
				name = "[Lj Draw] Forsaken S",
				timeRange = true,
				timelineIndex = 218,
				timerEndOffset = 11,
				uuid = "2ea636dc-2501-f922-8bb8-15baa6d4229b",
				version = 2,
			},
		},
	},
	[219] = 
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
							actionLua = "local center = { x = 100, y = 0, z = 100 }\nlocal targetDist = 10    \nlocal offset = targetDist / math.sqrt(2)         -- equal X/Z split for a diagonal\n\n-- SW = West (-X) + South (+Z).\nlocal targetX = center.x - offset\nlocal targetZ = center.z + offset\n\nlocal sourcePos = TensorCore.mGetPlayer().pos\nlocal targetPos = { x = targetX, y = sourcePos.y, z = targetZ }\n\nlocal heading = TensorCore.getHeadingToTarget(sourcePos, targetPos)\nlocal totalDistance = TensorCore.getDistance2d(sourcePos, targetPos)\n\nlocal scale = math.min(1, totalDistance / 15)\nlocal baseWidth  = math.max(0.5, 1 * scale)\nlocal tipWidth   = math.max(1.5, 3 * scale)\nlocal tipLength  = math.max(2, 3 * scale)\nlocal baseLength = totalDistance - tipLength\n\nif baseLength > 0 then\n    local arrowDrawer = TensorCore.getCachedDrawer(0xFF00FFFF, 0xFF0088FF, 0xFF0000FF, 0xFFFFFFFF, 2)\n    arrowDrawer:addArrow(\n        sourcePos.x, sourcePos.y, sourcePos.z,\n        heading,\n        baseLength, baseWidth, tipLength, tipWidth,\n        false, Argus2.RenderFlags.FLAG_RENDER_OVERLAY\n    )\nend\n\nself.used = true",
							gVar = "ACR_RikuWAR3_CD",
							uuid = "7587a9cd-948e-a6b6-9556-94b07df56d78",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				eventType = 12,
				mechanicTime = 1125.2071474604,
				name = "[Lj Draw] Forsaken SW",
				timeRange = true,
				timelineIndex = 219,
				timerEndOffset = 7,
				uuid = "f48d7af7-5b41-247d-8226-6014ab2722b1",
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
							actionLua = "data.ljForsakenGroundCount = (data.ljForsakenGroundCount or 0) + 1\nlocal wave = math.ceil(data.ljForsakenGroundCount / 2)\nlocal timeoutByWave = {60550, 52400, 44250, 36100}\nlocal delay = eventArgs.duration * 1000\nlocal timeout = timeoutByWave[wave] - delay\nlocal radius = eventArgs.aoeLength\nlocal drawer = TensorCore.getStaticDrawer(0x660000FF, 2)\n\ndrawer:addTimedCircle(timeout, eventArgs.x, eventArgs.y, eventArgs.z, radius, delay, false, false,\n    Argus2.RenderFlags.FLAG_RENDER_OVERLAY)\n\nself.used = true",
							conditions = 
							{
								
								{
									"738ca744-3789-3735-9e79-67d07d37c057",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_CD",
							uuid = "1b9327e0-fc38-667d-bd58-ec15de1415bc",
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
							conditionLua = "return eventArgs.aoeID == 47927",
							name = "Event: AoE ID 47927",
							uuid = "738ca744-3789-3735-9e79-67d07d37c057",
							version = 3,
						},
					},
				},
				eventType = 18,
				loop = true,
				mechanicTime = 1125.2071474604,
				name = "[Lj Draw] Forsaken Danger Area",
				timeRange = true,
				timelineIndex = 219,
				timerEndOffset = 30,
				timerStartOffset = -1,
				uuid = "5293d329-d015-f487-b85e-b26551a9b216",
				version = 2,
			},
		},
	},
	[221] = 
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
							actionLua = "local center = { x = 100, y = 0, z = 100 }\nlocal targetDist = 10 \nlocal offset = targetDist / math.sqrt(2)         -- equal X/Z split for a diagonal\n\n-- NW = West (-X) + North (-Z).\nlocal targetX = center.x - offset\nlocal targetZ = center.z - offset\n\nlocal sourcePos = TensorCore.mGetPlayer().pos\nlocal targetPos = { x = targetX, y = sourcePos.y, z = targetZ }\n\nlocal heading = TensorCore.getHeadingToTarget(sourcePos, targetPos)\nlocal totalDistance = TensorCore.getDistance2d(sourcePos, targetPos)\n\nlocal scale = math.min(1, totalDistance / 15)\nlocal baseWidth  = math.max(0.5, 1 * scale)\nlocal tipWidth   = math.max(1.5, 3 * scale)\nlocal tipLength  = math.max(2, 3 * scale)\nlocal baseLength = totalDistance - tipLength\n\nif baseLength > 0 then\n    local arrowDrawer = TensorCore.getCachedDrawer(0xFF00FFFF, 0xFF0088FF, 0xFF0000FF, 0xFFFFFFFF, 2)\n    arrowDrawer:addArrow(\n        sourcePos.x, sourcePos.y, sourcePos.z,\n        heading,\n        baseLength, baseWidth, tipLength, tipWidth,\n        false, Argus2.RenderFlags.FLAG_RENDER_OVERLAY\n    )\nend\n\nself.used = true",
							gVar = "ACR_RikuWAR3_CD",
							uuid = "7587a9cd-948e-a6b6-9556-94b07df56d78",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				eventType = 12,
				mechanicTime = 1133.3461474604,
				name = "[Lj Draw] Forsaken NW",
				timeRange = true,
				timelineIndex = 221,
				timerEndOffset = 7,
				uuid = "ef59eb4e-a0f7-7e78-a60a-6a7bd120ae78",
				version = 2,
			},
		},
	},
	[223] = 
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
							actionLua = "local center = { x = 100, y = 0, z = 100 }\nlocal targetDist = 10\nlocal offset = targetDist / math.sqrt(2)         -- equal X/Z split for a diagonal\n\n-- NE = East (+X) + North (-Z).\nlocal targetX = center.x + offset\nlocal targetZ = center.z - offset\n\nlocal sourcePos = TensorCore.mGetPlayer().pos\nlocal targetPos = { x = targetX, y = sourcePos.y, z = targetZ }\n\nlocal heading = TensorCore.getHeadingToTarget(sourcePos, targetPos)\nlocal totalDistance = TensorCore.getDistance2d(sourcePos, targetPos)\n\nlocal scale = math.min(1, totalDistance / 15)\nlocal baseWidth  = math.max(0.5, 1 * scale)\nlocal tipWidth   = math.max(1.5, 3 * scale)\nlocal tipLength  = math.max(2, 3 * scale)\nlocal baseLength = totalDistance - tipLength\n\nif baseLength > 0 then\n    local arrowDrawer = TensorCore.getCachedDrawer(0xFF00FFFF, 0xFF0088FF, 0xFF0000FF, 0xFFFFFFFF, 2)\n    arrowDrawer:addArrow(\n        sourcePos.x, sourcePos.y, sourcePos.z,\n        heading,\n        baseLength, baseWidth, tipLength, tipWidth,\n        false, Argus2.RenderFlags.FLAG_RENDER_OVERLAY\n    )\nend\n\nself.used = true",
							gVar = "ACR_RikuWAR3_CD",
							uuid = "7587a9cd-948e-a6b6-9556-94b07df56d78",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				eventType = 12,
				mechanicTime = 1141.5122474604,
				name = "[Lj Draw] Forsaken NE",
				timeRange = true,
				timelineIndex = 223,
				timerEndOffset = 7,
				uuid = "76cf2f9b-eee6-c856-97e1-4b40f541c936",
				version = 2,
			},
		},
	},
	[225] = 
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
							actionLua = "local center = { x = 100, y = 0, z = 100 }\nlocal targetDist = 10\nlocal offset = targetDist / math.sqrt(2)         -- equal X/Z split for a diagonal\n\n-- SE = East (+X) + South (+Z).\nlocal targetX = center.x + offset\nlocal targetZ = center.z + offset\n\nlocal sourcePos = TensorCore.mGetPlayer().pos\nlocal targetPos = { x = targetX, y = sourcePos.y, z = targetZ }\n\nlocal heading = TensorCore.getHeadingToTarget(sourcePos, targetPos)\nlocal totalDistance = TensorCore.getDistance2d(sourcePos, targetPos)\n\nlocal scale = math.min(1, totalDistance / 15)\nlocal baseWidth  = math.max(0.5, 1 * scale)\nlocal tipWidth   = math.max(1.5, 3 * scale)\nlocal tipLength  = math.max(2, 3 * scale)\nlocal baseLength = totalDistance - tipLength\n\nif baseLength > 0 then\n    local arrowDrawer = TensorCore.getCachedDrawer(0xFF00FFFF, 0xFF0088FF, 0xFF0000FF, 0xFFFFFFFF, 2)\n    arrowDrawer:addArrow(\n        sourcePos.x, sourcePos.y, sourcePos.z,\n        heading,\n        baseLength, baseWidth, tipLength, tipWidth,\n        false, Argus2.RenderFlags.FLAG_RENDER_OVERLAY\n    )\nend\n\nself.used = true",
							gVar = "ACR_RikuWAR3_CD",
							uuid = "7587a9cd-948e-a6b6-9556-94b07df56d78",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				eventType = 12,
				mechanicTime = 1149.6575474604,
				name = "[Lj Draw] Forsaken SE",
				timeRange = true,
				timelineIndex = 225,
				timerEndOffset = 5,
				uuid = "d0df09eb-2427-3688-adc2-be9b5729dd5e",
				version = 2,
			},
		},
	},
	inheritedProfiles = 
	{
	},
	timelineName = "dmu",
	version = "1.5.5",
}



return tbl