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
							actionLua = "ACR_TensorWeeb4_TargetHitRadiusAdjust = 3\nACR_TensorWeeb4_ActionRangeAdjust = 3\nself.used = true",
							name = "Extend Target and Action Ranges 3.0",
							uuid = "96c709d8-2799-9e40-a959-a71a423991d3",
							version = 2.1,
						},
						inheritedIndex = 1,
					},
					
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
							gVar = "ACR_TensorWeeb4_Meditate",
							uuid = "1c7a3f60-62f0-3385-9768-8a8223496d9d",
							version = 2.1,
						},
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
							gVar = "ACR_TensorWeeb4_KBCancel",
							uuid = "578a0f31-9a8c-6820-b1e5-77b99f44c23b",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "ACR",
							gVar = "ACR_TensorWeeb4_Potion",
							uuid = "e5389749-71bf-c804-b937-9d0006f2c322",
							version = 2.1,
						},
						inheritedIndex = 16,
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
						inheritedIndex = 17,
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
							actionLua = "gStartCombat = false\nself.used = true",
							name = "Combat Off",
							uuid = "3a453374-d34d-fe55-94e1-41e2b433c383",
							version = 2.1,
						},
						inheritedIndex = 1,
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
			inheritedIndex = 2,
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
			inheritedIndex = 3,
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "AutoSim v1",
				uuid = "366c4a8f-b66e-183d-a42a-1690bf6bda5a",
			},
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
							actionLua = "local acr = TensorCore.API.TensorACR\n\nacr.setAutoSimKillTime(1102.669)\nacr.setAutoSimUnexpectedMovementPct(0)\nacr.setAutoSimUnexpectedMeleeDowntimePct(0)\nacr.clearAutoSimPhases(\"FullDowntime\")\nacr.clearAutoSimPhases(\"CasterDowntime\")\nacr.clearAutoSimPhases(\"MeleeDowntime\")\nacr.clearAutoSimPhases(\"RaidBuff\")\nacr.clearAutoSimUncertainty()\n\nlocal state = {\n    killTime = 1102.669,\n    nextBoundary = 1,\n    phases = {},\n    boundaries = {\n        { kind = \"down\", time = 198.311, uncertainty = 10, lead = 10 },\n        { kind = \"up\", time = 208.653, uncertainty = 10, lead = 10 },\n        { kind = \"down\", time = 381.481, uncertainty = 10, lead = 10 },\n        { kind = \"up\", time = 428.593, uncertainty = 10, lead = 10 },\n        { kind = \"down\", time = 720.490, uncertainty = 90, lead = 30.490 },\n        { kind = \"up\", time = 724.963, uncertainty = 10, lead = 10 },\n        { kind = \"down\", time = 856.953, uncertainty = 10, lead = 10 },\n        { kind = \"up\", time = 887.943, uncertainty = 10, lead = 10 },\n    },\n    bossContentIDs = {\n        [19504] = true,\n        [19506] = true,\n        [19508] = true,\n        [19509] = true,\n        [18475] = true,\n        [19511] = true,\n    },\n    targetableByEntity = {},\n    anyTargetable = true,\n    initialTargetable = true,\n}\n\nlocal phaseSpecs = {\n    FullDowntime = {\n    { startTime = 198.311, endTime = 208.653 },\n    { startTime = 381.481, endTime = 428.593 },\n    { startTime = 720.490, endTime = 724.963 },\n    { startTime = 856.953, endTime = 887.943 },\n    },\n    CasterDowntime = {\n    { startTime = 32.789, endTime = 38.575 },\n    { startTime = 43.421, endTime = 54.017 },\n    { startTime = 87.300, endTime = 91.962 },\n    { startTime = 105.800, endTime = 110.424 },\n    { startTime = 151.500, endTime = 163.200 },\n    { startTime = 166.500, endTime = 174.200 },\n    { startTime = 182.065, endTime = 187.842 },\n    { startTime = 257.500, endTime = 270.933 },\n    { startTime = 278.500, endTime = 292.023 },\n    { startTime = 299.500, endTime = 313.025 },\n    { startTime = 320.500, endTime = 329.000 },\n    { startTime = 365.500, endTime = 371.300 },\n    { startTime = 490.500, endTime = 497.000 },\n    { startTime = 513.500, endTime = 527.500 },\n    { startTime = 574.000, endTime = 592.500 },\n    { startTime = 603.000, endTime = 626.500 },\n    { startTime = 630.500, endTime = 660.500 },\n    { startTime = 671.000, endTime = 683.500 },\n    { startTime = 699.000, endTime = 710.500 },\n    { startTime = 713.500, endTime = 717.500 },\n    { startTime = 795.000, endTime = 800.200 },\n    { startTime = 813.000, endTime = 826.500 },\n    { startTime = 832.000, endTime = 839.500 },\n    { startTime = 907.500, endTime = 916.800 },\n    { startTime = 920.800, endTime = 933.500 },\n    { startTime = 947.000, endTime = 957.800 },\n    { startTime = 962.700, endTime = 963.800 },\n    { startTime = 968.500, endTime = 970.000 },\n    },\n    MeleeDowntime = {\n    { startTime = 158.500, endTime = 163.200 },\n    { startTime = 365.500, endTime = 371.300 },\n    },\n    RaidBuff = {\n    { startTime = 1.560, endTime = 21.115, value = 1.1025 },\n    { startTime = 122.595, endTime = 142.506, value = 1.1025 },\n    { startTime = 243.152, endTime = 262.214, value = 1.1025 },\n    { startTime = 363.497, endTime = 382.736, value = 1.1025 },\n    { startTime = 484.703, endTime = 502.520, value = 1.1025 },\n    { startTime = 604.734, endTime = 623.706, value = 1.1025 },\n    { startTime = 725.768, endTime = 745.411, value = 1.1025 },\n    { startTime = 845.888, endTime = 865.798, value = 1.1025 },\n    { startTime = 968.340, endTime = 987.002, value = 1.1025 },\n    { startTime = 1088.214, endTime = 1102.669, value = 1.1025 },\n    },\n}\n\nfor phaseType, specs in pairs(phaseSpecs) do\n    for _, spec in ipairs(specs) do\n        local value = spec.value or 1\n        local phaseID = acr.addAutoSimPhase(\n            phaseType,\n            spec.startTime,\n            spec.endTime,\n            value\n        )\n        if phaseID then\n            state.phases[#state.phases + 1] = {\n                id = phaseID,\n                phaseType = phaseType,\n                startTime = spec.startTime,\n                endTime = spec.endTime,\n                value = value,\n            }\n        end\n    end\nend\n\nstate.uncertaintyID = acr.addAutoSimUncertainty(188.311, 10)\ndata.ljAutoSimDmu = state\nACR_TensorWeeb4_Meditate = false\nself.used = true",
							name = "Initialize AutoSim Schedule",
							uuid = "04a20e6e-bde9-f205-9fef-84e8f6a1a5d0",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				displayPath = "AutoSim v1",
				enabled = false,
				eventType = 16,
				mechanicTime = 15.261765625,
				name = "[AutoSim] Initialize DMU",
				timeRange = true,
				timelineIndex = 1,
				timerStartOffset = -16,
				uuid = "f948ff74-7197-4cd8-b0bd-24445f20c235",
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
							actionLua = "local acr = TensorCore.API.TensorACR\nlocal state = data.ljAutoSimDmu\n\nif not state or not state.bossContentIDs[eventArgs.entityContentID] then\n    self.used = true\n    return\nend\n\nlocal wasAnyTargetable = state.anyTargetable\nif state.initialTargetable then\n    state.initialTargetable = false\n    state.targetableByEntity = {}\nend\n\nif eventArgs.isTargetable then\n    state.targetableByEntity[eventArgs.entityID] = true\nelse\n    state.targetableByEntity[eventArgs.entityID] = nil\nend\n\nlocal anyTargetable = false\nfor _, isTargetable in pairs(state.targetableByEntity) do\n    if isTargetable then\n        anyTargetable = true\n        break\n    end\nend\n\nstate.anyTargetable = anyTargetable\nACR_TensorWeeb4_Meditate = not anyTargetable\n\nlocal transitionKind\nif wasAnyTargetable and not anyTargetable then\n    transitionKind = \"down\"\nelseif not wasAnyTargetable and anyTargetable then\n    transitionKind = \"up\"\nend\n\nif not transitionKind then\n    self.used = true\n    return\nend\n\nlocal boundary = state.boundaries[state.nextBoundary]\nif not boundary or boundary.kind ~= transitionKind then\n    self.used = true\n    return\nend\n\nlocal now = acr.getAutoSimTime()\nlocal expectedTime = boundary.time\nlocal delta = now - expectedTime\n\nstate.killTime = state.killTime + delta\nacr.setAutoSimKillTime(state.killTime)\n\nfor _, phase in ipairs(state.phases) do\n    local changed = false\n    if phase.startTime >= expectedTime - 0.0001 then\n        phase.startTime = phase.startTime + delta\n        changed = true\n    end\n    if phase.endTime >= expectedTime - 0.0001 then\n        phase.endTime = phase.endTime + delta\n        changed = true\n    end\n    if changed then\n        local phaseID = acr.setAutoSimPhase(\n            phase.id,\n            phase.startTime,\n            phase.endTime,\n            phase.value\n        )\n        if phaseID then\n            phase.id = phaseID\n        end\n    end\nend\n\nfor index = state.nextBoundary, #state.boundaries do\n    state.boundaries[index].time = state.boundaries[index].time + delta\nend\n\nstate.uncertaintyID = acr.addAutoSimUncertainty(now, 0)\nstate.nextBoundary = state.nextBoundary + 1\n\nlocal nextBoundary = state.boundaries[state.nextBoundary]\nif nextBoundary then\n    local uncertaintyTime = nextBoundary.time - nextBoundary.lead\n    if uncertaintyTime <= now then\n        uncertaintyTime = now + 0.001\n    end\n    state.uncertaintyID = acr.addAutoSimUncertainty(\n        uncertaintyTime,\n        nextBoundary.uncertainty\n    )\nend\n\nself.used = true",
							name = "Track Boss State and Resync",
							uuid = "930dcd81-dbfe-a5fd-8eb3-b45b4d3f9820",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				displayPath = "AutoSim v1",
				enabled = false,
				eventType = 26,
				loop = true,
				mechanicTime = 15.261765625,
				name = "[AutoSim] Targetability and Resync",
				timeRange = true,
				timelineIndex = 1,
				timerEndOffset = 1200,
				timerStartOffset = -16,
				uuid = "a89edff8-9a1b-7421-86dd-98943c3fa96f",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "AutoSim v2",
				uuid = "b01ba45e-a140-cd20-855b-905dc438ad4c",
			},
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
							actionLua = "local acr = TensorCore.API.TensorACR\nlocal state = data.ljAutoSimDmu\n\nif not state or not state.bossContentIDs[eventArgs.entityContentID] then\n    self.used = true\n    return\nend\n\nlocal wasAnyTargetable = state.anyTargetable\nif state.initialTargetable then\n    state.initialTargetable = false\n    state.targetableByEntity = {}\nend\n\nif eventArgs.isTargetable then\n    state.targetableByEntity[eventArgs.entityID] = true\nelse\n    state.targetableByEntity[eventArgs.entityID] = nil\nend\n\nlocal anyTargetable = false\nfor _, isTargetable in pairs(state.targetableByEntity) do\n    if isTargetable then\n        anyTargetable = true\n        break\n    end\nend\n\nstate.anyTargetable = anyTargetable\nACR_TensorWeeb4_Meditate = not anyTargetable\n\nlocal transitionKind\nif wasAnyTargetable and not anyTargetable then\n    transitionKind = \"down\"\nelseif not wasAnyTargetable and anyTargetable then\n    transitionKind = \"up\"\nend\n\nif not transitionKind then\n    self.used = true\n    return\nend\n\nlocal boundary = state.boundaries[state.nextBoundary]\nif not boundary or boundary.kind ~= transitionKind then\n    self.used = true\n    return\nend\n\nlocal now = acr.getAutoSimTime()\nlocal expectedTime = boundary.time\nlocal delta = now - expectedTime\n\nstate.killTime = state.killTime + delta\nacr.setAutoSimKillTime(state.killTime)\n\nfor _, phase in ipairs(state.phases) do\n    local changed = false\n    if phase.startTime >= expectedTime - 0.0001 then\n        phase.startTime = phase.startTime + delta\n        changed = true\n    end\n    if phase.endTime >= expectedTime - 0.0001 then\n        phase.endTime = phase.endTime + delta\n        changed = true\n    end\n    if changed then\n        local phaseID = acr.setAutoSimPhase(\n            phase.id,\n            phase.startTime,\n            phase.endTime,\n            phase.value\n        )\n        if phaseID then\n            phase.id = phaseID\n        end\n    end\nend\n\nfor index = state.nextBoundary, #state.boundaries do\n    state.boundaries[index].time = state.boundaries[index].time + delta\nend\n\nstate.uncertaintyID = acr.addAutoSimUncertainty(now, 0)\nstate.nextBoundary = state.nextBoundary + 1\n\nlocal nextBoundary = state.boundaries[state.nextBoundary]\nif nextBoundary then\n    local uncertaintyTime = nextBoundary.time - nextBoundary.lead\n    if uncertaintyTime <= now then\n        uncertaintyTime = now + 0.001\n    end\n    state.uncertaintyID = acr.addAutoSimUncertainty(\n        uncertaintyTime,\n        nextBoundary.uncertainty\n    )\nend\n\nself.used = true",
							name = "Track Boss State and Resync",
							uuid = "930dcd81-dbfe-a5fd-8eb3-b45b4d3f9820",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				displayPath = "AutoSim v2",
				enabled = false,
				eventType = 26,
				loop = true,
				mechanicTime = 15.261765625,
				name = "[AutoSim] Targetability and Resync",
				timeRange = true,
				timelineIndex = 1,
				timerEndOffset = 1200,
				timerStartOffset = -16,
				uuid = "27575c62-a904-1ce1-b38a-595e924a3c32",
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
							actionLua = "local acr = TensorCore.API.TensorACR\n\nacr.setAutoSimKillTime(1102.669)\nacr.setAutoSimUnexpectedMovementPct(0)\nacr.setAutoSimUnexpectedMeleeDowntimePct(0)\nacr.clearAutoSimPhases(\"FullDowntime\")\nacr.clearAutoSimPhases(\"CasterDowntime\")\nacr.clearAutoSimPhases(\"MeleeDowntime\")\nacr.clearAutoSimPhases(\"RaidBuff\")\nacr.clearAutoSimUncertainty()\n\nlocal state = {\n    killTime = 1102.669,\n    nextBoundary = 1,\n    phases = {},\n    boundaries = {\n        { kind = \"down\", time = 197.52, uncertainty = 0, lead = 0 },\n        { kind = \"up\", time = 207.88, uncertainty = 0, lead = 0 },\n        { kind = \"down\", time = 381.481, uncertainty = 10, lead = 10 },\n        { kind = \"up\", time = 427.46, uncertainty = 0, lead = 0 },\n        { kind = \"down\", time = 720.490, uncertainty = 10, lead = 30.490 },\n        { kind = \"up\", time = 724.963, uncertainty = 10, lead = 10 },\n        { kind = \"down\", time = 856.953, uncertainty = 10, lead = 10 },\n        { kind = \"up\", time = 887.943, uncertainty = 10, lead = 10 },\n    },\n    bossContentIDs = {\n        [19504] = true,\n        [19506] = true,\n        [19508] = true,\n        [19509] = true,\n        [18475] = true,\n        [19511] = true,\n    },\n    targetableByEntity = {},\n    anyTargetable = true,\n    initialTargetable = true,\n}\n\nlocal phaseSpecs = {\n    FullDowntime = {\n    { startTime = 197.52, endTime = 207.88 },\n    { startTime = 381.481, endTime = 427.46 },\n    { startTime = 720.490, endTime = 724.963 },\n    { startTime = 856.953, endTime = 887.943 },\n    },\n    RaidBuff = {\n    { startTime = 1.560, endTime = 21.115, value = 1.1025 },\n    { startTime = 122.595, endTime = 142.506, value = 1.1025 },\n    { startTime = 243.152, endTime = 262.214, value = 1.1025 },\n    { startTime = 363.497, endTime = 382.736, value = 1.1025 },\n    { startTime = 484.703, endTime = 502.520, value = 1.1025 },\n    { startTime = 604.734, endTime = 623.706, value = 1.1025 },\n    { startTime = 725.768, endTime = 745.411, value = 1.1025 },\n    { startTime = 845.888, endTime = 865.798, value = 1.1025 },\n    { startTime = 968.340, endTime = 987.002, value = 1.1025 },\n    { startTime = 1088.214, endTime = 1102.669, value = 1.1025 },\n    },\n}\n\nfor phaseType, specs in pairs(phaseSpecs) do\n    for _, spec in ipairs(specs) do\n        local value = spec.value or 1\n        local phaseID = acr.addAutoSimPhase(\n            phaseType,\n            spec.startTime,\n            spec.endTime,\n            value\n        )\n        if phaseID then\n            state.phases[#state.phases + 1] = {\n                id = phaseID,\n                phaseType = phaseType,\n                startTime = spec.startTime,\n                endTime = spec.endTime,\n                value = value,\n            }\n        end\n    end\nend\n\nstate.uncertaintyID = acr.addAutoSimUncertainty(188.311, 10)\ndata.ljAutoSimDmu = state\n--ACR_TensorWeeb4_Meditate = false\nself.used = true",
							name = "Initialize AutoSim Schedule",
							uuid = "04a20e6e-bde9-f205-9fef-84e8f6a1a5d0",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				displayPath = "AutoSim v2",
				enabled = false,
				eventType = 16,
				mechanicTime = 15.261765625,
				name = "[AutoSim] Initialize DMU",
				timeRange = true,
				timelineIndex = 1,
				timerStartOffset = -16,
				uuid = "8c4c0226-64cf-24b8-9e66-751a281facdd",
				version = 2,
			},
			inheritedIndex = 9,
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "AutoSim v3",
				uuid = "6151a72b-af3e-3786-bf11-364cb738bf87",
			},
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
							actionLua = "local acr = TensorCore.API.TensorACR\n\nacr.setAutoSimKillTime(1102.669)\nacr.setAutoSimUnexpectedMovementPct(0)\nacr.setAutoSimUnexpectedMeleeDowntimePct(0)\nacr.clearAutoSimPhases(\"FullDowntime\")\nacr.clearAutoSimPhases(\"CasterDowntime\")\nacr.clearAutoSimPhases(\"MeleeDowntime\")\nacr.clearAutoSimPhases(\"RaidBuff\")\nacr.clearAutoSimUncertainty()\nacr.clearAutoSimPhases(\"Stun\")\nacr.clearAutoSimPhases(\"SelfCircle5Yd\")\nacr.clearAutoSimPhases(\"SelfCircle8Yd\")\nacr.clearAutoSimPhases(\"Cone8Yd\")\nacr.clearAutoSimPhases(\"Line10Yd\")\nacr.clearAutoSimPhases(\"TargetLifetime\", 0)\nacr.clearAutoSimPhases(\"DotAvailability\", 0)\nacr.clearAutoSimPhases(\"TargetLifetime\", 1)\nacr.clearAutoSimPhases(\"DotAvailability\", 1)\nacr.clearAutoSimTarget(1)\n\nlocal state = {\n    killTime = 1102.669,\n    nextBoundary = 1,\n    phases = {},\n    boundaries = {\n        { kind = \"down\", time = 197.52, uncertainty = 0, lead = 0, boss = \"kefka\", early = 10, late = 10 },\n        { kind = \"up\", time = 207.88, uncertainty = 0, lead = 0, boss = \"kefka\", early = 10, late = 10 },\n        { kind = \"down\", time = 381.481, uncertainty = 10, lead = 10, boss = \"kefka\", early = 10, late = 10 },\n        { kind = \"up\", time = 427.46, uncertainty = 0, lead = 0, boss = \"duo\", early = 10, late = 10 },\n        { kind = \"down\", time = 720.490, uncertainty = 10, lead = 30.490, boss = \"duo\", early = 30.49, late = 10 },\n        { kind = \"up\", time = 724.963, uncertainty = 10, lead = 10, boss = \"kefka\", early = 10, late = 10 },\n        { kind = \"down\", time = 856.953, uncertainty = 10, lead = 10, boss = \"kefka\", early = 10, late = 10 },\n        { kind = \"up\", time = 887.943, uncertainty = 10, lead = 10, boss = \"kefka\", early = 10, late = 10 },\n    },\n    bossContentIDs = {\n        [7131] = true, -- Kefka\n        [7691] = true, -- Chaos\n        [6052] = true, -- Exdeath\n    },\n    duoTargetable = { [7691] = true, [6052] = true },\n}\n\nlocal phaseSpecs = {\n    Stun = {\n        { startTime = 174.37, endTime = 180 },\n        { startTime = 387.876, endTime = 420 },\n    },\n    SelfCircle5Yd = {\n        { startTime = 427.46, endTime = 430.62, value = 2 },\n        { startTime = 462.395, endTime = 544.89, value = 2 },\n    },\n    SelfCircle8Yd = {\n        { startTime = 427.46, endTime = 430.62, value = 2 },\n        { startTime = 462.395, endTime = 544.89, value = 2 },\n    },\n    Cone8Yd = {\n        { startTime = 427.46, endTime = 430.62, value = 2 },\n        { startTime = 462.395, endTime = 544.89, value = 2 },\n    },\n    Line10Yd = {\n        { startTime = 427.46, endTime = 430.62, value = 2 },\n        { startTime = 462.395, endTime = 544.89, value = 2 },\n    },\n    TargetLifetime = {\n        { startTime = 0, endTime = 1102.669, targetSlot = 0 },\n        { startTime = 427.46, endTime = 544.89, targetSlot = 1 },\n    },\n    DotAvailability = {\n        { startTime = 0, endTime = 1102.669, targetSlot = 0 },\n        { startTime = 427.46, endTime = 430.62, targetSlot = 1 },\n        { startTime = 462.395, endTime = 544.89, targetSlot = 1 },\n    },\n    FullDowntime = {\n    { startTime = 197.52, endTime = 207.88 },\n    { startTime = 381.481, endTime = 427.46 },\n    { startTime = 720.490, endTime = 724.963 },\n    { startTime = 856.953, endTime = 887.943 },\n    },\n    RaidBuff = {\n    { startTime = 1.560, endTime = 21.115, value = 1.1025 },\n    { startTime = 122.595, endTime = 142.506, value = 1.1025 },\n    { startTime = 243.152, endTime = 262.214, value = 1.1025 },\n    { startTime = 363.497, endTime = 382.736, value = 1.1025 },\n    { startTime = 484.703, endTime = 502.520, value = 1.1025 },\n    { startTime = 604.734, endTime = 623.706, value = 1.1025 },\n    { startTime = 725.768, endTime = 745.411, value = 1.1025 },\n    { startTime = 845.888, endTime = 865.798, value = 1.1025 },\n    { startTime = 968.340, endTime = 987.002, value = 1.1025 },\n    { startTime = 1088.214, endTime = 1102.669, value = 1.1025 },\n    },\n}\n\nfor phaseType, specs in pairs(phaseSpecs) do\n    for _, spec in ipairs(specs) do\n        local value = spec.value or 1\n        local phaseID = acr.addAutoSimPhase(\n            phaseType,\n            spec.startTime,\n            spec.endTime,\n            value,\n            spec.targetSlot or 0\n        )\n        if phaseID then\n            state.phases[#state.phases + 1] = {\n                id = phaseID,\n                phaseType = phaseType,\n                startTime = spec.startTime,\n                endTime = spec.endTime,\n                value = value,\n            }\n        end\n    end\nend\n\nstate.uncertaintyID = acr.addAutoSimUncertainty(188.311, 10)\ndata.ljAutoSimDmu = state\nself.used = true",
							name = "Initialize AutoSim Schedule",
							uuid = "04a20e6e-bde9-f205-9fef-84e8f6a1a5d0",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				displayPath = "AutoSim v3",
				enabled = false,
				eventType = 16,
				mechanicTime = 15.261765625,
				name = "[AutoSim] Initialize DMU",
				timeRange = true,
				timelineIndex = 1,
				timerStartOffset = -16,
				uuid = "23c92aba-9eea-3a18-85ff-fc529e2b9121",
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
							aType = "Lua",
							actionLua = "local acr = TensorCore.API.TensorACR\nlocal state = data.ljAutoSimDmu\nlocal contentID = eventArgs.entityContentID\n\nif not state or not state.bossContentIDs[contentID] then\n    self.used = true\n    return\nend\n\n-- Target assignment is independent of resync acceptance.\nif contentID == 6052 then\n    acr.setAutoSimTarget(1, eventArgs.entityID)\nelseif eventArgs.isTargetable then\n    acr.setAutoSimTarget(0, eventArgs.entityID)\nend\n\nlocal isDuo = contentID == 7691 or contentID == 6052\nif isDuo then\n    state.duoTargetable[contentID] = eventArgs.isTargetable\nend\n\nlocal now = acr.getAutoSimTime()\nlocal transitionKind = eventArgs.isTargetable and \"up\" or \"down\"\nlocal matchedIndex\nlocal boundary\nlocal bestDistance\n\n-- Match only unconsumed boundaries near their current predicted pull time.\n-- A later matching boundary can recover from an earlier missed event.\nfor index = state.nextBoundary, #state.boundaries do\n    local candidate = state.boundaries[index]\n    local delta = now - candidate.time\n    local bossMatches = (candidate.boss == \"duo\" and isDuo)\n        or (candidate.boss == \"kefka\" and contentID == 7131)\n    if bossMatches and candidate.kind == transitionKind\n        and delta >= -candidate.early and delta <= candidate.late then\n        local distance = math.abs(delta)\n        if not bestDistance or distance < bestDistance then\n            matchedIndex = index\n            boundary = candidate\n            bestDistance = distance\n        end\n    end\nend\n\nif not boundary then\n    self.used = true\n    return\nend\n\n-- Phase 3 ends only after both bosses have become untargetable.\nif boundary.boss == \"duo\" and transitionKind == \"down\"\n    and (state.duoTargetable[7691] or state.duoTargetable[6052]) then\n    self.used = true\n    return\nend\n\nlocal expectedTime = boundary.time\nlocal delta = now - expectedTime\n\nstate.killTime = state.killTime + delta\nacr.setAutoSimKillTime(state.killTime)\n\nfor _, phase in ipairs(state.phases) do\n    local changed = false\n    if phase.startTime >= expectedTime - 0.0001 then\n        phase.startTime = phase.startTime + delta\n        changed = true\n    end\n    if phase.endTime >= expectedTime - 0.0001 then\n        phase.endTime = phase.endTime + delta\n        changed = true\n    end\n    if changed then\n        local phaseID = acr.setAutoSimPhase(\n            phase.id,\n            phase.startTime,\n            phase.endTime,\n            phase.value\n        )\n        if phaseID then\n            phase.id = phaseID\n        end\n    end\nend\n\nfor index = matchedIndex, #state.boundaries do\n    state.boundaries[index].time = state.boundaries[index].time + delta\nend\n\nstate.uncertaintyID = acr.addAutoSimUncertainty(now, 0)\nstate.nextBoundary = matchedIndex + 1\n\nlocal nextBoundary = state.boundaries[state.nextBoundary]\nif nextBoundary then\n    local uncertaintyTime = nextBoundary.time - nextBoundary.lead\n    if uncertaintyTime <= now then\n        uncertaintyTime = now + 0.001\n    end\n    state.uncertaintyID = acr.addAutoSimUncertainty(\n        uncertaintyTime,\n        nextBoundary.uncertainty\n    )\nend\n\nself.used = true",
							name = "Track Boss State and Resync",
							uuid = "930dcd81-dbfe-a5fd-8eb3-b45b4d3f9820",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				displayPath = "AutoSim v3",
				enabled = false,
				eventType = 26,
				loop = true,
				mechanicTime = 15.261765625,
				name = "[AutoSim] Targetability and Resync",
				timeRange = true,
				timelineIndex = 1,
				timerEndOffset = 1200,
				timerStartOffset = -16,
				uuid = "54bc2e06-2677-718f-a2e4-2ea12d1de412",
				version = 2,
			},
			inheritedIndex = 12,
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "AutoSim v4",
				uuid = "a236e8e0-de55-d4ab-aaf7-f43a041c6929",
			},
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
							actionLua = "local acr = TensorCore.API.TensorACR\n\nacr.setAutoSimKillTime(1102.669)\n--acr.setAutoSimUnexpectedMovementPct(0)\n--acr.setAutoSimUnexpectedMeleeDowntimePct(0)\nacr.clearAutoSimPhases(\"FullDowntime\")\nacr.clearAutoSimPhases(\"CasterDowntime\")\nacr.clearAutoSimPhases(\"MeleeDowntime\")\nacr.clearAutoSimPhases(\"RaidBuff\")\nacr.clearAutoSimPhases(\"BossModifier\")\nacr.clearAutoSimUncertainty()\nacr.clearAutoSimPhases(\"Stun\")\nacr.clearAutoSimPhases(\"SelfCircle5Yd\")\nacr.clearAutoSimPhases(\"SelfCircle8Yd\")\nacr.clearAutoSimPhases(\"Cone8Yd\")\nacr.clearAutoSimPhases(\"Line10Yd\")\nacr.clearAutoSimPhases(\"Line15Yd\")\nacr.clearAutoSimPhases(\"TargetCircle5YdRange3Yd\")\nacr.clearAutoSimPhases(\"TargetCircle5YdRange5Yd\")\nacr.clearAutoSimPhases(\"TargetCircle5YdRange20Yd\")\nacr.clearAutoSimPhases(\"TargetCircle5YdRange25Yd\")\n\nlocal state = {\n    killTime = 1102.669,\n    nextBoundary = 1,\n    phases = {},\n    boundaries = {\n        { kind = \"down\", time = 197.52, uncertainty = 0, lead = 0, boss = \"kefka\", early = 10, late = 10 },\n        { kind = \"up\", time = 207.88, uncertainty = 0, lead = 0, boss = \"kefka\", early = 10, late = 10 },\n        { kind = \"down\", time = 381.481, uncertainty = 10, lead = 10, boss = \"kefka\", early = 10, late = 10 },\n        { kind = \"up\", time = 427.46, uncertainty = 0, lead = 0, boss = \"duo\", early = 10, late = 10 },\n        { kind = \"down\", time = 720.490, uncertainty = 10, lead = 30.490, boss = \"duo\", early = 30.49, late = 10 },\n        { kind = \"up\", time = 724.930, uncertainty = 10, lead = 10, boss = \"kefka\", early = 10, late = 10 },\n        { kind = \"down\", time = 856.953, uncertainty = 10, lead = 10, boss = \"kefka\", early = 10, late = 10 },\n        { kind = \"up\", time = 887.943, uncertainty = 10, lead = 10, boss = \"kefka\", early = 10, late = 10 },\n    },\n    bossContentIDs = {\n        [7131] = true, -- Kefka\n        [7691] = true, -- Chaos\n        [6052] = true, -- Exdeath\n    },\n    duoTargetable = { [7691] = true, [6052] = true },\n}\n\nlocal phaseSpecs = {\n    Stun = {\n        { startTime = 174.37, endTime = 180 },\n        { startTime = 387.876, endTime = 420 },\n    },\n    SelfCircle5Yd = {\n        { startTime = 462.395, endTime = 544.89, value = 2 },\n    },\n    SelfCircle8Yd = {\n        { startTime = 462.395, endTime = 544.89, value = 2 },\n    },\n    Cone8Yd = {\n        { startTime = 427.46, endTime = 430.62, value = 2 },\n        { startTime = 462.395, endTime = 544.89, value = 2 },\n    },\n    Line10Yd = {\n        { startTime = 427.46, endTime = 430.62, value = 2 },\n        { startTime = 462.395, endTime = 544.89, value = 2 },\n    },\n    Line15Yd = { -- same timings as Line10Yd\n        { startTime = 427.46, endTime = 430.62, value = 2 },\n        { startTime = 462.395, endTime = 544.89, value = 2 },\n    },\n    TargetCircle5YdRange3Yd = { -- same timings as SelfCircle5Yd\n        { startTime = 462.395, endTime = 544.89, value = 2 },\n    },\n    TargetCircle5YdRange5Yd = { -- same timings as SelfCircle5Yd\n        { startTime = 462.395, endTime = 544.89, value = 2 },\n    },\n    TargetCircle5YdRange20Yd = { -- same timings as SelfCircle5Yd\n        { startTime = 462.395, endTime = 544.89, value = 2 },\n    },\n    TargetCircle5YdRange25Yd = { -- same timings as SelfCircle5Yd\n        { startTime = 462.395, endTime = 544.89, value = 2 },\n    },\n    FullDowntime = {\n    { startTime = 197.52, endTime = 207.88 },\n    { startTime = 381.481, endTime = 427.46 },\n    { startTime = 720.490, endTime = 724.930 },\n    { startTime = 856.953, endTime = 887.943 },\n    },\n    RaidBuff = {\n    { startTime = 1.560, endTime = 21.115, value = 1.1025 },\n    { startTime = 122.595, endTime = 142.506, value = 1.1025 },\n    { startTime = 243.152, endTime = 262.214, value = 1.1025 },\n    { startTime = 363.497, endTime = 382.736, value = 1.1025 },\n    { startTime = 484.703, endTime = 502.520, value = 1.1025 },\n    { startTime = 604.734, endTime = 623.706, value = 1.1025 },\n    { startTime = 725.768, endTime = 745.411, value = 1.1025 },\n    { startTime = 845.888, endTime = 865.798, value = 1.1025 },\n    { startTime = 968.340, endTime = 987.002, value = 1.1025 },\n    { startTime = 1088.214, endTime = 1102.669, value = 1.1025 },\n    },\n}\n\nfor phaseType, specs in pairs(phaseSpecs) do\n    for _, spec in ipairs(specs) do\n        local value = spec.value or 1\n        local phaseID = acr.addAutoSimPhase(\n            phaseType,\n            spec.startTime,\n            spec.endTime,\n            value,\n            spec.targetSlot or 0\n        )\n        if phaseID then\n            state.phases[#state.phases + 1] = {\n                id = phaseID,\n                phaseType = phaseType,\n                startTime = spec.startTime,\n                endTime = spec.endTime,\n                value = value,\n            }\n        end\n    end\nend\n\n-- Potion guidance via BossModifier phases.\n-- Pot (846) cooldown is 270s: ~122 -> ~427 -> ~725 -> ~1073 fits.\n-- Phases go into state.phases so Targetability and Resync shifts them.\nlocal p3Start = state.boundaries[4].time\nlocal p3End = state.boundaries[5].time\nlocal p4Start = state.boundaries[6].time\nlocal potWindows = {\n    { startTime = 122.595, endTime = 152.595, value = 1.3 }, -- P1 2-min, raid buffs at 122.6\n    { startTime = p3Start + 0.1, endTime = p3Start + 30.1, value = 1.3 }, -- P3 start, no raid buffs\n    -- Late P3 until the 1 HP lock: a pot after ~455 is still on cooldown at P4 start (725),\n    -- so make the 604.7 raid buff window worth less than the P4 window.\n    { startTime = 600, endTime = p3End, value = 0.65 }, -- Late P3: keep pot/burst for P4\n    { startTime = p4Start + 0.1, endTime = p4Start + 30.1, value = 1.3 }, -- P4 start, raid buffs at 725.8\n    { startTime = state.killTime - 30, endTime = state.killTime, value = 1.3 }, -- Final 30s, raid buffs at 1088.2\n}\n\nfor _, window in ipairs(potWindows) do\n    local phaseID = acr.addAutoSimPhase(\n        \"BossModifier\",\n        window.startTime,\n        window.endTime,\n        window.value\n    )\n    if phaseID then\n        state.phases[#state.phases + 1] = {\n            id = phaseID,\n            phaseType = \"BossModifier\",\n            startTime = window.startTime,\n            endTime = window.endTime,\n            value = window.value,\n        }\n    end\nend\n\n-- Called by the P2/P3 zero-damage locks before they add their phase,\n-- because BossModifier phases cannot overlap.\nstate.trimBossModifiers = function(fromTime, toTime)\n    for index = #state.phases, 1, -1 do\n        local phase = state.phases[index]\n        if phase.phaseType == \"BossModifier\"\n            and phase.startTime < toTime and phase.endTime > fromTime then\n            local phaseID\n            if phase.startTime < fromTime then\n                phase.endTime = fromTime\n                phaseID = acr.setAutoSimPhase(\n                    phase.id,\n                    phase.startTime,\n                    phase.endTime,\n                    phase.value\n                )\n            else\n                acr.removeAutoSimPhase(phase.id)\n            end\n            if phaseID then\n                phase.id = phaseID\n            else\n                table.remove(state.phases, index)\n            end\n        end\n    end\nend\n\nstate.uncertaintyID = acr.addAutoSimUncertainty(188.311, 10)\n-- The kill time is uncertain by +/-5s from 10s before it; Resync moves this with the kill time.\nstate.killUncertaintyID = acr.addAutoSimUncertainty(state.killTime - 10, 5)\ndata.ljAutoSimDmu = state\nself.used = true",
							name = "Initialize AutoSim Schedule",
							uuid = "04a20e6e-bde9-f205-9fef-84e8f6a1a5d0",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				displayPath = "AutoSim v4",
				enabled = false,
				eventType = 16,
				mechanicTime = 15.261765625,
				name = "[AutoSim] Initialize DMU",
				timeRange = true,
				timelineIndex = 1,
				timerStartOffset = -16,
				uuid = "c73a64e3-48d1-91a7-84df-0f13257ee04e",
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
							actionLua = "local acr = TensorCore.API.TensorACR\nlocal state = data.ljAutoSimDmu\nlocal contentID = eventArgs.entityContentID\n\nif not state or not state.bossContentIDs[contentID] then\n    self.used = true\n    return\nend\n\n-- End phase 2's zero-damage period on the exact filtered Kefka.\nlocal damageLock = state.phaseTwoDamageLock\nif damageLock and not damageLock.closed\n    and eventArgs.entityID == damageLock.entityID\n    and not eventArgs.isTargetable then\n    local endedAt = acr.getAutoSimTime()\n    if endedAt > damageLock.startTime then\n        acr.setAutoSimPhase(damageLock.id, damageLock.startTime, endedAt, 0)\n    else\n        acr.removeAutoSimPhase(damageLock.id)\n    end\n    damageLock.closed = true\nend\n\nlocal phaseThreeLock = state.phaseThreeDamageLock\n\nlocal isDuo = contentID == 7691 or contentID == 6052\nif isDuo then\n    state.duoTargetable[contentID] = eventArgs.isTargetable\nend\n\nlocal now = acr.getAutoSimTime()\nlocal transitionKind = eventArgs.isTargetable and \"up\" or \"down\"\nlocal matchedIndex\nlocal boundary\nlocal bestDistance\n\n-- Match only unconsumed boundaries near their current predicted pull time.\n-- A later matching boundary can recover from an earlier missed event.\nfor index = state.nextBoundary, #state.boundaries do\n    local candidate = state.boundaries[index]\n    local delta = now - candidate.time\n    local bossMatches = (candidate.boss == \"duo\" and isDuo)\n        or (candidate.boss == \"kefka\" and contentID == 7131)\n    if bossMatches and candidate.kind == transitionKind\n        and delta >= -candidate.early and delta <= candidate.late then\n        local distance = math.abs(delta)\n        if not bestDistance or distance < bestDistance then\n            matchedIndex = index\n            boundary = candidate\n            bestDistance = distance\n        end\n    end\nend\n\nif not boundary then\n    self.used = true\n    return\nend\n\n-- Start the P4 transition only after both duo bosses are untargetable.\nif boundary.boss == \"duo\" and transitionKind == \"down\"\n    and (state.duoTargetable[7691] or state.duoTargetable[6052]) then\n    self.used = true\n    return\nend\n\nlocal expectedTime = boundary.time\nlocal delta = now - expectedTime\n\nstate.killTime = state.killTime + delta\nacr.setAutoSimKillTime(state.killTime)\nif state.killUncertaintyID then\n    acr.setAutoSimUncertainty(state.killUncertaintyID, state.killTime - 10, 5)\nend\n\n-- Damage stops being relevant once both duo bosses are untargetable.\n-- FullDowntime covers the remaining transition into Kefka.\n-- Shrinking closes before phases shift; extending closes after, so the lock\n-- never overlaps a BossModifier phase that has not moved yet.\nlocal function closePhaseThreeLock()\n    if not (phaseThreeLock and not phaseThreeLock.closed and matchedIndex == 5) then\n        return\n    end\n    if now > phaseThreeLock.startTime then\n        acr.setAutoSimPhase(\n            phaseThreeLock.id,\n            phaseThreeLock.startTime,\n            now,\n            0\n        )\n    else\n        acr.removeAutoSimPhase(phaseThreeLock.id)\n    end\n    phaseThreeLock.endTime = now\n    phaseThreeLock.closed = true\nend\n\nlocal lockShrinks = phaseThreeLock and now <= phaseThreeLock.endTime\nif lockShrinks then\n    closePhaseThreeLock()\nend\n\n-- At boundary 5 this moves FullDowntime's start to the exact duo-down time.\n-- At boundary 6 it moves FullDowntime's end to Kefka's exact targetable time.\n-- Move later phases first when shifting right and earlier phases first when\n-- shifting left, so a phase never overlaps a same-type phase that has not moved yet.\nlocal order = {}\nfor index = 1, #state.phases do\n    order[index] = index\nend\ntable.sort(order, function(a, b)\n    if delta > 0 then\n        return state.phases[a].startTime > state.phases[b].startTime\n    end\n    return state.phases[a].startTime < state.phases[b].startTime\nend)\n\nlocal removed = {}\nfor _, index in ipairs(order) do\n    local phase = state.phases[index]\n    local changed = false\n    if phase.startTime >= expectedTime - 0.0001 then\n        phase.startTime = phase.startTime + delta\n        changed = true\n    end\n    if phase.endTime >= expectedTime - 0.0001 then\n        phase.endTime = phase.endTime + delta\n        changed = true\n    end\n    if changed then\n        if phase.endTime <= phase.startTime then\n            -- An early boundary left no time for a phase that ends at it.\n            acr.removeAutoSimPhase(phase.id)\n            removed[index] = true\n        else\n            local phaseID = acr.setAutoSimPhase(\n                phase.id,\n                phase.startTime,\n                phase.endTime,\n                phase.value\n            )\n            if phaseID then\n                phase.id = phaseID\n            else\n                removed[index] = true\n            end\n        end\n    end\nend\nfor index = #state.phases, 1, -1 do\n    if removed[index] then\n        table.remove(state.phases, index)\n    end\nend\n\nif not lockShrinks then\n    closePhaseThreeLock()\nend\n\nfor index = matchedIndex, #state.boundaries do\n    state.boundaries[index].time = state.boundaries[index].time + delta\nend\n\nstate.uncertaintyID = acr.addAutoSimUncertainty(now, 0)\nstate.nextBoundary = matchedIndex + 1\n\nlocal nextBoundary = state.boundaries[state.nextBoundary]\nif nextBoundary then\n    local uncertaintyTime = nextBoundary.time - nextBoundary.lead\n    if uncertaintyTime <= now then\n        uncertaintyTime = now + 0.001\n    end\n    state.uncertaintyID = acr.addAutoSimUncertainty(\n        uncertaintyTime,\n        nextBoundary.uncertainty\n    )\nend\n\nself.used = true",
							name = "Track Boss State and Resync",
							uuid = "930dcd81-dbfe-a5fd-8eb3-b45b4d3f9820",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				displayPath = "AutoSim v4",
				enabled = false,
				eventType = 26,
				loop = true,
				mechanicTime = 15.261765625,
				name = "[AutoSim] Targetability and Resync",
				timeRange = true,
				timelineIndex = 1,
				timerEndOffset = 1200,
				timerStartOffset = -16,
				uuid = "45c7c6bc-594b-ae72-8380-67c16a076277",
				version = 2,
			},
			inheritedIndex = 15,
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "AutoSim v5",
				uuid = "668c4224-4457-42de-a001-f73611cc7cf5",
			},
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
							actionLua = "local acr = TensorCore.API.TensorACR\n\nacr.setAutoSimKillTime(1106.098)\n--acr.setAutoSimUnexpectedMovementPct(0)\n--acr.setAutoSimUnexpectedMeleeDowntimePct(0)\nacr.clearAutoSimPhases(\"FullDowntime\")\nacr.clearAutoSimPhases(\"CasterDowntime\")\nacr.clearAutoSimPhases(\"MeleeDowntime\")\nacr.clearAutoSimPhases(\"RaidBuff\")\nacr.clearAutoSimPhases(\"BossModifier\")\nacr.clearAutoSimUncertainty()\nacr.clearAutoSimPhases(\"Stun\")\nacr.clearAutoSimPhases(\"SelfCircle5Yd\")\nacr.clearAutoSimPhases(\"SelfCircle8Yd\")\nacr.clearAutoSimPhases(\"Cone8Yd\")\nacr.clearAutoSimPhases(\"Line10Yd\")\nacr.clearAutoSimPhases(\"Line15Yd\")\nacr.clearAutoSimPhases(\"TargetCircle5YdRange3Yd\")\nacr.clearAutoSimPhases(\"TargetCircle5YdRange5Yd\")\nacr.clearAutoSimPhases(\"TargetCircle5YdRange20Yd\")\nacr.clearAutoSimPhases(\"TargetCircle5YdRange25Yd\")\n\nlocal state = {\n    killTime = 1106.098,\n    nextBoundary = 1,\n    phases = {},\n    boundaries = {\n        { kind = \"down\", time = 197.52, uncertainty = 0, lead = 0, boss = \"kefka\", early = 10, late = 10 },\n        { kind = \"up\", time = 207.88, uncertainty = 0, lead = 0, boss = \"kefka\", early = 10, late = 10 },\n        { kind = \"down\", time = 381.481, uncertainty = 10, lead = 10, boss = \"kefka\", early = 10, late = 10 },\n        { kind = \"up\", time = 427.46, uncertainty = 0, lead = 0, boss = \"duo\", early = 10, late = 10 },\n        { kind = \"down\", time = 720.490, uncertainty = 10, lead = 30.490, boss = \"duo\", early = 30.49, late = 10 },\n        { kind = \"up\", time = 724.930, uncertainty = 10, lead = 10, boss = \"kefka\", early = 10, late = 10 },\n        { kind = \"down\", time = 856.953, uncertainty = 10, lead = 10, boss = \"kefka\", early = 10, late = 10 },\n        { kind = \"up\", time = 887.943, uncertainty = 10, lead = 10, boss = \"kefka\", early = 10, late = 10 },\n    },\n    bossContentIDs = {\n        [7131] = true, -- Kefka\n        [7691] = true, -- Chaos\n        [6052] = true, -- Exdeath\n    },\n    duoTargetable = { [7691] = true, [6052] = true },\n}\n\nlocal phaseSpecs = {\n    Stun = {\n        { startTime = 174.37, endTime = 180 },\n        { startTime = 387.876, endTime = 420 },\n    },\n    -- P3 duo target counts, tuned from 22 logged pulls (times are P3 start 427.46 + offset):\n    -- +85 to +92 Vacuum Wave knockback and limit cut: no two-boss hits.\n    -- +92 to +107 bosses 12-15y apart: self circles rarely reach both (6/21), other shapes do.\n    -- P3 start: bosses 16y apart; lines, cones and target circles hit both, self circles do not.\n    SelfCircle5Yd = {\n        { startTime = 462.395, endTime = 512.46, value = 2 }, -- P3 +35 to +85\n        { startTime = 534.46, endTime = 544.89, value = 2 }, -- P3 +107 to window end\n    },\n    SelfCircle8Yd = {\n        { startTime = 462.395, endTime = 512.46, value = 2 }, -- P3 +35 to +85\n        { startTime = 534.46, endTime = 544.89, value = 2 }, -- P3 +107 to window end\n    },\n    Cone8Yd = {\n        { startTime = 427.46, endTime = 430.62, value = 2 }, -- P3 start\n        { startTime = 462.395, endTime = 512.46, value = 2 }, -- P3 +35 to +85\n        { startTime = 519.46, endTime = 544.89, value = 2 }, -- P3 +92 to window end\n    },\n    Line10Yd = {\n        { startTime = 427.46, endTime = 430.62, value = 2 }, -- P3 start\n        { startTime = 462.395, endTime = 512.46, value = 2 }, -- P3 +35 to +85\n        { startTime = 519.46, endTime = 544.89, value = 2 }, -- P3 +92 to window end\n    },\n    Line15Yd = {\n        { startTime = 427.46, endTime = 430.62, value = 2 }, -- P3 start\n        { startTime = 462.395, endTime = 512.46, value = 2 }, -- P3 +35 to +85\n        { startTime = 519.46, endTime = 544.89, value = 2 }, -- P3 +92 to window end\n    },\n    TargetCircle5YdRange3Yd = {\n        { startTime = 427.46, endTime = 430.62, value = 2 }, -- P3 start\n        { startTime = 462.395, endTime = 512.46, value = 2 }, -- P3 +35 to +85\n        { startTime = 519.46, endTime = 544.89, value = 2 }, -- P3 +92 to window end\n    },\n    TargetCircle5YdRange5Yd = {\n        { startTime = 427.46, endTime = 430.62, value = 2 }, -- P3 start\n        { startTime = 462.395, endTime = 512.46, value = 2 }, -- P3 +35 to +85\n        { startTime = 519.46, endTime = 544.89, value = 2 }, -- P3 +92 to window end\n    },\n    TargetCircle5YdRange20Yd = {\n        { startTime = 427.46, endTime = 430.62, value = 2 }, -- P3 start\n        { startTime = 462.395, endTime = 512.46, value = 2 }, -- P3 +35 to +85\n        { startTime = 519.46, endTime = 544.89, value = 2 }, -- P3 +92 to window end\n    },\n    TargetCircle5YdRange25Yd = {\n        { startTime = 427.46, endTime = 430.62, value = 2 }, -- P3 start\n        { startTime = 462.395, endTime = 512.46, value = 2 }, -- P3 +35 to +85\n        { startTime = 519.46, endTime = 544.89, value = 2 }, -- P3 +92 to window end\n    },\n    MeleeDowntime = {\n        -- P2 Trine run-out to Wings of Destruction: 18 logged pulls are out of melee\n        -- from P2 end -13.5s to -9.0s (distance > 6-8y, matching the GCD gap).\n        { startTime = 367.981, endTime = 372.481 },\n    },\n    FullDowntime = {\n    { startTime = 197.52, endTime = 207.88 },\n    { startTime = 381.481, endTime = 427.46 },\n    { startTime = 720.490, endTime = 724.930 },\n    { startTime = 856.953, endTime = 887.943 },\n    },\n    RaidBuff = {\n    { startTime = 1.560, endTime = 21.115, value = 1.1025 },\n    { startTime = 122.595, endTime = 142.506, value = 1.1025 },\n    { startTime = 243.152, endTime = 262.214, value = 1.1025 },\n    { startTime = 363.497, endTime = 382.736, value = 1.1025 },\n    { startTime = 484.703, endTime = 502.520, value = 1.1025 },\n    { startTime = 604.734, endTime = 623.706, value = 1.1025 },\n    { startTime = 725.768, endTime = 745.411, value = 1.1025 },\n    { startTime = 845.888, endTime = 865.798, value = 1.1025 },\n    { startTime = 968.340, endTime = 987.002, value = 1.1025 },\n    { startTime = 1088.214, endTime = 1106.098, value = 1.1025 },\n    },\n}\n\nfor phaseType, specs in pairs(phaseSpecs) do\n    for _, spec in ipairs(specs) do\n        local value = spec.value or 1\n        local phaseID = acr.addAutoSimPhase(\n            phaseType,\n            spec.startTime,\n            spec.endTime,\n            value,\n            spec.targetSlot or 0\n        )\n        if phaseID then\n            state.phases[#state.phases + 1] = {\n                id = phaseID,\n                phaseType = phaseType,\n                startTime = spec.startTime,\n                endTime = spec.endTime,\n                value = value,\n            }\n        end\n    end\nend\n\n-- Potion guidance via BossModifier phases.\n-- Pot (846) cooldown is 270s: ~122 -> ~427 -> ~725 -> ~1073 fits.\n-- Phases go into state.phases so Targetability and Resync shifts them.\nlocal p3Start = state.boundaries[4].time\nlocal p3End = state.boundaries[5].time\nlocal p4Start = state.boundaries[6].time\nlocal potWindows = {\n    { startTime = 122.595, endTime = 152.595, value = 1.3 }, -- P1 2-min, raid buffs at 122.6\n    { startTime = p3Start + 0.1, endTime = p3Start + 30.1, value = 1.3 }, -- P3 start, no raid buffs\n    -- Late P3 until the 1 HP lock: a pot after ~455 is still on cooldown at P4 start (725),\n    -- so make the 604.7 raid buff window worth less than the P4 window.\n    { startTime = 600, endTime = p3End, value = 0.65 }, -- Late P3: keep pot/burst for P4\n    { startTime = p4Start + 0.1, endTime = p4Start + 30.1, value = 1.3 }, -- P4 start, raid buffs at 725.8\n    { startTime = state.killTime - 30, endTime = state.killTime, value = 1.3 }, -- Final 30s, raid buffs at 1088.2\n}\n\nfor _, window in ipairs(potWindows) do\n    local phaseID = acr.addAutoSimPhase(\n        \"BossModifier\",\n        window.startTime,\n        window.endTime,\n        window.value\n    )\n    if phaseID then\n        state.phases[#state.phases + 1] = {\n            id = phaseID,\n            phaseType = \"BossModifier\",\n            startTime = window.startTime,\n            endTime = window.endTime,\n            value = window.value,\n        }\n    end\nend\n\n-- Called by the P2/P3 zero-damage locks before they add their phase,\n-- because BossModifier phases cannot overlap.\nstate.trimBossModifiers = function(fromTime, toTime)\n    for index = #state.phases, 1, -1 do\n        local phase = state.phases[index]\n        if phase.phaseType == \"BossModifier\"\n            and phase.startTime < toTime and phase.endTime > fromTime then\n            local phaseID\n            if phase.startTime < fromTime then\n                phase.endTime = fromTime\n                phaseID = acr.setAutoSimPhase(\n                    phase.id,\n                    phase.startTime,\n                    phase.endTime,\n                    phase.value\n                )\n            else\n                acr.removeAutoSimPhase(phase.id)\n            end\n            if phaseID then\n                phase.id = phaseID\n            else\n                table.remove(state.phases, index)\n            end\n        end\n    end\nend\n\nstate.uncertaintyID = acr.addAutoSimUncertainty(188.311, 10)\n-- 20 logged kills land at P5 +214.2 to +222.1 (midpoint +218.2 = this kill time); enrage deaths\n-- at +224.6. +/-5s covers +213.2 to +223.2, starting 10s before the kill; Resync moves it.\nstate.killUncertaintyID = acr.addAutoSimUncertainty(state.killTime - 10, 5)\ndata.ljAutoSimDmu = state\nself.used = true",
							name = "Initialize AutoSim Schedule",
							uuid = "848283b6-ed8b-4bcc-8d1d-6c0ff83c4722",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				displayPath = "AutoSim v5",
				eventType = 16,
				mechanicTime = 15.261765625,
				name = "[AutoSim] Initialize DMU",
				timeRange = true,
				timelineIndex = 1,
				timerStartOffset = -16,
				uuid = "2597ff77-465c-46d7-904a-fee36a34d06b",
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
							actionLua = "local acr = TensorCore.API.TensorACR\nlocal state = data.ljAutoSimDmu\nlocal contentID = eventArgs.entityContentID\n\nif not state or not state.bossContentIDs[contentID] then\n    self.used = true\n    return\nend\n\n-- End phase 2's zero-damage period on the exact filtered Kefka.\nlocal damageLock = state.phaseTwoDamageLock\nif damageLock and not damageLock.closed\n    and eventArgs.entityID == damageLock.entityID\n    and not eventArgs.isTargetable then\n    local endedAt = acr.getAutoSimTime()\n    if endedAt > damageLock.startTime then\n        acr.setAutoSimPhase(damageLock.id, damageLock.startTime, endedAt, 0)\n    else\n        acr.removeAutoSimPhase(damageLock.id)\n    end\n    damageLock.closed = true\nend\n\nlocal phaseThreeLock = state.phaseThreeDamageLock\n\nlocal isDuo = contentID == 7691 or contentID == 6052\nif isDuo then\n    state.duoTargetable[contentID] = eventArgs.isTargetable\nend\n\nlocal now = acr.getAutoSimTime()\nlocal transitionKind = eventArgs.isTargetable and \"up\" or \"down\"\nlocal matchedIndex\nlocal boundary\nlocal bestDistance\n\n-- Match only unconsumed boundaries near their current predicted pull time.\n-- A later matching boundary can recover from an earlier missed event.\nfor index = state.nextBoundary, #state.boundaries do\n    local candidate = state.boundaries[index]\n    local delta = now - candidate.time\n    local bossMatches = (candidate.boss == \"duo\" and isDuo)\n        or (candidate.boss == \"kefka\" and contentID == 7131)\n    if bossMatches and candidate.kind == transitionKind\n        and delta >= -candidate.early and delta <= candidate.late then\n        local distance = math.abs(delta)\n        if not bestDistance or distance < bestDistance then\n            matchedIndex = index\n            boundary = candidate\n            bestDistance = distance\n        end\n    end\nend\n\nif not boundary then\n    self.used = true\n    return\nend\n\n-- Start the P4 transition only after both duo bosses are untargetable.\nif boundary.boss == \"duo\" and transitionKind == \"down\"\n    and (state.duoTargetable[7691] or state.duoTargetable[6052]) then\n    self.used = true\n    return\nend\n\nlocal expectedTime = boundary.time\nlocal delta = now - expectedTime\n\nstate.killTime = state.killTime + delta\nacr.setAutoSimKillTime(state.killTime)\nif state.killUncertaintyID then\n    acr.setAutoSimUncertainty(state.killUncertaintyID, state.killTime - 10, 5)\nend\n\n-- Damage stops being relevant once both duo bosses are untargetable.\n-- FullDowntime covers the remaining transition into Kefka.\n-- Shrinking closes before phases shift; extending closes after, so the lock\n-- never overlaps a BossModifier phase that has not moved yet.\nlocal function closePhaseThreeLock()\n    if not (phaseThreeLock and not phaseThreeLock.closed and matchedIndex == 5) then\n        return\n    end\n    if now > phaseThreeLock.startTime then\n        acr.setAutoSimPhase(\n            phaseThreeLock.id,\n            phaseThreeLock.startTime,\n            now,\n            0\n        )\n    else\n        acr.removeAutoSimPhase(phaseThreeLock.id)\n    end\n    phaseThreeLock.endTime = now\n    phaseThreeLock.closed = true\nend\n\nlocal lockShrinks = phaseThreeLock and now <= phaseThreeLock.endTime\nif lockShrinks then\n    closePhaseThreeLock()\nend\n\n-- At boundary 5 this moves FullDowntime's start to the exact duo-down time.\n-- At boundary 6 it moves FullDowntime's end to Kefka's exact targetable time.\n-- Move later phases first when shifting right and earlier phases first when\n-- shifting left, so a phase never overlaps a same-type phase that has not moved yet.\nlocal order = {}\nfor index = 1, #state.phases do\n    order[index] = index\nend\ntable.sort(order, function(a, b)\n    if delta > 0 then\n        return state.phases[a].startTime > state.phases[b].startTime\n    end\n    return state.phases[a].startTime < state.phases[b].startTime\nend)\n\nlocal removed = {}\nfor _, index in ipairs(order) do\n    local phase = state.phases[index]\n    local changed = false\n    if phase.startTime >= expectedTime - 0.0001 then\n        phase.startTime = phase.startTime + delta\n        changed = true\n    end\n    if phase.endTime >= expectedTime - 0.0001 then\n        phase.endTime = phase.endTime + delta\n        changed = true\n    end\n    if changed then\n        if phase.endTime <= phase.startTime then\n            -- An early boundary left no time for a phase that ends at it.\n            acr.removeAutoSimPhase(phase.id)\n            removed[index] = true\n        else\n            local phaseID = acr.setAutoSimPhase(\n                phase.id,\n                phase.startTime,\n                phase.endTime,\n                phase.value\n            )\n            if phaseID then\n                phase.id = phaseID\n            else\n                removed[index] = true\n            end\n        end\n    end\nend\nfor index = #state.phases, 1, -1 do\n    if removed[index] then\n        table.remove(state.phases, index)\n    end\nend\n\nif not lockShrinks then\n    closePhaseThreeLock()\nend\n\nfor index = matchedIndex, #state.boundaries do\n    state.boundaries[index].time = state.boundaries[index].time + delta\nend\n\nstate.uncertaintyID = acr.addAutoSimUncertainty(now, 0)\nstate.nextBoundary = matchedIndex + 1\n\nlocal nextBoundary = state.boundaries[state.nextBoundary]\nif nextBoundary then\n    local uncertaintyTime = nextBoundary.time - nextBoundary.lead\n    if uncertaintyTime <= now then\n        uncertaintyTime = now + 0.001\n    end\n    state.uncertaintyID = acr.addAutoSimUncertainty(\n        uncertaintyTime,\n        nextBoundary.uncertainty\n    )\nend\n\nself.used = true",
							name = "Track Boss State and Resync",
							uuid = "cf195be5-2db0-4163-bbed-0ada1c4fc224",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				displayPath = "AutoSim v5",
				eventType = 26,
				loop = true,
				mechanicTime = 15.261765625,
				name = "[AutoSim] Targetability and Resync",
				timeRange = true,
				timelineIndex = 1,
				timerEndOffset = 1200,
				timerStartOffset = -16,
				uuid = "828fbaf5-ac22-4092-b9e1-149adf1339b5",
				version = 2,
			},
		},
	}, 
	[4] = 
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
							actionLua = "TensorDrift_SlidecastForceHold = true\nself.used = true",
							name = "Force Slidecast",
							uuid = "061aac55-b872-cad8-a0cb-7603f90652f2",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "TensorDrift_SlidecastForceHold = false\nself.used = true",
							name = "End Slide",
							uuid = "646b1d81-86ef-13d1-ae27-094ee6b8c21a",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				mechanicTime = 34.922075823741,
				name = "Force Slidecast",
				throttleTime = 3000,
				timeRange = true,
				timelineIndex = 4,
				timerEndOffset = 2,
				timerStartOffset = -2,
				uuid = "233760ee-6ee4-3c30-9c2d-ea03335545dc",
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
							aType = "Lua",
							actionLua = "ACR_TensorWeeb4_TargetHitRadiusAdjust = 0\nACR_TensorWeeb4_ActionRangeAdjust = 0\nself.used = true",
							name = "Set Target and Action Ranges 0",
							uuid = "04ebcce9-d4d5-84e8-876b-0b8ed65bd6a4",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				mechanicTime = 42.238586763472,
				name = "Target and Action Ranges 0 at 43s",
				timelineIndex = 7,
				timerOffset = 0.76141321659088,
				uuid = "5edcadcb-0488-e610-94b3-7a2692e4912c",
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
							aType = "Lua",
							actionLua = "ACR_TensorWeeb4_TargetHitRadiusAdjust = 3\nACR_TensorWeeb4_ActionRangeAdjust = 3\nself.used = true",
							name = "Set Target and Action Ranges 3",
							uuid = "cc4ef24f-7613-1870-be62-431a21ef24b8",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				mechanicTime = 45.866090329028,
				name = "Target and Action Ranges 3 at 47s",
				timelineIndex = 9,
				timerOffset = 1.133909670972,
				uuid = "1636cccf-b7fd-f14d-a88b-c706959a672a",
				version = 2,
			},
		},
	},
	[10] = 
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
				mechanicTime = 49.498257793546,
				name = "Tengetsu",
				timeRange = true,
				timelineIndex = 10,
				timerOffset = -3,
				timerStartOffset = -3,
				uuid = "2d0ed2bd-0654-8c64-b83b-9ca7f8bc40dc",
				version = 2,
			},
		},
	},
	[11] = 
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
							actionLua = "TensorDrift_SlidecastForceHold = true\nself.used = true",
							name = "Force Slidecast",
							uuid = "b4ce4e7b-9ccc-159a-85db-d9470bbbd9c6",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "TensorDrift_SlidecastForceHold = false\nself.used = true",
							name = "End Slide",
							uuid = "5c70b37f-2d27-f070-aa0b-df767309c7e9",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				mechanicTime = 53.460753490642,
				name = "Force Slidecast",
				throttleTime = 4000,
				timeRange = true,
				timelineIndex = 11,
				timerEndOffset = 10,
				timerStartOffset = 5,
				uuid = "ba67c001-ae0a-d545-873c-d23805700bef",
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
							aType = "Lua",
							actionLua = "TensorDrift_SlidecastForceHold = true\nself.used = true",
							name = "Force Slidecast",
							uuid = "7e2c8dd8-c13a-54d3-96a1-3421d875eb28",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "TensorDrift_SlidecastForceHold = false\nself.used = true",
							name = "End Slide",
							uuid = "41a6a91d-30ac-6dcd-a596-75bcc600da21",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				mechanicTime = 87.304550672705,
				name = "Force Slidecast",
				throttleTime = 4000,
				timeRange = true,
				timelineIndex = 17,
				timerEndOffset = 4,
				timerStartOffset = -1,
				uuid = "7851cc36-6b29-562f-8ff6-19675a8d9588",
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
							aType = "Lua",
							actionLua = "TensorDrift_SlidecastForceHold = true\nself.used = true",
							name = "Force Slidecast",
							uuid = "d91ec060-d66a-4a95-82a3-943b64a483d3",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "TensorDrift_SlidecastForceHold = false\nself.used = true",
							name = "End Slide",
							uuid = "ab5260a1-9a05-6ac6-a3b5-3676a67ec36f",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				mechanicTime = 105.78798877162,
				name = "Force Slidecast",
				throttleTime = 4000,
				timeRange = true,
				timelineIndex = 22,
				timerEndOffset = 4,
				timerStartOffset = -1,
				uuid = "b789a2cf-ceae-3412-ae26-7d53f2387319",
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
							gVarValue = 2,
							uuid = "ea98ec22-d16d-e1ea-a16d-4fa249ce9788",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				mechanicTime = 105.78798877162,
				name = "Toggle KB Cancel",
				timelineIndex = 22,
				uuid = "026d8f55-3bc2-da50-8a7a-83706a25ada5",
				version = 2,
			},
		},
	},
	[25] = 
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
							actionLua = "TensorDrift_SlidecastForceHold = true\nself.used = true",
							name = "Force Slidecast",
							uuid = "7c83e0b7-e3e8-5c35-8eff-66151548a2d6",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "TensorDrift_SlidecastForceHold = false\nself.used = true",
							name = "End Slide",
							uuid = "886a21b3-6a00-d025-a82a-6a601f887427",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				mechanicTime = 118.07975730716,
				name = "Force Slidecast",
				throttleTime = 6500,
				timeRange = true,
				timelineIndex = 25,
				timerEndOffset = 6,
				timerStartOffset = -6,
				uuid = "feb31e52-b21e-f9c6-a3a8-ae13099a5cf9",
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
				mechanicTime = 118.07975730716,
				name = "Tengetsu",
				timeRange = true,
				timelineIndex = 25,
				timerOffset = -3,
				timerStartOffset = -3,
				uuid = "386c35a9-abb4-1a85-bd50-9707cff5b1d9",
				version = 2,
			},
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
				mechanicTime = 167.71168967762,
				name = "Tengetsu",
				timeRange = true,
				timelineIndex = 34,
				timerOffset = -3,
				timerStartOffset = -3,
				uuid = "3dfd20a5-b0c0-8c61-af96-963c6e67be06",
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
									"28b6cfab-05b1-f61f-8ab5-0ffc48bbe030",
									false,
								},
							},
							name = "Force Slidecast",
							uuid = "d4cf8020-d00a-fcaa-a543-4352810f7d92",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "TensorDrift_SlidecastForceHold = false\nself.used = true",
							name = "End Slide",
							uuid = "c9a3f276-a047-5c51-8ca8-69605cad852f",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							buffDuration = 5,
							buffID = 5078,
							category = "Self",
							comparator = 2,
							name = "Self: Confetti Buff",
							uuid = "28b6cfab-05b1-f61f-8ab5-0ffc48bbe030",
							version = 3,
						},
					},
				},
				mechanicTime = 167.71168967762,
				name = "Force Slidecast",
				throttleTime = 3000,
				timeRange = true,
				timelineIndex = 34,
				timerEndOffset = 2,
				timerStartOffset = -2,
				uuid = "c8ffc8fd-a124-9817-b129-8dc53dbc594e",
				version = 2,
			},
		},
	},
	[36] = 
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
							actionLua = "TensorDrift_SlidecastForceHold = true\nself.used = true",
							name = "Force Slidecast",
							uuid = "d4cf8020-d00a-fcaa-a543-4352810f7d92",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "TensorDrift_SlidecastForceHold = false\nself.used = true",
							name = "End Slide",
							uuid = "c9a3f276-a047-5c51-8ca8-69605cad852f",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				mechanicTime = 186.42310109999,
				name = "Force Slidecast",
				throttleTime = 3000,
				timeRange = true,
				timelineIndex = 36,
				timerEndOffset = 2,
				timerStartOffset = -2,
				uuid = "6aa72271-b590-db34-8ebf-326e92bbb681",
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
	[38] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "AutoSim",
				uuid = "272923d7-eae2-b2f4-9641-8978040e6295",
			},
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
							acrOptionType = "Hold Action",
							holdActionDuration = 32,
							holdActionID = 7489,
							uuid = "412872c4-7965-c9ed-80bb-84ee0ea00580",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				displayPath = "AutoSim",
				mechanicTime = 197.52218784626,
				name = "[AutoSim] Hold Higanbana P1 End",
				timelineIndex = 38,
				timerOffset = -30,
				uuid = "967e53f0-838f-4f01-b662-945b2a18564a",
				version = 2,
			},
		},
	},
	[39] = 
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
							gVar = "ACR_TensorWeeb4_Potion",
							gVarValue = 2,
							uuid = "19d9f14f-86f3-e04a-885f-43e533dd083c",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				enabled = false,
				mechanicTime = 207.87965305988,
				name = "Toggle Potion",
				timelineIndex = 39,
				uuid = "78054407-f7f7-4cef-a7e1-f8f475beb08f",
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
							actionLua = "ACR_TensorWeeb4_TargetHitRadiusAdjust = 0\nACR_TensorWeeb4_ActionRangeAdjust = 0\nself.used = true",
							conditions = 
							{
								
								{
									"77f29d50-e889-bfa0-bedb-46d3da20a60f",
									false,
								},
							},
							name = "Set Target and Action Ranges 0",
							uuid = "04ebcce9-d4d5-84e8-876b-0b8ed65bd6a4",
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
							conditionLua = "return data.ljCircle == true",
							dequeueIfLuaFalse = true,
							uuid = "77f29d50-e889-bfa0-bedb-46d3da20a60f",
							version = 3,
						},
					},
				},
				enabled = false,
				mechanicTime = 235.34477128997,
				name = "Target and Action Ranges 0",
				timelineIndex = 41,
				timerOffset = 1,
				uuid = "132d8e54-50ab-f563-bf65-f7a59db59b12",
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
							actionLua = "data.ljCircle = false\nself.used = true",
							conditions = 
							{
								
								{
									"aac966b5-395c-51f9-822f-9a384ed48b27",
									true,
								},
								
								{
									"e8a7abaf-4a01-000a-8a64-a7bc2c035a04",
									true,
								},
							},
							gVar = "ACR_TensorMagnum3_CD",
							name = "Chat: Stack",
							uuid = "1399195c-dcad-5c02-adc4-204a53418bb8",
							version = 2.1,
						},
						inheritedIndex = 1,
					},
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "data.ljCircle = true\nself.used = true",
							conditions = 
							{
								
								{
									"aac966b5-395c-51f9-822f-9a384ed48b27",
									true,
								},
								
								{
									"5cee7cb4-357d-c3ff-8fd8-5d164ff13ad0",
									true,
								},
							},
							gVar = "ACR_TensorMagnum3_CD",
							name = "Chat: Circle",
							uuid = "4575cd23-f8bc-5430-9bef-2310b2c913ff",
							version = 2.1,
						},
						inheritedIndex = 2,
					},
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "data.ljCircle = false\nself.used = true",
							conditions = 
							{
								
								{
									"aac966b5-395c-51f9-822f-9a384ed48b27",
									true,
								},
								
								{
									"d868d7ed-a439-e369-8e64-dbd0cda2872c",
									true,
								},
							},
							gVar = "ACR_TensorMagnum3_CD",
							name = "Chat: Cone",
							uuid = "a5737ad2-4f50-94a9-87e5-3924821fcafd",
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
							category = "Self",
							conditionType = 9,
							name = "Event: Self",
							partyTargetType = "Event Entity",
							uuid = "aac966b5-395c-51f9-822f-9a384ed48b27",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Event",
							eventArgType = 2,
							eventMarkerID = 715,
							name = "Marker: Stack",
							uuid = "e8a7abaf-4a01-000a-8a64-a7bc2c035a04",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Event",
							eventArgType = 2,
							eventMarkerID = 716,
							name = "Marker: Circle",
							uuid = "5cee7cb4-357d-c3ff-8fd8-5d164ff13ad0",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Event",
							eventArgType = 2,
							eventMarkerID = 717,
							name = "Marker: Cone",
							uuid = "d868d7ed-a439-e369-8e64-dbd0cda2872c",
							version = 3,
						},
					},
				},
				eventType = 4,
				loop = true,
				mechanicTime = 235.34477128997,
				name = "[TTS] Marker",
				timeRange = true,
				timelineIndex = 41,
				timerEndOffset = 90,
				timerStartOffset = -5,
				uuid = "1d0cd10a-a188-d129-b8ba-3ad5db14e9d7",
				version = 2,
			},
			inheritedIndex = 2,
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
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "ACR_TensorWeeb4_TargetHitRadiusAdjust = 0\nACR_TensorWeeb4_ActionRangeAdjust = 0\nself.used = true",
							conditions = 
							{
								
								{
									"77f29d50-e889-bfa0-bedb-46d3da20a60f",
									false,
								},
							},
							name = "Set Target and Action Ranges 0",
							uuid = "04ebcce9-d4d5-84e8-876b-0b8ed65bd6a4",
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
							conditionLua = "return data.ljCircle == true",
							dequeueIfLuaFalse = true,
							uuid = "77f29d50-e889-bfa0-bedb-46d3da20a60f",
							version = 3,
						},
					},
				},
				enabled = false,
				mechanicTime = 249.21799166092,
				name = "Target and Action Ranges 0",
				timelineIndex = 43,
				timerOffset = 1,
				uuid = "57bac08c-e63c-7b01-8235-6f2916a80b27",
				version = 2,
			},
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
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "ACR_TensorWeeb4_TargetHitRadiusAdjust = 0\nACR_TensorWeeb4_ActionRangeAdjust = 0\nself.used = true",
							conditions = 
							{
								
								{
									"77f29d50-e889-bfa0-bedb-46d3da20a60f",
									false,
								},
							},
							name = "Set Target and Action Ranges 0",
							uuid = "04ebcce9-d4d5-84e8-876b-0b8ed65bd6a4",
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
							conditionLua = "return data.ljCircle == true",
							dequeueIfLuaFalse = true,
							uuid = "77f29d50-e889-bfa0-bedb-46d3da20a60f",
							version = 3,
						},
					},
				},
				enabled = false,
				mechanicTime = 259.26759932438,
				name = "Target and Action Ranges 0",
				timelineIndex = 47,
				timerOffset = 1,
				uuid = "7b61294d-c2e2-087c-99a0-3416a03065b5",
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
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "ACR_TensorWeeb4_TargetHitRadiusAdjust = 0\nACR_TensorWeeb4_ActionRangeAdjust = 0\nself.used = true",
							conditions = 
							{
								
								{
									"77f29d50-e889-bfa0-bedb-46d3da20a60f",
									false,
								},
							},
							name = "Set Target and Action Ranges 0",
							uuid = "04ebcce9-d4d5-84e8-876b-0b8ed65bd6a4",
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
							conditionLua = "return data.ljCircle == true",
							dequeueIfLuaFalse = true,
							uuid = "77f29d50-e889-bfa0-bedb-46d3da20a60f",
							version = 3,
						},
					},
				},
				mechanicTime = 270.25091459497,
				name = "Target and Action Ranges 0",
				timelineIndex = 49,
				timerOffset = 1,
				uuid = "7c3e130e-72b0-8985-b608-a6f8366922e5",
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
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "ACR_TensorWeeb4_TargetHitRadiusAdjust = 0\nACR_TensorWeeb4_ActionRangeAdjust = 0\nself.used = true",
							conditions = 
							{
								
								{
									"77f29d50-e889-bfa0-bedb-46d3da20a60f",
									false,
								},
							},
							name = "Set Target and Action Ranges 0",
							uuid = "04ebcce9-d4d5-84e8-876b-0b8ed65bd6a4",
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
							conditionLua = "return data.ljCircle == true",
							dequeueIfLuaFalse = true,
							uuid = "77f29d50-e889-bfa0-bedb-46d3da20a60f",
							version = 3,
						},
					},
				},
				enabled = false,
				mechanicTime = 280.23863811015,
				name = "Target and Action Ranges 0",
				timelineIndex = 53,
				timerOffset = 1,
				uuid = "3881f138-a3ee-82dd-8b30-ab1f14d2fb7c",
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
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "ACR_TensorWeeb4_TargetHitRadiusAdjust = 0\nACR_TensorWeeb4_ActionRangeAdjust = 0\nself.used = true",
							conditions = 
							{
								
								{
									"77f29d50-e889-bfa0-bedb-46d3da20a60f",
									false,
								},
							},
							name = "Set Target and Action Ranges 0",
							uuid = "04ebcce9-d4d5-84e8-876b-0b8ed65bd6a4",
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
							conditionLua = "return data.ljCircle == true",
							dequeueIfLuaFalse = true,
							uuid = "77f29d50-e889-bfa0-bedb-46d3da20a60f",
							version = 3,
						},
					},
				},
				enabled = false,
				mechanicTime = 291.26647895232,
				name = "Target and Action Ranges 0",
				timelineIndex = 55,
				timerOffset = 1,
				uuid = "5c890bc9-5a77-1e20-afc5-d6f54380e6d9",
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
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "ACR_TensorWeeb4_TargetHitRadiusAdjust = 0\nACR_TensorWeeb4_ActionRangeAdjust = 0\nself.used = true",
							conditions = 
							{
								
								{
									"77f29d50-e889-bfa0-bedb-46d3da20a60f",
									false,
								},
							},
							name = "Set Target and Action Ranges 0",
							uuid = "04ebcce9-d4d5-84e8-876b-0b8ed65bd6a4",
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
							conditionLua = "return data.ljCircle == true",
							dequeueIfLuaFalse = true,
							uuid = "77f29d50-e889-bfa0-bedb-46d3da20a60f",
							version = 3,
						},
					},
				},
				mechanicTime = 301.30844266449,
				name = "Target and Action Ranges 0",
				timelineIndex = 59,
				timerOffset = 1,
				uuid = "b64fb115-f461-063c-aa08-8c385876f65c",
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
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "ACR_TensorWeeb4_TargetHitRadiusAdjust = 0\nACR_TensorWeeb4_ActionRangeAdjust = 0\nself.used = true",
							conditions = 
							{
								
								{
									"77f29d50-e889-bfa0-bedb-46d3da20a60f",
									false,
								},
							},
							name = "Set Target and Action Ranges 0",
							uuid = "04ebcce9-d4d5-84e8-876b-0b8ed65bd6a4",
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
							conditionLua = "return data.ljCircle == true",
							dequeueIfLuaFalse = true,
							uuid = "77f29d50-e889-bfa0-bedb-46d3da20a60f",
							version = 3,
						},
					},
				},
				mechanicTime = 312.32654954394,
				name = "Target and Action Ranges 0",
				timelineIndex = 61,
				timerOffset = 1,
				uuid = "687a36f7-9140-f409-95cc-0c6b158f0700",
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
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "ACR_TensorWeeb4_TargetHitRadiusAdjust = 3\nACR_TensorWeeb4_ActionRangeAdjust = 3\nself.used = true",
							name = "Set Target and Action Ranges 3",
							uuid = "04ebcce9-d4d5-84e8-876b-0b8ed65bd6a4",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				mechanicTime = 322.39247758191,
				name = "Target and Action Ranges 3",
				timelineIndex = 65,
				timerOffset = 0.76141321659088,
				uuid = "f7b4a6e0-9162-fab3-9275-df7971c3c4b8",
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
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							acrOptionType = "Hold Action",
							gVar = "ACR_TensorWeeb4_Meditate",
							gVarValue = 2,
							holdActionDuration = 48,
							holdActionID = 7497,
							uuid = "1c03ea4a-fceb-a0a8-a504-cbca41d6127b",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				mechanicTime = 370.25754620621,
				name = "Hold Meditate",
				timelineIndex = 72,
				uuid = "3a731995-e5f0-6b6d-b0af-5776b501ff75",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "AutoSim",
				uuid = "812a4bce-62fc-b4a0-8550-948d5aa74003",
			},
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
							actionLua = "local state = data.ljAutoSimDmu\nif not state then return end\nif state.phaseTwoDamageLock or state.nextBoundary > 3 then\n    self.used = true\n    return\nend\n\nlocal acr = TensorCore.API.TensorACR\nlocal now = acr.getAutoSimTime()\n-- Cover the remaining attackable time and transition downtime.\n-- The tracked entity's untargetable event closes this at the actual time.\nlocal endTime = state.boundaries[4].time\nif now >= endTime then\n    self.used = true\n    return\nend\n-- Remove overlapping AutoSim v5 BossModifier windows before locking.\nif state.trimBossModifiers then\n    state.trimBossModifiers(now, endTime)\nend\nlocal id = acr.addAutoSimPhase(\"BossModifier\", now, endTime, 0)\nif id then\n    state.phaseTwoDamageLock = {\n        id = id,\n        startTime = now,\n        entityID = eventArgs.detectionTargetID,\n    }\nend\nself.used = true",
							conditions = 
							{
								
								{
									"efeb0a00-bd99-9e2a-8d87-edbb294adaa9",
									true,
								},
							},
							name = "Begin P2 zero damage",
							uuid = "08c98fdb-abdd-e300-898a-786cc8cb75ca",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Party",
							comparator = 2,
							conditionType = 2,
							hpType = 2,
							hpValue = 1,
							name = "DT: HP <= 1",
							partyTargetType = "Detection Target",
							uuid = "c37a68fd-6fc8-1ae2-acf6-8827a0cdf17c",
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
									"c37a68fd-6fc8-1ae2-acf6-8827a0cdf17c",
									true,
								},
							},
							filterTargetType = "ContentID",
							name = "Kefka at 1 HP",
							partyTargetContentID = 7131,
							uuid = "efeb0a00-bd99-9e2a-8d87-edbb294adaa9",
							version = 3,
						},
					},
				},
				displayPath = "AutoSim",
				mechanicTime = 370.25754620621,
				name = "[AutoSim] P2 Kefka 1 HP",
				timeRange = true,
				timelineIndex = 72,
				timerEndOffset = 11.242453575134,
				timerStartOffset = 0.042453791946173,
				uuid = "7aa70ae6-cbca-790c-bf9b-54327e34d3ed",
				version = 2,
			},
		},
	},
	[74] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "AutoSim",
				uuid = "22699745-6827-5520-884c-653dfd1247c5",
			},
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
							acrOptionType = "Hold Action",
							holdActionDuration = 32,
							holdActionID = 7489,
							uuid = "0dbb039c-9afd-584d-917d-c321c045d988",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				displayPath = "AutoSim",
				mechanicTime = 381.48132335556,
				name = "[AutoSim] Hold Higanbana P2 End",
				timelineIndex = 74,
				timerOffset = -30,
				uuid = "a6b57f94-57b6-0173-b225-54fcdf4ccbc3",
				version = 2,
			},
		},
	},
	[75] = 
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
							gVar = "ACR_TensorWeeb4_Meditate",
							uuid = "1c03ea4a-fceb-a0a8-a504-cbca41d6127b",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				enabled = false,
				mechanicTime = 386.79737120621,
				name = "Toggle Meditate",
				timelineIndex = 75,
				timerOffset = 2,
				uuid = "7f45aac1-8d38-d61b-83fb-1e7004e485db",
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
							gVar = "ACR_TensorWeeb4_Potion",
							gVarValue = 2,
							uuid = "19d9f14f-86f3-e04a-885f-43e533dd083c",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				enabled = false,
				mechanicTime = 386.79737120621,
				name = "Toggle Potion",
				timelineIndex = 75,
				timerOffset = 2,
				uuid = "d84ad95e-e6ad-411d-9fef-63c5b3fc7aa3",
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
	[95] = 
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
									"50913942-b095-d719-81f2-8246e00ffa3b",
									true,
								},
							},
							gVar = "ACR_TensorWeeb4_Hotbar_Gyoten",
							uuid = "2209c1fc-f848-dda5-96c1-c01ad5a6e876",
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
							uuid = "50913942-b095-d719-81f2-8246e00ffa3b",
							version = 3,
						},
					},
				},
				mechanicTime = 514.44485832111,
				name = "Gap Close",
				timelineIndex = 95,
				timerOffset = 0.10000000149012,
				uuid = "ab73a133-f6bb-f8c7-9dc3-baba52488dce",
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
				displayPath = "",
				name = "AutoSim",
				uuid = "4e5606af-bc3d-601b-88f2-04fc384e1e2a",
			},
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
							acrOptionType = "Hold Action",
							holdActionDuration = 90,
							holdActionID = 7489,
							uuid = "dc79247a-9ed5-b661-86cf-ea81acc190c0",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				displayPath = "AutoSim",
				mechanicTime = 690.41578400282,
				name = "[AutoSim] Hold Higanbana P3 End",
				timelineIndex = 137,
				uuid = "661596dc-c498-2b7b-b758-0c2627eb7db9",
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
				name = "AutoSim",
				uuid = "456753b4-bdef-5ee2-bff9-d8531f9eaba8",
			},
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
							actionLua = "local state = data.ljAutoSimDmu\nif not state then return end\nif state.phaseThreeDamageLock then\n    self.used = true\n    return\nend\n\nif state.nextBoundary ~= 5 then return end\n\nlocal acr = TensorCore.API.TensorACR\nlocal now = acr.getAutoSimTime()\nlocal endTime = state.boundaries[6].time\nif now >= endTime then\n    self.used = true\n    return\nend\n\n-- Remove overlapping AutoSim v5 BossModifier windows before locking.\nif state.trimBossModifiers then\n    state.trimBossModifiers(now, endTime)\nend\nlocal id = acr.addAutoSimPhase(\"BossModifier\", now, endTime, 0)\nif id then\n    state.phaseThreeDamageLock = {\n        id = id,\n        startTime = now,\n        endTime = endTime,\n    }\nend\nself.used = true",
							conditions = 
							{
								
								{
									"f43b4648-ab17-3d06-9629-f91ad64ec787",
									true,
								},
							},
							name = "Begin P3 zero damage",
							uuid = "32c3968e-3c16-f3a4-bf34-13f70a4968f1",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							buffCheckType = 6,
							buffIDList = 
							{
								4192,
								4194,
							},
							category = "Party",
							comparator = 2,
							conditionType = 2,
							hpValue = 1.5,
							name = "DT: HP <= 1.5% HP",
							partyTargetType = "Detection Target",
							uuid = "f42fcf58-4ee4-5d34-b704-a05c40d26263",
							version = 3,
						},
					},
					
					{
						data = 
						{
							displayPath = "",
							name = "Chaos",
							uuid = "3a64edc5-5ef9-7146-8104-4b999eeab983",
						},
						objectType = "folder",
					},
					
					{
						data = 
						{
							buffID = 4192,
							category = "Self",
							dequeueIfLuaFalse = true,
							displayPath = "Chaos",
							name = "Self Buff: Epic Hero",
							uuid = "2a784f57-39a4-fe9f-a760-b350550ab0a0",
							version = 3,
						},
						inheritedIndex = 3,
					},
					
					{
						data = 
						{
							category = "Filter",
							conditions = 
							{
								
								{
									"f42fcf58-4ee4-5d34-b704-a05c40d26263",
									true,
								},
								
								{
									"2a784f57-39a4-fe9f-a760-b350550ab0a0",
									true,
								},
							},
							displayPath = "Chaos",
							filterTargetType = "ContentID",
							name = "F - Chaos",
							partyTargetContentID = 7691,
							uuid = "e00e76c1-88b7-5366-91be-6fc3ce7dcbbf",
							version = 3,
						},
						inheritedIndex = 4,
					},
					
					{
						data = 
						{
							displayPath = "",
							name = "Exdeath",
							uuid = "4dfcfa8d-7554-9a3e-b4ca-403cdb98e06e",
						},
						objectType = "folder",
					},
					
					{
						data = 
						{
							buffID = 4194,
							category = "Self",
							dequeueIfLuaFalse = true,
							displayPath = "Exdeath",
							name = "Self Buff: Fated Hero",
							uuid = "292450ca-81e9-ecef-acfb-2e2d142109e7",
							version = 3,
						},
						inheritedIndex = 6,
					},
					
					{
						data = 
						{
							category = "Filter",
							conditions = 
							{
								
								{
									"f42fcf58-4ee4-5d34-b704-a05c40d26263",
									true,
								},
							},
							displayPath = "Exdeath",
							filterTargetType = "ContentID",
							name = "F - Exdeath",
							partyTargetContentID = 6052,
							uuid = "fe78aa2a-6a96-1280-982a-642786129d3c",
							version = 3,
						},
						inheritedIndex = 7,
					},
					
					{
						data = 
						{
							category = "Filter",
							conditions = 
							{
								
								{
									"e00e76c1-88b7-5366-91be-6fc3ce7dcbbf",
									true,
								},
								
								{
									"fe78aa2a-6a96-1280-982a-642786129d3c",
									true,
								},
							},
							matchAnyBuff = true,
							name = "OR Gate: Boss Dying",
							partyTargetNumber = 0,
							uuid = "f43b4648-ab17-3d06-9629-f91ad64ec787",
							version = 3,
						},
						inheritedIndex = 8,
					},
				},
				displayPath = "AutoSim",
				mechanicTime = 715.37264047081,
				name = "[AutoSim] P3 Boss Dying",
				timeRange = true,
				timelineIndex = 148,
				timerEndOffset = 5.1173596382141,
				timerStartOffset = -35.372638702393,
				uuid = "d2d4e44b-2e59-421d-80b8-cae99c10569d",
				version = 2,
			},
		},
	},
	[150] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "AutoSim",
				uuid = "5ed686f7-1604-eca0-a2f7-5a51d84185bd",
			},
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
							acrOptionType = "Reset Hold Actions",
							uuid = "61115fbe-b8f9-1595-9c41-d88a91d149e0",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				displayPath = "AutoSim",
				mechanicTime = 801.88345429349,
				name = "[AutoSim] Reset Holds P4 Start",
				timelineIndex = 150,
				timerOffset = -1,
				uuid = "53d7cd3a-f106-4671-90c2-8584bbfd56e5",
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
	[170] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "AutoSim",
				uuid = "ae864de3-d082-672b-8bec-49ddda9f5208",
			},
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
							acrOptionType = "Hold Action",
							holdActionDuration = 32,
							holdActionID = 7489,
							uuid = "c39cd52f-f8b3-f898-981e-8105c973a585",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				displayPath = "AutoSim",
				mechanicTime = 934.65552902023,
				name = "[AutoSim] Hold Higanbana P4 End",
				timelineIndex = 170,
				timerOffset = -30,
				uuid = "34c67bb0-d292-082b-b482-fad479387406",
				version = 2,
			},
		},
	},
	[209] = 
	{
		
		{
			data = 
			{
				name = "[Draw] P5 Exaflares",
				uuid = "2e77dc3f-02e8-65fd-a5f9-ad1bad297dd8",
				version = 2,
			},
			inheritedObjectUUID = "dd6428d9-a7b5-42eb-9c77-49c655a81657",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
	},
	[227] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "AutoSim",
				uuid = "9936ba67-e5a8-92bc-a509-63feb4f3b989",
			},
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
							acrOptionType = "Hold Action",
							holdActionDuration = 32,
							holdActionID = 7489,
							uuid = "c459983b-8f32-5985-82cd-014f1d833153",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				displayPath = "AutoSim",
				mechanicTime = 1185.8235474604,
				name = "[AutoSim] Hold Higanbana Kill",
				timelineIndex = 227,
				timerOffset = -34.5,
				uuid = "4ce9c3ed-0939-1c21-a5de-f57bc555d15f",
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