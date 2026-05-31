local tbl = 
{
	
	{
		data = 
		{
			name = "Silence Burst (Channeled)",
			uuid = "f32c9182-0a1c-037f-8464-6f5f68b76ab7",
			version = 2,
		},
		inheritedObjectUUID = "70ea9af9-d3c4-2b1b-bccc-275237832996",
		inheritedOverwrites = 
		{
			actions = 
			{
				
				{
					type = "add",
					value = 
					{
						data = 
						{
							name = "delay",
							uuid = "1f69423f-d3bf-fd63-9950-5610ab221e95",
							version = 2.1,
						},
						inheritedObjectUUID = "359b1325-64e2-665b-ac15-90142670efaa",
						inheritedOverwrites = 
						{
							conditions = 
							{
								
								{
									type = "add",
									value = 
									{
										"2cf5ca6d-301b-bc4c-be48-2d468a57bf3f",
										true,
									},
								},
							},
							gVar = "ACR_TensorMagnum3_CD",
						},
					},
				},
				
				{
					type = "add",
					value = 
					{
						data = 
						{
							name = "delay",
							uuid = "54a9092d-bdec-0d6e-8c15-a3cbf6031b25",
							version = 2.1,
						},
						inheritedObjectUUID = "a04eeb8e-ecb0-60a1-91ad-a9711fb1f32a",
						inheritedOverwrites = 
						{
							conditions = 
							{
								
								{
									type = "add",
									value = 
									{
										"2cf5ca6d-301b-bc4c-be48-2d468a57bf3f",
										true,
									},
								},
							},
							gVar = "ACR_TensorMagnum3_CD",
						},
					},
				},
				
				{
					type = "add",
					value = 
					{
						data = 
						{
							name = "",
							uuid = "bbe3f65a-9887-7165-8949-2834a8e40092",
							version = 2.1,
						},
						inheritedObjectUUID = "c87e9f06-e9e6-5d6c-b6f0-e923eb4544a5",
						inheritedOverwrites = 
						{
							conditions = 
							{
								
								{
									type = "add",
									value = 
									{
										"9eb48b04-f16d-8f0e-a85f-9778bd7f2680",
										true,
									},
								},
							},
							gVar = "ACR_TensorMagnum3_CD",
						},
					},
				},
				
				{
					type = "add",
					value = 
					{
						data = 
						{
							name = "",
							uuid = "e8728009-6f5d-5cb6-9f4e-d7ae8de7f230",
							version = 2.1,
						},
						inheritedObjectUUID = "a58f1720-cc05-f978-a8c9-056c5a67921c",
						inheritedOverwrites = 
						{
							conditions = 
							{
								
								{
									type = "add",
									value = 
									{
										"d2bdd910-4d62-95be-ac87-70dfd83ea10a",
										true,
									},
								},
							},
							gVar = "ACR_TensorMagnum3_CD",
						},
					},
				},
				
				{
					type = "add",
					value = 
					{
						data = 
						{
							name = "",
							uuid = "bbc6a558-fb47-4d23-bafd-93a76a81a791",
							version = 2.1,
						},
						inheritedObjectUUID = "53e6e7e5-80e5-eb92-b350-a1498031eae8",
						inheritedOverwrites = 
						{
							conditions = 
							{
								
								{
									type = "add",
									value = 
									{
										"04ccdb10-2677-082e-803a-4db1e9f60d6d",
										true,
									},
								},
							},
							gVar = "ACR_TensorMagnum3_CD",
						},
					},
				},
			},
			conditions = 
			{
				
				{
					type = "add",
					value = 
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "BARD",
							name = "Self: BRD",
							uuid = "9eb48b04-f16d-8f0e-a85f-9778bd7f2680",
							version = 3,
						},
					},
				},
				
				{
					type = "add",
					value = 
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "WHITEMAGE",
							name = "Self: WHM",
							uuid = "d2bdd910-4d62-95be-ac87-70dfd83ea10a",
							version = 3,
						},
					},
				},
				
				{
					type = "add",
					value = 
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "DRAGOON",
							name = "Self: DRG",
							uuid = "04ccdb10-2677-082e-803a-4db1e9f60d6d",
							version = 3,
						},
					},
				},
				
				{
					type = "add",
					value = 
					{
						data = 
						{
							category = "Filter",
							conditions = 
							{
								
								{
									"9eb48b04-f16d-8f0e-a85f-9778bd7f2680",
									true,
								},
								
								{
									"d2bdd910-4d62-95be-ac87-70dfd83ea10a",
									true,
								},
								
								{
									"04ccdb10-2677-082e-803a-4db1e9f60d6d",
									true,
								},
							},
							matchAnyBuff = true,
							name = "OR: Jobs",
							partyTargetNumber = 0,
							uuid = "2cf5ca6d-301b-bc4c-be48-2d468a57bf3f",
							version = 3,
						},
					},
				},
			},
		},
	},
	
	{
		data = 
		{
			name = "Silence Burst",
			uuid = "c12a08be-bb57-85f9-924e-a60dd3ab3844",
			version = 2,
		},
		inheritedObjectUUID = "1ab51ad0-55c9-767d-865a-5c46475ad7d8",
		inheritedOverwrites = 
		{
			actions = 
			{
				
				{
					type = "add",
					value = 
					{
						data = 
						{
							name = "delay",
							uuid = "513861a2-84eb-6af4-a318-f286f87fe061",
							version = 2.1,
						},
						inheritedObjectUUID = "83ec9852-8c04-14e3-a0e6-9346ea95f669",
						inheritedOverwrites = 
						{
							conditions = 
							{
								
								{
									type = "add",
									value = 
									{
										"cdb4aeda-ba52-bb33-b508-2fcecf35c7de",
										true,
									},
								},
							},
							gVar = "ACR_TensorMagnum3_CD",
						},
					},
				},
				
				{
					type = "add",
					value = 
					{
						data = 
						{
							name = "delay",
							uuid = "094600c8-5b47-135d-83b0-5a91270ee0e3",
							version = 2.1,
						},
						inheritedObjectUUID = "a2a4264f-81fe-c319-9936-7692f07e121a",
						inheritedOverwrites = 
						{
							conditions = 
							{
								
								{
									type = "add",
									value = 
									{
										"cdb4aeda-ba52-bb33-b508-2fcecf35c7de",
										true,
									},
								},
							},
							gVar = "ACR_TensorMagnum3_CD",
						},
					},
				},
				
				{
					type = "add",
					value = 
					{
						data = 
						{
							name = "",
							uuid = "a69860da-fb04-1a42-bd75-caff4ef7ec60",
							version = 2.1,
						},
						inheritedObjectUUID = "c87e9f06-e9e6-5d6c-b6f0-e923eb4544a5",
						inheritedOverwrites = 
						{
							conditions = 
							{
								
								{
									type = "add",
									value = 
									{
										"87f7196a-8caf-da13-b0b6-5e0f03ca7b09",
										true,
									},
								},
							},
							gVar = "ACR_TensorMagnum3_CD",
						},
					},
				},
				
				{
					type = "add",
					value = 
					{
						data = 
						{
							name = "",
							uuid = "ded04d61-02f6-366d-84e8-6cbadcf2e091",
							version = 2.1,
						},
						inheritedObjectUUID = "a58f1720-cc05-f978-a8c9-056c5a67921c",
						inheritedOverwrites = 
						{
							conditions = 
							{
								
								{
									type = "add",
									value = 
									{
										"d32f985c-a727-348f-b1c0-51ecac512f05",
										true,
									},
								},
							},
							gVar = "ACR_TensorMagnum3_CD",
						},
					},
				},
				
				{
					type = "add",
					value = 
					{
						data = 
						{
							name = "",
							uuid = "3eeaf9a3-0486-96ec-b73f-eb42a43d87c9",
							version = 2.1,
						},
						inheritedObjectUUID = "53e6e7e5-80e5-eb92-b350-a1498031eae8",
						inheritedOverwrites = 
						{
							conditions = 
							{
								
								{
									type = "add",
									value = 
									{
										"78a47d0a-f16d-b87d-aefa-47ed9bc87864",
										true,
									},
								},
							},
							gVar = "ACR_TensorMagnum3_CD",
						},
					},
				},
				
				{
					type = "add",
					value = 
					{
						data = 
						{
							name = "",
							uuid = "b27e14a6-7836-d009-9191-9821e6b445a7",
							version = 2.1,
						},
						inheritedObjectUUID = "5fc14336-a6d2-4812-8740-cd077cb4be36",
						inheritedOverwrites = 
						{
							conditions = 
							{
								
								{
									type = "add",
									value = 
									{
										"d01cd764-9d79-c00b-ac21-6d893bec675d",
										true,
									},
								},
							},
							gVar = "ACR_TensorMagnum3_CD",
						},
					},
				},
			},
			conditions = 
			{
				
				{
					type = "add",
					value = 
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "BARD",
							name = "Self: BRD",
							uuid = "87f7196a-8caf-da13-b0b6-5e0f03ca7b09",
							version = 3,
						},
					},
				},
				
				{
					type = "add",
					value = 
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "WHITEMAGE",
							name = "Self: WHM",
							uuid = "d32f985c-a727-348f-b1c0-51ecac512f05",
							version = 3,
						},
					},
				},
				
				{
					type = "add",
					value = 
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "DRAGOON",
							name = "Self: DRG",
							uuid = "78a47d0a-f16d-b87d-aefa-47ed9bc87864",
							version = 3,
						},
					},
				},
				
				{
					position = 8,
					type = "add",
					value = 
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "REDMAGE",
							name = "Self: RDM",
							uuid = "d01cd764-9d79-c00b-ac21-6d893bec675d",
							version = 3,
						},
						inheritedIndex = 8,
					},
				},
				
				{
					type = "add",
					value = 
					{
						data = 
						{
							category = "Filter",
							conditions = 
							{
								
								{
									"87f7196a-8caf-da13-b0b6-5e0f03ca7b09",
									true,
								},
								
								{
									"d32f985c-a727-348f-b1c0-51ecac512f05",
									true,
								},
								
								{
									"78a47d0a-f16d-b87d-aefa-47ed9bc87864",
									true,
								},
								
								{
									"d01cd764-9d79-c00b-ac21-6d893bec675d",
									true,
								},
							},
							matchAnyBuff = true,
							name = "OR: Jobs",
							partyTargetNumber = 0,
							uuid = "cdb4aeda-ba52-bb33-b508-2fcecf35c7de",
							version = 3,
						},
					},
				},
			},
		},
	},
	
	{
		data = 
		{
			name = "TTS Warrior Limit Break",
			uuid = "ac5bd5dc-7366-06da-aa13-ada02bdd8f5f",
			version = 2,
		},
		inheritedObjectUUID = "72ead624-26b2-190d-aaaf-572e004ce8fb",
		inheritedOverwrites = 
		{
			conditions = 
			{
				
				{
					type = "add",
					value = 
					{
						data = 
						{
							name = "",
							uuid = "4ebaa876-3c65-113a-8c33-aa9d6b444d4e",
							version = 3,
						},
						inheritedObjectUUID = "306cbd53-e970-ea90-a075-717f63a0806a",
						inheritedOverwrites = 
						{
							dequeueIfLuaFalse = true,
							eventArgType = 2,
							eventSpellID = 29083,
						},
					},
				},
			},
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
						actionLua = "ljCCData = {}\nljCCData.Party = {}\nljCCData.Enemy = {}\n\nself.used = true",
						conditions = 
						{
							
							{
								"412e7ce4-a828-9890-934d-01c61342bde8",
								true,
							},
						},
						gVar = "ACR_RikuNIN3_CD",
						name = "Clear Table Data",
						uuid = "7af0c9f5-d0ec-d5c4-a444-3f80ce5b4ceb",
						version = 2.1,
					},
					inheritedIndex = 1,
				},
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "local jobMap = {\n    [19] = \"PLD\", [20] = \"MNK\", [21] = \"WAR\", [22] = \"DRG\", [23] = \"BRD\",\n    [24] = \"WHM\", [25] = \"BLM\", [27] = \"SMN\", [28] = \"SCH\", [30] = \"NIN\",\n    [31] = \"MCH\", [32] = \"DRK\", [33] = \"AST\", [34] = \"SAM\", [35] = \"RDM\",\n    [37] = \"GNB\", [38] = \"DNC\", [39] = \"RPR\", [40] = \"SGE\", [41] = \"VPR\",\n    [42] = \"PCT\"\n}\n\n-- Custom sort priority mapping\nlocal jobPriority = {\n    [19] = 1,  [21] = 2,  [32] = 3,  [37] = 4,  -- Tanks\n    [24] = 5,  [28] = 6,  [33] = 7,  [40] = 8,  -- Healers\n    [20] = 9,  [22] = 10, [30] = 11, [34] = 12, [39] = 13, [41] = 14, -- Melee\n    [23] = 15, [31] = 16, [38] = 17, -- Ranged\n    [25] = 18, [27] = 19, [35] = 20, [42] = 21  -- Casters\n}\n\nlocal function getJobAbbr(jobId)\n    return jobMap[jobId] or tostring(jobId)\nend\n\nlocal party = TensorCore.getEntityGroupList(\"Party\") or {}\nlocal enemies = TensorCore.getEntityGroupList(\"Enemy\") or {}\nlocal myId = TensorCore.mGetPlayer().id\n\n-- Process Party\nlocal tempParty = {}\nfor _, p in pairs(party) do\n    table.insert(tempParty, { id = p.id, job = p.job, name = getJobAbbr(p.job) })\nend\n\ntable.sort(tempParty, function(a, b)\n    -- You are always at the top\n    if a.id == myId then return true end\n    if b.id == myId then return false end\n    \n    local pA = jobPriority[a.job] or 99\n    local pB = jobPriority[b.job] or 99\n    \n    if pA == pB then return a.name < b.name end\n    return pA < pB\nend)\nljCCData.Party = tempParty\n\n-- Process Enemy\nlocal tempEnemy = {}\nfor _, e in pairs(enemies) do\n    table.insert(tempEnemy, { id = e.id, job = e.job, name = getJobAbbr(e.job) })\nend\n\ntable.sort(tempEnemy, function(a, b)\n    local pA = jobPriority[a.job] or 99\n    local pB = jobPriority[b.job] or 99\n    \n    if pA == pB then return a.name < b.name end\n    return pA < pB\nend)\nljCCData.Enemy = tempEnemy\n\n--d(\"CC Teams Initialized, Sorted, and Cached.\")\n\nself.used = true",
						conditions = 
						{
							
							{
								"412e7ce4-a828-9890-934d-01c61342bde8",
								true,
							},
						},
						gVar = "ACR_RikuNIN3_CD",
						name = "Populate Table Data",
						uuid = "b613f871-0914-70d9-b80d-c1e51cf75cac",
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
							1032,
							1033,
							1034,
							1058,
							1059,
							1060,
							1116,
							1117,
							1138,
							1139,
							1293,
							1294,
							1357,
							1358,
						},
						name = "CC Maps",
						uuid = "412e7ce4-a828-9890-934d-01c61342bde8",
						version = 3,
					},
				},
			},
			enabled = false,
			eventType = 11,
			name = "LJ: CC | Data | Get Participants",
			throttleTime = 32000,
			timeout = 45,
			uuid = "38266338-193d-d0be-a961-cf2abda5c7fb",
			version = 2,
		},
		inheritedIndex = 5,
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
						actionLua = "if ljCCData.PartyLocked == nil then ljCCData.PartyLocked = true end\nif ljCCData.EnemyLocked == nil then ljCCData.EnemyLocked = true end\n\n-- Grab the live data to check ranges and target connections\nlocal liveParty = TensorCore.getEntityGroupList(\"Party\") or {}\nlocal liveEnemies = TensorCore.getEntityGroupList(\"Enemy\") or {}\n\n-- === Configuration ===\nlocal barWidth = 65\nlocal barHeight = 52\nlocal maxTargets = 5\nlocal textYOffset = 12 \n-- =====================\n\nlocal function renderListWithButtons(listData, liveAllies, liveOpponents, listIdPrefix, canTarget)\n    for i, entData in ipairs(listData) do\n        local targetingCount = 0\n        local isAliveAndInRange = false\n        \n        -- Verify if the cached entity is currently within entity range and alive\n        for _, curEnt in pairs(liveAllies) do\n            if curEnt.id == entData.id and curEnt.alive then\n                isAliveAndInRange = true\n                break\n            end\n        end\n        \n        if isAliveAndInRange then\n            for _, opp in pairs(liveOpponents) do\n                if opp.alive and opp.targetid == entData.id then\n                    targetingCount = targetingCount + 1\n                end\n            end\n        end\n\n        GUI:PushID(listIdPrefix .. tostring(entData.id))\n        GUI:BeginGroup()\n        \n        local startY = GUI:GetCursorPosY()\n        \n        -- Up Button\n        if GUI:Button(\"^\", 20, barHeight) then\n            if i > 1 then\n                local movedItem = table.remove(listData, i)\n                table.insert(listData, i - 1, movedItem)\n            end\n        end\n        \n        GUI:SameLine()\n        \n        -- Down Button\n        if GUI:Button(\"v\", 20, barHeight) then\n            if i < #listData then\n                local movedItem = table.remove(listData, i)\n                table.insert(listData, i + 1, movedItem)\n            end\n        end\n        \n        GUI:SameLine()\n        \n        GUI:SetCursorPosY(startY + textYOffset)\n        GUI:Text(entData.name)\n        \n        -- Make the Job Name clickable if allowed\n        if canTarget and GUI:IsItemHovered() then\n            GUI:SetMouseCursor(GUI.MouseCursor_Hand)\n            if GUI:IsItemClicked() then\n                TensorCore.mGetPlayer():SetTarget(entData.id)\n            end\n        end\n        \n        -- Reset Y position back to the top for the progress bar\n        GUI:SameLine(85)\n        GUI:SetCursorPosY(startY)\n        \n        -- Color logic based on threat level\n        if targetingCount >= 3 then\n            GUI:PushStyleColor(GUI.Col_PlotHistogram, 1, 0.2, 0.2, 1) -- Red\n        elseif targetingCount > 0 then\n            GUI:PushStyleColor(GUI.Col_PlotHistogram, 1, 1, 0.2, 1) -- Yellow\n        else\n            GUI:PushStyleColor(GUI.Col_PlotHistogram, 0.5, 0.5, 0.5, 1) -- Grey\n        end\n        \n        local fraction = math.min(1.0, targetingCount / maxTargets)\n        GUI:ProgressBar(fraction, barWidth, barHeight, tostring(targetingCount))\n        \n        -- Make the Progress Bar clickable if allowed\n        if canTarget and GUI:IsItemHovered() then\n            GUI:SetMouseCursor(GUI.MouseCursor_Hand)\n            if GUI:IsItemClicked() then\n                TensorCore.mGetPlayer():SetTarget(entData.id)\n            end\n        end\n        \n        GUI:PopStyleColor()\n        GUI:EndGroup()\n        GUI:PopID()\n    end\nend\n\n-- Determine Window Flags for Party\nlocal partyFlags = GUI.WindowFlags_AlwaysAutoResize\nif ljCCData.PartyLocked then\n    partyFlags = partyFlags + GUI.WindowFlags_NoMove\nend\n\n-- Draw the persistent Party Window (Targeting disabled)\nGUI:Begin(\"Party Targets\", nil, partyFlags)\nif ljCCData.Party then\n    renderListWithButtons(ljCCData.Party, liveParty, liveEnemies, \"Party_\", false)\nend\nGUI:Separator()\nljCCData.PartyLocked = GUI:Checkbox(\"Lock Window\", ljCCData.PartyLocked)\nGUI:End()\n\n-- Determine Window Flags for Enemy\nlocal enemyFlags = GUI.WindowFlags_AlwaysAutoResize\nif ljCCData.EnemyLocked then\n    enemyFlags = enemyFlags + GUI.WindowFlags_NoMove\nend\n\n-- Draw the persistent Enemy Window (Targeting enabled)\nGUI:Begin(\"Enemy Targets\", nil, enemyFlags)\nif ljCCData.Enemy then\n    renderListWithButtons(ljCCData.Enemy, liveEnemies, liveParty, \"Enemy_\", true)\nend\nGUI:Separator()\nljCCData.EnemyLocked = GUI:Checkbox(\"Lock Window\", ljCCData.EnemyLocked)\nGUI:End()\n\nself.used = true",
						conditions = 
						{
							
							{
								"46b2e6f0-876e-57d3-82e7-01a800100f20",
								true,
							},
							
							{
								"c515fd44-ae92-2226-b111-549078228028",
								true,
							},
						},
						gVar = "ACR_TensorMagnum3_CD",
						uuid = "6fd1dae5-3eae-6645-96e1-ef640a04df45",
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
							1032,
							1033,
							1034,
							1058,
							1059,
							1060,
							1116,
							1117,
							1138,
							1139,
							1293,
							1294,
							1357,
							1358,
						},
						name = "CC Maps",
						uuid = "46b2e6f0-876e-57d3-82e7-01a800100f20",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return ljCCData ~= nil and ljCCData.Party ~= nil and ljCCData.Enemy ~= nil",
						name = "Table Vars Initialized",
						uuid = "c515fd44-ae92-2226-b111-549078228028",
						version = 3,
					},
				},
			},
			eventType = 13,
			name = "Lj: CC | GUI | Target Counter",
			uuid = "c46a6c50-4893-54f2-852f-e3eb91b33c26",
			version = 2,
		},
		inheritedIndex = 6,
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
								"54ea9b6d-dfe0-c578-9220-4f22e1b295db",
								true,
							},
							
							{
								"0179d548-ccb7-0218-b24a-63fb55c4a810",
								true,
							},
							
							{
								"4fb06c9f-685d-a42b-9e14-edea0ba9ca03",
								true,
							},
							
							{
								"3ccdf6f5-0c3b-1fb4-bc69-3ca2918bc734",
								false,
							},
							
							{
								"ea66ad84-21d0-9e10-b11b-7ed9440de3ed",
								false,
							},
							
							{
								"d57eaa28-6811-c502-b6fa-daeeb4623c95",
								true,
							},
						},
						gVar = "ACR_TensorMagnum3_CD",
						name = "Retarget",
						setTarget = true,
						targetType = "Detection Target",
						uuid = "a1983fd2-a320-c9c7-812f-7f2e1459d10f",
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
							729,
							791,
						},
						localmapid = 791,
						name = "Rival Wings",
						uuid = "54ea9b6d-dfe0-c578-9220-4f22e1b295db",
						version = 3,
					},
					inheritedIndex = 1,
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return FFXIV_Common_BotRunning or (HusbandoMaxStatus and HusbandoMaxStatus()) or false",
						dequeueIfLuaFalse = true,
						name = "Bot Enabled",
						uuid = "0179d548-ccb7-0218-b24a-63fb55c4a810",
						version = 3,
					},
					inheritedIndex = 2,
				},
				
				{
					data = 
					{
						buffCheckType = 2,
						buffID = 1420,
						category = "Self",
						dequeueIfLuaFalse = true,
						name = "Self: No Mech",
						uuid = "4fb06c9f-685d-a42b-9e14-edea0ba9ca03",
						version = 3,
					},
					inheritedIndex = 2,
				},
				
				{
					data = 
					{
						buffID = 1420,
						name = "Target: Mech",
						uuid = "3ccdf6f5-0c3b-1fb4-bc69-3ca2918bc734",
						version = 3,
					},
					inheritedIndex = 3,
				},
				
				{
					data = 
					{
						channelCheckSpellID = 29055,
						conditionType = 7,
						name = "Target: Standard-issue Elixir",
						uuid = "ea66ad84-21d0-9e10-b11b-7ed9440de3ed",
						version = 3,
					},
					inheritedIndex = 5,
				},
				
				{
					data = 
					{
						buffID = 1420,
						category = "Party",
						name = "Enemy: Mech",
						partyTargetType = "Detection Target",
						uuid = "5f95584e-fe27-d891-a62f-71877b83c513",
						version = 3,
					},
					inheritedIndex = 4,
				},
				
				{
					data = 
					{
						category = "Party",
						comparator = 2,
						conditionType = 4,
						inRangeValue = 5,
						name = "Range: <= 5y",
						partyTargetType = "Detection Target",
						uuid = "12cb703f-7edc-62f4-81da-2441a208ef68",
						version = 3,
					},
					inheritedIndex = 5,
				},
				
				{
					data = 
					{
						category = "Party",
						comparator = 2,
						conditionType = 4,
						inRangeValue = 24,
						name = "Range: <= 24y",
						partyTargetType = "Detection Target",
						uuid = "c83683ef-d480-14cd-b02c-241a798bb2ec",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local ent = TensorCore.mGetEntity(eventArgs.detectionTargetID)\nlocal player = TensorCore.mGetPlayer()\n\nreturn ent ~= nil and ent.pvpteam ~= player.pvpteam and ent.los2\n",
						name = "Enemy: LoS",
						partyTargetSubType = 1,
						uuid = "348c08fd-3c37-8b9c-a8b5-ef766204d5a4",
						version = 3,
					},
					inheritedIndex = 4,
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 9,
						name = "Self: Melee",
						partyTargetType = "Melee DPS",
						uuid = "fb247149-44a9-16c4-9ca5-57e0c26d9e23",
						version = 3,
					},
					inheritedIndex = 7,
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 9,
						name = "Self: Tank",
						partyTargetType = "Tank",
						uuid = "87edc132-cf39-f4b9-81db-89a53b90bbfa",
						version = 3,
					},
					inheritedIndex = 8,
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 9,
						name = "Self: Ranged DPS",
						partyTargetType = "Ranged Physical DPS",
						uuid = "d42e2294-dca7-4999-a536-ad2168a82562",
						version = 3,
					},
					inheritedIndex = 9,
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 9,
						name = "Self: Healer",
						partyTargetType = "Healer",
						uuid = "4af657c5-07e0-c459-bf9b-1502d178399d",
						version = 3,
					},
					inheritedIndex = 10,
				},
				
				{
					data = 
					{
						category = "Filter",
						conditions = 
						{
							
							{
								"fb247149-44a9-16c4-9ca5-57e0c26d9e23",
								true,
							},
							
							{
								"87edc132-cf39-f4b9-81db-89a53b90bbfa",
								true,
							},
						},
						matchAnyBuff = true,
						name = "OR: Melee Job",
						partyTargetNumber = 0,
						uuid = "8058a8ef-5028-a3cc-8dec-cec610d4a758",
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
								"d42e2294-dca7-4999-a536-ad2168a82562",
								true,
							},
							
							{
								"4af657c5-07e0-c459-bf9b-1502d178399d",
								true,
							},
						},
						matchAnyBuff = true,
						name = "OR: Ranged Job",
						partyTargetNumber = 0,
						uuid = "164e6d5d-7cf5-f66a-8527-09d7493e5fd9",
						version = 3,
					},
					inheritedIndex = 12,
				},
				
				{
					data = 
					{
						category = "Filter",
						conditions = 
						{
							
							{
								"5f95584e-fe27-d891-a62f-71877b83c513",
								true,
							},
							
							{
								"12cb703f-7edc-62f4-81da-2441a208ef68",
								true,
							},
							
							{
								"348c08fd-3c37-8b9c-a8b5-ef766204d5a4",
								true,
							},
							
							{
								"8058a8ef-5028-a3cc-8dec-cec610d4a758",
								true,
							},
						},
						filterTargetType = "ContentID",
						name = "F - Melee",
						partyTargetContentID = 0,
						uuid = "3b895bed-dfb5-e3c9-9eb8-e32fad389d3a",
						version = 3,
					},
					inheritedIndex = 14,
				},
				
				{
					data = 
					{
						category = "Filter",
						conditions = 
						{
							
							{
								"5f95584e-fe27-d891-a62f-71877b83c513",
								true,
							},
							
							{
								"c83683ef-d480-14cd-b02c-241a798bb2ec",
								true,
							},
							
							{
								"348c08fd-3c37-8b9c-a8b5-ef766204d5a4",
								true,
							},
							
							{
								"164e6d5d-7cf5-f66a-8527-09d7493e5fd9",
								true,
							},
						},
						filterTargetType = "ContentID",
						name = "F - Ranged",
						partyTargetContentID = 0,
						uuid = "9be6f474-9188-bdfd-bd36-16170fd5c1df",
						version = 3,
					},
					inheritedIndex = 14,
				},
				
				{
					data = 
					{
						category = "Filter",
						conditions = 
						{
							
							{
								"3b895bed-dfb5-e3c9-9eb8-e32fad389d3a",
								true,
							},
							
							{
								"9be6f474-9188-bdfd-bd36-16170fd5c1df",
								true,
							},
						},
						matchAnyBuff = true,
						partyTargetNumber = 0,
						uuid = "d57eaa28-6811-c502-b6fa-daeeb4623c95",
						version = 3,
					},
				},
			},
			name = "Lj: RW | Target | Mechs",
			throttleTime = 1500,
			uuid = "d27f6f56-9a8a-455c-89a6-0adaa21e0a86",
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
						aType = "Misc",
						conditions = 
						{
							
							{
								"54ea9b6d-dfe0-c578-9220-4f22e1b295db",
								true,
							},
							
							{
								"c8f59f34-8cc0-6795-88e5-dde808ffb454",
								true,
							},
							
							{
								"4fb06c9f-685d-a42b-9e14-edea0ba9ca03",
								true,
							},
							
							{
								"7a4273c9-4cbd-c00f-92e0-b78b0e04389f",
								false,
							},
							
							{
								"d57eaa28-6811-c502-b6fa-daeeb4623c95",
								true,
							},
						},
						gVar = "ACR_TensorMagnum3_CD",
						name = "Retarget",
						setTarget = true,
						targetContentID = 7906,
						targetType = "Detection Target",
						uuid = "a1983fd2-a320-c9c7-812f-7f2e1459d10f",
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
							729,
							791,
						},
						localmapid = 791,
						name = "Rival Wings",
						uuid = "54ea9b6d-dfe0-c578-9220-4f22e1b295db",
						version = 3,
					},
					inheritedIndex = 1,
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return FFXIV_Common_BotRunning or (HusbandoMaxStatus and HusbandoMaxStatus()) or false",
						dequeueIfLuaFalse = true,
						name = "Bot Enabled",
						uuid = "c8f59f34-8cc0-6795-88e5-dde808ffb454",
						version = 3,
					},
					inheritedIndex = 2,
				},
				
				{
					data = 
					{
						buffCheckType = 2,
						buffID = 1420,
						category = "Self",
						dequeueIfLuaFalse = true,
						name = "Self: No Mech",
						uuid = "4fb06c9f-685d-a42b-9e14-edea0ba9ca03",
						version = 3,
					},
					inheritedIndex = 2,
				},
				
				{
					data = 
					{
						buffID = 1420,
						conditionType = 2,
						contentid = 7906,
						name = "Target: Goblin Merc",
						uuid = "7a4273c9-4cbd-c00f-92e0-b78b0e04389f",
						version = 3,
					},
					inheritedIndex = 4,
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local ent = TensorCore.mGetEntity(eventArgs.detectionTargetID)\nlocal player = TensorCore.mGetPlayer()\n\nreturn ent ~= nil and ent.los2\n",
						name = "Enemy: LoS",
						partyTargetSubType = 1,
						uuid = "348c08fd-3c37-8b9c-a8b5-ef766204d5a4",
						version = 3,
					},
					inheritedIndex = 5,
				},
				
				{
					data = 
					{
						category = "Party",
						comparator = 2,
						conditionType = 4,
						inRangeValue = 5,
						name = "Range: <= 5y",
						partyTargetType = "Detection Target",
						uuid = "12cb703f-7edc-62f4-81da-2441a208ef68",
						version = 3,
					},
					inheritedIndex = 5,
				},
				
				{
					data = 
					{
						category = "Party",
						comparator = 2,
						conditionType = 4,
						inRangeValue = 24,
						name = "Range: <= 24y",
						partyTargetType = "Detection Target",
						uuid = "c83683ef-d480-14cd-b02c-241a798bb2ec",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 9,
						name = "Self: Melee",
						partyTargetType = "Melee DPS",
						uuid = "fb247149-44a9-16c4-9ca5-57e0c26d9e23",
						version = 3,
					},
					inheritedIndex = 7,
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 9,
						name = "Self: Tank",
						partyTargetType = "Tank",
						uuid = "87edc132-cf39-f4b9-81db-89a53b90bbfa",
						version = 3,
					},
					inheritedIndex = 8,
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 9,
						name = "Self: Healer",
						partyTargetType = "Healer",
						uuid = "4af657c5-07e0-c459-bf9b-1502d178399d",
						version = 3,
					},
					inheritedIndex = 10,
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 9,
						name = "Self: Ranged DPS",
						partyTargetType = "Ranged Physical DPS",
						uuid = "d42e2294-dca7-4999-a536-ad2168a82562",
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
								"fb247149-44a9-16c4-9ca5-57e0c26d9e23",
								true,
							},
							
							{
								"87edc132-cf39-f4b9-81db-89a53b90bbfa",
								true,
							},
						},
						matchAnyBuff = true,
						name = "OR: Melee Job",
						partyTargetNumber = 0,
						uuid = "8058a8ef-5028-a3cc-8dec-cec610d4a758",
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
								"d42e2294-dca7-4999-a536-ad2168a82562",
								true,
							},
							
							{
								"4af657c5-07e0-c459-bf9b-1502d178399d",
								true,
							},
						},
						matchAnyBuff = true,
						name = "OR: Ranged Job",
						partyTargetNumber = 0,
						uuid = "164e6d5d-7cf5-f66a-8527-09d7493e5fd9",
						version = 3,
					},
					inheritedIndex = 12,
				},
				
				{
					data = 
					{
						category = "Filter",
						conditions = 
						{
							
							{
								"348c08fd-3c37-8b9c-a8b5-ef766204d5a4",
								true,
							},
							
							{
								"12cb703f-7edc-62f4-81da-2441a208ef68",
								true,
							},
							
							{
								"8058a8ef-5028-a3cc-8dec-cec610d4a758",
								true,
							},
						},
						filterTargetType = "ContentID",
						name = "F - Melee",
						partyTargetContentID = 7906,
						uuid = "3b895bed-dfb5-e3c9-9eb8-e32fad389d3a",
						version = 3,
					},
					inheritedIndex = 13,
				},
				
				{
					data = 
					{
						category = "Filter",
						conditions = 
						{
							
							{
								"348c08fd-3c37-8b9c-a8b5-ef766204d5a4",
								true,
							},
							
							{
								"c83683ef-d480-14cd-b02c-241a798bb2ec",
								true,
							},
							
							{
								"164e6d5d-7cf5-f66a-8527-09d7493e5fd9",
								true,
							},
						},
						filterTargetType = "ContentID",
						name = "F - Ranged",
						partyTargetContentID = 7906,
						uuid = "9be6f474-9188-bdfd-bd36-16170fd5c1df",
						version = 3,
					},
					inheritedIndex = 14,
				},
				
				{
					data = 
					{
						category = "Filter",
						conditions = 
						{
							
							{
								"9be6f474-9188-bdfd-bd36-16170fd5c1df",
								true,
							},
							
							{
								"3b895bed-dfb5-e3c9-9eb8-e32fad389d3a",
								true,
							},
						},
						matchAnyBuff = true,
						partyTargetNumber = 0,
						uuid = "d57eaa28-6811-c502-b6fa-daeeb4623c95",
						version = 3,
					},
				},
			},
			name = "Lj: RW | Target | Goblin Merc",
			throttleTime = 1500,
			uuid = "0ec88ca0-cdf4-d740-bb3d-e1df624ccaaf",
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
						actionLua = "gChampion.Toggles.CD = false\nself.used = true",
						conditions = 
						{
							
							{
								"3b853ce6-b975-baa6-b647-61c5316ff121",
								true,
							},
							
							{
								"058ebad1-5aa7-c9ce-8b28-6c7221af1019",
								true,
							},
							
							{
								"7d8e8ddd-9e37-a678-9927-a25de6b266a9",
								true,
							},
						},
						gVar = "ACR_TensorMagnum3_CD",
						name = "Disable CD",
						uuid = "665d8e90-c997-14de-b6dc-b73b4c85a661",
						version = 2.1,
					},
				},
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "gChampion.Toggles.CD = true\nself.used = true",
						conditions = 
						{
							
							{
								"3b853ce6-b975-baa6-b647-61c5316ff121",
								true,
							},
							
							{
								"058ebad1-5aa7-c9ce-8b28-6c7221af1019",
								true,
							},
							
							{
								"7d8e8ddd-9e37-a678-9927-a25de6b266a9",
								false,
							},
						},
						gVar = "ACR_TensorMagnum3_CD",
						name = "Enable CD",
						uuid = "cc44a405-32ec-6007-9208-4480966ffdc4",
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
							729,
							791,
						},
						localmapid = 791,
						name = "Rival Wings",
						uuid = "3b853ce6-b975-baa6-b647-61c5316ff121",
						version = 3,
					},
					inheritedIndex = 1,
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return FFXIV_Common_BotRunning or (HusbandoMaxStatus and HusbandoMaxStatus()) or false",
						dequeueIfLuaFalse = true,
						name = "Bot Enabled",
						uuid = "058ebad1-5aa7-c9ce-8b28-6c7221af1019",
						version = 3,
					},
					inheritedIndex = 2,
				},
				
				{
					data = 
					{
						conditionType = 2,
						contentid = 6872,
						name = "Raven Magus",
						uuid = "235be7f7-182d-721e-8c2a-008701fbc58d",
						version = 3,
					},
				},
				
				{
					data = 
					{
						conditionType = 2,
						contentid = 6870,
						name = "Raven Viking",
						uuid = "01e08e93-5869-ed5d-95e8-2476ac04e2fd",
						version = 3,
					},
				},
				
				{
					data = 
					{
						conditionType = 2,
						contentid = 6871,
						name = "Falcon Magus",
						uuid = "72e21b84-0efc-6c53-b187-20dd187d3f3f",
						version = 3,
					},
				},
				
				{
					data = 
					{
						conditionType = 2,
						contentid = 6869,
						name = "Falcon Viking",
						uuid = "52377f7d-51c1-5354-845d-057853980653",
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
								"235be7f7-182d-721e-8c2a-008701fbc58d",
								true,
							},
							
							{
								"01e08e93-5869-ed5d-95e8-2476ac04e2fd",
								true,
							},
							
							{
								"72e21b84-0efc-6c53-b187-20dd187d3f3f",
								true,
							},
							
							{
								"52377f7d-51c1-5354-845d-057853980653",
								true,
							},
						},
						matchAnyBuff = true,
						partyTargetNumber = 0,
						uuid = "7d8e8ddd-9e37-a678-9927-a25de6b266a9",
						version = 3,
					},
				},
			},
			name = "Lj: RW | Toggle CD",
			uuid = "465292e4-8338-277d-ad48-c44adfe7cbe0",
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
						actionID = 29711,
						allowInterrupt = true,
						conditions = 
						{
							
							{
								"49c5c323-ea4f-95fa-9da9-99273e6c5828",
								true,
							},
							
							{
								"00bf10ee-435c-a2e8-aa70-61cb7f9173da",
								true,
							},
							
							{
								"8ed7ada0-02ac-6db7-9865-f2bc2bc8812f",
								true,
							},
							
							{
								"9958f1fc-8cde-dcdb-b209-e921682a4452",
								true,
							},
							
							{
								"b3c626b9-b3b5-7fb5-a674-7527b4180cce",
								true,
							},
							
							{
								"85afd386-c483-5ef5-af5c-38c3daa07c57",
								false,
							},
							
							{
								"98713046-bee7-6709-9d5f-ab10a5ff8772",
								true,
							},
						},
						gVar = "ACR_TensorMagnum3_CD",
						ignoreWeaveRules = true,
						uuid = "55858f2c-b6a7-2966-9fc5-385f1602b076",
						version = 2.1,
					},
				},
				
				{
					data = 
					{
						actionID = 29054,
						allowInterrupt = true,
						conditions = 
						{
							
							{
								"49c5c323-ea4f-95fa-9da9-99273e6c5828",
								true,
							},
							
							{
								"00bf10ee-435c-a2e8-aa70-61cb7f9173da",
								true,
							},
							
							{
								"93661930-7e95-f135-ae32-729ef95cf4f7",
								true,
							},
							
							{
								"9958f1fc-8cde-dcdb-b209-e921682a4452",
								true,
							},
							
							{
								"98713046-bee7-6709-9d5f-ab10a5ff8772",
								true,
							},
						},
						gVar = "ACR_TensorMagnum3_CD",
						ignoreWeaveRules = true,
						uuid = "8abedd15-bb7b-ccf7-81c9-1ee2424eee2c",
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
							729,
							791,
						},
						localmapid = 791,
						name = "Rival Wings",
						uuid = "49c5c323-ea4f-95fa-9da9-99273e6c5828",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return FFXIV_Common_BotRunning or (HusbandoMaxStatus and HusbandoMaxStatus()) or false",
						dequeueIfLuaFalse = true,
						name = "Bot Enabled",
						uuid = "00bf10ee-435c-a2e8-aa70-61cb7f9173da",
						version = 3,
					},
					inheritedIndex = 2,
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "if eventArgs.aoeID == 9974 then\n    local player = TensorCore.mGetPlayer()  \n    local dist = TensorCore.getDistance2d(eventArgs, player.pos)\n    if dist <= eventArgs.aoeLength then\n        local headingToPlayer = TensorCore.getHeadingToTarget(eventArgs, player.pos)\n        local angleDiff = math.abs(headingToPlayer - eventArgs.heading)\n        if angleDiff > math.pi then\n            angleDiff = (math.pi * 2) - angleDiff\n        end\n\n        -- A 120-degree cone means 60 degrees (math.pi / 3) on either side\n        return angleDiff <= (math.pi / 3)\n    end\nend\n\nreturn false",
						dequeueIfLuaFalse = true,
						name = "Laser X Sword",
						uuid = "8ed7ada0-02ac-6db7-9865-f2bc2bc8812f",
						version = 3,
					},
					inheritedIndex = 2,
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "if eventArgs.aoeID == 9978 then\n    local player = TensorCore.mGetPlayer()\n    local dist = TensorCore.getDistance2d(eventArgs, player.pos)\n    if dist <= eventArgs.aoeLength then\n        local headingToPlayer = TensorCore.getHeadingToTarget(eventArgs, player.pos)\n        local angleDiff = math.abs(headingToPlayer - eventArgs.heading)\n        if angleDiff > math.pi then\n            angleDiff = (math.pi * 2) - angleDiff\n        end\n\n        -- A 90-degree cone means 45 degrees (math.pi / 4) on either side\n        return angleDiff <= (math.pi / 4)\n    end\nend\n\nreturn false",
						dequeueIfLuaFalse = true,
						name = "Flarethrower",
						uuid = "93661930-7e95-f135-ae32-729ef95cf4f7",
						version = 3,
					},
					inheritedIndex = 3,
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return TensorCore.Avoidance.inAnyAOE(TensorCore.mGetPlayer().pos.x, TensorCore.mGetPlayer().pos.y, TensorCore.mGetPlayer().pos.z)",
						dequeueIfLuaFalse = true,
						name = "In AoE",
						uuid = "9958f1fc-8cde-dcdb-b209-e921682a4452",
						version = 3,
					},
					inheritedIndex = 4,
				},
				
				{
					data = 
					{
						category = "Self",
						comparator = 2,
						conditionType = 2,
						hpValue = 99,
						name = "Self: HP <= 99%",
						uuid = "b3c626b9-b3b5-7fb5-a674-7527b4180cce",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Self",
						channelCheckSpellID = 29055,
						conditionType = 10,
						name = "Self: Standard-issue Elixir",
						uuid = "85afd386-c483-5ef5-af5c-38c3daa07c57",
						version = 3,
					},
					inheritedIndex = 7,
				},
				
				{
					data = 
					{
						buffCheckType = 2,
						buffID = 3054,
						category = "Self",
						name = "Self: No Guard",
						uuid = "98713046-bee7-6709-9d5f-ab10a5ff8772",
						version = 3,
					},
				},
			},
			eventType = 18,
			name = "Lj: RW | OnAOECreate",
			uuid = "777258da-b427-f2e9-9cdf-6cf8ad56ecee",
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
						actionLua = "ml_global_information.ToggleRun()\nself.used = true",
						conditions = 
						{
							
							{
								"66abe741-958b-9b2e-ae56-509c85e307bd",
								true,
							},
							
							{
								"3fa8ea45-c4f9-4e71-9eba-ef17f6fdf983",
								false,
							},
						},
						gVar = "ACR_TensorViper3_CD",
						name = "Enable Assist",
						uuid = "9c83ae5f-77ac-5ad4-8afd-75c8bd3916d0",
						version = 2.1,
					},
				},
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "ml_global_information.ToggleRun()\nself.used = true",
						conditions = 
						{
							
							{
								"66abe741-958b-9b2e-ae56-509c85e307bd",
								false,
							},
							
							{
								"3fa8ea45-c4f9-4e71-9eba-ef17f6fdf983",
								true,
							},
						},
						gVar = "ACR_TensorViper3_CD",
						name = "Disable Assist",
						uuid = "77116cba-4b0f-69ec-a8ba-97f9153db76a",
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
						conditionLua = "return TensorCore.isPVPMap()",
						dequeueIfLuaFalse = true,
						name = "PVP Map",
						uuid = "66abe741-958b-9b2e-ae56-509c85e307bd",
						version = 3,
					},
					inheritedIndex = 1,
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return FFXIV_Common_BotRunning or (HusbandoMaxStatus and HusbandoMaxStatus()) or false",
						dequeueIfLuaFalse = true,
						name = "Bot Enabled",
						uuid = "3fa8ea45-c4f9-4e71-9eba-ef17f6fdf983",
						version = 3,
					},
					inheritedIndex = 1,
				},
			},
			eventType = 11,
			name = "Lj: PvP | OnMapChange",
			uuid = "14ba2766-86e9-e977-bfb0-4f5531308d4c",
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
						actionLua = "self.used = true",
						conditions = 
						{
							
							{
								"66abe741-958b-9b2e-ae56-509c85e307bd",
								true,
							},
							
							{
								"a23c452f-8c73-68d6-875c-f27c1b8a24e0",
								true,
							},
							
							{
								"4a434995-7301-49b4-b1ba-1cfd5c401e42",
								true,
							},
						},
						gVar = "ACR_RikuNIN3_CD",
						name = "Delay",
						uuid = "6462cbc5-8040-c799-a34e-64f1e8d308d7",
						version = 2.1,
					},
					inheritedIndex = 1,
				},
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "SendTextCommand(\"/qchat Hello\")\nself.used = true",
						conditions = 
						{
							
							{
								"66abe741-958b-9b2e-ae56-509c85e307bd",
								true,
							},
							
							{
								"a23c452f-8c73-68d6-875c-f27c1b8a24e0",
								true,
							},
							
							{
								"4a434995-7301-49b4-b1ba-1cfd5c401e42",
								true,
							},
						},
						gVar = "ACR_RikuAST3_CD",
						name = "HelloWorld()",
						uuid = "75dcc7e3-68b4-8351-9017-1babab4b29ef",
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
						conditionLua = "return TensorCore.isPVPMap()",
						dequeueIfLuaFalse = true,
						name = "PVP Map",
						uuid = "66abe741-958b-9b2e-ae56-509c85e307bd",
						version = 3,
					},
					inheritedIndex = 1,
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return eventArgs.line.code == 57",
						dequeueIfLuaFalse = true,
						name = "System Channel",
						uuid = "a23c452f-8c73-68d6-875c-f27c1b8a24e0",
						version = 3,
					},
					inheritedIndex = 2,
				},
				
				{
					data = 
					{
						category = "Event",
						dequeueIfLuaFalse = true,
						eventChatLine = "Now readying the Pit!",
						uuid = "4a434995-7301-49b4-b1ba-1cfd5c401e42",
						version = 3,
					},
				},
			},
			eventType = 7,
			name = "Lj: PvP | OnNewChatLine",
			throttleTime = 4000,
			uuid = "5cc6f157-e779-1ea1-a6e5-8f03e85ae32e",
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
						aType = "Alert",
						alertDuration = 7000,
						alertPriority = 2,
						alertScale = 1,
						alertTTS = true,
						alertText = "Wildfire on you",
						conditions = 
						{
							
							{
								"be7e0630-0b7d-a41d-a5c5-fa7da60a8563",
								true,
							},
							
							{
								"1cacfd79-31d8-377a-bc30-04a77f7e46b6",
								true,
							},
						},
						gVar = "ACR_TensorMagnum3_CD",
						name = "Alert: Wildfire",
						uuid = "e316f309-ae7a-410e-95be-df1ac8615893",
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
						conditionLua = "return TensorCore.isPVPMap()",
						dequeueIfLuaFalse = true,
						name = "PVP Map",
						uuid = "be7e0630-0b7d-a41d-a5c5-fa7da60a8563",
						version = 3,
					},
					inheritedIndex = 1,
				},
				
				{
					data = 
					{
						buffCheckType = 3,
						buffDuration = 8,
						buffID = 1323,
						category = "Self",
						eventArgType = 2,
						eventBuffID = 1323,
						name = "Buff: Wildfire",
						uuid = "1cacfd79-31d8-377a-bc30-04a77f7e46b6",
						version = 3,
					},
				},
			},
			name = "Lj: PvP | Alert | Bad Buff on Self",
			uuid = "fe8ed107-b88b-c1f2-92af-77543837550e",
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
						actionID = 29711,
						allowInterrupt = true,
						conditions = 
						{
							
							{
								"9bbac16e-0d08-4d20-911a-d4fbda712245",
								true,
							},
							
							{
								"c61005ce-7dbf-a77b-a24e-95f1fc281220",
								true,
							},
							
							{
								"44594cd9-624b-f9e1-9a1f-e1b438370d7d",
								true,
							},
							
							{
								"ec298f2d-593c-d853-9443-ef773d32486b",
								false,
							},
							
							{
								"12c3af37-3cf4-8692-a47c-06065abd135c",
								true,
							},
						},
						gVar = "ACR_RikuAST3_CD",
						ignoreWeaveRules = true,
						uuid = "1adc0207-d703-1c57-8ef6-f9f3afb4a7c9",
						version = 2.1,
					},
				},
				
				{
					data = 
					{
						aType = "Alert",
						alertPriority = 3,
						alertText = "Ninja LB Active",
						conditions = 
						{
							
							{
								"b55ab72a-5ff7-7a61-a596-b4a417c3b9b6",
								true,
							},
							
							{
								"12c3af37-3cf4-8692-a47c-06065abd135c",
								true,
							},
						},
						gVar = "ACR_TensorMagnum3_CD",
						name = "Visual Alert",
						uuid = "47f970e3-2be0-d0bd-95e6-af69ed941118",
						version = 2.1,
					},
				},
				
				{
					data = 
					{
						aType = "Alert",
						alertDuration = -1,
						alertTTS = true,
						alertText = "Ninja ELLBEEEE",
						conditions = 
						{
							
							{
								"b55ab72a-5ff7-7a61-a596-b4a417c3b9b6",
								true,
							},
							
							{
								"12c3af37-3cf4-8692-a47c-06065abd135c",
								true,
							},
						},
						gVar = "ACR_TensorMagnum3_CD",
						name = "TTS Alert",
						uuid = "a7ff171c-2cd1-f96f-b325-6a72022968af",
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
						conditionLua = "return TensorCore.isPVPMap()",
						dequeueIfLuaFalse = true,
						name = "PVP Map",
						uuid = "9bbac16e-0d08-4d20-911a-d4fbda712245",
						version = 3,
					},
					inheritedIndex = 1,
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 12,
						dequeueIfLuaFalse = true,
						localMapIDList = 
						{
							1032,
							1033,
							1034,
							1058,
							1059,
							1060,
							1116,
							1117,
							1138,
							1139,
							1293,
							1294,
							1357,
							1358,
						},
						name = "CC Maps",
						uuid = "b55ab72a-5ff7-7a61-a596-b4a417c3b9b6",
						version = 3,
					},
					inheritedIndex = 2,
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return FFXIV_Common_BotRunning or (HusbandoMaxStatus and HusbandoMaxStatus()) or false",
						dequeueIfLuaFalse = true,
						name = "Bot Enabled",
						uuid = "c61005ce-7dbf-a77b-a24e-95f1fc281220",
						version = 3,
					},
					inheritedIndex = 3,
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local ent = TensorCore.mGetEntity(eventArgs.detectionTargetID)\nlocal player = TensorCore.mGetPlayer()\n\nreturn ent ~= nil and ent.pvpteam ~= player.pvpteam\n",
						name = "Enemy",
						partyTargetSubType = 1,
						uuid = "f0c8f496-b3dc-99c2-9593-2ead3df6cf25",
						version = 3,
					},
					inheritedIndex = 2,
				},
				
				{
					data = 
					{
						buffID = 3192,
						category = "Party",
						name = "Buff: Unsealed Seiton Tenchu",
						partyTargetType = "Detection Target",
						uuid = "5ec95fbb-725b-398b-b7f7-4eb748edb2ff",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Self",
						comparator = 2,
						conditionType = 2,
						hpValue = 70,
						name = "Self: HP <= 70%",
						uuid = "44594cd9-624b-f9e1-9a1f-e1b438370d7d",
						version = 3,
					},
					inheritedIndex = 3,
				},
				
				{
					data = 
					{
						category = "Self",
						channelCheckSpellID = 29055,
						conditionType = 10,
						name = "Self: Standard-issue Elixir",
						uuid = "ec298f2d-593c-d853-9443-ef773d32486b",
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
								"f0c8f496-b3dc-99c2-9593-2ead3df6cf25",
								true,
							},
							
							{
								"5ec95fbb-725b-398b-b7f7-4eb748edb2ff",
								true,
							},
						},
						filterTargetType = "ContentID",
						partyTargetContentID = 0,
						uuid = "12c3af37-3cf4-8692-a47c-06065abd135c",
						version = 3,
					},
				},
			},
			name = "Lj: PvP | LB | Enemy NIN Active",
			uuid = "ad452ec0-37a5-82ab-ad7b-de7c801d86b6",
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
						actionID = 29054,
						allowInterrupt = true,
						conditions = 
						{
							
							{
								"f20be9b5-6eaa-6c13-beaf-880fa5d9da15",
								true,
							},
							
							{
								"0d4f6789-878e-72a1-b090-69cf2f3242c3",
								true,
							},
							
							{
								"d0977c20-4cc5-d2a6-97a7-adf970bc71df",
								true,
							},
							
							{
								"21801a39-f772-9e60-a675-2c120844cfd0",
								true,
							},
							
							{
								"d3dbb6e1-bece-f69e-b614-664e5d0a602a",
								true,
							},
							
							{
								"76a64398-8d61-7201-bd70-a21880629ab0",
								true,
							},
						},
						endIfUsed = true,
						gVar = "ACR_TensorMagnum3_CD",
						ignoreWeaveRules = true,
						uuid = "bd2b54f2-ac66-8e98-91f8-d139ba88d705",
						version = 2.1,
					},
					inheritedIndex = 1,
				},
				
				{
					data = 
					{
						actionID = 29711,
						allowInterrupt = true,
						conditions = 
						{
							
							{
								"f20be9b5-6eaa-6c13-beaf-880fa5d9da15",
								true,
							},
							
							{
								"0d4f6789-878e-72a1-b090-69cf2f3242c3",
								true,
							},
							
							{
								"85b82f7a-ea69-5eb6-87c2-268a26855245",
								true,
							},
							
							{
								"21801a39-f772-9e60-a675-2c120844cfd0",
								true,
							},
							
							{
								"bfa599a0-947b-3e85-a45c-5f8f4ec72f33",
								true,
							},
						},
						gVar = "ACR_RikuAST3_CD",
						ignoreWeaveRules = true,
						uuid = "89520a7b-0b8b-83ed-b772-d8fafdb08609",
						version = 2.1,
					},
					inheritedIndex = 2,
				},
				
				{
					data = 
					{
						actionID = 29497,
						allowInterrupt = true,
						conditions = 
						{
							
							{
								"f20be9b5-6eaa-6c13-beaf-880fa5d9da15",
								true,
							},
							
							{
								"0d4f6789-878e-72a1-b090-69cf2f3242c3",
								true,
							},
							
							{
								"d0977c20-4cc5-d2a6-97a7-adf970bc71df",
								true,
							},
							
							{
								"21801a39-f772-9e60-a675-2c120844cfd0",
								true,
							},
							
							{
								"bfa599a0-947b-3e85-a45c-5f8f4ec72f33",
								true,
							},
							
							{
								"517c2217-e097-57da-9776-86ce1d706430",
								true,
							},
							
							{
								"e89c0e35-0932-9996-86e2-a0a6d93c0d71",
								true,
							},
						},
						gVar = "ACR_TensorMagnum3_CD",
						ignoreWeaveRules = true,
						uuid = "8fd5e789-4a5f-ad80-9be5-bba03463e2e2",
						version = 2.1,
					},
				},
				
				{
					data = 
					{
						actionID = 29069,
						allowInterrupt = true,
						conditions = 
						{
							
							{
								"f20be9b5-6eaa-6c13-beaf-880fa5d9da15",
								true,
							},
							
							{
								"0d4f6789-878e-72a1-b090-69cf2f3242c3",
								true,
							},
							
							{
								"d0977c20-4cc5-d2a6-97a7-adf970bc71df",
								true,
							},
							
							{
								"21801a39-f772-9e60-a675-2c120844cfd0",
								true,
							},
							
							{
								"bfa599a0-947b-3e85-a45c-5f8f4ec72f33",
								true,
							},
							
							{
								"517c2217-e097-57da-9776-86ce1d706430",
								true,
							},
							
							{
								"bc8c8ba6-60b2-3e21-a559-ecf9a527630a",
								true,
							},
						},
						gVar = "ACR_TensorRuin3_CD",
						ignoreWeaveRules = true,
						uuid = "ad3b2e4a-ac5f-8cdd-b4d9-d6422df376f0",
						version = 2.1,
					},
				},
				
				{
					data = 
					{
						actionID = 29097,
						allowInterrupt = true,
						conditions = 
						{
							
							{
								"f20be9b5-6eaa-6c13-beaf-880fa5d9da15",
								true,
							},
							
							{
								"0d4f6789-878e-72a1-b090-69cf2f3242c3",
								true,
							},
							
							{
								"d0977c20-4cc5-d2a6-97a7-adf970bc71df",
								true,
							},
							
							{
								"21801a39-f772-9e60-a675-2c120844cfd0",
								true,
							},
							
							{
								"bfa599a0-947b-3e85-a45c-5f8f4ec72f33",
								true,
							},
							
							{
								"517c2217-e097-57da-9776-86ce1d706430",
								true,
							},
							
							{
								"29b2107a-af6f-59d3-b836-fbe2a57e6838",
								true,
							},
						},
						gVar = "ACR_TensorRuin3_CD",
						ignoreWeaveRules = true,
						uuid = "d03dd3d5-59ee-62f4-becd-d588d09c97bc",
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
						conditionLua = "return TensorCore.isPVPMap()",
						dequeueIfLuaFalse = true,
						name = "PVP Map",
						uuid = "f20be9b5-6eaa-6c13-beaf-880fa5d9da15",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return FFXIV_Common_BotRunning or (HusbandoMaxStatus and HusbandoMaxStatus()) or false",
						dequeueIfLuaFalse = true,
						name = "Bot Enabled",
						uuid = "0d4f6789-878e-72a1-b090-69cf2f3242c3",
						version = 3,
					},
					inheritedIndex = 2,
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
						category = "Event",
						dequeueIfLuaFalse = true,
						eventArgType = 2,
						eventSpellID = 29515,
						name = "Seiton Tenchu",
						uuid = "85b82f7a-ea69-5eb6-87c2-268a26855245",
						version = 3,
					},
					inheritedIndex = 3,
				},
				
				{
					data = 
					{
						category = "Event",
						dequeueIfLuaFalse = true,
						eventArgOptionType = 3,
						eventArgType = 2,
						spellIDList = 
						{
							29515,
							29415,
						},
						uuid = "d0977c20-4cc5-d2a6-97a7-adf970bc71df",
						version = 3,
					},
					inheritedIndex = 4,
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
				
				{
					data = 
					{
						actionCDValue = 1,
						actionID = 29054,
						category = "Self",
						conditionType = 4,
						dequeueIfLuaFalse = true,
						name = "Self: CD Guard",
						uuid = "bfa599a0-947b-3e85-a45c-5f8f4ec72f33",
						version = 3,
					},
					inheritedIndex = 8,
				},
				
				{
					data = 
					{
						buffCheckType = 2,
						buffID = 3054,
						category = "Self",
						matchAnyBuff = true,
						name = "Self: Missing Guard Buff",
						partyTargetNumber = 0,
						uuid = "d3dbb6e1-bece-f69e-b614-664e5d0a602a",
						version = 3,
					},
					inheritedIndex = 9,
				},
				
				{
					data = 
					{
						buffCheckType = 2,
						buffID = 3021,
						category = "Self",
						matchAnyBuff = true,
						name = "Self: Missing Unguarded Debuff",
						partyTargetNumber = 0,
						uuid = "76a64398-8d61-7201-bd70-a21880629ab0",
						version = 3,
					},
					inheritedIndex = 10,
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return TensorCore.getLBGauge() == 10000",
						dequeueIfLuaFalse = true,
						name = "LB1 Gauge",
						uuid = "517c2217-e097-57da-9776-86ce1d706430",
						version = 3,
					},
					inheritedIndex = 9,
				},
				
				{
					data = 
					{
						category = "Self",
						comparator = 2,
						conditionType = 2,
						hpValue = 70,
						name = "Self: HP <= 70%",
						uuid = "c4246bf2-6f5f-c761-8d3f-e1401d62d0f8",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 13,
						dequeueIfLuaFalse = true,
						jobValue = "DRAGOON",
						name = "Self: DRG",
						uuid = "e89c0e35-0932-9996-86e2-a0a6d93c0d71",
						version = 3,
					},
					inheritedIndex = 10,
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 13,
						dequeueIfLuaFalse = true,
						jobValue = "PALADIN",
						name = "Self: PLD",
						uuid = "bc8c8ba6-60b2-3e21-a559-ecf9a527630a",
						version = 3,
					},
					inheritedIndex = 14,
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 13,
						dequeueIfLuaFalse = true,
						jobValue = "DARKKNIGHT",
						name = "Self: DRK",
						uuid = "29b2107a-af6f-59d3-b836-fbe2a57e6838",
						version = 3,
					},
					inheritedIndex = 10,
				},
			},
			eventType = 2,
			name = "Lj: PvP | LB | Defend against LBs",
			uuid = "86bcef7b-50e5-082f-971d-d5c3fd7d03ee",
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
						actionID = 29054,
						allowInterrupt = true,
						conditions = 
						{
							
							{
								"f20be9b5-6eaa-6c13-beaf-880fa5d9da15",
								true,
							},
							
							{
								"0d4f6789-878e-72a1-b090-69cf2f3242c3",
								true,
							},
							
							{
								"d0977c20-4cc5-d2a6-97a7-adf970bc71df",
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
				
				{
					data = 
					{
						actionID = 29711,
						allowInterrupt = true,
						conditions = 
						{
							
							{
								"f20be9b5-6eaa-6c13-beaf-880fa5d9da15",
								true,
							},
							
							{
								"0d4f6789-878e-72a1-b090-69cf2f3242c3",
								true,
							},
							
							{
								"85b82f7a-ea69-5eb6-87c2-268a26855245",
								true,
							},
							
							{
								"21801a39-f772-9e60-a675-2c120844cfd0",
								true,
							},
							
							{
								"c4246bf2-6f5f-c761-8d3f-e1401d62d0f8",
								true,
							},
						},
						gVar = "ACR_RikuAST3_CD",
						ignoreWeaveRules = true,
						uuid = "6ab2f3b1-1b88-9d69-9f3b-8aea0c910afb",
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
						category = "Lua",
						conditionLua = "return FFXIV_Common_BotRunning or (HusbandoMaxStatus and HusbandoMaxStatus()) or false",
						dequeueIfLuaFalse = true,
						name = "Bot Enabled",
						uuid = "0d4f6789-878e-72a1-b090-69cf2f3242c3",
						version = 3,
					},
					inheritedIndex = 2,
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
						category = "Event",
						dequeueIfLuaFalse = true,
						eventArgType = 2,
						eventSpellID = 29515,
						name = "Seiton Tenchu",
						uuid = "85b82f7a-ea69-5eb6-87c2-268a26855245",
						version = 3,
					},
					inheritedIndex = 3,
				},
				
				{
					data = 
					{
						category = "Event",
						dequeueIfLuaFalse = true,
						eventArgOptionType = 3,
						eventArgType = 2,
						spellIDList = 
						{
							29515,
							29415,
						},
						uuid = "d0977c20-4cc5-d2a6-97a7-adf970bc71df",
						version = 3,
					},
					inheritedIndex = 4,
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
				
				{
					data = 
					{
						category = "Self",
						comparator = 2,
						conditionType = 2,
						hpValue = 70,
						name = "Self: HP <= 70%",
						uuid = "c4246bf2-6f5f-c761-8d3f-e1401d62d0f8",
						version = 3,
					},
				},
			},
			enabled = false,
			eventType = 2,
			name = "Lj: PvP | LB | Guard",
			uuid = "97c161b8-82c2-a45a-a192-1955d8a9ce3c",
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
								"21f92df0-2f0c-c6c3-b0c5-f690574a3461",
								true,
							},
							
							{
								"56567c6a-bd47-599a-a8d6-95b3de8074b4",
								true,
							},
							
							{
								"9ce74680-c33b-a114-b33e-a1e5bbfa3022",
								true,
							},
						},
						gVar = "ACR_RikuWAR3_CD",
						name = "Untarget",
						untarget = true,
						uuid = "6262c97b-ff70-0da6-a8ac-c3296ae7e370",
						version = 2.1,
					},
					inheritedIndex = 1,
				},
				
				{
					data = 
					{
						aType = "Misc",
						conditions = 
						{
							
							{
								"21f92df0-2f0c-c6c3-b0c5-f690574a3461",
								true,
							},
							
							{
								"56567c6a-bd47-599a-a8d6-95b3de8074b4",
								true,
							},
							
							{
								"f11d1d88-6957-f1a5-bde9-649984b4286a",
								true,
							},
							
							{
								"098bebc0-4fe7-b482-af45-c948beb06d75",
								true,
							},
						},
						gVar = "ACR_RikuAST3_CD",
						name = "Retarget",
						setTarget = true,
						targetType = "Detection Target",
						uuid = "aff173fd-ed5b-a20e-b718-c4e9abd271e3",
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
						category = "Lua",
						conditionLua = "return TensorCore.isPVPMap()",
						dequeueIfLuaFalse = true,
						name = "PVP Map",
						uuid = "21f92df0-2f0c-c6c3-b0c5-f690574a3461",
						version = 3,
					},
					inheritedIndex = 1,
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return FFXIV_Common_BotRunning or (HusbandoMaxStatus and HusbandoMaxStatus()) or false",
						dequeueIfLuaFalse = true,
						name = "Bot Enabled",
						uuid = "56567c6a-bd47-599a-a8d6-95b3de8074b4",
						version = 3,
					},
					inheritedIndex = 2,
				},
				
				{
					data = 
					{
						buffID = 1240,
						name = "Target: Chiten Buff",
						uuid = "9ce74680-c33b-a114-b33e-a1e5bbfa3022",
						version = 3,
					},
					inheritedIndex = 2,
				},
				
				{
					data = 
					{
						buffCheckType = 5,
						buffID = 1240,
						buffIDList = 
						{
							1240,
							3210,
							3039,
							3054,
							1302,
							394,
							4096,
						},
						matchAnyBuff = true,
						name = "Target: Buff Check",
						uuid = "f11d1d88-6957-f1a5-bde9-649984b4286a",
						version = 3,
					},
					inheritedIndex = 4,
				},
				
				{
					data = 
					{
						buffCheckType = 6,
						buffID = 1240,
						buffIDList = 
						{
							1240,
							3210,
							3039,
							3054,
							1302,
							394,
							4096,
						},
						category = "Party",
						name = "Enemy: Missing Buffs",
						partyTargetType = "Detection Target",
						uuid = "70c101e2-7460-63c7-937f-4cda49a9f928",
						version = 3,
					},
					inheritedIndex = 3,
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local ent = TensorCore.mGetEntity(eventArgs.detectionTargetID)\nlocal player = TensorCore.mGetPlayer()\n\nreturn ent ~= nil and ent.pvpteam ~= player.pvpteam and ent.los2\n",
						name = "Enemy: LoS",
						partyTargetSubType = 1,
						uuid = "c7bdd70a-1c17-55fe-a61f-29ba667e1bd5",
						version = 3,
					},
					inheritedIndex = 4,
				},
				
				{
					data = 
					{
						category = "Party",
						comparator = 2,
						conditionType = 4,
						inRangeValue = 5,
						name = "Range: <= 5y",
						partyTargetType = "Detection Target",
						uuid = "06cf3b41-91e0-3589-98d8-a44727e7e19a",
						version = 3,
					},
					inheritedIndex = 4,
				},
				
				{
					data = 
					{
						category = "Party",
						comparator = 2,
						conditionType = 4,
						inRangeValue = 24,
						name = "Range: <= 24y",
						partyTargetType = "Detection Target",
						uuid = "8fca4b64-909e-c8a6-8d20-48da6a238c8e",
						version = 3,
					},
					inheritedIndex = 6,
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 9,
						name = "Self: Melee",
						partyTargetType = "Melee DPS",
						uuid = "20757ad2-e20f-5bb6-b669-4d2ec1f61edb",
						version = 3,
					},
					inheritedIndex = 7,
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 9,
						name = "Self: Tank",
						partyTargetType = "Tank",
						uuid = "e4f0d6aa-857d-e0e4-a441-b12432512d1a",
						version = 3,
					},
					inheritedIndex = 8,
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 9,
						name = "Self: Healer",
						partyTargetType = "Healer",
						uuid = "a21b4b50-7cd9-cb3b-a5c5-bfc2754283b0",
						version = 3,
					},
					inheritedIndex = 9,
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 9,
						name = "Self: Ranged DPS",
						partyTargetType = "Ranged Physical DPS",
						uuid = "60f06f68-4c61-ef51-8857-3f7ac8f62357",
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
								"20757ad2-e20f-5bb6-b669-4d2ec1f61edb",
								true,
							},
							
							{
								"e4f0d6aa-857d-e0e4-a441-b12432512d1a",
								true,
							},
						},
						matchAnyBuff = true,
						name = "OR: Melee Job",
						partyTargetNumber = 0,
						uuid = "709aa939-12be-148d-ab53-6e9ea4f0cdc5",
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
								"60f06f68-4c61-ef51-8857-3f7ac8f62357",
								true,
							},
							
							{
								"a21b4b50-7cd9-cb3b-a5c5-bfc2754283b0",
								true,
							},
						},
						matchAnyBuff = true,
						name = "OR: Ranged Job",
						partyTargetNumber = 0,
						uuid = "cb46ece9-6f8b-5d4f-bdb1-520c8d2ed0c8",
						version = 3,
					},
					inheritedIndex = 12,
				},
				
				{
					data = 
					{
						category = "Filter",
						conditions = 
						{
							
							{
								"70c101e2-7460-63c7-937f-4cda49a9f928",
								true,
							},
							
							{
								"c7bdd70a-1c17-55fe-a61f-29ba667e1bd5",
								true,
							},
							
							{
								"06cf3b41-91e0-3589-98d8-a44727e7e19a",
								true,
							},
							
							{
								"709aa939-12be-148d-ab53-6e9ea4f0cdc5",
								true,
							},
						},
						filterTargetType = "ContentID",
						name = "F - Melee",
						partyTargetContentID = 0,
						uuid = "91423c71-20eb-c4aa-b9bb-e92d20dd4b46",
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
								"70c101e2-7460-63c7-937f-4cda49a9f928",
								true,
							},
							
							{
								"c7bdd70a-1c17-55fe-a61f-29ba667e1bd5",
								true,
							},
							
							{
								"8fca4b64-909e-c8a6-8d20-48da6a238c8e",
								true,
							},
							
							{
								"cb46ece9-6f8b-5d4f-bdb1-520c8d2ed0c8",
								true,
							},
						},
						filterTargetType = "ContentID",
						name = "F - Ranged",
						partyTargetContentID = 0,
						uuid = "5376f4e9-a6e1-b9a6-84fe-fc847544cba0",
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
								"91423c71-20eb-c4aa-b9bb-e92d20dd4b46",
								true,
							},
							
							{
								"5376f4e9-a6e1-b9a6-84fe-fc847544cba0",
								true,
							},
						},
						matchAnyBuff = true,
						partyTargetNumber = 0,
						uuid = "098bebc0-4fe7-b482-af45-c948beb06d75",
						version = 3,
					},
				},
			},
			name = "Lj: PvP | Target | Bad Buffs",
			uuid = "374bd26d-c4ea-e88e-a601-1da2cb34a2b6",
			version = 2,
		},
		inheritedIndex = 17,
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
								"21f92df0-2f0c-c6c3-b0c5-f690574a3461",
								true,
							},
							
							{
								"0efbcdc5-3297-65f0-aa91-e0abdc8dc600",
								true,
							},
							
							{
								"44128d03-06b0-14d1-9fc0-82ce4f605a75",
								true,
							},
						},
						gVar = "ACR_TensorMagnum3_CD",
						name = "Retarget",
						setTarget = true,
						targetType = "Detection Target",
						uuid = "cbb346a8-e89f-b9bb-bc7f-114284b9dab9",
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
						conditionLua = "return TensorCore.isPVPMap()",
						dequeueIfLuaFalse = true,
						name = "PVP Map",
						uuid = "21f92df0-2f0c-c6c3-b0c5-f690574a3461",
						version = 3,
					},
					inheritedIndex = 1,
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return FFXIV_Common_BotRunning or (HusbandoMaxStatus and HusbandoMaxStatus()) or false",
						dequeueIfLuaFalse = true,
						name = "Bot Enabled",
						uuid = "0efbcdc5-3297-65f0-aa91-e0abdc8dc600",
						version = 3,
					},
					inheritedIndex = 2,
				},
				
				{
					data = 
					{
						buffCheckType = 5,
						buffID = 1240,
						buffIDList = 
						{
							1240,
							3210,
							3039,
						},
						category = "Party",
						channelCheckSpellID = 29055,
						conditionType = 5,
						eventArgType = 2,
						eventSpellID = 29055,
						matchAnyBuff = true,
						name = "Enemy: Standard-issue Elixir",
						partyTargetType = "Detection Target",
						uuid = "f11d1d88-6957-f1a5-bde9-649984b4286a",
						version = 3,
					},
					inheritedIndex = 4,
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local ent = TensorCore.mGetEntity(eventArgs.detectionTargetID)\nlocal player = TensorCore.mGetPlayer()\n\nreturn ent ~= nil and ent.pvpteam ~= player.pvpteam and ent.los2\n",
						name = "Enemy: Line of Sight",
						partyTargetSubType = 1,
						uuid = "e9f51453-ac9a-e48a-b412-f6ab1751630d",
						version = 3,
					},
					inheritedIndex = 3,
				},
				
				{
					data = 
					{
						category = "Party",
						comparator = 2,
						conditionType = 4,
						inRangeValue = 5,
						name = "Range: <= 5y",
						partyTargetType = "Detection Target",
						uuid = "7ea4c04e-7657-20f1-8ac2-2f184323840e",
						version = 3,
					},
					inheritedIndex = 5,
				},
				
				{
					data = 
					{
						category = "Party",
						comparator = 2,
						conditionType = 4,
						inRangeValue = 24,
						name = "Range: <= 24y",
						partyTargetType = "Detection Target",
						uuid = "9f7e6c01-5044-e326-92de-c171a44362d0",
						version = 3,
					},
					inheritedIndex = 5,
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 9,
						name = "Self: Melee",
						partyTargetType = "Melee DPS",
						uuid = "0bc9db10-c3f9-2b89-b7f5-f76a6f6f9e0d",
						version = 3,
					},
					inheritedIndex = 7,
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 9,
						name = "Self: Tank",
						partyTargetType = "Tank",
						uuid = "b52779d9-20b9-364e-b8cb-61c0038a2c30",
						version = 3,
					},
					inheritedIndex = 8,
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 9,
						name = "Self: Healer",
						partyTargetType = "Healer",
						uuid = "8863a6f8-13cc-c1d2-8da5-15854a7da04f",
						version = 3,
					},
					inheritedIndex = 8,
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 9,
						name = "Self: Ranged DPS",
						partyTargetType = "Ranged Physical DPS",
						uuid = "a5fb294d-aeb6-cb8f-bbfd-8d166f15806b",
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
								"0bc9db10-c3f9-2b89-b7f5-f76a6f6f9e0d",
								true,
							},
							
							{
								"b52779d9-20b9-364e-b8cb-61c0038a2c30",
								true,
							},
						},
						matchAnyBuff = true,
						name = "OR: Melee Job",
						partyTargetNumber = 0,
						uuid = "f59c9443-2149-a213-b825-b88c260d88e6",
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
								"a5fb294d-aeb6-cb8f-bbfd-8d166f15806b",
								true,
							},
							
							{
								"8863a6f8-13cc-c1d2-8da5-15854a7da04f",
								true,
							},
						},
						matchAnyBuff = true,
						name = "OR: Ranged Job",
						partyTargetNumber = 0,
						uuid = "0dac3633-946e-ef62-9271-cea7e0939d90",
						version = 3,
					},
					inheritedIndex = 12,
				},
				
				{
					data = 
					{
						category = "Filter",
						conditions = 
						{
							
							{
								"f11d1d88-6957-f1a5-bde9-649984b4286a",
								true,
							},
							
							{
								"7ea4c04e-7657-20f1-8ac2-2f184323840e",
								true,
							},
							
							{
								"e9f51453-ac9a-e48a-b412-f6ab1751630d",
								true,
							},
							
							{
								"f59c9443-2149-a213-b825-b88c260d88e6",
								true,
							},
						},
						filterTargetType = "ContentID",
						name = "F - Melee",
						partyTargetContentID = 0,
						uuid = "b03b0218-33d6-c1fc-a774-355d1e5b9d0c",
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
								"f11d1d88-6957-f1a5-bde9-649984b4286a",
								true,
							},
							
							{
								"9f7e6c01-5044-e326-92de-c171a44362d0",
								true,
							},
							
							{
								"e9f51453-ac9a-e48a-b412-f6ab1751630d",
								true,
							},
							
							{
								"0dac3633-946e-ef62-9271-cea7e0939d90",
								true,
							},
						},
						filterTargetType = "ContentID",
						name = "F - Ranged",
						partyTargetContentID = 0,
						uuid = "f3b145fa-9220-6d28-91c8-d14e993036bf",
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
								"b03b0218-33d6-c1fc-a774-355d1e5b9d0c",
								true,
							},
							
							{
								"f3b145fa-9220-6d28-91c8-d14e993036bf",
								true,
							},
						},
						matchAnyBuff = true,
						partyTargetNumber = 0,
						uuid = "44128d03-06b0-14d1-9fc0-82ce4f605a75",
						version = 3,
					},
				},
			},
			name = "Lj: PvP | Target | Interrupt Heal",
			throttleTime = 1500,
			uuid = "7f97e235-ee9c-a9f7-a2eb-c7a50050e8b3",
			version = 2,
		},
		inheritedIndex = 18,
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
						actionLua = "gChampion.Toggles.CD = false\nself.used = true",
						conditions = 
						{
							
							{
								"01bf16fe-1001-e0b5-b19e-13893da00ce9",
								true,
							},
							
							{
								"93fb6aab-008b-7b97-aca4-ca078bd876b4",
								true,
							},
							
							{
								"cef6aa3a-7ca8-0dab-b718-66cee54f0ec3",
								true,
							},
							
							{
								"7d8e8ddd-9e37-a678-9927-a25de6b266a9",
								true,
							},
						},
						gVar = "ACR_TensorMagnum3_CD",
						name = "Disable CD",
						uuid = "665d8e90-c997-14de-b6dc-b73b4c85a661",
						version = 2.1,
					},
				},
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "gChampion.Toggles.CD = true\nself.used = true",
						conditions = 
						{
							
							{
								"01bf16fe-1001-e0b5-b19e-13893da00ce9",
								true,
							},
							
							{
								"93fb6aab-008b-7b97-aca4-ca078bd876b4",
								true,
							},
							
							{
								"cef6aa3a-7ca8-0dab-b718-66cee54f0ec3",
								true,
							},
							
							{
								"7d8e8ddd-9e37-a678-9927-a25de6b266a9",
								false,
							},
						},
						gVar = "ACR_TensorMagnum3_CD",
						name = "Enable CD",
						uuid = "cc44a405-32ec-6007-9208-4480966ffdc4",
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
						conditionLua = "return TensorCore.isPVPMap()",
						dequeueIfLuaFalse = true,
						name = "PVP Map",
						uuid = "01bf16fe-1001-e0b5-b19e-13893da00ce9",
						version = 3,
					},
					inheritedIndex = 1,
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return FFXIV_Common_BotRunning or (HusbandoMaxStatus and HusbandoMaxStatus()) or false",
						dequeueIfLuaFalse = true,
						name = "Bot Enabled",
						uuid = "93fb6aab-008b-7b97-aca4-ca078bd876b4",
						version = 3,
					},
					inheritedIndex = 2,
				},
				
				{
					data = 
					{
						conditionType = 2,
						contentid = 0,
						name = "Target: Player",
						uuid = "cef6aa3a-7ca8-0dab-b718-66cee54f0ec3",
						version = 3,
					},
					inheritedIndex = 2,
				},
				
				{
					data = 
					{
						buffID = 3054,
						matchAnyBuff = true,
						name = "Target: Has Guard Buff",
						partyTargetNumber = 0,
						uuid = "7d8e8ddd-9e37-a678-9927-a25de6b266a9",
						version = 3,
					},
				},
			},
			name = "Lj: PvP | Toggle CD",
			uuid = "652fe8d9-229a-e0fc-83eb-858b670aa321",
			version = 2,
		},
		inheritedIndex = 19,
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
						actionLua = "local player = TensorCore.mGetPlayer()\nlocal enemies = TensorCore.getEntityGroupList(\"Enemy\")\nlocal drawer = TensorCore.getStaticDrawer(436209407, 1.0)\n\nfor _, enemy in pairs(enemies) do\n    if enemy and enemy.alive and enemy.targetid == player.id then\n        \n        drawer:addLine(\n            enemy.pos.x, enemy.pos.y, enemy.pos.z,\n            player.pos.x, player.pos.y, player.pos.z,\n            3.0, 3.0\n        )\n        \n        drawer:addCircle(enemy.pos.x, enemy.pos.y, enemy.pos.z, 0.25, false)\n    end\nend\n\nself.used = true",
						conditions = 
						{
							
							{
								"de4e6183-498b-5312-93d1-cf10ffc99e11",
								true,
							},
						},
						gVar = "ACR_RikuAST3_CD",
						uuid = "1f6f7e87-d3b1-a9f2-8c05-08b710608cdd",
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
						conditionLua = "return TensorCore.isPVPMap()",
						dequeueIfLuaFalse = true,
						name = "PVP Map",
						uuid = "de4e6183-498b-5312-93d1-cf10ffc99e11",
						version = 3,
					},
					inheritedIndex = 1,
				},
			},
			eventType = 12,
			name = "Lj: PvP | Draw | Enemies Targeting Me",
			uuid = "82396a12-a25a-d0ce-8a9d-85182210f8e5",
			version = 2,
		},
		inheritedIndex = 20,
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
						actionLua = "local party = TensorCore.getEntityGroupList(\"Party\")\nlocal enemies = TensorCore.getEntityGroupList(\"Enemy\")\nlocal drawer = TensorCore.getStaticDrawer(4278255360, 1.0)\nlocal activeEnemies = {}\n\nfor _, enemy in pairs(enemies) do\n    activeEnemies[enemy.id] = enemy\nend\n\nfor _, member in pairs(party) do\n    if member.alive and member.targetid ~= nil then\n        local target = activeEnemies[member.targetid]\n        if target then\n            drawer:addLine(\n                member.pos.x, member.pos.y, member.pos.z,\n                target.pos.x, target.pos.y, target.pos.z,\n                3.0, 3.0\n            )\n        end\n    end\nend\n\nself.used = true",
						conditions = 
						{
							
							{
								"de4e6183-498b-5312-93d1-cf10ffc99e11",
								true,
							},
						},
						gVar = "ACR_RikuAST3_CD",
						uuid = "1f6f7e87-d3b1-a9f2-8c05-08b710608cdd",
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
						conditionLua = "return TensorCore.isPVPMap()",
						dequeueIfLuaFalse = true,
						name = "PVP Map",
						uuid = "de4e6183-498b-5312-93d1-cf10ffc99e11",
						version = 3,
					},
					inheritedIndex = 1,
				},
			},
			eventType = 12,
			name = "Lj: PvP | Draw | Team Targets",
			uuid = "5888e169-4ac7-9972-8eb0-db75099eefba",
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
						actionLua = "local player = TensorCore.mGetPlayer()\nlocal drawer = Argus2.ShapeDrawer:new(0, nil, 0, 4278190335, 2.0)\nlocal range = 5\ndrawer:addCircle(player.pos.x, player.pos.y, player.pos.z, range, true)\n\nself.used = true\n",
						conditions = 
						{
							
							{
								"32454d08-b746-c2ae-8ccd-ea1691ffefca",
								true,
							},
							
							{
								"363d1656-11d0-8a6f-9b64-7c676743d496",
								true,
							},
							
							{
								"ea280700-a1ea-0dca-9480-4eec4ebb6ffa",
								true,
							},
							
							{
								"4acb8fa5-fb8d-92df-a349-65aa9c454c18",
								true,
							},
						},
						gVar = "ACR_TensorMagnum3_CD",
						name = "Melee",
						uuid = "5971dfae-8a9f-9232-bc63-e70062583a1b",
						version = 2.1,
					},
					inheritedIndex = 1,
				},
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "local player = TensorCore.mGetPlayer()\nlocal drawer = Argus2.ShapeDrawer:new(0, nil, 0, 4278190335, 2.0)\nlocal range = 25\ndrawer:addCircle(player.pos.x, player.pos.y, player.pos.z, range, true)\n\nself.used = true\n",
						conditions = 
						{
							
							{
								"32454d08-b746-c2ae-8ccd-ea1691ffefca",
								true,
							},
							
							{
								"363d1656-11d0-8a6f-9b64-7c676743d496",
								true,
							},
							
							{
								"ea280700-a1ea-0dca-9480-4eec4ebb6ffa",
								true,
							},
							
							{
								"431108f2-c9fe-141a-a280-298599203c75",
								true,
							},
						},
						gVar = "ACR_TensorMagnum3_CD",
						name = "Ranged",
						uuid = "02aee8b7-5c1e-b215-9a44-438473ca9ace",
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
						conditionLua = "return TensorCore.isPVPMap()",
						dequeueIfLuaFalse = true,
						name = "PVP Map",
						uuid = "32454d08-b746-c2ae-8ccd-ea1691ffefca",
						version = 3,
					},
					inheritedIndex = 1,
				},
				
				{
					data = 
					{
						buffCheckType = 2,
						buffID = 1420,
						category = "Self",
						dequeueIfLuaFalse = true,
						name = "Self: No Mech",
						uuid = "363d1656-11d0-8a6f-9b64-7c676743d496",
						version = 3,
					},
					inheritedIndex = 2,
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 7,
						uuid = "ea280700-a1ea-0dca-9480-4eec4ebb6ffa",
						version = 3,
					},
					inheritedIndex = 2,
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 9,
						name = "Self: Melee",
						partyTargetType = "Melee DPS",
						uuid = "4227660e-2710-ae50-9efe-d37ab58c25d7",
						version = 3,
					},
					inheritedIndex = 3,
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 9,
						name = "Self: Tank",
						partyTargetType = "Tank",
						uuid = "7a37e465-a817-342c-9a0c-83fe60333063",
						version = 3,
					},
					inheritedIndex = 4,
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 9,
						name = "Self: Healer",
						partyTargetType = "Healer",
						uuid = "939c0ed2-4f31-ea28-8454-c5670bdfada4",
						version = 3,
					},
					inheritedIndex = 5,
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 9,
						name = "Self: Ranged DPS",
						partyTargetType = "Ranged Physical DPS",
						uuid = "4c7b348d-42fd-8d6e-bd55-49bf4dedda50",
						version = 3,
					},
					inheritedIndex = 4,
				},
				
				{
					data = 
					{
						category = "Filter",
						conditions = 
						{
							
							{
								"4227660e-2710-ae50-9efe-d37ab58c25d7",
								true,
							},
							
							{
								"7a37e465-a817-342c-9a0c-83fe60333063",
								true,
							},
						},
						matchAnyBuff = true,
						name = "OR: Melee Job",
						partyTargetNumber = 0,
						uuid = "4acb8fa5-fb8d-92df-a349-65aa9c454c18",
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
								"939c0ed2-4f31-ea28-8454-c5670bdfada4",
								true,
							},
							
							{
								"4c7b348d-42fd-8d6e-bd55-49bf4dedda50",
								true,
							},
						},
						dequeueIfLuaFalse = true,
						matchAnyBuff = true,
						name = "OR: Ranged Job",
						partyTargetNumber = 0,
						uuid = "431108f2-c9fe-141a-a280-298599203c75",
						version = 3,
					},
					inheritedIndex = 8,
				},
			},
			eventType = 12,
			name = "Lj: PvP | Draw | Max Range",
			uuid = "e3fdc640-4b68-659a-a6b5-63fb14708b84",
			version = 2,
		},
		inheritedIndex = 22,
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
						actionLua = "local targetID = eventArgs.detectionTargetID\nlocal ent = TensorCore.mGetEntity(targetID)\nlocal player = TensorCore.mGetPlayer()\n\nif not ent then\n    self.used = true\n    self.eventConditionMismatch = true\n    return\nend\n\nlocal currentTime = Now()\n\n-- Buffs to track on Enemy players\nlocal enemyBuffsToTrack = {\n    { name = \"Chiten\", ids = { 1240 } },\n    { name = \"Scales\", ids = { 4096 } },\n    { name = \"Invul\",  ids = { 1302, 3039, 394 } }\n}\n\n-- Buffs to track on Friendly players (your team)\nlocal friendlyBuffsToTrack = {\n    { name = \"Wildfire\", ids = { 1323 } }\n}\n\nlocal activeBuff = nil\nlocal activeText = \"\"\n\n-- Determine which list of buffs to check based on team\nlocal isFriendly = (ent.pvpteam == player.pvpteam)\nlocal buffsToCheck = isFriendly and friendlyBuffsToTrack or enemyBuffsToTrack\n\ndata.ljNextDrawTime = data.ljNextDrawTime or {}\ndata.ljNextDrawTime[targetID] = data.ljNextDrawTime[targetID] or {}\n\n-- Find the active buff from the selected list\nfor _, buffData in ipairs(buffsToCheck) do\n    for _, buffID in ipairs(buffData.ids) do\n        local buff = TensorCore.getBuff(targetID, buffID)\n        if buff then\n            activeBuff = buff\n            activeText = buffData.name\n            break \n        end\n    end\n    if activeBuff then break end\nend\n\n-- Draw WorldText on specific entity\nif activeBuff then\n    local duration = activeBuff.duration or 0\n    if duration <= 0 then \n        duration = 10 -- Fallback duration\n    end\n    \n    local timerMs = math.floor(duration * 1000)\n    local nextAllowedDraw = data.ljNextDrawTime[targetID][activeText] or 0\n    \n    -- Avoid spam draw\n    if currentTime >= nextAllowedDraw then\n        AnyoneCore.addTimedWorldTextOnEnt(timerMs, activeText, targetID, AnyoneCore.white, true, 1.5)\n        data.ljNextDrawTime[targetID][activeText] = currentTime + timerMs\n    end\nend\n\nself.used = true\nself.eventConditionMismatch = true",
						conditions = 
						{
							
							{
								"21f92df0-2f0c-c6c3-b0c5-f690574a3461",
								true,
							},
							
							{
								"098bebc0-4fe7-b482-af45-c948beb06d75",
								true,
							},
						},
						endIfUsed = true,
						gVar = "ACR_TensorMagnum3_CD",
						name = "Lua",
						uuid = "c16ed0fb-e9ca-2db6-8b2c-d2d9a439c6de",
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
						conditionLua = "return TensorCore.isPVPMap()",
						dequeueIfLuaFalse = true,
						name = "PVP Map",
						uuid = "21f92df0-2f0c-c6c3-b0c5-f690574a3461",
						version = 3,
					},
					inheritedIndex = 1,
				},
				
				{
					data = 
					{
						buffCheckType = 5,
						buffID = 1240,
						buffIDList = 
						{
							1240,
							3039,
							1302,
							394,
							4096,
							1323,
						},
						category = "Party",
						matchAnyBuff = true,
						name = "Buff Checks",
						partyTargetType = "Detection Target",
						uuid = "f11d1d88-6957-f1a5-bde9-649984b4286a",
						version = 3,
					},
					inheritedIndex = 4,
				},
				
				{
					data = 
					{
						category = "Filter",
						conditions = 
						{
							
							{
								"f11d1d88-6957-f1a5-bde9-649984b4286a",
								true,
							},
						},
						filterTargetType = "ContentID",
						matchAnyBuff = true,
						partyTargetContentID = 0,
						uuid = "098bebc0-4fe7-b482-af45-c948beb06d75",
						version = 3,
					},
				},
			},
			name = "Lj: PvP | WorldText | Bad Buffs",
			uuid = "57d43549-0906-9a6e-9c34-555e2e79e0b2",
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
						actionID = 29055,
						actionLua = "eventArgs.detectionTargetID = eventArgs.entityID",
						allowInterrupt = true,
						conditions = 
						{
							
							{
								"c296bfa6-2037-b4b1-9be1-e74f49f208e2",
								true,
							},
							
							{
								"f4550245-cd73-c161-a7ad-364d880405d9",
								true,
							},
							
							{
								"b31ab2c6-e21b-9f59-988e-f72d68bac396",
								true,
							},
							
							{
								"eddd8629-49f8-72df-9eab-f5dac63ec430",
								true,
							},
							
							{
								"7ca2e99a-bac9-f1f2-9313-8026071fcab7",
								true,
							},
							
							{
								"2646331b-f8b0-81ff-9fe8-b8c7c9bd926b",
								true,
							},
						},
						gVar = "ACR_RikuWAR3_CD",
						ignoreWeaveRules = true,
						uuid = "675d5656-bd7e-07b7-a711-603b979f0d20",
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
						conditionLua = "return TensorCore.isPVPMap()",
						dequeueIfLuaFalse = true,
						name = "PVP Map",
						uuid = "c296bfa6-2037-b4b1-9be1-e74f49f208e2",
						version = 3,
					},
					inheritedIndex = 1,
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return FFXIV_Common_BotRunning or (HusbandoMaxStatus and HusbandoMaxStatus()) or false",
						dequeueIfLuaFalse = true,
						name = "Bot Enabled",
						uuid = "f4550245-cd73-c161-a7ad-364d880405d9",
						version = 3,
					},
					inheritedIndex = 2,
				},
				
				{
					data = 
					{
						category = "Event",
						dequeueIfLuaFalse = true,
						eventArgType = 2,
						eventSpellID = 29066,
						name = "Event: Guardian",
						uuid = "b31ab2c6-e21b-9f59-988e-f72d68bac396",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 9,
						dequeueIfLuaFalse = true,
						inGroupTargetType = "Self",
						name = "Self: Event Target",
						partyTargetType = "Event Target",
						uuid = "eddd8629-49f8-72df-9eab-f5dac63ec430",
						version = 3,
					},
				},
				
				{
					data = 
					{
						buffID = 1302,
						category = "Party",
						name = "Event Entity: Has Hallowed Ground",
						partyTargetType = "Event Entity",
						uuid = "7ca2e99a-bac9-f1f2-9313-8026071fcab7",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Self",
						comparator = 2,
						conditionType = 2,
						hpValue = 40,
						name = "Self: HP <= 40%",
						uuid = "2646331b-f8b0-81ff-9fe8-b8c7c9bd926b",
						version = 3,
					},
				},
			},
			eventType = 2,
			name = "LJ: PvP | Heal under Cover",
			uuid = "8ed86155-9c72-b584-a6b0-3c30fddadff5",
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
						actionID = 43248,
						conditions = 
						{
							
							{
								"3b508280-ffe4-3401-ba07-def2652791fd",
								true,
							},
							
							{
								"59f5f160-a5d0-e58e-88dd-9d9c65b9d6a9",
								true,
							},
							
							{
								"479017e8-87a5-9f29-b37a-e46310a7581a",
								true,
							},
							
							{
								"c8b1048e-5219-cff1-a1cc-daa2e0263d97",
								true,
							},
							
							{
								"9907254c-b7d5-93f4-ae57-c5c42ab7a82d",
								true,
							},
							
							{
								"91a67de6-9ef6-5f50-ab5e-78f5f06f4d9d",
								true,
							},
						},
						gVar = "ACR_TensorMagnum3_CD",
						ignoreWeaveRules = true,
						targetType = "Detection Target",
						uuid = "8a0fcdea-ec32-9dd7-8a85-47cf875947b2",
						version = 2.1,
					},
				},
				
				{
					data = 
					{
						actionID = 43251,
						conditions = 
						{
							
							{
								"3b508280-ffe4-3401-ba07-def2652791fd",
								true,
							},
							
							{
								"59f5f160-a5d0-e58e-88dd-9d9c65b9d6a9",
								true,
							},
							
							{
								"479017e8-87a5-9f29-b37a-e46310a7581a",
								true,
							},
							
							{
								"7c336ab4-992d-4885-8eb2-7d4b1057e808",
								true,
							},
							
							{
								"0b96fa2c-c8d6-35cf-859c-89cbca8a9018",
								true,
							},
							
							{
								"1775b902-b84a-ade3-a351-4097e017264b",
								true,
							},
						},
						gVar = "ACR_TensorMagnum3_CD",
						ignoreWeaveRules = true,
						targetType = "Detection Target",
						uuid = "fe042b98-0383-b083-8968-d5ae7a45a9c0",
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
						conditionLua = "return TensorCore.isPVPMap()",
						dequeueIfLuaFalse = true,
						name = "PVP Map",
						uuid = "3b508280-ffe4-3401-ba07-def2652791fd",
						version = 3,
					},
					inheritedIndex = 1,
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return FFXIV_Common_BotRunning or (HusbandoMaxStatus and HusbandoMaxStatus()) or false",
						dequeueIfLuaFalse = true,
						name = "Bot Enabled",
						uuid = "59f5f160-a5d0-e58e-88dd-9d9c65b9d6a9",
						version = 3,
					},
					inheritedIndex = 2,
				},
				
				{
					data = 
					{
						buffCheckType = 2,
						buffID = 3054,
						category = "Self",
						name = "Self: No Guard",
						uuid = "479017e8-87a5-9f29-b37a-e46310a7581a",
						version = 3,
					},
					inheritedIndex = 3,
				},
				
				{
					data = 
					{
						buffID = 4490,
						category = "Self",
						dequeueIfLuaFalse = true,
						name = "Self Buff: Bravery",
						uuid = "50e00861-4c0c-a2f8-963e-0bb4096e83b8",
						version = 3,
					},
				},
				
				{
					data = 
					{
						buffID = 4488,
						category = "Self",
						dequeueIfLuaFalse = true,
						name = "Self Buff: Smite",
						uuid = "c8b1048e-5219-cff1-a1cc-daa2e0263d97",
						version = 3,
					},
					inheritedIndex = 4,
				},
				
				{
					data = 
					{
						buffID = 4491,
						category = "Self",
						dequeueIfLuaFalse = true,
						name = "Self Buff: Eagle Eye Shot",
						uuid = "7c336ab4-992d-4885-8eb2-7d4b1057e808",
						version = 3,
					},
					inheritedIndex = 5,
				},
				
				{
					data = 
					{
						actionCDValue = 1,
						actionID = 43250,
						category = "Self",
						comparator = 2,
						conditionType = 4,
						name = "CD: Bravery",
						uuid = "6dfbb1f4-d480-d3f4-9064-f24c6ee45778",
						version = 3,
					},
				},
				
				{
					data = 
					{
						actionCDValue = 1,
						actionID = 43248,
						category = "Self",
						comparator = 2,
						conditionType = 4,
						name = "CD: Smite",
						uuid = "9907254c-b7d5-93f4-ae57-c5c42ab7a82d",
						version = 3,
					},
					inheritedIndex = 6,
				},
				
				{
					data = 
					{
						actionCDValue = 1,
						actionID = 43251,
						category = "Self",
						comparator = 2,
						conditionType = 4,
						name = "CD: Eagle Eye Shot",
						uuid = "0b96fa2c-c8d6-35cf-859c-89cbca8a9018",
						version = 3,
					},
					inheritedIndex = 7,
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local ent = TensorCore.mGetEntity(eventArgs.detectionTargetID)\nlocal player = TensorCore.mGetPlayer()\n\nreturn ent ~= nil and ent.pvpteam ~= player.pvpteam and ent.los2\n",
						name = "Enemy: LoS",
						partyTargetSubType = 1,
						uuid = "ba247631-4688-85a4-a0c4-54e6765161ae",
						version = 3,
					},
					inheritedIndex = 7,
				},
				
				{
					data = 
					{
						category = "Party",
						comparator = 2,
						conditionType = 4,
						inRangeValue = 10,
						name = "Enemy: Range <= 10y",
						partyTargetType = "Detection Target",
						uuid = "9922f191-cf99-0e8a-a13b-1a17f7780ccb",
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
						inRangeValue = 40,
						name = "Enemy: Range <= 40y",
						partyTargetType = "Detection Target",
						uuid = "4786fa42-0845-a7f8-bbf6-5701819a82fc",
						version = 3,
					},
					inheritedIndex = 11,
				},
				
				{
					data = 
					{
						buffID = 3054,
						category = "Party",
						name = "Enemy: Guard",
						partyTargetType = "Detection Target",
						uuid = "d7600536-13b8-1f61-8736-81e35a2cb3c5",
						version = 3,
					},
					inheritedIndex = 12,
				},
				
				{
					data = 
					{
						buffCheckType = 6,
						buffIDList = 
						{
							394,
							1302,
							3039,
						},
						category = "Party",
						name = "Enemy: Invul Buffs Missing",
						partyTargetType = "Detection Target",
						uuid = "280e4fc5-4b9f-8f74-bf67-e1ece54ff2c7",
						version = 3,
					},
					inheritedIndex = 14,
				},
				
				{
					data = 
					{
						conditionType = 3,
						hpValue = 1,
						name = "Target: HP => 1%",
						uuid = "748ffe88-3c9e-b1ed-ac2a-d19198ff9e55",
						version = 3,
					},
					inheritedIndex = 4,
				},
				
				{
					data = 
					{
						category = "Party",
						comparator = 2,
						conditionType = 2,
						hpValue = 33,
						name = "Enemy: HP <= 33%",
						partyTargetType = "Detection Target",
						uuid = "ad4339be-4543-925c-b5de-68d92f136c17",
						version = 3,
					},
					inheritedIndex = 8,
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 7,
						uuid = "6485c559-23a0-554f-9f62-8c810dc20464",
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
								"ba247631-4688-85a4-a0c4-54e6765161ae",
								true,
							},
							
							{
								"9922f191-cf99-0e8a-a13b-1a17f7780ccb",
								true,
							},
							
							{
								"280e4fc5-4b9f-8f74-bf67-e1ece54ff2c7",
								true,
							},
							
							{
								"ad4339be-4543-925c-b5de-68d92f136c17",
								true,
							},
						},
						filterTargetSubtype = "Lowest HP",
						filterTargetType = "ContentID",
						name = "F - Enemy <= 10y Range + <= 33% HP",
						partyTargetContentID = 0,
						uuid = "91a67de6-9ef6-5f50-ab5e-78f5f06f4d9d",
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
								"ba247631-4688-85a4-a0c4-54e6765161ae",
								true,
							},
							
							{
								"4786fa42-0845-a7f8-bbf6-5701819a82fc",
								true,
							},
							
							{
								"280e4fc5-4b9f-8f74-bf67-e1ece54ff2c7",
								true,
							},
						},
						filterTargetType = "ContentID",
						name = "F - Enemy <= 40y Range",
						partyTargetContentID = 0,
						uuid = "1775b902-b84a-ade3-a351-4097e017264b",
						version = 3,
					},
				},
			},
			name = "Lj: PvP | Role Buffs",
			uuid = "15c3c3d6-66cc-96ef-95fe-a850d6bcdfc7",
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
						aType = "Misc",
						actionID = 43250,
						conditions = 
						{
							
							{
								"3b508280-ffe4-3401-ba07-def2652791fd",
								true,
							},
							
							{
								"59f5f160-a5d0-e58e-88dd-9d9c65b9d6a9",
								true,
							},
							
							{
								"b3132983-72af-0769-acd9-3e71d2ea6036",
								true,
							},
							
							{
								"1775b902-b84a-ade3-a351-4097e017264b",
								true,
							},
						},
						gVar = "ACR_TensorMagnum3_CD",
						ignoreWeaveRules = true,
						setTarget = true,
						targetType = "Detection Target",
						uuid = "aef5bc42-bfe6-a681-84e0-a27132780481",
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
						conditionLua = "return TensorCore.isPVPMap()",
						dequeueIfLuaFalse = true,
						name = "PVP Map",
						uuid = "3b508280-ffe4-3401-ba07-def2652791fd",
						version = 3,
					},
					inheritedIndex = 1,
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return (HusbandoMaxStatus and HusbandoMaxStatus()) or false",
						dequeueIfLuaFalse = true,
						name = "Bot Enabled",
						uuid = "59f5f160-a5d0-e58e-88dd-9d9c65b9d6a9",
						version = 3,
					},
					inheritedIndex = 2,
				},
				
				{
					data = 
					{
						buffCheckType = 2,
						buffID = 3054,
						category = "Lua",
						conditionLua = "return TensorCore.mGetTarget() == nil",
						name = "Self: No Target",
						uuid = "479017e8-87a5-9f29-b37a-e46310a7581a",
						version = 3,
					},
					inheritedIndex = 3,
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local ent = TensorCore.mGetEntity(eventArgs.detectionTargetID)\nlocal player = TensorCore.mGetPlayer()\n\nreturn ent ~= nil and ent.pvpteam ~= player.pvpteam and ent.los2\n",
						name = "Enemy: LoS",
						partyTargetSubType = 1,
						uuid = "ba247631-4688-85a4-a0c4-54e6765161ae",
						version = 3,
					},
					inheritedIndex = 7,
				},
				
				{
					data = 
					{
						category = "Party",
						comparator = 2,
						conditionType = 4,
						inRangeValue = 25,
						name = "Enemy: Range <= 25y",
						partyTargetType = "Detection Target",
						uuid = "4786fa42-0845-a7f8-bbf6-5701819a82fc",
						version = 3,
					},
					inheritedIndex = 11,
				},
				
				{
					data = 
					{
						buffID = 3054,
						category = "Party",
						name = "Enemy: Guard",
						partyTargetType = "Detection Target",
						uuid = "d7600536-13b8-1f61-8736-81e35a2cb3c5",
						version = 3,
					},
					inheritedIndex = 12,
				},
				
				{
					data = 
					{
						buffCheckType = 6,
						buffIDList = 
						{
							394,
							1302,
							3039,
						},
						category = "Party",
						name = "Enemy: Invul Buffs Missing",
						partyTargetType = "Detection Target",
						uuid = "280e4fc5-4b9f-8f74-bf67-e1ece54ff2c7",
						version = 3,
					},
					inheritedIndex = 14,
				},
				
				{
					data = 
					{
						conditionType = 6,
						hpValue = 1,
						inRangeValue = 25,
						name = "Target: Range => 25y",
						uuid = "748ffe88-3c9e-b1ed-ac2a-d19198ff9e55",
						version = 3,
					},
					inheritedIndex = 4,
				},
				
				{
					data = 
					{
						category = "Filter",
						conditions = 
						{
							
							{
								"479017e8-87a5-9f29-b37a-e46310a7581a",
								true,
							},
							
							{
								"748ffe88-3c9e-b1ed-ac2a-d19198ff9e55",
								true,
							},
						},
						matchAnyBuff = true,
						name = "OR: Max Range",
						partyTargetNumber = 0,
						uuid = "b3132983-72af-0769-acd9-3e71d2ea6036",
						version = 3,
					},
					inheritedIndex = 10,
				},
				
				{
					data = 
					{
						category = "Filter",
						conditions = 
						{
							
							{
								"ba247631-4688-85a4-a0c4-54e6765161ae",
								true,
							},
							
							{
								"4786fa42-0845-a7f8-bbf6-5701819a82fc",
								true,
							},
							
							{
								"d7600536-13b8-1f61-8736-81e35a2cb3c5",
								false,
							},
							
							{
								"280e4fc5-4b9f-8f74-bf67-e1ece54ff2c7",
								true,
							},
						},
						filterTargetType = "ContentID",
						name = "F - Enemy <= 25y Range",
						partyTargetContentID = 0,
						uuid = "1775b902-b84a-ade3-a351-4097e017264b",
						version = 3,
					},
				},
			},
			name = "Lj: PvP | HM Target Helper",
			uuid = "91ea61f5-efab-eead-b737-4e21468f7710",
			version = 2,
		},
		inheritedIndex = 26,
	}, 
	inheritedProfiles = 
	{
		"store\\anyone\\extra\\pvp",
	},
}



return tbl
