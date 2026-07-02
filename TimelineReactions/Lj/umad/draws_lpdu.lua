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
							actionLua = "-- >>> SET YOUR ROLE HERE <<<\n-- Valid values: \"MT\", \"OT\", \"H1\", \"H2\", \"M1\", \"M2\", \"R1\", \"R2\"\nlocal myRole = \"MT\"\n\n-- DO NOT TOUCH ANYTHING BELOW THIS IF YOU DON'T KNOW WHAT YOU'RE DOING\n-- ==========================================\n-- GLOBAL: GetCurrentRole()\n-- Returns the role string this client is assigned to (e.g. \"MT\").\n-- ==========================================\nif not GetCurrentRole then\n    function GetCurrentRole()\n        return myRole\n    end\nend\n\n-- ==========================================\n-- GLOBAL: GetLightParty(roleStr)\n-- Returns 1 for Light Party 1 (MT, H1, M1, R1),\n--         2 for Light Party 2 (OT, H2, M2, R2),\n--         0 if unknown.\n-- @param roleStr string (optional): defaults to GetCurrentRole().\n-- ==========================================\nif not GetLightParty then\n    function GetLightParty(roleStr)\n        local targetRole = roleStr or (GetCurrentRole and GetCurrentRole())\n        if targetRole == \"MT\" or targetRole == \"H1\" or targetRole == \"M1\" or targetRole == \"R1\" then return 1 end\n        if targetRole == \"OT\" or targetRole == \"H2\" or targetRole == \"M2\" or targetRole == \"R2\" then return 2 end\n        return 0\n    end\nend\n\nself.used = true",
							gVar = "ACR_RikuSGE3_CD",
							uuid = "8903f3e7-6f1e-d3d7-a4a4-9b37630c95d1",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				enabled = false,
				mechanicTime = 15.261765625,
				name = "[Lj Data] Set Role & Globals",
				timelineIndex = 1,
				timerOffset = -15,
				uuid = "c9a63d6c-1f38-b435-ab0f-429f2b1d0505",
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
							actionLua = "local dmu = AnyoneCore.Settings.Reactions.dmu\n\ndmu.p1TeleTrounceStrat = 1\n\ndmu.p2ForsakenAutomaticCongaSettings = {\n    d1Spot = 1,\n    d2Spot = 2,\n    d3Spot = 3,\n    d4Spot = 4,\n    h1West = 2,\n    t1West = 2\n}\n\ndmu.p2ForsakenAutomaticPreference = 4\n\ndmu.p2ForsakenAutomaticTrounceSettings = {\n    D1Idx = 5,\n    D2Idx = 7,\n    D3Idx = 1,\n    D4Idx = 3,\n    H1Idx = 5,\n    H2Idx = 7,\n    T1Idx = 1,\n    T2Idx = 3\n}\n\ndmu.p2ForsakenAutomaticWaveSettings = {\n    d1Spot = 1,\n    d2Spot = 2,\n    d3Spot = 3,\n    d4Spot = 4,\n    h1West = 2,\n    t1West = 2\n}\n\ndmu.p2ForsakenCongaOption = 2\ndmu.p2ForsakenDpsRoleMode = 1\ndmu.p2ForsakenHelperEnabled = true\ndmu.p2ForsakenPairings = {\n    D1Partner = 7,\n    D2Partner = 8,\n    D3Partner = 5,\n    D4Partner = 6,\n    H1Partner = 1,\n    H2Partner = 2,\n    T1Partner = 3,\n    T2Partner = 4\n}\n\ndmu.p2ForsakenStrat = 12\n\ndmu.p3BlackHoleSolverStrategy = 2\n\ndmu.p4AccelFinalReminder = true\ndmu.p4HelperEnabled = true\ndmu.p4ShriekLockface = true\ndmu.p4StackSpreadOrientation = 1\n\ndmu.p5MaddeningFacing = 1\ndmu.p5TowerRotation = 1\n\nself.used = true",
							gVar = "ACR_RikuSGE3_CD",
							uuid = "72436b0d-a28a-4e51-a27b-9dbefa347f5e",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
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
							actionLua = "local timeout = 4000\nlocal player = TensorCore.mGetPlayer()\nlocal sourcePos = player.pos\nlocal heading = math.pi\n\n\nlocal centerX, centerZ = 100.0, 100.0\nlocal arenaRadius = 20.0\n\n-- Calculate the exact Z-coordinate of the northern edge at the player's current X-coordinate\n-- Circle equation: (x - h)^2 + (z - k)^2 = r^2\nlocal xOffset = sourcePos.x - centerX\nlocal maxOffset = math.min(math.abs(xOffset), arenaRadius) -- Clamp to avoid errors if slightly out of bounds\nlocal edgeZ = centerZ - math.sqrt((arenaRadius^2) - (maxOffset^2))\n\n-- Distance from player to the calculated northern edge\nlocal totalDistance = math.max(0, sourcePos.z - edgeZ)\n\n-- Dynamic proportional sizing based on distance to the edge\nlocal scale = math.min(1, totalDistance / arenaRadius)\nlocal baseWidth = math.max(0.5, 1 * scale) \nlocal tipWidth = math.max(1.5, 3 * scale)\nlocal tipLength = math.max(1.5, 5 * scale)\n\nlocal baseLength = totalDistance - tipLength\n\n-- Draw the Arrow\nif baseLength > 0 then\n    local colorStart = 0xFF00FFFF\n    local colorMid = 0xFF0088FF\n    local colorEnd = 0xFF0000FF\n    local colorOutline = 0xFFFFFFFF\n    local outlineThickness = 2\n\n    local drawer = TensorCore.getCachedDrawer(colorStart, colorMid, colorEnd, colorOutline, outlineThickness)\n    drawer:addTimedArrow(\n        timeout,\n        sourcePos.x, sourcePos.y, sourcePos.z,\n        heading,\n        baseLength, baseWidth, tipLength, tipWidth,\n        0, false, Argus2.RenderFlags.FLAG_RENDER_OVERLAY\n    )\nend\n\nself.used = true",
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
							actionLua = "local timeout = 4000\nlocal center = 100\nlocal spacing = 32 / 7\nlocal order = { \"H2\", \"H1\", \"OT\", \"MT\", \"M1\", \"M2\", \"R1\", \"R2\" }\nlocal xPositions = {}\nfor i, role in ipairs(order) do\n    xPositions[role] = center + spacing * (i - (#order + 1) / 2)\nend\n\nlocal sourcePos = { x = center, y = 0, z = center }\nlocal targetPos = { x = xPositions[GetCurrentRole()], y = 0, z = center }\n\nlocal heading = TensorCore.getHeadingToTarget(sourcePos, targetPos)\nlocal totalDistance = TensorCore.getDistance2d(sourcePos, targetPos)\n\n-- Proximity scaling\nlocal scale = math.min(1, totalDistance / 15)\nlocal baseWidth = math.max(0.5, 1 * scale)\nlocal tipWidth = math.max(1.5, 5 * scale)\nlocal tipLength = math.max(2, 3 * scale)\nlocal baseLength = totalDistance - tipLength\n\nif baseLength > 0 then\n    local colorStart = 0xFF00FFFF\n    local colorMid = 0xFF0088FF\n    local colorEnd = 0xFF0000FF\n    local colorOutline = 0xFFFFFFFF\n    local outlineThickness = 2\n\n    local drawer = TensorCore.getCachedDrawer(colorStart, colorMid, colorEnd, colorOutline, outlineThickness)\n    drawer:addTimedArrow(\n        timeout,\n        sourcePos.x, sourcePos.y, sourcePos.z,\n        heading,\n        baseLength, baseWidth, tipLength, tipWidth,\n        0, false, Argus2.RenderFlags.FLAG_RENDER_OVERLAY\n    )\nend\n\nself.used = true",
							conditions = 
							{
								
								{
									"c5bafdfa-4352-f094-9392-198940ca1a79",
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
							conditionLua = "return GetCurrentRole() ~= nil",
							dequeueIfLuaFalse = true,
							name = "Role Set",
							uuid = "c5bafdfa-4352-f094-9392-198940ca1a79",
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
							actionLua = "local timeout = 7000 \nlocal x, y, z = 100, 0, 100\n\n-- Determine heading based on Light Party\nlocal heading = math.pi -- Default to North for Light Party 1\nif GetLightParty() == 2 then\n    heading = 0         -- Face South for Light Party 2\nend\n\nlocal baseLength = 15\nlocal baseWidth = 1\nlocal tipLength = 5\nlocal tipWidth = 3\n\nlocal colorStart = 0xFF00FFFF\nlocal colorMid = 0xFF0088FF\nlocal colorEnd = 0xFF0000FF\nlocal colorOutline = 0xFFFFFFFF\nlocal outlineThickness = 2\n\nlocal drawer = TensorCore.getCachedDrawer(colorStart, colorMid, colorEnd, colorOutline, outlineThickness)\ndrawer:addTimedArrow(timeout, x, y, z, heading, baseLength, baseWidth, tipLength, tipWidth, 0, nil, Argus2.RenderFlags.FLAG_RENDER_OVERLAY)\n\nself.used = true",
							conditions = 
							{
								
								{
									"b66ef0db-52b2-34d0-b728-7b1236a4a478",
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
							conditionLua = "return GetLightParty() ~= nil",
							dequeueIfLuaFalse = true,
							name = "Light Party Set",
							uuid = "b66ef0db-52b2-34d0-b728-7b1236a4a478",
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
							actionLua = "local player = TensorCore.mGetPlayer()\nlocal role = GetCurrentRole()\nlocal targetX, targetZ = 100, 100\n\n-- Map shared positions based on role\nif role == \"H2\" or role == \"R2\" then\n    targetX, targetZ = 85, 95    -- Left Outer (West/North-West)\nelseif role == \"OT\" or role == \"M2\" then\n    targetX, targetZ = 91, 100   -- Left Inner (Directly West, 9 yalms out)\nelseif role == \"MT\" or role == \"M1\" then\n    targetX, targetZ = 109, 100  -- Right Inner (Directly East, 9 yalms out)\nelseif role == \"H1\" or role == \"R1\" then\n    targetX, targetZ = 115, 95   -- Right Outer (East/North-East)\nend\n\nlocal targetPos = {x = targetX, z = targetZ}\n\nlocal heading = TensorCore.getHeadingToTarget(player.pos, targetPos)\nlocal distance = TensorCore.getDistance2d(player.pos, targetPos)\n\nlocal tipLength, tipWidth = 3, 3\nlocal baseWidth = 1\nlocal baseLength = math.max(0, distance - tipLength)\n\n\nlocal drawer = TensorCore.getCachedDrawer(0xFF00FFFF, 0xFF0088FF, 0xFF0000FF, 0xFFFFFFFF, 2)\ndrawer:addTimedArrow(5000, player.pos.x, player.pos.y, player.pos.z, heading, baseLength, baseWidth, tipLength, tipWidth, 0, nil, Argus2.RenderFlags.FLAG_RENDER_OVERLAY)\n\nself.used = true",
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
							conditionLua = "return GetCurrentRole() ~= nil",
							dequeueIfLuaFalse = true,
							name = "Role Set",
							uuid = "aacd6563-fc48-2a2f-98ce-936b401203a0",
							version = 3,
						},
						inheritedIndex = 4,
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
							actionLua = "local timeout = 6000 \nlocal x, y, z = 100, 0, 100\n\n-- Determine heading based on Light Party\nlocal heading = math.pi -- Default to North for Light Party 1\nif GetLightParty() == 2 then\n    heading = 0         -- Face South for Light Party 2\nend\n\nlocal baseLength = 8\nlocal baseWidth = 1\nlocal tipLength = 4\nlocal tipWidth = 3\n\nlocal colorStart = 0xFF00FFFF\nlocal colorMid = 0xFF0088FF\nlocal colorEnd = 0xFF0000FF\nlocal colorOutline = 0xFFFFFFFF\nlocal outlineThickness = 2\n\nlocal drawer = TensorCore.getCachedDrawer(colorStart, colorMid, colorEnd, colorOutline, outlineThickness)\ndrawer:addTimedArrow(timeout, x, y, z, heading, baseLength, baseWidth, tipLength, tipWidth, 0, nil, Argus2.RenderFlags.FLAG_RENDER_OVERLAY)\n\nself.used = true",
							conditions = 
							{
								
								{
									"b66ef0db-52b2-34d0-b728-7b1236a4a478",
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
							conditionLua = "return GetLightParty() ~= nil",
							dequeueIfLuaFalse = true,
							name = "Light Party Set",
							uuid = "b66ef0db-52b2-34d0-b728-7b1236a4a478",
							version = 3,
						},
					},
				},
				enabled = false,
				mechanicTime = 100.29172113594,
				name = "[Lj Draw] OLD Light Party Stacks",
				timelineIndex = 20,
				timerOffset = -1,
				uuid = "49a0fee7-5a25-63a0-9c5e-ea4accec281b",
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
							actionLua = "local player = TensorCore.mGetPlayer()\nlocal role = GetCurrentRole()\nlocal targetX, targetZ = 100, 100\n\n-- Map shared positions based on role\nif role == \"H1\" or role == \"R1\" then\n    targetX, targetZ = 85, 105   -- Left Outer (West/South-West)\nelseif role == \"MT\" or role == \"M1\" then\n    targetX, targetZ = 91, 100   -- Left Inner (Directly West, 9 yalms out)\nelseif role == \"OT\" or role == \"M2\" then\n    targetX, targetZ = 109, 100  -- Right Inner (Directly East, 9 yalms out)\nelseif role == \"H2\" or role == \"R2\" then\n    targetX, targetZ = 115, 105  -- Right Outer (East/South-East)\nend\n\nlocal targetPos = {x = targetX, z = targetZ}\n\nlocal heading = TensorCore.getHeadingToTarget(player.pos, targetPos)\nlocal distance = TensorCore.getDistance2d(player.pos, targetPos)\n\nlocal tipLength, tipWidth = 3, 3\nlocal baseWidth = 1\nlocal baseLength = math.max(0, distance - tipLength)\n\n\nlocal drawer = TensorCore.getCachedDrawer(0xFF00FFFF, 0xFF0088FF, 0xFF0000FF, 0xFFFFFFFF, 2)\ndrawer:addTimedArrow(4000, player.pos.x, player.pos.y, player.pos.z, heading, baseLength, baseWidth, tipLength, tipWidth, 0, nil, Argus2.RenderFlags.FLAG_RENDER_OVERLAY)\n\nself.used = true",
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
							},
							gVar = "ACR_RikuSGE3_CD",
							name = "Meteor",
							uuid = "c03aefdc-0a8f-82a2-980e-acfcc65d01d1",
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
							conditionLua = "return GetCurrentRole() ~= nil",
							dequeueIfLuaFalse = true,
							name = "Role Set",
							uuid = "9b66bcae-bb93-b194-8f3b-17469cb772c3",
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
							actionLua = "local timeout = 6000 \nlocal player = TensorCore.mGetPlayer()\nlocal sourcePos = player.pos\n\n-- Determine target coordinate based on Role\nlocal myRole = GetCurrentRole()\nlocal isSupport = { [\"MT\"] = true, [\"OT\"] = true, [\"H1\"] = true, [\"H2\"] = true }\n\n-- Set the fixed destination coordinates for each group\nlocal targetPos = { x = 100, y = 0, z = 104 } -- Default to South group for DPS\nif isSupport[myRole] then\n    targetPos = { x = 100, y = 0, z = 96 }    -- North group for Supports\nend\n\n-- Calculate exact heading and distance from the player to the fixed spot\nlocal heading = TensorCore.getHeadingToTarget(sourcePos, targetPos)\nlocal totalDistance = TensorCore.getDistance2d(sourcePos, targetPos)\n\n-- Proximity Scaling\nlocal scale = math.min(1, totalDistance / 15)\nlocal baseWidth = math.max(0.5, 1 * scale) \nlocal tipWidth = math.max(1.5, 5 * scale)\nlocal tipLength = math.max(2, 3 * scale)\n\nlocal baseLength = totalDistance - tipLength\nlocal renderFlags = Argus2.RenderFlags.FLAG_RENDER_OVERLAY\n\n-- Draw the Arrow\nif baseLength > 0 then\n    local arrowDrawer = TensorCore.getCachedDrawer(0xFF00FFFF, 0xFF0088FF, 0xFF0000FF, 0xFFFFFFFF, 2)\n    arrowDrawer:addTimedArrow(\n        timeout, \n        sourcePos.x, sourcePos.y, sourcePos.z, \n        heading, \n        baseLength, baseWidth, tipLength, tipWidth, \n        0, nil, renderFlags\n    )\nend\n\nself.used = true",
							conditions = 
							{
								
								{
									"b66ef0db-52b2-34d0-b728-7b1236a4a478",
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
							conditionLua = "return GetCurrentRole() ~= nil",
							dequeueIfLuaFalse = true,
							name = "Light Party Set",
							uuid = "b66ef0db-52b2-34d0-b728-7b1236a4a478",
							version = 3,
						},
					},
				},
				enabled = false,
				mechanicTime = 109.77404737751,
				name = "[Lj Draw] OLD Light Party Stacks",
				timelineIndex = 23,
				timerOffset = -1,
				uuid = "8c38ff89-58b5-ae31-8ea8-e749e3a5838b",
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
							actionLua = "data.ljGravenSafe = \"East\"\nself.used = true",
							conditions = 
							{
								
								{
									"41bcd354-a8bf-5fec-930c-b5dab8ff8ac2",
									true,
								},
								
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
									"41bcd354-a8bf-5fec-930c-b5dab8ff8ac2",
									true,
								},
								
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
							category = "Lua",
							conditionLua = "return GetCurrentRole() ~= nil",
							dequeueIfLuaFalse = true,
							name = "Role Set",
							uuid = "41bcd354-a8bf-5fec-930c-b5dab8ff8ac2",
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
							actionLua = "-- OnFrame: arrow from the player to their role's WEST corner.\n-- Support -> NW (94,94), DPS -> SW (94,106).\n\nlocal sourcePos = TensorCore.mGetPlayer().pos\n\n-- Determine target coordinate based on Role\nlocal myRole = GetCurrentRole()\nlocal isSupport = { [\"MT\"] = true, [\"OT\"] = true, [\"H1\"] = true, [\"H2\"] = true }\n\n-- Set the fixed destination coordinates for each group\nlocal targetPos = { x = 94, y = 0, z = 106 } -- Default to South group for DPS\nif isSupport[myRole] then\n    targetPos = { x = 94, y = 0, z = 94 }    -- North group for Supports\nend\n\nlocal heading = TensorCore.getHeadingToTarget(sourcePos, targetPos)\nlocal totalDistance = TensorCore.getDistance2d(sourcePos, targetPos)\n\n-- Proximity scaling\nlocal scale = math.min(1, totalDistance / 15)\nlocal baseWidth = math.max(0.5, 1 * scale)\nlocal tipWidth = math.max(1.5, 5 * scale)\nlocal tipLength = math.max(2, 3 * scale)\nlocal baseLength = totalDistance - tipLength\n\n-- Draw the arrow\nif baseLength > 0 then\n    local arrowDrawer = TensorCore.getCachedDrawer(0xFF00FFFF, 0xFF0088FF, 0xFF0000FF, 0xFFFFFFFF, 2)\n    arrowDrawer:addArrow(\n        sourcePos.x, sourcePos.y, sourcePos.z,\n        heading,\n        baseLength, baseWidth, tipLength, tipWidth,\n        false, Argus2.RenderFlags.FLAG_RENDER_OVERLAY\n    )\nend\n\nself.used = true\n",
							conditions = 
							{
								
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
							actionLua = "-- OnFrame: arrow from the player to their role's EAST corner.\n-- Support -> NE (106,94), DPS -> SE (106,106).\n\nlocal sourcePos = TensorCore.mGetPlayer().pos\n\n-- Determine target coordinate based on Role\nlocal myRole = GetCurrentRole()\nlocal isSupport = { [\"MT\"] = true, [\"OT\"] = true, [\"H1\"] = true, [\"H2\"] = true }\n\n-- Set the fixed destination coordinates for each group\nlocal targetPos = { x = 106, y = 0, z = 106 } -- Default to South group for DPS\nif isSupport[myRole] then\n    targetPos = { x = 106, y = 0, z = 94 }    -- North group for Supports\nend\n\nlocal heading = TensorCore.getHeadingToTarget(sourcePos, targetPos)\nlocal totalDistance = TensorCore.getDistance2d(sourcePos, targetPos)\n\n-- Proximity scaling\nlocal scale = math.min(1, totalDistance / 15)\nlocal baseWidth = math.max(0.5, 1 * scale)\nlocal tipWidth = math.max(1.5, 5 * scale)\nlocal tipLength = math.max(2, 3 * scale)\nlocal baseLength = totalDistance - tipLength\n\n-- Draw the arrow\nif baseLength > 0 then\n    local arrowDrawer = TensorCore.getCachedDrawer(0xFF00FFFF, 0xFF0088FF, 0xFF0000FF, 0xFFFFFFFF, 2)\n    arrowDrawer:addArrow(\n        sourcePos.x, sourcePos.y, sourcePos.z,\n        heading,\n        baseLength, baseWidth, tipLength, tipWidth,\n        false, Argus2.RenderFlags.FLAG_RENDER_OVERLAY\n    )\nend\n\nself.used = true\n",
							conditions = 
							{
								
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
							conditionLua = "return data.ljGravenSafe == \"West\"",
							dequeueIfLuaFalse = true,
							name = "West Safe",
							uuid = "c57efa49-644f-6a19-9720-931ee867f1fc",
							version = 3,
						},
						inheritedIndex = 1,
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
							actionLua = "local timeout = 5500 \nlocal player = TensorCore.mGetPlayer()\nlocal sourcePos = player.pos\n\n-- Determine target X coordinate based on Role\nlocal myRole = GetCurrentRole()\nlocal isSupport = { [\"MT\"] = true, [\"OT\"] = true, [\"H1\"] = true, [\"H2\"] = true }\n\nlocal targetX = 104\nif isSupport[myRole] then\n    targetX = 96\nend\n\nlocal targetPos = { x = targetX, y = 0, z = 100 }\n\n-- Calculate exact heading and distance from player to target\nlocal heading = TensorCore.getHeadingToTarget(sourcePos, targetPos)\nlocal totalDistance = TensorCore.getDistance2d(sourcePos, targetPos)\n\n-- Dynamic sizing to make the arrow stretch exactly from player to coordinate\nlocal tipLength = 1.5\nlocal baseLength = totalDistance - tipLength\n\n-- Static widths keep the arrow sleek regardless of how long it stretches\nlocal baseWidth = 1\nlocal tipWidth = 3\n\nlocal colorStart = 0xFF00FFFF\nlocal colorMid = 0xFF0088FF\nlocal colorEnd = 0xFF0000FF\nlocal colorOutline = 0xFFFFFFFF\nlocal outlineThickness = 2\n\nlocal drawer = TensorCore.getCachedDrawer(colorStart, colorMid, colorEnd, colorOutline, outlineThickness)\n\nif baseLength > 0 then\n    local renderFlags = Argus2.RenderFlags.FLAG_RENDER_OVERLAY\n    drawer:addTimedArrow(\n        timeout, \n        sourcePos.x, sourcePos.y, sourcePos.z, \n        heading, \n        baseLength, baseWidth, tipLength, tipWidth, \n        0, nil, renderFlags\n    )\nend\n\nself.used = true",
							conditions = 
							{
								
								{
									"b66ef0db-52b2-34d0-b728-7b1236a4a478",
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
							actionLua = "local timeout = 5500 \nlocal player = TensorCore.mGetPlayer()\nlocal sourcePos = player.pos\n\n-- Determine target X and Z coordinates based on Role\nlocal myRole = GetCurrentRole()\nlocal isSupport = { [\"MT\"] = true, [\"OT\"] = true, [\"H1\"] = true, [\"H2\"] = true }\n\nlocal targetX = 106\nlocal targetZ = 106\n\nif isSupport[myRole] then\n    targetX = 94\n    targetZ = 94\nend\n\nlocal targetPos = { x = targetX, y = 0, z = targetZ }\n\n-- Calculate exact heading and distance from player to target\nlocal heading = TensorCore.getHeadingToTarget(sourcePos, targetPos)\nlocal totalDistance = TensorCore.getDistance2d(sourcePos, targetPos)\n\n-- Dynamic sizing to make the arrow stretch exactly from player to coordinate\nlocal tipLength = 1.5\nlocal baseLength = totalDistance - tipLength\n\n-- Static widths keep the arrow sleek regardless of how long it stretches\nlocal baseWidth = 1\nlocal tipWidth = 3\n\nlocal colorStart = 0xFF00FFFF\nlocal colorMid = 0xFF0088FF\nlocal colorEnd = 0xFF0000FF\nlocal colorOutline = 0xFFFFFFFF\nlocal outlineThickness = 2\n\nlocal drawer = TensorCore.getCachedDrawer(colorStart, colorMid, colorEnd, colorOutline, outlineThickness)\n\nif baseLength > 0 then\n    local renderFlags = Argus2.RenderFlags.FLAG_RENDER_OVERLAY\n    drawer:addTimedArrow(\n        timeout, \n        sourcePos.x, sourcePos.y, sourcePos.z, \n        heading, \n        baseLength, baseWidth, tipLength, tipWidth, \n        0, nil, renderFlags\n    )\nend\n\nself.used = true",
							conditions = 
							{
								
								{
									"b66ef0db-52b2-34d0-b728-7b1236a4a478",
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
							conditionLua = "return GetCurrentRole() ~= nil",
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
							actionLua = "local sourceEnt = TensorCore.mGetEntity(eventArgs.sourceEntityID)\nif sourceEnt.pos.x < 100.0 then\n    data.ljGraven3Tether = \"Confused\"\nelse\n    data.ljGraven3Tether = \"Sleepy\"\nend\n\nself.used = true\n",
							conditions = 
							{
								
								{
									"675a7082-0ae1-f4ba-a5bc-9d4252a57a77",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_CD",
							uuid = "39b43baf-f1dc-319e-bccd-7e59c4d187f1",
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
							conditionLua = "return eventArgs.newTetherID == 45 and eventArgs.newTargetID == TensorCore.mGetPlayer().id",
							dequeueIfLuaFalse = true,
							name = "Tether On Me",
							uuid = "675a7082-0ae1-f4ba-a5bc-9d4252a57a77",
							version = 3,
						},
					},
				},
				enabled = false,
				eventType = 15,
				mechanicTime = 163.54778319029,
				name = "[Lj Data] OLD Get Tethers",
				timeRange = true,
				timelineIndex = 33,
				timerEndOffset = 2,
				timerStartOffset = -2,
				uuid = "cb79b48b-2d01-7a87-9006-79f6a344da34",
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
							actionLua = "for i = 1, Argus.getNumTimedDraws() do\n    local shapeType, _, _, _, _, _, _, uuid = Argus.getTimedDrawBaseInfo(i)\n    if shapeType == \"arrow\" and uuid then\n        Argus.deleteTimedShape(uuid)\n        break\n    end\nend\n\nself.used = true",
							gVar = "ACR_RikuSGE3_CD",
							uuid = "0c9a2faf-d70b-7a53-aa31-aa8b25d2ab7e",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				eventType = 12,
				mechanicTime = 163.54778319029,
				name = "[Lj Draw] Delete Teletrounce Arrow",
				timeRange = true,
				timelineIndex = 33,
				timerEndOffset = 5,
				timerOffset = -2,
				timerStartOffset = -4,
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
							actionLua = "local player = TensorCore.mGetPlayer()\nlocal sourcePos = player.pos\nlocal myRole = GetCurrentRole()\n\n-- Perfectly mirrored pinwheel coordinates\nlocal rolePositions = {\n    -- NW Pair (Vertical Line: Shared X)\n    [\"MT\"] = { x = 93.5,  y = 0, z = 96.5 },\n    [\"R1\"] = { x = 93.5,  y = 0, z = 90.5 },\n    \n    -- NE Pair (Horizontal Line: Shared Z)\n    [\"OT\"] = { x = 103.5, y = 0, z = 93.5 },\n    [\"R2\"] = { x = 109.5, y = 0, z = 93.5 },\n    \n    -- SE Pair (Vertical Line: Shared X)\n    [\"M2\"] = { x = 106.5, y = 0, z = 103.5 },\n    [\"H2\"] = { x = 106.5, y = 0, z = 109.5 },\n    \n    -- SW Pair (Horizontal Line: Shared Z)\n    [\"M1\"] = { x = 96.5,  y = 0, z = 106.5 },\n    [\"H1\"] = { x = 90.5,  y = 0, z = 106.5 }\n}\n\nlocal targetPos = rolePositions[myRole]\n\nif targetPos then\n    local totalDistance = TensorCore.getDistance2d(sourcePos, targetPos)\n    if totalDistance > 1.5 then\n        local drawer = TensorCore.getStaticDrawer(0xFF00FF00, 2)\n\n        -- Draw the line from the player to the spot\n        drawer:addLine(\n            sourcePos.x, sourcePos.y, sourcePos.z,\n            targetPos.x, targetPos.y, targetPos.z,\n            3 -- line thickness\n        )\n\n        -- Draw the green target circle at the destination\n        drawer:addCircle(\n            targetPos.x, targetPos.y, targetPos.z,\n            1 -- radius\n        )\n    end\nend\n\nself.used = true",
							conditions = 
							{
								
								{
									"b66ef0db-52b2-34d0-b728-7b1236a4a478",
									true,
								},
								
								{
									"c356788b-c5f1-2e92-89c8-6b4cd35b401f",
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
							actionLua = "local player = TensorCore.mGetPlayer()\nlocal sourcePos = player.pos\nlocal myRole = GetCurrentRole()\n\n-- Define the cardinal pairs based on logged positions\n-- Confused = Outer position, Sleepy = Inner position\nlocal spots = {\n    North = { outer = { x = 100.0, y = 0, z = 84.0 },  inner = { x = 100.0, y = 0, z = 93 } },\n    East  = { outer = { x = 115, y = 0, z = 100.0 }, inner = { x = 107.0, y = 0, z = 100.0 } },\n    South = { outer = { x = 100.0, y = 0, z = 116.5 }, inner = { x = 100.0, y = 0, z = 107.0 } },\n    West  = { outer = { x = 84.0,  y = 0, z = 100.0 }, inner = { x = 93,  y = 0, z = 100.0 } }\n}\n\n-- Assign specific roles to their coordinate pairs\nlocal roleToPair = {\n    [\"MT\"] = spots.North, [\"R1\"] = spots.North,\n    [\"H2\"] = spots.East,  [\"M2\"] = spots.East,\n    [\"H1\"] = spots.South, [\"M1\"] = spots.South,\n    [\"OT\"] = spots.West,  [\"R2\"] = spots.West\n}\n\nlocal targetPos = nil\nlocal myPair = roleToPair[myRole]\nlocal tetherType = data.ljGraven3Tether\n\n-- Route player to the correct inner/outer position dynamically\nif myPair and tetherType then\n    if tetherType == \"Confused\" then\n        targetPos = myPair.outer\n    elseif tetherType == \"Sleepy\" then\n        targetPos = myPair.inner\n    end\nend\n\nif targetPos then\n    local totalDistance = TensorCore.getDistance2d(sourcePos, targetPos)\n    if totalDistance > 1 then\n        local drawer = TensorCore.getStaticDrawer(0xFF00FF00, 2)\n\n        -- Draw the line from the player to the spot\n        drawer:addLine(\n            sourcePos.x, sourcePos.y, sourcePos.z,\n            targetPos.x, targetPos.y, targetPos.z,\n            3 -- line thickness\n        )\n\n        -- Draw the green target circle at the destination\n        drawer:addCircle(\n            targetPos.x, targetPos.y, targetPos.z,\n            1 -- radius\n        )\n    end\nend\n\nself.used = true",
							conditions = 
							{
								
								{
									"b66ef0db-52b2-34d0-b728-7b1236a4a478",
									true,
								},
								
								{
									"c47442ce-2bc1-e429-a369-8290d01f802e",
									true,
								},
								
								{
									"4c9b852f-a462-e475-bac2-748f04f42434",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_CD",
							name = "Freaky",
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
							conditionLua = "return GetCurrentRole() ~= nil",
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
							conditionLua = "return data.ljGraven3Tether ~= nil",
							name = "Tether Var",
							uuid = "c47442ce-2bc1-e429-a369-8290d01f802e",
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
							uuid = "c356788b-c5f1-2e92-89c8-6b4cd35b401f",
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
							uuid = "4c9b852f-a462-e475-bac2-748f04f42434",
							version = 3,
						},
					},
				},
				enabled = false,
				eventType = 12,
				mechanicTime = 167.71168967762,
				name = "[Lj Draw] OLD Arrow Positions",
				timeRange = true,
				timelineIndex = 34,
				timerEndOffset = 6.5,
				timerOffset = 1,
				timerStartOffset = 0.20000000298023,
				uuid = "f87122de-a9a0-80be-9801-5b5c2308d305",
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
							actionLua = "local player = TensorCore.mGetPlayer()\nlocal sourcePos = player.pos\nlocal myRole = GetCurrentRole()\n\n-- Outers (H2, H1, R1, R2) and Inners (MT, OT, M1, M2) based on cardinal pairs\nlocal rolePositions = {\n    [\"MT\"] = { x = 100.0, y = 0, z = 93.0 },  -- North Inner\n    [\"R1\"] = { x = 100.0, y = 0, z = 84.0 },  -- North Outer\n    [\"M2\"] = { x = 107.0, y = 0, z = 100.0 }, -- East Inner\n    [\"H2\"] = { x = 115.0, y = 0, z = 100.0 }, -- East Outer\n    [\"M1\"] = { x = 100.0, y = 0, z = 107.0 }, -- South Inner\n    [\"H1\"] = { x = 100.0, y = 0, z = 116.5 }, -- South Outer\n    [\"OT\"] = { x = 93.0,  y = 0, z = 100.0 }, -- West Inner\n    [\"R2\"] = { x = 84.0,  y = 0, z = 100.0 }  -- West Outer\n}\n\nlocal targetPos = rolePositions[myRole]\n\nif targetPos then\n    local heading = TensorCore.getHeadingToTarget(sourcePos, targetPos)\n    local totalDistance = TensorCore.getDistance2d(sourcePos, targetPos)\n\n    -- Proximity Scaling\n    local scale = math.min(1, totalDistance / 15)\n    local baseWidth = math.max(0.5, 1 * scale) \n    local tipWidth = math.max(1.5, 5 * scale)\n    local tipLength = math.max(2, 3 * scale)\n\n    local baseLength = totalDistance - tipLength\n\n    if baseLength > 0 then\n        local arrowDrawer = TensorCore.getCachedDrawer(0xFF00FFFF, 0xFF0088FF, 0xFF0000FF, 0xFFFFFFFF, 2)\n        arrowDrawer:addArrow(\n            sourcePos.x, sourcePos.y, sourcePos.z, \n            heading, \n            baseLength, baseWidth, tipLength, tipWidth, \n            false, Argus2.RenderFlags.FLAG_RENDER_OVERLAY\n        )\n    end\nend\n\nself.used = true",
							conditions = 
							{
								
								{
									"b66ef0db-52b2-34d0-b728-7b1236a4a478",
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
							conditionLua = "return GetCurrentRole() ~= nil",
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
							aType = "Lua",
							actionLua = "for i = 1, Argus.getNumTimedDraws() do\n    local shapeType, _, _, _, _, _, _, uuid = Argus.getTimedDrawBaseInfo(i)\n    if shapeType == \"circle\" and uuid then\n        Argus.deleteTimedShape(uuid)\n        break\n    end\nend\n\nself.used = true",
							gVar = "ACR_RikuSGE3_CD",
							uuid = "0c9a2faf-d70b-7a53-aa31-aa8b25d2ab7e",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				enabled = false,
				eventType = 12,
				mechanicTime = 173.37050637968,
				name = "[Lj Draw] Delete Teletrounce Circle",
				timeRange = true,
				timelineIndex = 35,
				timerEndOffset = 2,
				timerOffset = -2,
				uuid = "a1aaa66d-4a2f-503d-8cf5-13396174ee2c",
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
							actionLua = "local playerPos = TensorCore.mGetPlayer().pos\n\n-- Collect circle positions.\nlocal circles = {}\nfor i = 1, Argus.getNumTimedDraws() do\n    local shapeType, x, y, z = Argus.getTimedDrawBaseInfo(i)\n    if shapeType == \"circle\" and x then\n        circles[#circles + 1] = { x = x, y = y, z = z }\n    end\nend\n\n-- Find a spot where two circles share the exact same ground coords.\nlocal target\nfor a = 1, #circles - 1 do\n    for b = a + 1, #circles do\n        if circles[a].x == circles[b].x and circles[a].z == circles[b].z then\n            target = circles[a]\n            break\n        end\n    end\n    if target then break end\nend\n\nif target then\n    local dx, dy, dz = playerPos.x - target.x, playerPos.y - target.y, playerPos.z - target.z\n    if dx * dx + dy * dy + dz * dz > 4 then -- > 2 yalms, squared to skip sqrt + table alloc\n        local drawer = TensorCore.getCachedDrawer(0xFF00FF00, 0xFF00FF00, 0xFF00FF00, 0xFF00FF00, 1)\n        drawer:addLine(playerPos.x, playerPos.y, playerPos.z, target.x, target.y, target.z, 4)\n    end\nend\n\nself.used = true",
							gVar = "ACR_RikuSGE3_CD",
							uuid = "bd5ee627-a904-1e68-9cea-ced4f12d5be9",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
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
							actionLua = "local ahead = 4 -- yalms ahead of the arrow tip the target spot sits\nlocal playerPos = TensorCore.mGetPlayer().pos\n\nfor i = 1, Argus.getNumTimedDraws() do\n    local shapeType, x, y, z = Argus.getTimedDrawBaseInfo(i)\n    if shapeType == \"arrow\" and x then\n        local length, _, tipLength, _, heading = Argus.getTimedArrowInfo(i)\n        local source  = { x = x, y = y, z = z }\n        local tipDist = (length or 0) + (tipLength or 0)\n\n        -- Target spot: AHEAD yalms past the arrow tip, along its heading.\n        local spot = TensorCore.getPosInDirection(source, heading, tipDist + ahead)\n\n        local dx, dy, dz = playerPos.x - spot.x, playerPos.y - spot.y, playerPos.z - spot.z\n        if dx * dx + dy * dy + dz * dz > 4 then -- > 2 yalms, squared to skip sqrt + table alloc\n            local drawer = TensorCore.getCachedDrawer(0xFF00FF00, 0xFF00FF00, 0xFF00FF00, 0xFF00FF00, 1)\n            drawer:addLine(playerPos.x, playerPos.y, playerPos.z, spot.x, spot.y, spot.z, 4)\n        end\n        break\n    end\nend\n\nself.used = true",
							gVar = "ACR_RikuSGE3_CD",
							uuid = "1e1e5507-8e77-97af-a1a6-1d001d15396e",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
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
							actionLua = "local playerPos = TensorCore.mGetPlayer().pos\n\n-- Collect circle positions.\nlocal circles = {}\nfor i = 1, Argus.getNumTimedDraws() do\n    local shapeType, x, y, z = Argus.getTimedDrawBaseInfo(i)\n    if shapeType == \"circle\" and x then\n        circles[#circles + 1] = { x = x, y = y, z = z }\n    end\nend\n\n-- Find a spot where two circles share the exact same ground coords.\nlocal target\nfor a = 1, #circles - 1 do\n    for b = a + 1, #circles do\n        if circles[a].x == circles[b].x and circles[a].z == circles[b].z then\n            target = circles[a]\n            break\n        end\n    end\n    if target then break end\nend\n\nif target then\n    local dx, dy, dz = playerPos.x - target.x, playerPos.y - target.y, playerPos.z - target.z\n    if dx * dx + dy * dy + dz * dz > 4 then -- > 2 yalms, squared to skip sqrt + table alloc\n        local drawer = TensorCore.getCachedDrawer(0xFF00FF00, 0xFF00FF00, 0xFF00FF00, 0xFF00FF00, 1)\n        drawer:addLine(playerPos.x, playerPos.y, playerPos.z, target.x, target.y, target.z, 4)\n    end\nend\n\nself.used = true",
							gVar = "ACR_RikuSGE3_CD",
							uuid = "bd5ee627-a904-1e68-9cea-ced4f12d5be9",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
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
							actionLua = "local ahead = 4 -- yalms ahead of the arrow tip the target spot sits\nlocal playerPos = TensorCore.mGetPlayer().pos\n\nfor i = 1, Argus.getNumTimedDraws() do\n    local shapeType, x, y, z = Argus.getTimedDrawBaseInfo(i)\n    if shapeType == \"arrow\" and x then\n        local length, _, tipLength, _, heading = Argus.getTimedArrowInfo(i)\n        local source  = { x = x, y = y, z = z }\n        local tipDist = (length or 0) + (tipLength or 0)\n\n        -- Target spot: AHEAD yalms past the arrow tip, along its heading.\n        local spot = TensorCore.getPosInDirection(source, heading, tipDist + ahead)\n\n        local dx, dy, dz = playerPos.x - spot.x, playerPos.y - spot.y, playerPos.z - spot.z\n        if dx * dx + dy * dy + dz * dz > 4 then -- > 2 yalms, squared to skip sqrt + table alloc\n            local drawer = TensorCore.getCachedDrawer(0xFF00FF00, 0xFF00FF00, 0xFF00FF00, 0xFF00FF00, 1)\n            drawer:addLine(playerPos.x, playerPos.y, playerPos.z, spot.x, spot.y, spot.z, 4)\n        end\n        break\n    end\nend\n\nself.used = true",
							gVar = "ACR_RikuSGE3_CD",
							uuid = "1e1e5507-8e77-97af-a1a6-1d001d15396e",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
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
							actionLua = "local playerPos = TensorCore.mGetPlayer().pos\n\n-- Collect circle positions.\nlocal circles = {}\nfor i = 1, Argus.getNumTimedDraws() do\n    local shapeType, x, y, z = Argus.getTimedDrawBaseInfo(i)\n    if shapeType == \"circle\" and x then\n        circles[#circles + 1] = { x = x, y = y, z = z }\n    end\nend\n\n-- Find a spot where two circles share the exact same ground coords.\nlocal target\nfor a = 1, #circles - 1 do\n    for b = a + 1, #circles do\n        if circles[a].x == circles[b].x and circles[a].z == circles[b].z then\n            target = circles[a]\n            break\n        end\n    end\n    if target then break end\nend\n\nif target then\n    local dx, dy, dz = playerPos.x - target.x, playerPos.y - target.y, playerPos.z - target.z\n    if dx * dx + dy * dy + dz * dz > 4 then -- > 2 yalms, squared to skip sqrt + table alloc\n        local drawer = TensorCore.getCachedDrawer(0xFF00FF00, 0xFF00FF00, 0xFF00FF00, 0xFF00FF00, 1)\n        drawer:addLine(playerPos.x, playerPos.y, playerPos.z, target.x, target.y, target.z, 4)\n    end\nend\n\nself.used = true",
							gVar = "ACR_RikuSGE3_CD",
							uuid = "bd5ee627-a904-1e68-9cea-ced4f12d5be9",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
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
							actionLua = "local ahead = 4 -- yalms ahead of the arrow tip the target spot sits\nlocal playerPos = TensorCore.mGetPlayer().pos\n\nfor i = 1, Argus.getNumTimedDraws() do\n    local shapeType, x, y, z = Argus.getTimedDrawBaseInfo(i)\n    if shapeType == \"arrow\" and x then\n        local length, _, tipLength, _, heading = Argus.getTimedArrowInfo(i)\n        local source  = { x = x, y = y, z = z }\n        local tipDist = (length or 0) + (tipLength or 0)\n\n        -- Target spot: AHEAD yalms past the arrow tip, along its heading.\n        local spot = TensorCore.getPosInDirection(source, heading, tipDist + ahead)\n\n        local dx, dy, dz = playerPos.x - spot.x, playerPos.y - spot.y, playerPos.z - spot.z\n        if dx * dx + dy * dy + dz * dz > 4 then -- > 2 yalms, squared to skip sqrt + table alloc\n            local drawer = TensorCore.getCachedDrawer(0xFF00FF00, 0xFF00FF00, 0xFF00FF00, 0xFF00FF00, 1)\n            drawer:addLine(playerPos.x, playerPos.y, playerPos.z, spot.x, spot.y, spot.z, 4)\n        end\n        break\n    end\nend\n\nself.used = true",
							gVar = "ACR_RikuSGE3_CD",
							uuid = "1e1e5507-8e77-97af-a1a6-1d001d15396e",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
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
							actionLua = "local playerPos = TensorCore.mGetPlayer().pos\n\n-- Collect circle positions.\nlocal circles = {}\nfor i = 1, Argus.getNumTimedDraws() do\n    local shapeType, x, y, z = Argus.getTimedDrawBaseInfo(i)\n    if shapeType == \"circle\" and x then\n        circles[#circles + 1] = { x = x, y = y, z = z }\n    end\nend\n\n-- Find a spot where two circles share the exact same ground coords.\nlocal target\nfor a = 1, #circles - 1 do\n    for b = a + 1, #circles do\n        if circles[a].x == circles[b].x and circles[a].z == circles[b].z then\n            target = circles[a]\n            break\n        end\n    end\n    if target then break end\nend\n\nif target then\n    local dx, dy, dz = playerPos.x - target.x, playerPos.y - target.y, playerPos.z - target.z\n    if dx * dx + dy * dy + dz * dz > 4 then -- > 2 yalms, squared to skip sqrt + table alloc\n        local drawer = TensorCore.getCachedDrawer(0xFF00FF00, 0xFF00FF00, 0xFF00FF00, 0xFF00FF00, 1)\n        drawer:addLine(playerPos.x, playerPos.y, playerPos.z, target.x, target.y, target.z, 4)\n    end\nend\n\nself.used = true",
							gVar = "ACR_RikuSGE3_CD",
							uuid = "bd5ee627-a904-1e68-9cea-ced4f12d5be9",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
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
							gVar = "ACR_RikuSGE3_CD",
							uuid = "0c9a2faf-d70b-7a53-aa31-aa8b25d2ab7e",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
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
							actionLua = "local sourcePos = TensorCore.mGetPlayer().pos\n\n-- Waymark 1 = 'A' (markers 1-8 map to A B C D 1 2 3 4).\nlocal targetX, targetY, targetZ, isActive = Argus.getWaymarkInfo(1)\n\n-- Proceed only if the waymark is placed and active.\nif isActive then\n    local targetPos = { x = targetX, y = targetY, z = targetZ }\n\n    -- Exact heading and distance from the player to the waymark.\n    local heading = TensorCore.getHeadingToTarget(sourcePos, targetPos)\n    local totalDistance = TensorCore.getDistance2d(sourcePos, targetPos)\n\n    -- Proximity scaling (use totalDistance to keep scaling visually consistent).\n    local scale = math.min(1, totalDistance / 15)\n    local baseWidth = math.max(0.5, 1 * scale)\n    local tipWidth = math.max(1.5, 5 * scale)\n    local tipLength = math.max(2, 3 * scale)\n\n    -- Arrow spans the full distance from the player to the waymark, minus the tip.\n    local baseLength = totalDistance - tipLength\n\n    if baseLength > 0 then\n        local arrowDrawer = TensorCore.getCachedDrawer(0xFF00FFFF, 0xFF0088FF, 0xFF0000FF, 0xFFFFFFFF, 2)\n        arrowDrawer:addArrow(\n            sourcePos.x, sourcePos.y, sourcePos.z,\n            heading,\n            baseLength, baseWidth, tipLength, tipWidth,\n            false, Argus2.RenderFlags.FLAG_RENDER_OVERLAY\n        )\n    end\nend\n\nself.used = true",
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
							actionLua = "local timeout = 7000 \nlocal player = TensorCore.mGetPlayer()\nlocal sourcePos = player.pos\n\n-- Determine target coordinate based on Role\nlocal myRole = GetCurrentRole()\n\n-- Define the two groups\nlocal isExdeathGroup = { [\"OT\"] = true, [\"H2\"] = true, [\"R1\"] = true, [\"R2\"] = true }\nlocal isChaosGroup = { [\"MT\"] = true, [\"H1\"] = true, [\"M1\"] = true, [\"M2\"] = true }\n\nlocal targetPos\n\n-- Assign the fixed destination coordinates based on the group\nif isExdeathGroup[myRole] then\n    targetPos = { x = 108.000, y = 0.000, z = 100.000 } -- Exdeath\nelseif isChaosGroup[myRole] then\n    targetPos = { x = 92.000, y = 0.000, z = 100.000 } -- Chaos\nend\n\n-- Proceed only if the role matched one of the groups\nif targetPos then\n    -- Calculate exact heading and distance from the player to the fixed spot\n    local heading = TensorCore.getHeadingToTarget(sourcePos, targetPos)\n    local totalDistance = TensorCore.getDistance2d(sourcePos, targetPos)\n\n    -- Proximity Scaling\n    local scale = math.min(1, totalDistance / 15)\n    local baseWidth = math.max(0.5, 1 * scale) \n    local tipWidth = math.max(1.5, 5 * scale)\n    local tipLength = math.max(2, 3 * scale)\n\n    local baseLength = totalDistance - tipLength\n\n    -- Draw the Arrow\n    if baseLength > 0 then\n        local arrowDrawer = TensorCore.getCachedDrawer(0xFF00FFFF, 0xFF0088FF, 0xFF0000FF, 0xFFFFFFFF, 2)\n        arrowDrawer:addTimedArrow(\n            timeout, \n            sourcePos.x, sourcePos.y, sourcePos.z, \n            heading, \n            baseLength, baseWidth, tipLength, tipWidth, \n            0, false, Argus2.RenderFlags.FLAG_RENDER_OVERLAY\n        )\n    end\nend\n\nself.used = true",
							conditions = 
							{
								
								{
									"064ab097-39cb-d8a0-9652-f1bd5bfad9c2",
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
							conditionLua = "return GetCurrentRole() ~= nil",
							dequeueIfLuaFalse = true,
							name = "Role Set",
							uuid = "064ab097-39cb-d8a0-9652-f1bd5bfad9c2",
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
							actionLua = "local timeout = 9000\nlocal player = TensorCore.mGetPlayer()\nlocal sourcePos = player.pos\n\n-- WorldText: name every crystal regardless of role/arrow\nlocal crystalNames = {\n    [2015291] = { name = \"Water\", color = 0xFFFFBF00 }, -- blue\n    [2015290] = { name = \"Fire\",  color = 0xFF1133FF }, -- red\n    [2015292] = { name = \"Wind\",  color = 0xFF55FF55 }, -- green\n}\n\nfor contentID, info in pairs(crystalNames) do\n    local crystals = TensorCore.entityList(\"contentid=\" .. contentID)\n    if table.valid(crystals) then\n        for k, entity in pairs(crystals) do\n            AnyoneCore.addTimedWorldTextOnEnt(timeout, info.name, entity.id, info.color, true, 1.5, 2.0)\n        end\n    end\nend\n\nlocal roleTargets = {\n    [\"H1\"] = 2015291, [\"H2\"] = 2015291, -- Water Crystal\n    [\"R1\"] = 2015290, [\"R2\"] = 2015290, -- Fire Crystal\n    [\"MT\"] = 2015292, [\"OT\"] = 2015292, [\"M1\"] = 2015292, [\"M2\"] = 2015292  -- Wind Crystal\n}\n\nlocal myRole = GetCurrentRole()\nlocal targetContentID = roleTargets[myRole]\n\n\nif targetContentID ~= nil then\n    local targetEntity = nil\n    local entityList = TensorCore.entityList(\"contentid=\" .. targetContentID)\n\n    if table.valid(entityList) then\n        for _, entity in pairs(entityList) do\n            targetEntity = entity\n            break\n        end\n    end\n\n    if targetEntity ~= nil then\n        local targetPos = { x = targetEntity.pos.x, y = targetEntity.pos.y, z = targetEntity.pos.z }\n\n        if myRole == \"OT\" then -- Opposite Wind\n            local centerX = 100.0\n            local centerZ = 100.0\n            targetPos.x = centerX + (centerX - targetPos.x)\n            targetPos.z = centerZ + (centerZ - targetPos.z)\n        end\n\n        local heading = TensorCore.getHeadingToTarget(sourcePos, targetPos)\n        local totalDistance = TensorCore.getDistance2d(sourcePos, targetPos)\n        local scale = math.min(1, totalDistance / 15)\n        local baseWidth = math.max(0.5, 1 * scale)\n        local tipWidth = math.max(1.5, 5 * scale)\n        local tipLength = math.max(2, 3 * scale)\n        local baseLength = totalDistance - tipLength\n\n        if baseLength > 0 then\n            local arrowDrawer = TensorCore.getCachedDrawer(0xFF00FFFF, 0xFF0088FF, 0xFF0000FF, 0xFFFFFFFF, 2)\n            arrowDrawer:addTimedArrow(\n                timeout,\n                sourcePos.x, sourcePos.y, sourcePos.z,\n                heading,\n                baseLength, baseWidth, tipLength, tipWidth,\n                0, false, Argus2.RenderFlags.FLAG_RENDER_OVERLAY\n            )\n        end\n    end\nend\n\nself.used = true",
							conditions = 
							{
								
								{
									"a0225b2c-4cb9-7884-9db9-620a44267b80",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_CD",
							uuid = "c9dd2649-2492-fe24-aac7-9148d86367f9",
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
							conditionLua = "return GetCurrentRole() ~= nil",
							dequeueIfLuaFalse = true,
							name = "Role Set",
							uuid = "a0225b2c-4cb9-7884-9db9-620a44267b80",
							version = 3,
						},
					},
				},
				enabled = false,
				mechanicTime = 450.00390950196,
				name = "[Lj Draw] OLD Arrow to Crystals",
				timelineIndex = 79,
				timerOffset = 1,
				uuid = "120176a5-3e78-95f9-92bb-6ccd460d37a9",
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
							actionLua = "local timeout = 9000\n\nlocal crystalNames = {\n    [2015291] = { name = \"Water\", color = 0xFFFFBF00 }, -- blue\n    [2015290] = { name = \"Fire\",  color = 0xFF1133FF }, -- red\n    [2015292] = { name = \"Wind\",  color = 0xFF55FF55 }, -- green\n}\n\nlocal roleTargets = {\n    [\"H1\"] = 2015291, [\"H2\"] = 2015291, -- Water Crystal\n    [\"R1\"] = 2015290, [\"R2\"] = 2015290, -- Fire Crystal\n    [\"MT\"] = 2015292, [\"OT\"] = 2015292, [\"M1\"] = 2015292, [\"M2\"] = 2015292  -- Wind Crystal\n}\n\nlocal contentID = eventArgs.entityContentID\nlocal info = crystalNames[contentID]\n\nAnyoneCore.addTimedWorldTextOnEnt(timeout, info.name, eventArgs.entityID, info.color, true, 1.5, 2.0)\n\nlocal myRole = GetCurrentRole()\n\nif roleTargets[myRole] == contentID then\n    local entity = TensorCore.mGetEntity(eventArgs.entityID)\n    local sourcePos = TensorCore.mGetPlayer().pos\n    local targetPos = { x = entity.pos.x, y = entity.pos.y, z = entity.pos.z }\n\n    if myRole == \"OT\" then -- Opposite Wind\n        local centerX = 100.0\n        local centerZ = 100.0\n        targetPos.x = centerX + (centerX - targetPos.x)\n        targetPos.z = centerZ + (centerZ - targetPos.z)\n    end\n\n    local heading = TensorCore.getHeadingToTarget(sourcePos, targetPos)\n    local totalDistance = TensorCore.getDistance2d(sourcePos, targetPos)\n    local scale = math.min(1, totalDistance / 15)\n    local baseWidth = math.max(0.5, 1 * scale)\n    local tipWidth = math.max(1.5, 5 * scale)\n    local tipLength = math.max(2, 3 * scale)\n    local baseLength = totalDistance - tipLength\n\n    if baseLength > 0 then\n        local arrowDrawer = TensorCore.getCachedDrawer(0xFF00FFFF, 0xFF0088FF, 0xFF0000FF, 0xFFFFFFFF, 2)\n        arrowDrawer:addTimedArrow(\n            timeout,\n            sourcePos.x, sourcePos.y, sourcePos.z,\n            heading,\n            baseLength, baseWidth, tipLength, tipWidth,\n            0, false, Argus2.RenderFlags.FLAG_RENDER_OVERLAY\n        )\n    end\nend\n\nself.used = true",
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
							},
							gVar = "ACR_RikuSGE3_CD",
							uuid = "c9dd2649-2492-fe24-aac7-9148d86367f9",
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
							conditionLua = "return GetCurrentRole() ~= nil",
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
				},
				eventType = 29,
				loop = true,
				mechanicTime = 450.00390950196,
				name = "[Lj Draw] Arrow to Crystals",
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
	[90] = 
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
							actionLua = "local timeout = 6000\nlocal player = TensorCore.mGetPlayer()\nlocal sourcePos = player.pos\nlocal targetEntity = TensorCore.mGetEntity(eventArgs.detectionTargetID)\n\nif targetEntity ~= nil then\n    -- Calculate opposite position of the targeted entity\n    local centerX = 100.0\n    local centerZ = 100.0\n    local targetPos = { \n        x = centerX + (centerX - targetEntity.pos.x), \n        y = targetEntity.pos.y, \n        z = centerZ + (centerZ - targetEntity.pos.z) \n    }\n\n    local heading = TensorCore.getHeadingToTarget(sourcePos, targetPos)\n    local totalDistance = TensorCore.getDistance2d(sourcePos, targetPos)\n    \n    -- Fixed sizes for the arrow\n    local baseWidth = 1.0 \n    local tipWidth = 5.0\n    local tipLength = 3.0\n    local baseLength = math.max(0.1, totalDistance - tipLength)\n\n    local arrowDrawer = TensorCore.getCachedDrawer(0xFF00FFFF, 0xFF0088FF, 0xFF0000FF, 0xFFFFFFFF, 2)\n    arrowDrawer:addTimedArrow(\n        timeout, \n        sourcePos.x, sourcePos.y, sourcePos.z, \n        heading, \n        baseLength, baseWidth, tipLength, tipWidth, \n        0, false, Argus2.RenderFlags.FLAG_RENDER_OVERLAY\n    )\n    \n    -- Draw the timed WorldText hint at the target destination\n    AnyoneCore.addTimedWorldText(timeout, \"Bait\", targetPos, 0xFFFFFFFF, true, 1.5, 0)\nend\n\nself.used = true",
							conditions = 
							{
								
								{
									"a0225b2c-4cb9-7884-9db9-620a44267b80",
									true,
								},
								
								{
									"639c55d1-d078-f5af-97b6-084f7d9348a8",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_CD",
							uuid = "c9dd2649-2492-fe24-aac7-9148d86367f9",
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
							conditionLua = "return GetCurrentRole() == \"R1\"",
							dequeueIfLuaFalse = true,
							name = "Self: R1",
							uuid = "a0225b2c-4cb9-7884-9db9-620a44267b80",
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
							uuid = "639c55d1-d078-f5af-97b6-084f7d9348a8",
							version = 3,
						},
					},
				},
				enabled = false,
				mechanicTime = 498.85079039671,
				name = "[Lj Draw] Arrow to Bait",
				timelineIndex = 90,
				timerOffset = 1,
				uuid = "d0547bcb-e638-aab8-ac8a-d0ed841e0b78",
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
							actionLua = "local timeout = 7700\nlocal player = TensorCore.mGetPlayer()\nlocal targetEntity = TensorCore.mGetEntity(eventArgs.entityID)\nlocal myRole = GetCurrentRole()\n\nif targetEntity ~= nil and myRole ~= nil then\n    local roleAngles = {\n        [\"H1\"] = -45, [\"H2\"] = -45, -- Far Left\n        [\"MT\"] = -15, [\"OT\"] = -15, -- Mid Left\n        [\"M1\"] = 15,  [\"M2\"] = 15,  -- Mid Right\n        [\"R1\"] = 45,  [\"R2\"] = 45   -- Far Right\n    }\n\n    local angleOffset = roleAngles[myRole]\n\n    if angleOffset then\n        local centerX = 100.0\n        local centerZ = 100.0\n        local radius = 5.0 -- Shared radius to stack the role pairs\n\n        -- Determine the angle from the entity towards the center of the arena (Relative South)\n        local dx = centerX - targetEntity.pos.x\n        local dz = centerZ - targetEntity.pos.z\n        local baseAngle = math.atan2(dx, dz) \n\n        -- Apply the role's specific spread offset\n        local finalAngle = baseAngle + math.rad(angleOffset)\n\n        local destPos = {\n            x = targetEntity.pos.x + (radius * math.sin(finalAngle)),\n            y = targetEntity.pos.y,\n            z = targetEntity.pos.z + (radius * math.cos(finalAngle))\n        }\n\n        local heading = TensorCore.getHeadingToTarget(player.pos, destPos)\n        local totalDistance = TensorCore.getDistance2d(player.pos, destPos)\n        local scale = math.min(1, totalDistance / 15)\n        local baseWidth = math.max(0.5, 1 * scale) \n        local tipWidth = math.max(1.5, 5 * scale)\n        local tipLength = math.max(2, 3 * scale)\n        local baseLength = totalDistance - tipLength\n\n        if baseLength > 0 then\n            local arrowDrawer = TensorCore.getCachedDrawer(0xFF00FFFF, 0xFF0088FF, 0xFF0000FF, 0xFFFFFFFF, 2)\n            arrowDrawer:addTimedArrow(\n                timeout, \n                player.pos.x, player.pos.y, player.pos.z, \n                heading, \n                baseLength, baseWidth, tipLength, tipWidth, \n                0, false, Argus2.RenderFlags.FLAG_RENDER_OVERLAY\n            )\n        end\n    end\nend\n\nself.used = true",
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
							conditionLua = "return GetCurrentRole() ~= nil",
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
							actionLua = "local player = TensorCore.mGetPlayer()\nlocal sourcePos = player.pos\n\n-- Determine target coordinate based on Role\nlocal myRole = GetCurrentRole()\n\n-- Define the boss group\nlocal isBossGroup = { [\"MT\"] = true, [\"H1\"] = true, [\"M1\"] = true, [\"M2\"] = true }\n\nlocal targetPos\n\n-- Assign the destination coordinates based on the dynamically detected entity\nif isBossGroup[myRole] then\n    local targetEntity = TensorCore.mGetEntity(eventArgs.detectionTargetID)\n    if targetEntity then\n        targetPos = targetEntity.pos\n    end\nend\n\n-- Proceed only if the role matched and the target entity position was found\nif targetPos then\n    -- Calculate exact heading and distance from the player to the target spot\n    local heading = TensorCore.getHeadingToTarget(sourcePos, targetPos)\n    local totalDistance = TensorCore.getDistance2d(sourcePos, targetPos)\n\n    -- Proximity Scaling\n    local scale = math.min(1, totalDistance / 15)\n    local baseWidth = math.max(0.5, 1 * scale) \n    local tipWidth = math.max(1.5, 5 * scale)\n    local tipLength = math.max(2, 3 * scale)\n\n    local baseLength = totalDistance - tipLength\n\n    -- Draw the Arrow\n    if baseLength > 0 then\n        local arrowDrawer = TensorCore.getCachedDrawer(0xFF00FFFF, 0xFF0088FF, 0xFF0000FF, 0xFFFFFFFF, 2)\n        arrowDrawer:addArrow(\n            sourcePos.x, sourcePos.y, sourcePos.z, \n            heading, \n            baseLength, baseWidth, tipLength, tipWidth, \n            false, Argus2.RenderFlags.FLAG_RENDER_OVERLAY\n        )\n    end\nend\n\nself.used = true",
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
							conditionLua = "return GetCurrentRole() ~= nil",
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
				timerOffset = 4,
				uuid = "dfd846c1-4d5d-a8e8-9090-4718dc6a1208",
				version = 2,
			},
			inheritedIndex = 1,
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
							actionLua = "-- ==========================================\n-- This follows your AnyoneCore options, set to DPS or Support first in there rather than in script here and it'll automatically adjust\n-- ==========================================\n\nlocal strategy = AnyoneCore.Settings.Reactions.dmu.p3BlackHoleSolverStrategy\nlocal firstRole = (strategy == 2 and \"DPS\") or \"Support\"\nlocal myRole = data.ljEarthquakeRole\nlocal myOrder = data.ljInLine\nlocal hasAccretion = data.ljAccretion\nlocal secondRole = firstRole == \"DPS\" and \"Support\" or \"DPS\"\n\nlocal waveMapping = {\n    [1]  = { [1] = firstRole .. \":First\" },\n    [2]  = { [1] = firstRole .. \":First\", [2] = secondRole .. \":First\" },\n    [3]  = { [1] = firstRole .. \":First\", [2] = secondRole .. \":First\", [3] = \"Accretion:First\" },\n    [4]  = { [1] = firstRole .. \":Second\", [2] = secondRole .. \":First\", [3] = \"Accretion:First\" },\n    [5]  = { [1] = firstRole .. \":Second\", [2] = secondRole .. \":Second\", [3] = \"Accretion:First\" },\n    [6]  = { [1] = firstRole .. \":Second\", [2] = secondRole .. \":Second\", [3] = \"Accretion:Second\" },\n    [7]  = { [1] = firstRole .. \":Third\", [2] = secondRole .. \":Second\", [3] = \"Accretion:Second\" },\n    [8]  = { [1] = firstRole .. \":Third\", [2] = secondRole .. \":Third\", [3] = \"Accretion:Second\" },\n    [9]  = { [1] = firstRole .. \":Third\", [2] = secondRole .. \":Third\" },\n    [10] = { [1] = secondRole .. \":Third\" }\n}\n\nlocal kfk = nil\nlocal elist = TensorCore.entityList('contentid=7131')\nif table.valid(elist) then\n    for k, v in pairs(elist) do\n        local ent = TensorCore.mGetEntity(k)\n        if ent and Argus.getEntityModel(ent) == 19504 then\n            kfk = ent\n            break\n        end\n    end\nend\n\nif not kfk then\n    self.used = true\n    return\nend\n\nlocal current_wave = data.ljEarthquakeWave or 1\nif current_wave < 1 or current_wave > 10 then\n    self.used = true\n    return\nend\n\nlocal current_orbs = {}\nlocal bh_ents = TensorCore.entityList('alive,contentid=8343')\nif table.valid(bh_ents) then\n    for k, v in pairs(bh_ents) do\n        local ent = TensorCore.mGetEntity(k)\n        if ent then\n            local tethers = Argus.getTethersOnEnt(ent.id)\n            if table.valid(tethers) then\n                for _, tether in pairs(tethers) do\n                    if tether.type == 84 then\n                        table.insert(current_orbs, {\n                            id = ent.id,\n                            x = ent.pos.x, y = ent.pos.y, z = ent.pos.z,\n                            tetherTargetID = tether.partnerid\n                        })\n                        break\n                    end\n                end\n            end\n        end\n    end\nend\n\nif #current_orbs == 0 then\n    self.used = true\n    return\nend\n\nlocal function normAngle2Pi(a)\n    while a < 0 do a = a + 2 * math.pi end\n    while a >= 2 * math.pi do a = a - 2 * math.pi end\n    return a\nend\n\nlocal center = data.arenaCenter or { x = 100, y = 0, z = 100 }\nlocal NORTH_ARROW_LEN = 18\nlocal NORTH_BUFFER_RAD = math.rad(25)\nlocal NORTH_SNAP_RAD = math.rad(8)\n\nlocal northHeading = normAngle2Pi(tonumber(kfk.pos.h) + math.pi)\nlocal northTip = TensorCore.getPosInDirection(center, northHeading, NORTH_ARROW_LEN)\nif not northTip then\n    self.used = true\n    return\nend\n\n-- Clockwise-from-north angle for a world position (x = East, z = South).\nlocal function clockwiseAngle(x, z)\n    return math.atan2(x - center.x, -(z - center.z))\nend\n\nlocal northAngle = clockwiseAngle(northTip.x, northTip.z)\n\nfor _, orb in ipairs(current_orbs) do\n    local cw = normAngle2Pi(clockwiseAngle(orb.x, orb.z) - northAngle + NORTH_BUFFER_RAD)\n    if cw > 2 * math.pi - NORTH_SNAP_RAD then\n        cw = 0\n    end\n    orb.cw = cw\nend\n\ntable.sort(current_orbs, function(a, b)\n    return a.cw < b.cw\nend)\n\nlocal my_prio_str = (hasAccretion and \"Accretion\" or myRole) .. \":\" .. myOrder\nlocal my_target_idx = nil\n\nlocal wave_setup = waveMapping[current_wave]\nif wave_setup then\n    for idx, role_str in pairs(wave_setup) do\n        if role_str == my_prio_str then\n            my_target_idx = idx\n            break\n        end\n    end\nend\n\nif not my_target_idx then\n    self.used = true\n    return\nend\n\nlocal activeBH_data = current_orbs[my_target_idx]\nif not activeBH_data then\n    self.used = true\n    return\nend\n\nlocal player = TensorCore.mGetPlayer()\nlocal targetPos\n\nif activeBH_data.tetherTargetID == player.id then\n    -- We already hold the correct tether: point at a spot clockwise of the orb and pulled in toward arena centre to keep uptime on the boss and consistent angles\n    data.ljHeldWave = current_wave\n\n    local STAND_CW_DIST = 6    -- yalms clockwise (tangential) of the orb\n    local STAND_IN_DIST = 14   -- yalms pulled in toward arena centre\n\n    local dx = activeBH_data.x - center.x\n    local dz = activeBH_data.z - center.z\n    local dist = math.sqrt(dx * dx + dz * dz)\n    if dist < 0.01 then\n        self.used = true\n        return\n    end\n\n    local radX, radZ = dx / dist, dz / dist   -- radial outward unit (centre -> orb)\n    local tanX, tanZ = -radZ, radX            -- clockwise tangent unit\n\n    targetPos = {\n        x = activeBH_data.x + tanX * STAND_CW_DIST - radX * STAND_IN_DIST,\n        y = activeBH_data.y,\n        z = activeBH_data.z + tanZ * STAND_CW_DIST - radZ * STAND_IN_DIST\n    }\nelse\n    -- Once we've soaked our orb this wave it drops out and the remaining orbs re-index, don't redirect as we're done\n    if data.ljHeldWave == current_wave then\n        self.used = true\n        return\n    end\n\n    -- Heading out to grab the tether: aim at the midpoint between the orb and its current holder.\n    local tetherTarget = TensorCore.mGetEntity(activeBH_data.tetherTargetID)\n    if not tetherTarget then\n        self.used = true\n        return\n    end\n\n    targetPos = {\n        x = activeBH_data.x + (tetherTarget.pos.x - activeBH_data.x) * 0.5,\n        y = activeBH_data.y + (tetherTarget.pos.y - activeBH_data.y) * 0.5,\n        z = activeBH_data.z + (tetherTarget.pos.z - activeBH_data.z) * 0.5\n    }\nend\n\nlocal heading = TensorCore.getHeadingToTarget(player.pos, targetPos)\nlocal totalDistance = TensorCore.getDistance2d(player.pos, targetPos)\n\nlocal scale = math.min(1, totalDistance / 15)\nlocal baseWidth = math.max(0.5, 1 * scale)\nlocal tipWidth = math.max(1.5, 5 * scale)\nlocal tipLength = math.max(2, 3 * scale)\nlocal baseLength = totalDistance - tipLength\n\nif baseLength > 1 then\n    local arrowDrawer = TensorCore.getCachedDrawer(0xFF00FFFF, 0xFF0088FF, 0xFF0000FF, 0xFFFFFFFF, 2)\n    if arrowDrawer then\n        arrowDrawer:addArrow(\n            player.pos.x, player.pos.y, player.pos.z,\n            heading,\n            baseLength, baseWidth, tipLength, tipWidth,\n            false, Argus2.RenderFlags.FLAG_RENDER_OVERLAY\n        )\n    end\nend\n\nself.used = true",
							conditions = 
							{
								
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
							actionLua = "-- ==========================================\n-- Double-tether variant of the Black Hole solver. Fixed priority.\n-- BH1: Support First grabs the solo tether, DPS First grabs the double.\n-- BH2/BH3: normal DPS > Support > Accretion order.\n-- BH4: Support Third grabs the double, DPS Third grabs the solo.\n-- ==========================================\n\nlocal myRole = data.ljEarthquakeRole\nlocal myOrder = data.ljInLine\nlocal hasAccretion = data.ljAccretion\n\nlocal waveMapping = {\n    [1]  = { [1] = \"Support:First\" },\n    [2]  = {},\n    [3]  = { [1] = \"DPS:First\",  [2] = \"Support:First\",  [3] = \"Accretion:First\" },\n    [4]  = { [1] = \"DPS:Second\", [2] = \"Support:First\",  [3] = \"Accretion:First\" },\n    [5]  = { [1] = \"DPS:Second\", [2] = \"Support:Second\", [3] = \"Accretion:First\" },\n    [6]  = { [1] = \"DPS:Second\", [2] = \"Support:Second\", [3] = \"Accretion:Second\" },\n    [7]  = { [1] = \"DPS:Third\",  [2] = \"Support:Second\", [3] = \"Accretion:Second\" },\n    [8]  = { [1] = \"DPS:Third\",  [2] = \"Support:Third\",  [3] = \"Accretion:Second\" },\n    [9]  = {},\n    [10] = { [1] = \"DPS:Third\" }\n}\n\n-- Waves where one role grabs BOTH tethers and stands between the two orbs.\nlocal doubleTethers = {\n    [2] = \"DPS:First\",     -- BH1: DPS takes both\n    [9] = \"Support:Third\"  -- BH4: Support takes both\n}\n\nlocal kfk = nil\nlocal elist = TensorCore.entityList('contentid=7131')\nif table.valid(elist) then\n    for k, v in pairs(elist) do\n        local ent = TensorCore.mGetEntity(k)\n        if ent and Argus.getEntityModel(ent) == 19504 then\n            kfk = ent\n            break\n        end\n    end\nend\n\nif not kfk then\n    self.used = true\n    return\nend\n\nlocal current_wave = data.ljEarthquakeWave or 1\nif current_wave < 1 or current_wave > 10 then\n    self.used = true\n    return\nend\n\nlocal current_orbs = {}\nlocal bh_ents = TensorCore.entityList('alive,contentid=8343')\nif table.valid(bh_ents) then\n    for k, v in pairs(bh_ents) do\n        local ent = TensorCore.mGetEntity(k)\n        if ent then\n            local tethers = Argus.getTethersOnEnt(ent.id)\n            if table.valid(tethers) then\n                for _, tether in pairs(tethers) do\n                    if tether.type == 84 then\n                        table.insert(current_orbs, {\n                            id = ent.id,\n                            x = ent.pos.x, y = ent.pos.y, z = ent.pos.z,\n                            tetherTargetID = tether.partnerid\n                        })\n                        break\n                    end\n                end\n            end\n        end\n    end\nend\n\nif #current_orbs == 0 then\n    self.used = true\n    return\nend\n\nlocal function normAngle2Pi(a)\n    while a < 0 do a = a + 2 * math.pi end\n    while a >= 2 * math.pi do a = a - 2 * math.pi end\n    return a\nend\n\nlocal center = data.arenaCenter or { x = 100, y = 0, z = 100 }\nlocal NORTH_ARROW_LEN = 18\nlocal NORTH_BUFFER_RAD = math.rad(25)\nlocal NORTH_SNAP_RAD = math.rad(8)\n\nlocal northHeading = normAngle2Pi(tonumber(kfk.pos.h) + math.pi)\nlocal northTip = TensorCore.getPosInDirection(center, northHeading, NORTH_ARROW_LEN)\nif not northTip then\n    self.used = true\n    return\nend\n\n-- Clockwise-from-north angle for a world position (x = East, z = South).\nlocal function clockwiseAngle(x, z)\n    return math.atan2(x - center.x, -(z - center.z))\nend\n\nlocal northAngle = clockwiseAngle(northTip.x, northTip.z)\n\nfor _, orb in ipairs(current_orbs) do\n    local cw = normAngle2Pi(clockwiseAngle(orb.x, orb.z) - northAngle + NORTH_BUFFER_RAD)\n    if cw > 2 * math.pi - NORTH_SNAP_RAD then\n        cw = 0\n    end\n    orb.cw = cw\nend\n\ntable.sort(current_orbs, function(a, b)\n    return a.cw < b.cw\nend)\n\nlocal my_prio_str = (hasAccretion and \"Accretion\" or myRole) .. \":\" .. myOrder\nlocal player = TensorCore.mGetPlayer()\n\n-- Work out my orb(s) this wave: the whole set if I'm the double grabber, else one by CW index.\nlocal iAmDouble = doubleTethers[current_wave] == my_prio_str\nlocal myOrbs = {}\n\nif iAmDouble then\n    for _, orb in ipairs(current_orbs) do\n        myOrbs[#myOrbs + 1] = orb\n    end\nelse\n    local wave_setup = waveMapping[current_wave]\n    if wave_setup then\n        for idx, role_str in pairs(wave_setup) do\n            if role_str == my_prio_str then\n                local orb = current_orbs[idx]\n                if orb then myOrbs[1] = orb end\n                break\n            end\n        end\n    end\nend\n\nif #myOrbs == 0 then\n    self.used = true\n    return\nend\n\n-- Am I already tethered to (holding) any of my orbs?\nlocal holding = false\nfor _, orb in ipairs(myOrbs) do\n    if orb.tetherTargetID == player.id then\n        holding = true\n        break\n    end\nend\n\nlocal targetPos\n\nif iAmDouble then\n    -- Collect the tethers one at a time, then bait the midpoint once we hold both.\n    -- Once soaked they drop out and the slot re-indexes to the next wave's orbs, so suppress.\n    if not holding and data.ljHeldWave == current_wave then\n        self.used = true\n        return\n    end\n    if holding then data.ljHeldWave = current_wave end\n\n    local ungrabbed = {}\n    for _, orb in ipairs(myOrbs) do\n        if orb.tetherTargetID ~= player.id then\n            ungrabbed[#ungrabbed + 1] = orb\n        end\n    end\n\n    if #ungrabbed > 0 then\n        -- Still a tether to collect: head to the nearest one we don't hold yet, aiming at the\n        -- midpoint between it and its current holder (same as a solo grab).\n        local nearest, nearestDist\n        for _, orb in ipairs(ungrabbed) do\n            local d = TensorCore.getDistance2d(player.pos, orb)\n            if not nearestDist or d < nearestDist then\n                nearestDist = d\n                nearest = orb\n            end\n        end\n\n        local tetherTarget = TensorCore.mGetEntity(nearest.tetherTargetID)\n        if not tetherTarget then\n            self.used = true\n            return\n        end\n\n        targetPos = {\n            x = nearest.x + (tetherTarget.pos.x - nearest.x) * 0.5,\n            y = nearest.y + (tetherTarget.pos.y - nearest.y) * 0.5,\n            z = nearest.z + (tetherTarget.pos.z - nearest.z) * 0.5\n        }\n    else\n        -- Hold both: bait the exact midpoint so the tethers cross out at the edge, off the party.\n        local sumX, sumY, sumZ = 0, 0, 0\n        for _, orb in ipairs(myOrbs) do\n            sumX = sumX + orb.x\n            sumY = sumY + orb.y\n            sumZ = sumZ + orb.z\n        end\n        local n = #myOrbs\n        targetPos = { x = sumX / n, y = sumY / n, z = sumZ / n }\n    end\nelseif holding then\n    -- We hold our solo tether: point clockwise of the orb and pulled in toward centre for uptime.\n    data.ljHeldWave = current_wave\n    local orb = myOrbs[1]\n\n    local STAND_CW_DIST = 6    -- yalms clockwise (tangential) of the orb\n    local STAND_IN_DIST = 14   -- yalms pulled in toward arena centre\n\n    local dx = orb.x - center.x\n    local dz = orb.z - center.z\n    local dist = math.sqrt(dx * dx + dz * dz)\n    if dist < 0.01 then\n        self.used = true\n        return\n    end\n\n    local radX, radZ = dx / dist, dz / dist   -- radial outward unit (centre -> orb)\n    local tanX, tanZ = -radZ, radX            -- clockwise tangent unit\n\n    targetPos = {\n        x = orb.x + tanX * STAND_CW_DIST - radX * STAND_IN_DIST,\n        y = orb.y,\n        z = orb.z + tanZ * STAND_CW_DIST - radZ * STAND_IN_DIST\n    }\nelse\n    -- Heading out to grab our solo tether: aim at the midpoint between the orb and its holder.\n    -- Once soaked the slot re-indexes to a neighbour until the wave ticks over, so suppress.\n    if data.ljHeldWave == current_wave then\n        self.used = true\n        return\n    end\n\n    local orb = myOrbs[1]\n    local tetherTarget = TensorCore.mGetEntity(orb.tetherTargetID)\n    if not tetherTarget then\n        self.used = true\n        return\n    end\n\n    targetPos = {\n        x = orb.x + (tetherTarget.pos.x - orb.x) * 0.5,\n        y = orb.y + (tetherTarget.pos.y - orb.y) * 0.5,\n        z = orb.z + (tetherTarget.pos.z - orb.z) * 0.5\n    }\nend\n\nlocal heading = TensorCore.getHeadingToTarget(player.pos, targetPos)\nlocal totalDistance = TensorCore.getDistance2d(player.pos, targetPos)\n\nlocal scale = math.min(1, totalDistance / 15)\nlocal baseWidth = math.max(0.5, 1 * scale)\nlocal tipWidth = math.max(1.5, 5 * scale)\nlocal tipLength = math.max(2, 3 * scale)\nlocal baseLength = totalDistance - tipLength\n\nif baseLength > 1 then\n    local arrowDrawer = TensorCore.getCachedDrawer(0xFF00FFFF, 0xFF0088FF, 0xFF0000FF, 0xFFFFFFFF, 2)\n    if arrowDrawer then\n        arrowDrawer:addArrow(\n            player.pos.x, player.pos.y, player.pos.z,\n            heading,\n            baseLength, baseWidth, tipLength, tipWidth,\n            false, Argus2.RenderFlags.FLAG_RENDER_OVERLAY\n        )\n    end\nend\n\nself.used = true",
							conditions = 
							{
								
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
				uuid = "534567ce-28c2-65a7-90e5-8d182b91a53f",
				version = 2,
			},
			inheritedIndex = 42,
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
							actionLua = "local timeout = 7500\n\nlocal center = { x = 100, y = 0, z = 100 }\nlocal dist = 9.5\nlocal rot = data.ljKefkaHeading\n\nlocal designTarget = { x = center.x, y = center.y, z = center.z - dist }\nlocal rotated = TensorCore.rotatePosAroundPos(center, designTarget, rot)\n\nlocal sourcePos = TensorCore.mGetPlayer().pos\nlocal targetPos = { x = rotated.x, y = sourcePos.y, z = rotated.z }\n\nlocal heading = TensorCore.getHeadingToTarget(sourcePos, targetPos)\nlocal totalDistance = TensorCore.getDistance2d(sourcePos, targetPos)\n\n-- Proximity scaling\nlocal scale = math.min(1, totalDistance / 15)\nlocal baseWidth = math.max(0.5, 1 * scale)\nlocal tipWidth = math.max(1.5, 5 * scale)\nlocal tipLength = math.max(2, 3 * scale)\nlocal baseLength = totalDistance - tipLength\n\nif baseLength > 0 then\n    local colorStart = 0xFF00FFFF\n    local colorMid = 0xFF0088FF\n    local colorEnd = 0xFF0000FF\n    local colorOutline = 0xFFFFFFFF\n    local outlineThickness = 2\n\n    local drawer = TensorCore.getCachedDrawer(colorStart, colorMid, colorEnd, colorOutline, outlineThickness)\n    drawer:addTimedArrow(\n        timeout,\n        sourcePos.x, sourcePos.y, sourcePos.z,\n        heading,\n        baseLength, baseWidth, tipLength, tipWidth,\n        0, false, Argus2.RenderFlags.FLAG_RENDER_OVERLAY\n    )\nend\n\nself.used = true",
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
							actionLua = "local timeout = 7500\n\nlocal center = { x = 100, y = 0, z = 100 }\nlocal dist = 9.5\nlocal rot = data.ljKefkaHeading\n\nlocal designTarget = { x = center.x, y = center.y, z = center.z + dist }\nlocal rotated = TensorCore.rotatePosAroundPos(center, designTarget, rot)\n\nlocal sourcePos = TensorCore.mGetPlayer().pos\nlocal targetPos = { x = rotated.x, y = sourcePos.y, z = rotated.z }\n\nlocal heading = TensorCore.getHeadingToTarget(sourcePos, targetPos)\nlocal totalDistance = TensorCore.getDistance2d(sourcePos, targetPos)\n\n-- Proximity scaling\nlocal scale = math.min(1, totalDistance / 15)\nlocal baseWidth = math.max(0.5, 1 * scale)\nlocal tipWidth = math.max(1.5, 5 * scale)\nlocal tipLength = math.max(2, 3 * scale)\nlocal baseLength = totalDistance - tipLength\n\nif baseLength > 0 then\n    local colorStart = 0xFF00FFFF\n    local colorMid = 0xFF0088FF\n    local colorEnd = 0xFF0000FF\n    local colorOutline = 0xFFFFFFFF\n    local outlineThickness = 2\n\n    local drawer = TensorCore.getCachedDrawer(colorStart, colorMid, colorEnd, colorOutline, outlineThickness)\n    drawer:addTimedArrow(\n        timeout,\n        sourcePos.x, sourcePos.y, sourcePos.z,\n        heading,\n        baseLength, baseWidth, tipLength, tipWidth,\n        0, false, Argus2.RenderFlags.FLAG_RENDER_OVERLAY\n    )\nend\n\nself.used = true\n",
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
						inheritedIndex = 1,
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
							actionLua = "local center = { x = 100, y = 0, z = 100 }\nlocal cornerDist = 11                     -- distance from centre to each corner\nlocal offset = cornerDist / math.sqrt(2)    -- equal X/Z offset for a diagonal corner\nlocal rot = data.ljKefkaHeading\n\n-- Design (true-north) corners; rotated to Kefka below.\nlocal nw = { x = center.x - offset, z = center.z - offset }  -- H1 + MT\nlocal ne = { x = center.x + offset, z = center.z - offset }  -- H2 + OT\nlocal sw = { x = center.x - offset, z = center.z + offset }  -- R1 + M1\nlocal se = { x = center.x + offset, z = center.z + offset }  -- R2 + M2\n\nlocal cornerByRole = {\n    H1 = nw, MT = nw,\n    H2 = ne, OT = ne,\n    R1 = sw, M1 = sw,\n    R2 = se, M2 = se,\n}\n\nlocal corner = cornerByRole[GetCurrentRole()]\nif corner then\n    corner.y = center.y\n    local rotated = TensorCore.rotatePosAroundPos(center, corner, rot)\n\n    local sourcePos = TensorCore.mGetPlayer().pos\n    local targetPos = { x = rotated.x, y = sourcePos.y, z = rotated.z }\n\n    local heading = TensorCore.getHeadingToTarget(sourcePos, targetPos)\n    local totalDistance = TensorCore.getDistance2d(sourcePos, targetPos)\n\n    -- Proximity scaling\n    local scale = math.min(1, totalDistance / 15)\n    local baseWidth = math.max(0.5, 1 * scale)\n    local tipWidth = math.max(1.5, 5 * scale)\n    local tipLength = math.max(2, 3 * scale)\n    local baseLength = totalDistance - tipLength\n\n    if baseLength > 1 then\n        local arrowDrawer = TensorCore.getCachedDrawer(0xFF00FFFF, 0xFF0088FF, 0xFF0000FF, 0xFFFFFFFF, 2)\n        arrowDrawer:addArrow(\n            sourcePos.x, sourcePos.y, sourcePos.z,\n            heading,\n            baseLength, baseWidth, tipLength, tipWidth,\n            false, Argus2.RenderFlags.FLAG_RENDER_OVERLAY\n        )\n    end\nend\n\nself.used = true",
							conditions = 
							{
								
								{
									"405fb0cb-4c1e-3718-8865-17a8a63658ed",
									true,
								},
								
								{
									"d3e255d8-667c-4512-bd4a-c806c0acfac9",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_CD",
							uuid = "b2fcfa27-5cf7-59ba-8b3c-a232cd81174c",
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
							conditionLua = "return GetCurrentRole() ~= nil",
							dequeueIfLuaFalse = true,
							name = "Role Set",
							uuid = "405fb0cb-4c1e-3718-8865-17a8a63658ed",
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
							uuid = "d3e255d8-667c-4512-bd4a-c806c0acfac9",
							version = 3,
						},
						inheritedIndex = 1,
					},
				},
				eventType = 12,
				mechanicTime = 699.71269025282,
				name = "[Lj Draw] Draw Arrow to Corner Baits",
				randomOffset = 3,
				timeRange = true,
				timelineIndex = 138,
				timerEndOffset = 3,
				timerOffset = -1,
				timerStartOffset = -0.25,
				uuid = "fe3712b5-905e-f317-9177-0ff196a32e02",
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
							actionLua = "local center = { x = 100, y = 0, z = 100 }\nlocal towerDist = 10\nlocal rot = data.ljKefkaHeading\n\n-- Design (relative-north) tower spots; rotated to Kefka below. West pair / East pair.\nlocal towerByRole = {\n    H1 = { x = center.x - towerDist, z = center.z },  -- West\n    MT = { x = center.x - towerDist, z = center.z },  -- West\n    H2 = { x = center.x + towerDist, z = center.z },  -- East\n    OT = { x = center.x + towerDist, z = center.z },  -- East\n    R1 = { x = center.x - towerDist, z = center.z },  -- West\n    M1 = { x = center.x - towerDist, z = center.z },  -- West\n    R2 = { x = center.x + towerDist, z = center.z },  -- East\n    M2 = { x = center.x + towerDist, z = center.z },  -- East\n}\n\nlocal SUPPORT = { H1 = true, H2 = true, MT = true, OT = true }\n\nlocal role = GetCurrentRole()\nlocal playerGroup = SUPPORT[role] and \"Support\" or \"DPS\"\n\n-- Group named by data.ljP3Stack stacks mid; the other group soaks the towers. This then flips later by changing the vaue of data.ljP3Stack.\nlocal designTarget\nif playerGroup == data.ljP3Stack then\n    designTarget = { x = center.x, z = center.z }\nelse\n    designTarget = towerByRole[role]\nend\n\nif designTarget then\n    designTarget.y = center.y\n    local rotated = TensorCore.rotatePosAroundPos(center, designTarget, rot)\n\n    local sourcePos = TensorCore.mGetPlayer().pos\n    local targetPos = { x = rotated.x, y = sourcePos.y, z = rotated.z }\n\n    local heading = TensorCore.getHeadingToTarget(sourcePos, targetPos)\n    local totalDistance = TensorCore.getDistance2d(sourcePos, targetPos)\n\n    -- Proximity scaling\n    local scale = math.min(1, totalDistance / 15)\n    local baseWidth = math.max(0.5, 1 * scale)\n    local tipWidth = math.max(1.5, 5 * scale)\n    local tipLength = math.max(2, 3 * scale)\n    local baseLength = totalDistance - tipLength\n\n    if baseLength > 0 then\n        local arrowDrawer = TensorCore.getCachedDrawer(0xFF00FFFF, 0xFF0088FF, 0xFF0000FF, 0xFFFFFFFF, 2)\n        arrowDrawer:addArrow(\n            sourcePos.x, sourcePos.y, sourcePos.z,\n            heading,\n            baseLength, baseWidth, tipLength, tipWidth,\n            false, Argus2.RenderFlags.FLAG_RENDER_OVERLAY\n        )\n    end\nend\n\nself.used = true",
							conditions = 
							{
								
								{
									"a0ad6380-d04f-ebc3-ac67-a741a20b5443",
									true,
								},
								
								{
									"eda595af-f405-3639-bebc-66e2d6674b33",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_CD",
							uuid = "3eed45c1-a515-ef19-9cc5-fa3762d65300",
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
							conditionLua = "return GetCurrentRole() ~= nil",
							dequeueIfLuaFalse = true,
							name = "Role Set",
							uuid = "a0ad6380-d04f-ebc3-ac67-a741a20b5443",
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
							uuid = "eda595af-f405-3639-bebc-66e2d6674b33",
							version = 3,
						},
					},
				},
				eventType = 12,
				mechanicTime = 703.58654115995,
				name = "[Lj Draw] Draw Arrow to Towers/Middle",
				timeRange = true,
				timelineIndex = 140,
				timerEndOffset = 7,
				uuid = "0ae2b750-99a0-a6fa-8af6-dc13c80e06bb",
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
							conditionLua = "return GetLightParty() == 1",
							dequeueIfLuaFalse = true,
							name = "Group 1",
							uuid = "ef878e15-11ee-71d1-8947-cfb48c2bd0e6",
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
							conditionLua = "return GetLightParty() == 2",
							dequeueIfLuaFalse = true,
							name = "Group 2",
							uuid = "ef878e15-11ee-71d1-8947-cfb48c2bd0e6",
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
							dequeueIfLuaFalse = true,
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
							dequeueIfLuaFalse = true,
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
							dequeueIfLuaFalse = true,
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
							dequeueIfLuaFalse = true,
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
							actionLua = "local center = {x = 100, y = 0, z = 100}\nlocal player = TensorCore.mGetPlayer()\n\nlocal has5544 = TensorCore.hasBuff(player, 5544, nil, nil, 40)  -- spread E, more than 40s left\nlocal has5545 = TensorCore.hasBuff(player, 5545, nil, nil, 40)  -- stack S, more than 40s left\n\nlocal spread\nif has5544 or has5545 then\n    spread = has5544                                              -- normal mapping\n    if data.ljExdeathAura ~= \"Truth\" then spread = not spread end -- invert only with a buff\nelse\n    spread = false                                               -- no buff → always S\nend\n\nlocal target = spread and {x = 112.5, y = 0, z = 100  }  -- East\n                      or  {x = 100,   y = 0, z = 112.5}  -- South\n\nlocal drawer = TensorCore.getCachedDrawer(0xFF00FFFF, 0xFF0088FF, 0xFF0000FF, 0xFFFFFFFF, 2)\ndrawer:addTimedArrow(\n    7000,\n    center.x, center.y, center.z,\n    TensorCore.getHeadingToTarget(center, target),\n    9, 1.5, 3.5, 6,\n    43000, false, Argus2.RenderFlags.FLAG_RENDER_OVERLAY\n)\n\nself.used = true",
							conditions = 
							{
								
								{
									"15b8bb18-853c-d4f1-98ab-996eb7d2f7ab",
									true,
								},
								
								{
									"faba3eab-7df5-75f5-bcc8-805f8106c79a",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_CD",
							name = "DPS",
							uuid = "0a729d61-7ce4-7c95-9607-2ec280c1a486",
							version = 2.1,
						},
						inheritedIndex = 1,
					},
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local center = {x = 100, y = 0, z = 100}\nlocal player = TensorCore.mGetPlayer()\n\nlocal has5544 = TensorCore.hasBuff(player, 5544, nil, nil, 40)  -- spread W, more than 40s left\nlocal has5545 = TensorCore.hasBuff(player, 5545, nil, nil, 40)  -- stack N, more than 40s left\n\nlocal spread\nif has5544 or has5545 then\n    spread = has5544                                              -- normal mapping\n    if data.ljExdeathAura ~= \"Truth\" then spread = not spread end -- invert only with a buff\nelse\n    spread = false                                               -- no buff → always N\nend\n\nlocal target = spread and {x = 87.5, y = 0, z = 100 }   -- West\n                      or  {x = 100,  y = 0, z = 87.5}    -- North\n\nlocal drawer = TensorCore.getCachedDrawer(0xFF00FFFF, 0xFF0088FF, 0xFF0000FF, 0xFFFFFFFF, 2)\ndrawer:addTimedArrow(\n    7000,\n    center.x, center.y, center.z,\n    TensorCore.getHeadingToTarget(center, target),\n    9, 1.5, 3.5, 6,\n    43000, false, Argus2.RenderFlags.FLAG_RENDER_OVERLAY\n)\n\nself.used = true",
							conditions = 
							{
								
								{
									"15b8bb18-853c-d4f1-98ab-996eb7d2f7ab",
									true,
								},
								
								{
									"faba3eab-7df5-75f5-bcc8-805f8106c79a",
									false,
								},
							},
							gVar = "ACR_RikuSGE3_CD",
							name = "Support",
							uuid = "2eed23b6-13a5-63de-b393-6645da874b59",
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
							conditionLua = "return data.ljExdeathAura ~= nil",
							dequeueIfLuaFalse = true,
							name = "Exdeath Aura Recorded",
							uuid = "15b8bb18-853c-d4f1-98ab-996eb7d2f7ab",
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
				},
				mechanicTime = 826.02524789261,
				name = "[Lj Draw] Spread Stack Arrow",
				timelineIndex = 153,
				timerOffset = 1,
				uuid = "140f2308-203d-0ac0-8b78-68420b156dd0",
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
							actionLua = "local center = {x = 100, y = 0, z = 100}\nlocal player = TensorCore.mGetPlayer()\n\nlocal has5544 = TensorCore.hasBuff(player, 5544, nil, nil, 40)  -- spread E, more than 40s left\nlocal has5545 = TensorCore.hasBuff(player, 5545, nil, nil, 50)  -- stack S, more than 40s left\n\nlocal spread\nif has5544 or has5545 then\n    spread = has5544                                              -- normal mapping\n    if data.ljExdeathAura ~= \"Truth\" then spread = not spread end -- invert only with a buff\nelse\n    spread = false                                               -- no buff → always S\nend\n\nlocal target = spread and {x = 112.5, y = 0, z = 100  }  -- East\n                      or  {x = 100,   y = 0, z = 112.5}  -- South\n\nlocal drawer = TensorCore.getCachedDrawer(0xFF00FFFF, 0xFF0088FF, 0xFF0000FF, 0xFFFFFFFF, 2)\ndrawer:addTimedArrow(\n    7000,\n    center.x, center.y, center.z,\n    TensorCore.getHeadingToTarget(center, target),\n    9, 1.5, 3.5, 6,\n    53000, false, Argus2.RenderFlags.FLAG_RENDER_OVERLAY\n)\n\nself.used = true",
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
							},
							gVar = "ACR_RikuSGE3_CD",
							name = "DPS",
							uuid = "0a729d61-7ce4-7c95-9607-2ec280c1a486",
							version = 2.1,
						},
						inheritedIndex = 1,
					},
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local center = {x = 100, y = 0, z = 100}\nlocal player = TensorCore.mGetPlayer()\n\nlocal has5544 = TensorCore.hasBuff(player, 5544, nil, nil, 40)  -- spread W, more than 40s left\nlocal has5545 = TensorCore.hasBuff(player, 5545, nil, nil, 40)  -- stack N, more than 40s left\n\nlocal spread\nif has5544 or has5545 then\n    spread = has5544                                              -- normal mapping\n    if data.ljExdeathAura ~= \"Truth\" then spread = not spread end -- invert only with a buff\nelse\n    spread = false                                               -- no buff → always N\nend\n\nlocal target = spread and {x = 87.5, y = 0, z = 100 }   -- West\n                      or  {x = 100,  y = 0, z = 87.5}    -- North\n\nlocal drawer = TensorCore.getCachedDrawer(0xFF00FFFF, 0xFF0088FF, 0xFF0000FF, 0xFFFFFFFF, 2)\ndrawer:addTimedArrow(\n    7000,\n    center.x, center.y, center.z,\n    TensorCore.getHeadingToTarget(center, target),\n    9, 1.5, 3.5, 6,\n    53000, false, Argus2.RenderFlags.FLAG_RENDER_OVERLAY\n)\n\nself.used = true",
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
							},
							gVar = "ACR_RikuSGE3_CD",
							name = "Support",
							uuid = "2eed23b6-13a5-63de-b393-6645da874b59",
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
				},
				mechanicTime = 841.08843971594,
				name = "[Lj Draw] Spread Stack Arrow",
				timelineIndex = 156,
				timerOffset = 1,
				uuid = "ef0fc3d5-7870-4f0a-bf0e-f3773ff46d0f",
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
