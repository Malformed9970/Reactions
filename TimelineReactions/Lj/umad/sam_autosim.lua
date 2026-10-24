local tbl = 
{
	
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Lj\\umad\\autosimv2.6",
				uuid = "0e984576-9cfa-bfca-a66f-c6ec2478fec6",
			},
			inheritanceRoot = "Lj\\umad\\autosimv2.6",
			objectType = "folder",
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
							actionLua = "gStartCombat = false\nif ljAnyoneCorePrepullHelper == nil then\n    ljAnyoneCorePrepullHelper = AnyoneCore.Settings.PrepullHelper.enabled\nend\nAnyoneCore.Settings.PrepullHelper.enabled = false\nself.used = true",
							name = "Combat Off",
							uuid = "3a453374-d34d-fe55-94e1-41e2b433c383",
							version = 2.1,
						},
						inheritedIndex = 1,
					},
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "ACR_TensorWeeb4_TargetHitRadiusAdjust = 0\nACR_TensorWeeb4_ActionRangeAdjust = 3\nself.used = true",
							name = "Range Hack +3",
							uuid = "8a3a14b2-071d-0919-974c-012e30a670f1",
							version = 2.1,
						},
						inheritedIndex = 2,
					},
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"c30e4e67-cb04-f9d9-a237-599f784648b6",
									true,
								},
								
								{
									"48df2a70-4f13-1b97-808b-fbf7481aa995",
									true,
								},
							},
							gVar = "ACR_TensorWeeb4_Hotbar_TrueNorth",
							uuid = "bd838977-3021-4b19-bdb5-3f9efb9e7698",
							variableTogglesType = 2,
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
									"c30e4e67-cb04-f9d9-a237-599f784648b6",
									true,
								},
								
								{
									"48df2a70-4f13-1b97-808b-fbf7481aa995",
									true,
								},
							},
							setTarget = true,
							targetType = "Enemy",
							uuid = "70ddc2c5-f009-9be1-94e0-64a5d73e1142",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "AnyoneCore.Settings.PrepullHelper.enabled = ljAnyoneCorePrepullHelper\nself.used = true",
							conditions = 
							{
								
								{
									"81846290-41fb-41c6-9df4-7a8f6151d910",
									true,
								},
							},
							name = "Reset Anyone's Prepull",
							uuid = "137bbb74-2529-5b61-b726-b72545691054",
							version = 2.1,
						},
						inheritedIndex = 5,
					},
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "gStartCombat = true\nself.used = true",
							conditions = 
							{
								
								{
									"c30e4e67-cb04-f9d9-a237-599f784648b6",
									true,
								},
								
								{
									"2e4d6f1d-b93f-fc27-9932-9e140fd9668c",
									true,
								},
							},
							name = "Combat On",
							uuid = "21ebc89f-61ce-8f61-aa1e-e09a4048794d",
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
							conditionLua = "return ACR.IsActive()",
							name = "Assist Enabled",
							uuid = "c30e4e67-cb04-f9d9-a237-599f784648b6",
							version = 3,
						},
						inheritedIndex = 1,
					},
					
					{
						data = 
						{
							category = "Lua",
							comparator = 2,
							conditionLua = "return TimeSince(eventArgs.timeQueued) >= 2000",
							eventCountdownTime = 1.5,
							name = "TimeSince >= 2s",
							uuid = "72ef37bf-b158-8431-874d-5dc28f2a700d",
							version = 3,
						},
						inheritedIndex = 2,
					},
					
					{
						data = 
						{
							category = "Event",
							comparator = 2,
							eventCountdownTime = 2,
							name = "<= 2s",
							uuid = "48df2a70-4f13-1b97-808b-fbf7481aa995",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Event",
							comparator = 2,
							eventCountdownTime = 1,
							name = "<= 1s",
							uuid = "2e4d6f1d-b93f-fc27-9932-9e140fd9668c",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Event",
							comparator = 2,
							eventCountdownTime = -5,
							name = "<= -5s",
							uuid = "81846290-41fb-41c6-9df4-7a8f6151d910",
							version = 3,
						},
					},
				},
				eventType = 16,
				mechanicTime = 15.261765625,
				name = "Prepull",
				timeRange = true,
				timelineIndex = 1,
				timerStartOffset = -16,
				uuid = "91c76e83-8f06-ffc2-a513-496131da66f0",
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
							actionLua = "AnyoneCore.Settings.PrepullHelper.enabled = ljAnyoneCorePrepullHelper\nself.used = true",
							gVar = "ACR_RikuWAR3_CD",
							uuid = "9a17440e-4710-700d-b90f-f154c8188764",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				eventType = 17,
				mechanicTime = 15.261765625,
				name = "Prepull Cancel",
				timeRange = true,
				timelineIndex = 1,
				timerStartOffset = -16,
				uuid = "0da4447a-710d-926a-a4a6-833a3070e442",
				version = 2,
			},
			inheritedIndex = 8,
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
							actionLua = "gStartCombat = false\nTensorDrift_SlidecastForceHold = false\nTensorCore.API.TensorACR.setHardLockFace(false)\nTensorCore.API.TensorACR.toggleLockFace(false)\nTensorCore.mGetPlayer():ClearTarget()\nACR_TensorACR_HotbarCancel = true\n\nself.used = true",
							gVar = "ACR_RikuSGE3_CD",
							uuid = "d2089605-088c-d8e1-a680-940da0458fef",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				eventType = 9,
				mechanicTime = 15.261765625,
				name = "Wipe",
				timeRange = true,
				timelineIndex = 1,
				timerEndOffset = 1200,
				timerStartOffset = -16,
				uuid = "f1314026-9b4a-3398-b3ca-ed965bf08f1d",
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
							aType = "ACR",
							gVar = "ACR_TensorWeeb4_CD",
							uuid = "49f643e0-e835-0feb-959a-5ad49d1a03b8",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "ACR",
							gVar = "ACR_TensorWeeb4_AOE",
							uuid = "8a3eee51-66a8-ff2c-95cd-d4d289790ec0",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "ACR",
							gVar = "ACR_TensorWeeb4_SmartAOE",
							uuid = "09a65249-bdca-94eb-8815-2f864e00f063",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "ACR",
							gVar = "ACR_TensorWeeb4_DoTs",
							uuid = "cbede249-c167-7452-bce6-af35ba12a805",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "ACR",
							gVar = "ACR_TensorWeeb4_SmartDoT",
							uuid = "1f4c9c37-bcad-a9cc-80fb-3f07f249c0ea",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "ACR",
							gVar = "ACR_TensorWeeb4_60s",
							uuid = "178f9722-d37a-13ac-af45-b92ca29a1c54",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "ACR",
							gVar = "ACR_TensorWeeb4_SafeJump",
							uuid = "ebafd38b-b8af-b7a1-b8f6-8cb05523f48b",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "ACR",
							gVar = "ACR_TensorWeeb4_Enpi",
							uuid = "7424496e-521f-eb2c-9590-f113a3a05961",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "ACR",
							gVar = "ACR_TensorWeeb4_Meditate",
							uuid = "1c7a3f60-62f0-3385-9768-8a8223496d9d",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "ACR",
							gVar = "ACR_TensorWeeb4_Hold10Kenki",
							gVarValue = 2,
							uuid = "ce105aff-9589-458d-8397-d86bbb38862c",
							version = 2.1,
						},
						inheritedIndex = 10,
					},
					
					{
						data = 
						{
							aType = "ACR",
							gVar = "ACR_TensorWeeb4_TrueNorth",
							uuid = "b2a82871-f699-cf69-ab38-bb9772da0a56",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "ACR",
							gVar = "ACR_TensorWeeb4_Tengetsu",
							uuid = "de23fff8-72d9-19a4-bcbd-209d4aac3957",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "ACR",
							gVar = "ACR_TensorWeeb4_KBCancel",
							gVarValue = 2,
							uuid = "578a0f31-9a8c-6820-b1e5-77b99f44c23b",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "ACR",
							gVar = "ACR_TensorWeeb4_JumpIn",
							gVarValue = 2,
							uuid = "6849070c-d470-a9dd-abd0-691077e5b78b",
							version = 2.1,
						},
						inheritedIndex = 14,
					},
					
					{
						data = 
						{
							aType = "ACR",
							gVar = "ACR_TensorWeeb4_Potion",
							uuid = "e5389749-71bf-c804-b937-9d0006f2c322",
							version = 2.1,
						},
						inheritedIndex = 15,
					},
					
					{
						data = 
						{
							aType = "ACR",
							gVar = "ACR_TensorWeeb4_Burn",
							gVarValue = 2,
							uuid = "b88cf1f8-75e3-1c25-8a0f-3e7a8a71527b",
							version = 2.1,
						},
						inheritedIndex = 16,
					},
				},
				conditions = 
				{
				},
				eventType = 16,
				mechanicTime = 15.261765625,
				name = "Toggles",
				timeRange = true,
				timelineIndex = 1,
				timerStartOffset = -16,
				uuid = "c14328ce-24bb-c0ce-9208-105c2b3300f8",
				version = 2,
			},
			inheritedIndex = 10,
		},
		
		{
			data = 
			{
				actions = 
				{
				},
				conditions = 
				{
				},
				enabled = false,
				eventType = 13,
				execute = "-- Track the local player's Higanbana (1228), with a 60-second full bar.\n-- Discover targets at 4 Hz; submit the window only from OnDraw.\nif data.dmu_higanbana == nil then\n    data.dmu_higanbana = {ids = {}, nextScan = 0}\n    function data.dmu_higanbana.collect(id, state, playerID)\n        local entity = TensorCore.mGetEntity(id)\n        if not entity or entity.contentid == 0 then return true end\n        local buff = TensorCore.getBuff(entity, 1228, playerID)\n        if not entity.attackable and not buff then return true end\n        -- Prefer targets carrying our DoT, then use entity ID for stable ordering.\n        local rank = buff and 0 or 1\n        if state.first == nil or rank < state.firstRank\n            or (rank == state.firstRank and id < state.first) then\n            state.second, state.secondRank = state.first, state.firstRank\n            state.first, state.firstRank = id, rank\n        elseif state.second == nil or rank < state.secondRank\n            or (rank == state.secondRank and id < state.second) then\n            state.second, state.secondRank = id, rank\n        end\n        return true\n    end\nend\nlocal state = data.dmu_higanbana\nlocal player = TensorCore.mGetPlayer()\nlocal now = Now()\nif now >= state.nextScan then\n    state.first, state.second = nil, nil\n    TensorCore.forEachEntity(\"alive\", state.collect, state, player.id)\n    -- Stable row order even when one DoT expires or is refreshed.\n    if state.first and state.second and state.first > state.second then\n        state.first, state.second = state.second, state.first\n    end\n    state.ids[1], state.ids[2] = state.first, state.second\n    state.nextScan = now + 250\nend\nlocal visible = GUI:Begin(\"Higanbana##DMU_Higanbana\", true,\n    GUI.WindowFlags_AlwaysAutoResize + GUI.WindowFlags_NoCollapse)\nif visible then\n    local shown = 0\n    for i = 1, 2 do\n        local id = state.ids[i]\n        local entity = id and TensorCore.mGetEntity(id)\n        if entity then\n            shown = shown + 1\n            local buff = TensorCore.getBuff(entity, 1228, player.id)\n            local remaining = buff and math.max(0, math.min(60, buff.duration)) or 0\n            GUI:TextUnformatted(entity.name)\n            if remaining <= 5 then\n                GUI:PushStyleColor(GUI.Col_PlotHistogram, 0.9, 0.22, 0.22, 1)\n            elseif remaining <= 15 then\n                GUI:PushStyleColor(GUI.Col_PlotHistogram, 0.95, 0.65, 0.18, 1)\n            else\n                GUI:PushStyleColor(GUI.Col_PlotHistogram, 0.25, 0.75, 0.42, 1)\n            end\n            GUI:ProgressBar(remaining / 60, 280, 20,\n                remaining > 0 and string.format(\"%.1f s\", remaining) or \"Missing\")\n            GUI:PopStyleColor()\n        end\n    end\n    if shown == 0 then\n        GUI:TextUnformatted(\"Waiting for a boss\")\n        GUI:ProgressBar(0, 280, 20, \"No target\")\n    end\nend\nGUI:End()\nself.used = true",
				executeType = 2,
				mechanicTime = 15.261765625,
				name = "Higanbana Timer GUI",
				timeRange = true,
				timelineIndex = 1,
				timerEndOffset = 1169.7399902344,
				timerStartOffset = -15.261765480042,
				uuid = "aae84d61-c39c-e486-a689-ce3069e4b13d",
				version = 2,
			},
			inheritedIndex = 11,
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
							aType = "ACR",
							gVar = "ACR_TensorWeeb4_Hotbar_Tengetsu",
							uuid = "20a73faa-8c9a-6f69-9627-0a309e859149",
							variableTogglesType = 2,
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				mechanicTime = 38.012854917972,
				name = "Tengetsu",
				timeRange = true,
				timelineIndex = 6,
				timerOffset = -3,
				timerStartOffset = -3,
				uuid = "2d0ed2bd-0654-8c64-b83b-9ca7f8bc40dc",
				version = 2,
			},
		},
	},
	[7] = 
	{
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"2294a5d1-dd2c-9def-8c67-9d0c97fb5739",
									true,
								},
								
								{
									"b139d618-a074-3eb0-9f18-e95205a63510",
									true,
								},
								
								{
									"a71d05f8-ef92-c6b9-a4ad-f1ab71297f21",
									true,
								},
							},
							gVar = "ACR_TensorWeeb4_Hotbar_SafeYaten",
							uuid = "26e76718-7185-82d9-9da3-71b35edbdb2c",
							variableTogglesType = 2,
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
							conditionLua = "return AnyoneCore.Roster.mySlot() == \"M2\"",
							dequeueIfLuaFalse = true,
							name = "M2",
							uuid = "a71d05f8-ef92-c6b9-a4ad-f1ab71297f21",
							version = 3,
						},
						inheritedIndex = 1,
					},
					
					{
						data = 
						{
							buffCheckType = 2,
							buffID = 2941,
							category = "Self",
							name = "Self Missing Vuln",
							uuid = "2294a5d1-dd2c-9def-8c67-9d0c97fb5739",
							version = 3,
						},
					},
					
					{
						data = 
						{
							buffCheckType = 2,
							buffID = 2941,
							category = "Party",
							name = "Other Melee Missing Vuln",
							partyTargetSubType = "Furthest",
							partyTargetType = "Melee DPS",
							uuid = "b139d618-a074-3eb0-9f18-e95205a63510",
							version = 3,
						},
					},
				},
				mechanicTime = 42.238586763472,
				name = "Safe Yaten - Both Melees No Vuln",
				timeRange = true,
				timelineIndex = 7,
				timerEndOffset = 3,
				timerOffset = 1,
				timerStartOffset = 1,
				uuid = "52986c1a-0588-87f3-9282-c25e8ba86148",
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
							aType = "ACR",
							gVar = "ACR_TensorWeeb4_Hotbar_Tengetsu",
							uuid = "20a73faa-8c9a-6f69-9627-0a309e859149",
							variableTogglesType = 2,
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				mechanicTime = 42.238586763472,
				name = "Tengetsu",
				timeRange = true,
				timelineIndex = 7,
				timerOffset = -3,
				timerStartOffset = -3,
				uuid = "4bc3bb41-65be-f02b-86de-21bdeeab088c",
				version = 2,
			},
		},
	},
	[8] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Lj\\umad\\autosimv2.6",
				uuid = "cfc9a85d-a366-fa01-e8e6-e5436e9140ad",
			},
			inheritanceRoot = "Lj\\umad\\autosimv2.6",
			objectType = "folder",
		},
	},
	[9] = 
	{
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"4797f134-a91a-8707-bf70-b62edede8dfa",
									true,
								},
							},
							gVar = "ACR_TensorWeeb4_Hotbar_Gyoten",
							targetType = "Enemy",
							uuid = "ffab71d4-efae-37e4-b274-fe4ec495a868",
							variableTogglesType = 2,
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							conditionType = 6,
							inRangeValue = 3,
							uuid = "4797f134-a91a-8707-bf70-b62edede8dfa",
							version = 3,
						},
					},
				},
				mechanicTime = 45.866090329028,
				name = "Gyoten",
				timelineIndex = 9,
				timerOffset = 0.10000000149012,
				uuid = "f8fdd1ea-636a-2dc6-89e7-0dbf4ea6c7af",
				version = 2,
			},
		},
	},
	[12] = 
	{
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							gVar = "ACR_TensorWeeb4_Hotbar_Tengetsu",
							uuid = "20a73faa-8c9a-6f69-9627-0a309e859149",
							variableTogglesType = 2,
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				mechanicTime = 62.553324919213,
				name = "Tengetsu",
				timeRange = true,
				timelineIndex = 12,
				timerOffset = -3,
				timerStartOffset = -3,
				uuid = "a1035d52-8932-0b35-baee-931744582039",
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
							aType = "ACR",
							gVar = "ACR_TensorWeeb4_Hotbar_Tengetsu",
							uuid = "20a73faa-8c9a-6f69-9627-0a309e859149",
							variableTogglesType = 2,
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				mechanicTime = 87.304550672705,
				name = "Tengetsu",
				timeRange = true,
				timelineIndex = 17,
				timerOffset = -3,
				timerStartOffset = -3,
				uuid = "50453c44-f9c2-7dd3-89d1-eb68bbb6b694",
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
							aType = "ACR",
							gVar = "ACR_TensorWeeb4_Hotbar_Tengetsu",
							uuid = "20a73faa-8c9a-6f69-9627-0a309e859149",
							variableTogglesType = 2,
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				mechanicTime = 105.78798877162,
				name = "Tengetsu",
				timeRange = true,
				timelineIndex = 22,
				timerOffset = -3,
				timerStartOffset = -3,
				uuid = "c46d1f01-8b65-c52d-b6e7-79d78433d838",
				version = 2,
			},
		},
	},
	[25] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Lj\\umad\\autosimv2.6",
				uuid = "d6de7358-1bba-aebc-517f-564e78efd1a8",
			},
			inheritanceRoot = "Lj\\umad\\autosimv2.6",
			objectType = "folder",
		},
	},
	[26] = 
	{
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							gVar = "ACR_TensorWeeb4_Hotbar_Tengetsu",
							uuid = "20a73faa-8c9a-6f69-9627-0a309e859149",
							variableTogglesType = 2,
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				mechanicTime = 132.26514619605,
				name = "Tengetsu",
				timeRange = true,
				timelineIndex = 26,
				timerOffset = -3,
				timerStartOffset = -3,
				uuid = "6e0f79b5-affb-1f07-b8df-e6eae19b4716",
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
							aType = "ACR",
							gVar = "ACR_TensorWeeb4_KBCancel",
							uuid = "ea98ec22-d16d-e1ea-a16d-4fa249ce9788",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				mechanicTime = 132.26514619605,
				name = "Toggle KB Cancel",
				timelineIndex = 26,
				uuid = "be41a2af-6f8b-7387-b92e-928576eeb59e",
				version = 2,
			},
		},
	},
	[34] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Lj\\umad\\autosimv2.6",
				uuid = "50efe0ca-a868-13be-8a45-61889f1b451a",
			},
			inheritanceRoot = "Lj\\umad\\autosimv2.6",
			objectType = "folder",
		},
	},
	[35] = 
	{
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							gVar = "ACR_TensorWeeb4_Hotbar_Tengetsu",
							uuid = "20a73faa-8c9a-6f69-9627-0a309e859149",
							variableTogglesType = 2,
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				mechanicTime = 173.37050637968,
				name = "Tengetsu",
				timeRange = true,
				timelineIndex = 35,
				timerOffset = -3,
				timerStartOffset = -3,
				uuid = "3dfd20a5-b0c0-8c61-af96-963c6e67be06",
				version = 2,
			},
		},
	},
	[37] = 
	{
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							gVar = "ACR_TensorWeeb4_Hotbar_Tengetsu",
							uuid = "20a73faa-8c9a-6f69-9627-0a309e859149",
							variableTogglesType = 2,
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				mechanicTime = 187.08847802632,
				name = "Tengetsu",
				timeRange = true,
				timelineIndex = 37,
				timerOffset = -3,
				timerStartOffset = -3,
				uuid = "cdaa1b0d-f06d-14dd-8c7d-a45d4741b89e",
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
							aType = "ACR",
							gVar = "ACR_TensorWeeb4_Hotbar_Tengetsu",
							uuid = "20a73faa-8c9a-6f69-9627-0a309e859149",
							variableTogglesType = 2,
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				mechanicTime = 235.34477128997,
				name = "Tengetsu",
				timeRange = true,
				timelineIndex = 41,
				timerOffset = -3,
				timerStartOffset = -3,
				uuid = "386c35a9-abb4-1a85-bd50-9707cff5b1d9",
				version = 2,
			},
		},
	},
	[43] = 
	{
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							gVar = "ACR_TensorWeeb4_Hotbar_Tengetsu",
							uuid = "20a73faa-8c9a-6f69-9627-0a309e859149",
							variableTogglesType = 2,
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				mechanicTime = 249.21799166092,
				name = "Tengetsu",
				timeRange = true,
				timelineIndex = 43,
				timerOffset = -3,
				timerStartOffset = -3,
				uuid = "74ccfe72-f00d-14a1-bf81-f1929cdbe6d0",
				version = 2,
			},
		},
	},
	[44] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Lj\\umad\\autosimv2.6",
				uuid = "0b748969-effe-20b5-50dc-95b320200879",
			},
			inheritanceRoot = "Lj\\umad\\autosimv2.6",
			objectType = "folder",
		},
	},
	[47] = 
	{
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							gVar = "ACR_TensorWeeb4_Hotbar_Tengetsu",
							uuid = "20a73faa-8c9a-6f69-9627-0a309e859149",
							variableTogglesType = 2,
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				mechanicTime = 259.26759932438,
				name = "Tengetsu",
				timeRange = true,
				timelineIndex = 47,
				timerOffset = -3,
				timerStartOffset = -3,
				uuid = "372a725d-137c-23e5-aae6-065612abc1ca",
				version = 2,
			},
		},
	},
	[49] = 
	{
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							gVar = "ACR_TensorWeeb4_Hotbar_Tengetsu",
							uuid = "20a73faa-8c9a-6f69-9627-0a309e859149",
							variableTogglesType = 2,
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				mechanicTime = 270.25091459497,
				name = "Tengetsu",
				timeRange = true,
				timelineIndex = 49,
				timerOffset = -3,
				timerStartOffset = -3,
				uuid = "0299c894-bf09-95c2-85d0-f86af66f776d",
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
							aType = "ACR",
							gVar = "ACR_TensorWeeb4_Hotbar_Tengetsu",
							uuid = "20a73faa-8c9a-6f69-9627-0a309e859149",
							variableTogglesType = 2,
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				mechanicTime = 280.23863811015,
				name = "Tengetsu",
				timeRange = true,
				timelineIndex = 53,
				timerOffset = -3,
				timerStartOffset = -3,
				uuid = "5982d2c0-0c4c-2e1b-8054-73f5fa0f5621",
				version = 2,
			},
		},
	},
	[55] = 
	{
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							gVar = "ACR_TensorWeeb4_Hotbar_Tengetsu",
							uuid = "20a73faa-8c9a-6f69-9627-0a309e859149",
							variableTogglesType = 2,
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				mechanicTime = 291.26647895232,
				name = "Tengetsu",
				timeRange = true,
				timelineIndex = 55,
				timerOffset = -3,
				timerStartOffset = -3,
				uuid = "d60836a7-a02c-d6eb-8486-1dd109ed8989",
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
							aType = "ACR",
							gVar = "ACR_TensorWeeb4_Hotbar_Tengetsu",
							uuid = "20a73faa-8c9a-6f69-9627-0a309e859149",
							variableTogglesType = 2,
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				mechanicTime = 301.30844266449,
				name = "Tengetsu",
				timeRange = true,
				timelineIndex = 59,
				timerOffset = -3,
				timerStartOffset = -3,
				uuid = "32dd5b09-a067-b1ed-b625-b1972d69585a",
				version = 2,
			},
		},
	},
	[61] = 
	{
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							gVar = "ACR_TensorWeeb4_Hotbar_Tengetsu",
							uuid = "20a73faa-8c9a-6f69-9627-0a309e859149",
							variableTogglesType = 2,
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				mechanicTime = 312.32654954394,
				name = "Tengetsu",
				timeRange = true,
				timelineIndex = 61,
				timerOffset = -3,
				timerStartOffset = -3,
				uuid = "f80325d8-ebc3-f9f3-8210-56831e60612a",
				version = 2,
			},
		},
	},
	[65] = 
	{
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							gVar = "ACR_TensorWeeb4_Hotbar_Tengetsu",
							uuid = "20a73faa-8c9a-6f69-9627-0a309e859149",
							variableTogglesType = 2,
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				mechanicTime = 322.39247758191,
				name = "Tengetsu",
				timeRange = true,
				timelineIndex = 65,
				timerOffset = -3,
				timerStartOffset = -3,
				uuid = "79b390d7-fd06-a5ce-b8a6-15d730d53257",
				version = 2,
			},
		},
	},
	[66] = 
	{
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							gVar = "ACR_TensorWeeb4_Hotbar_Tengetsu",
							uuid = "20a73faa-8c9a-6f69-9627-0a309e859149",
							variableTogglesType = 2,
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				mechanicTime = 341.70452758191,
				name = "Tengetsu",
				timeRange = true,
				timelineIndex = 66,
				timerOffset = -3,
				timerStartOffset = -3,
				uuid = "5d185f3f-5856-8f7b-890f-4e6edcd38508",
				version = 2,
			},
		},
	},
	[72] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Lj\\umad\\autosimv2.6",
				uuid = "d62b2230-42bf-a924-8f11-3212db1761c0",
			},
			inheritanceRoot = "Lj\\umad\\autosimv2.6",
			objectType = "folder",
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
							aType = "ACR",
							gVar = "ACR_TensorWeeb4_Hotbar_Tengetsu",
							uuid = "20a73faa-8c9a-6f69-9627-0a309e859149",
							variableTogglesType = 2,
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				mechanicTime = 450.00390950196,
				name = "Tengetsu",
				timeRange = true,
				timelineIndex = 79,
				timerOffset = -3,
				timerStartOffset = -3,
				uuid = "cae9b940-0650-965b-a31e-7548ad198c47",
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
							aType = "ACR",
							gVar = "ACR_TensorWeeb4_Hotbar_Tengetsu",
							uuid = "20a73faa-8c9a-6f69-9627-0a309e859149",
							variableTogglesType = 2,
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				mechanicTime = 507.31761539671,
				name = "Tengetsu",
				timeRange = true,
				timelineIndex = 91,
				timerOffset = -3,
				timerStartOffset = -3,
				uuid = "1ba4d1db-2d83-a6bf-ab23-490c6c1fa896",
				version = 2,
			},
		},
	},
	[94] = 
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
							gVar = "ACR_RikuSGE3_CD",
							setTarget = true,
							targetContentID = 6052,
							targetType = "ContentID",
							uuid = "3aa5bcff-8170-6b18-a612-0315e68df76f",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				mechanicTime = 513.32988332111,
				name = "Target Exdeath",
				timelineIndex = 94,
				uuid = "bd7338cd-8943-0653-a6e6-857646ab735a",
				version = 2,
			},
		},
	},
	[97] = 
	{
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							gVar = "ACR_TensorWeeb4_Hotbar_Tengetsu",
							uuid = "20a73faa-8c9a-6f69-9627-0a309e859149",
							variableTogglesType = 2,
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				mechanicTime = 517.34363332111,
				name = "Tengetsu",
				timeRange = true,
				timelineIndex = 97,
				timerOffset = -3,
				timerStartOffset = -3,
				uuid = "24481eb8-bacf-0a76-9b04-96181cbee4cb",
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
							aType = "ACR",
							gVar = "ACR_TensorWeeb4_Hotbar_Tengetsu",
							uuid = "20a73faa-8c9a-6f69-9627-0a309e859149",
							variableTogglesType = 2,
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				mechanicTime = 521.36069634686,
				name = "Tengetsu",
				timeRange = true,
				timelineIndex = 101,
				timerOffset = -3,
				timerStartOffset = -3,
				uuid = "e2ccee7c-0902-ac66-ab99-179fa77055db",
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
							aType = "Misc",
							conditions = 
							{
								
								{
									"c7f112b5-7f94-404c-ab83-a9789a9de51a",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_CD",
							setTarget = true,
							targetType = "Enemy",
							uuid = "3aa5bcff-8170-6b18-a612-0315e68df76f",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							conditionType = 6,
							inRangeValue = 3,
							uuid = "c7f112b5-7f94-404c-ab83-a9789a9de51a",
							version = 3,
						},
					},
				},
				loop = true,
				mechanicTime = 521.36069634686,
				name = "Target Nearest",
				throttleTime = 500,
				timeRange = true,
				timelineIndex = 101,
				timerEndOffset = 15,
				timerOffset = 5,
				timerStartOffset = 5,
				uuid = "9666a5bb-893e-5ccb-8c69-b5d4ce923e9f",
				version = 2,
			},
		},
	},
	[106] = 
	{
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							acrOptionType = "Hold Action",
							holdActionDuration = 15,
							holdActionID = 36962,
							uuid = "d7a923a2-b0a7-92d2-a55d-e7a6efd3c5eb",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				mechanicTime = 556.00428210262,
				name = "Hold Tengetsu - Max",
				timelineIndex = 106,
				uuid = "75aab2d4-73ed-ab60-a36d-f6864a37834e",
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
							aType = "ACR",
							gVar = "ACR_TensorWeeb4_Hotbar_Tengetsu",
							uuid = "20a73faa-8c9a-6f69-9627-0a309e859149",
							variableTogglesType = 2,
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				mechanicTime = 578.01131609381,
				name = "Tengetsu",
				timeRange = true,
				timelineIndex = 112,
				timerOffset = -3,
				timerStartOffset = -3,
				uuid = "00ad4f7d-7072-38db-b966-daa42d66e14e",
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
							aType = "ACR",
							gVar = "ACR_TensorWeeb4_Hotbar_Tengetsu",
							uuid = "20a73faa-8c9a-6f69-9627-0a309e859149",
							variableTogglesType = 2,
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				mechanicTime = 608.39401598045,
				name = "Tengetsu",
				timeRange = true,
				timelineIndex = 122,
				timerOffset = -3,
				timerStartOffset = -3,
				uuid = "7c0c01f0-de58-7e1b-b0dc-e63faf2e5307",
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
							aType = "ACR",
							gVar = "ACR_TensorWeeb4_Hotbar_Tengetsu",
							uuid = "19e1f26d-48c6-7786-8c86-ffba1a5f6d61",
							variableTogglesType = 2,
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				mechanicTime = 608.39401598045,
				name = "Tengetsu",
				timeRange = true,
				timelineIndex = 122,
				timerEndOffset = 14.11,
				timerStartOffset = 11.11,
				uuid = "b63ec225-658c-6f88-830e-9f8d7ea97199",
				version = 2,
			},
		},
	},
	[128] = 
	{
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							gVar = "ACR_TensorWeeb4_Hotbar_Tengetsu",
							uuid = "c51dd29d-838e-1545-a3c2-75a628a07389",
							variableTogglesType = 2,
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				mechanicTime = 652.34305216234,
				name = "Tengetsu",
				timeRange = true,
				timelineIndex = 128,
				timerEndOffset = 4.46,
				timerStartOffset = 1.46,
				uuid = "dffeed6c-bfc4-046d-a290-3ca875d4b352",
				version = 2,
			},
		},
	},
	[129] = 
	{
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							gVar = "ACR_TensorWeeb4_Hotbar_Tengetsu",
							uuid = "7edaba44-aaa1-0a7b-9020-af5f58b0b4f5",
							variableTogglesType = 2,
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				mechanicTime = 671.48837109883,
				name = "Tengetsu",
				timeRange = true,
				timelineIndex = 129,
				timerStartOffset = -3,
				uuid = "f38be4c9-9d07-6591-b3e0-23a66c0667d0",
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
							aType = "ACR",
							gVar = "ACR_TensorWeeb4_Hotbar_Tengetsu",
							uuid = "20a73faa-8c9a-6f69-9627-0a309e859149",
							variableTogglesType = 2,
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				mechanicTime = 676.34203400282,
				name = "Tengetsu",
				timeRange = true,
				timelineIndex = 135,
				timerOffset = -3,
				timerStartOffset = -3,
				uuid = "3355a336-7e1a-603c-bdd7-f42c60d08b31",
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
							aType = "ACR",
							gVar = "ACR_TensorWeeb4_Hotbar_Tengetsu",
							uuid = "a3ea5098-24da-ac27-adee-03fc854200e3",
							variableTogglesType = 2,
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				mechanicTime = 690.41578400282,
				name = "Tengetsu",
				timeRange = true,
				timelineIndex = 137,
				timerEndOffset = 1.9,
				timerStartOffset = -1.1,
				uuid = "ec10ba43-fd91-fe3f-91d7-9b6b9a513c3e",
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
							aType = "ACR",
							gVar = "ACR_TensorWeeb4_Hotbar_Tengetsu",
							uuid = "20a73faa-8c9a-6f69-9627-0a309e859149",
							variableTogglesType = 2,
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				mechanicTime = 706.58990945806,
				name = "Tengetsu",
				timeRange = true,
				timelineIndex = 143,
				timerOffset = -3,
				timerStartOffset = -3,
				uuid = "37cc9a58-fae0-b1ee-805d-fcaead07ff12",
				version = 2,
			},
		},
	},
	[148] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Lj\\umad\\autosimv2.6",
				uuid = "1e3a9852-e943-bf6e-f878-0a187282b9e2",
			},
			inheritanceRoot = "Lj\\umad\\autosimv2.6",
			objectType = "folder",
		},
	},
	[151] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Lj\\umad\\autosimv2.6",
				uuid = "460a1b08-d6b9-7694-2e56-b25ecf1fb658",
			},
			inheritanceRoot = "Lj\\umad\\autosimv2.6",
			objectType = "folder",
		},
	},
	[153] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Lj\\umad\\autosimv2.6",
				uuid = "523e6f0a-f5f2-e7c6-47e1-c18cd293bf1a",
			},
			inheritanceRoot = "Lj\\umad\\autosimv2.6",
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							gVar = "ACR_TensorWeeb4_Hotbar_Tengetsu",
							uuid = "20a73faa-8c9a-6f69-9627-0a309e859149",
							variableTogglesType = 2,
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				mechanicTime = 826.02524789261,
				name = "Tengetsu",
				timeRange = true,
				timelineIndex = 153,
				timerOffset = -3,
				timerStartOffset = -3,
				uuid = "a69c5644-9b82-b4f4-b4de-c96cb8b244a4",
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
							aType = "ACR",
							gVar = "ACR_TensorWeeb4_Hotbar_Tengetsu",
							uuid = "20a73faa-8c9a-6f69-9627-0a309e859149",
							variableTogglesType = 2,
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				mechanicTime = 841.08843971594,
				name = "Tengetsu",
				timeRange = true,
				timelineIndex = 156,
				timerOffset = -3,
				timerStartOffset = -3,
				uuid = "10fd1393-337d-9947-a0cc-dfe1759d3f71",
				version = 2,
			},
		},
	},
	[157] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Lj\\umad\\autosimv2.6",
				uuid = "72ebb946-d545-9d8a-ae2a-d3202db89dd6",
			},
			inheritanceRoot = "Lj\\umad\\autosimv2.6",
			objectType = "folder",
		},
	},
	[159] = 
	{
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							gVar = "ACR_TensorWeeb4_Hotbar_Tengetsu",
							uuid = "20a73faa-8c9a-6f69-9627-0a309e859149",
							variableTogglesType = 2,
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				mechanicTime = 855.99403801671,
				name = "Tengetsu",
				timeRange = true,
				timelineIndex = 159,
				timerOffset = -3,
				timerStartOffset = -3,
				uuid = "396d87a9-6031-7865-b40e-d6659cdb764c",
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
							aType = "ACR",
							gVar = "ACR_TensorWeeb4_Hotbar_Tengetsu",
							uuid = "20a73faa-8c9a-6f69-9627-0a309e859149",
							variableTogglesType = 2,
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				mechanicTime = 872.48857073874,
				name = "Tengetsu",
				timeRange = true,
				timelineIndex = 162,
				timerOffset = -3,
				timerStartOffset = -3,
				uuid = "752ee17f-44ad-35c2-bdd9-982a3e0a6cb9",
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
							aType = "ACR",
							gVar = "ACR_TensorWeeb4_Hotbar_Tengetsu",
							uuid = "818bcd23-fc11-07c8-bbe8-06d00a46b27b",
							variableTogglesType = 2,
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				mechanicTime = 895.49672653853,
				name = "Tengetsu",
				timeRange = true,
				timelineIndex = 165,
				timerStartOffset = -3,
				uuid = "6c7be11d-eb47-3861-a683-b62d35f9a873",
				version = 2,
			},
		},
	},
	[169] = 
	{
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							gVar = "ACR_TensorWeeb4_Hotbar_Tengetsu",
							uuid = "4216b6d0-80b6-d97c-89c8-0982c338b921",
							variableTogglesType = 2,
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				mechanicTime = 934.65048710577,
				name = "Tengetsu",
				timeRange = true,
				timelineIndex = 169,
				timerStartOffset = -3,
				uuid = "f0279566-90e9-9f18-a34f-56341a810568",
				version = 2,
			},
		},
	},
	[171] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Lj\\umad\\autosimv2.6",
				uuid = "fb22af0e-a059-f8aa-6e3a-e3d88f3b84de",
			},
			inheritanceRoot = "Lj\\umad\\autosimv2.6",
			objectType = "folder",
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
							aType = "ACR",
							gVar = "ACR_TensorWeeb4_Hotbar_Tengetsu",
							uuid = "cbe7e587-c229-d59e-929c-7796448b969b",
							variableTogglesType = 2,
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				mechanicTime = 973.84072239989,
				name = "Tengetsu",
				timeRange = true,
				timelineIndex = 173,
				timerStartOffset = -3,
				uuid = "28d3bcc6-5bd0-dbb8-aec7-60c1e89eaf50",
				version = 2,
			},
		},
	},
	[181] = 
	{
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							gVar = "ACR_TensorWeeb4_Hotbar_Tengetsu",
							uuid = "74485040-1007-41c5-bb1b-3c35f5a86ad4",
							variableTogglesType = 2,
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				mechanicTime = 991.3807442382,
				name = "Tengetsu",
				timeRange = true,
				timelineIndex = 181,
				timerStartOffset = -3,
				uuid = "b1b07160-97c6-001f-83af-dbe7f8e4ac34",
				version = 2,
			},
		},
	},
	[191] = 
	{
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							gVar = "ACR_TensorWeeb4_Hotbar_Tengetsu",
							uuid = "a6dfc2e7-8110-8a2b-b226-35b735593371",
							variableTogglesType = 2,
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				mechanicTime = 1015.5629742328,
				name = "Tengetsu",
				timeRange = true,
				timelineIndex = 191,
				timerStartOffset = -3,
				uuid = "775e9ee1-42fd-23b1-948b-33489fdc20c9",
				version = 2,
			},
		},
	},
	[195] = 
	{
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							gVar = "ACR_TensorWeeb4_Hotbar_Tengetsu",
							uuid = "b215ad95-e01d-b145-aded-225c3f979017",
							variableTogglesType = 2,
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				mechanicTime = 1034.3163569005,
				name = "Tengetsu",
				timeRange = true,
				timelineIndex = 195,
				timerStartOffset = -3,
				uuid = "88c701c9-9a62-cb25-8d69-68be845b08ce",
				version = 2,
			},
		},
	},
	[204] = 
	{
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							gVar = "ACR_TensorWeeb4_Hotbar_Tengetsu",
							uuid = "ec4ffb14-3140-94fb-946b-9458b3e38aa8",
							variableTogglesType = 2,
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				mechanicTime = 1055.6337560913,
				name = "Tengetsu",
				timeRange = true,
				timelineIndex = 204,
				timerStartOffset = -3,
				uuid = "dbe09cf9-ae07-258c-8e66-258f69e3ce87",
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
							aType = "ACR",
							gVar = "ACR_TensorWeeb4_Hotbar_Tengetsu",
							uuid = "9cc08fc5-7399-0730-b616-f86447c4f7be",
							variableTogglesType = 2,
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				mechanicTime = 1063.6903949829,
				name = "Tengetsu",
				timeRange = true,
				timelineIndex = 209,
				timerEndOffset = 23.45,
				timerStartOffset = 20.45,
				uuid = "51b8514f-b671-d111-859a-afa3292dc698",
				version = 2,
			},
		},
	},
	[216] = 
	{
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							gVar = "ACR_TensorWeeb4_Hotbar_Tengetsu",
							uuid = "7f195ade-f792-202e-8990-2e7cbf43a25b",
							variableTogglesType = 2,
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				mechanicTime = 1107.6512243835,
				name = "Tengetsu",
				timeRange = true,
				timelineIndex = 216,
				timerStartOffset = -3,
				uuid = "0c7bc71a-0002-a30c-af06-456ff0bad990",
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
							aType = "ACR",
							gVar = "ACR_TensorWeeb4_Hotbar_Tengetsu",
							uuid = "f69182e0-d4f3-0b2b-987a-36175a3bf8c0",
							variableTogglesType = 2,
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				mechanicTime = 1125.2071474604,
				name = "Tengetsu",
				timeRange = true,
				timelineIndex = 219,
				timerStartOffset = -3,
				uuid = "1ac2db87-1bdd-3976-a592-cb755a2f855b",
				version = 2,
			},
		},
	},
	[222] = 
	{
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							gVar = "ACR_TensorWeeb4_Hotbar_Tengetsu",
							uuid = "5d63aebe-9acb-b8d8-81ba-d75349e975b7",
							variableTogglesType = 2,
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				mechanicTime = 1138.4497474604,
				name = "Tengetsu",
				timeRange = true,
				timelineIndex = 222,
				timerStartOffset = -3,
				uuid = "757e53ca-d4dd-5a08-8672-6cfb2a59154c",
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
							aType = "ACR",
							gVar = "ACR_TensorWeeb4_Hotbar_Tengetsu",
							uuid = "e13e82f2-6417-57f4-a457-88093496bfe6",
							variableTogglesType = 2,
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				mechanicTime = 1141.5122474604,
				name = "Tengetsu",
				timeRange = true,
				timelineIndex = 223,
				timerStartOffset = -3,
				uuid = "cffc46f7-d6af-8f84-b55d-8491fac760b3",
				version = 2,
			},
		},
	},
	[226] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Lj\\umad\\autosimv2.6",
				uuid = "80acafd3-1e1a-007f-323b-f4b5ed1029e3",
			},
			inheritanceRoot = "Lj\\umad\\autosimv2.6",
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							gVar = "ACR_TensorWeeb4_Hotbar_Tengetsu",
							uuid = "2ef954f1-776f-27d7-aff7-20078b393ed2",
							variableTogglesType = 2,
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				mechanicTime = 1154.7445474604,
				name = "Tengetsu",
				timeRange = true,
				timelineIndex = 226,
				timerStartOffset = -3,
				uuid = "01d8a4e9-c322-918a-bc73-9f88faa1af80",
				version = 2,
			},
		},
	},
	inheritedProfiles = 
	{
		"Lj\\umad\\autosimv2.6",
	},
	timelineName = "dmu",
	version = "1.5.5",
}



return tbl