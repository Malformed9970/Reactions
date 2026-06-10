local tbl = 
{
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
							actionLua = "local timeout = 4000\nlocal x, y, z = 100, 0, 100\nlocal heading = math.pi\n\nlocal baseLength = 15\nlocal baseWidth = 1\nlocal tipLength = 5\nlocal tipWidth = 3\n\n-- Colors (ARGB format) to create a nice Cyan-to-Blue gradient with a White outline\nlocal colorStart = 0xFF00FFFF\nlocal colorMid = 0xFF0088FF\nlocal colorEnd = 0xFF0000FF\nlocal colorOutline = 0xFFFFFFFF\nlocal outlineThickness = 2\n\nlocal drawer = TensorCore.getCachedDrawer(colorStart, colorMid, colorEnd, colorOutline, outlineThickness)\ndrawer:addTimedArrow(timeout, x, y, z, heading, baseLength, baseWidth, tipLength, tipWidth, 0)\n\nself.used = true",
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
				mechanicTime = 29,
				name = "[Draw] Knockback Preposition",
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
							actionLua = "local xPositions = {\n    [\"H2\"] = 85, [\"H1\"] = 89, [\"OT\"] = 93, [\"MT\"] = 97,\n    [\"M1\"] = 101, [\"M2\"] = 105, [\"R1\"] = 109, [\"R2\"] = 113\n}\nlocal baseLength = 15\nlocal baseWidth = 1\nlocal tipLength = 5\nlocal tipWidth = 3\n\nlocal sourcePos = { x = 100, y = 0, z = 100 }\nlocal targetPos = { x = xPositions[GetCurrentRole()], y = 0, z = 100 }\n\nlocal heading = TensorCore.getHeadingToTarget(sourcePos, targetPos)\nlocal totalDistance = TensorCore.getDistance2d(sourcePos, targetPos)\n\n-- 1. Proximity Scaling\n-- Calculates a ratio based on the max possible distance\nlocal scale = math.min(1, totalDistance / 15)\nlocal baseWidth = math.max(0.5, 1 * scale) \nlocal tipWidth = math.max(1.5, 5 * scale)\nlocal tipLength = math.max(2, 3 * scale)\n\n-- 2. Fall Short Calculation\nlocal gap = 2 -- Leaves a 2-yalm empty space between the arrow tip and the circle\nlocal baseLength = totalDistance - tipLength - gap\n\nlocal renderFlags = Argus2.RenderFlags.FLAG_RENDER_OVERLAY\n\n-- 3. Draw the Arrow\nif baseLength > 0 then\n    local arrowDrawer = TensorCore.getCachedDrawer(0xFF00FFFF, 0xFF0088FF, 0xFF0000FF, 0xFFFFFFFF, 2)\n    arrowDrawer:addTimedArrow(\n        4000, \n        sourcePos.x, sourcePos.y, sourcePos.z, \n        heading, \n        baseLength, baseWidth, tipLength, tipWidth, \n        0, nil, renderFlags\n    )\nend\n\n-- 4. Draw the Green Circle\nlocal circleDrawer = TensorCore.getCachedDrawer(0xFF00FF00, 0xFF00DD00, 0xFF008800, 0xFFFFFFFF, 2)\n\ncircleDrawer:addTimedCircle(\n    4000, \n    targetPos.x, targetPos.y, targetPos.z, \n    1,\n    0, nil, false, renderFlags\n)\n\nself.used = true",
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
							uuid = "c5bafdfa-4352-f094-9392-198940ca1a79",
							version = 3,
						},
					},
				},
				mechanicTime = 37.953,
				name = "[Draw] Wavecannon Spots",
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
							actionLua = "local timeout = 7000 \nlocal x, y, z = 100, 0, 100\n\n-- Determine heading based on Light Party\nlocal heading = math.pi -- Default to North for Light Party 1\nif GetLightParty() == 2 then\n    heading = 0         -- Face South for Light Party 2\nend\n\nlocal baseLength = 15\nlocal baseWidth = 1\nlocal tipLength = 5\nlocal tipWidth = 3\n\nlocal colorStart = 0xFF00FFFF\nlocal colorMid = 0xFF0088FF\nlocal colorEnd = 0xFF0000FF\nlocal colorOutline = 0xFFFFFFFF\nlocal outlineThickness = 2\n\nlocal drawer = TensorCore.getCachedDrawer(colorStart, colorMid, colorEnd, colorOutline, outlineThickness)\nlocal renderFlags = Argus2.RenderFlags.FLAG_RENDER_OVERLAY\ndrawer:addTimedArrow(timeout, x, y, z, heading, baseLength, baseWidth, tipLength, tipWidth, 0, nil, renderFlags)\n\nself.used = true",
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
							uuid = "b66ef0db-52b2-34d0-b728-7b1236a4a478",
							version = 3,
						},
					},
				},
				mechanicTime = 80.063,
				name = "[Draw] Light Party Stacks",
				timelineIndex = 16,
				uuid = "8c775e64-8f5c-613e-b510-ac62a4acc88f",
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
							actionLua = "local timeout = 6000 \nlocal x, y, z = 100, 0, 100\n\n-- Determine heading based on Light Party\nlocal heading = math.pi -- Default to North for Light Party 1\nif GetLightParty() == 2 then\n    heading = 0         -- Face South for Light Party 2\nend\n\n-- Dimensions\nlocal baseLength = 8\nlocal baseWidth = 1\nlocal tipLength = 4\nlocal tipWidth = 3\n\nlocal colorStart = 0xFF00FFFF\nlocal colorMid = 0xFF0088FF\nlocal colorEnd = 0xFF0000FF\nlocal colorOutline = 0xFFFFFFFF\nlocal outlineThickness = 2\n\nlocal drawer = TensorCore.getCachedDrawer(colorStart, colorMid, colorEnd, colorOutline, outlineThickness)\n\nlocal renderFlags = Argus2.RenderFlags.FLAG_RENDER_OVERLAY\ndrawer:addTimedArrow(timeout, x, y, z, heading, baseLength, baseWidth, tipLength, tipWidth, 0, nil, renderFlags)\n\nself.used = true",
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
							uuid = "b66ef0db-52b2-34d0-b728-7b1236a4a478",
							version = 3,
						},
					},
				},
				mechanicTime = 100.233,
				name = "[Draw] Light Party Stacks",
				timelineIndex = 20,
				timerOffset = -1,
				uuid = "49a0fee7-5a25-63a0-9c5e-ea4accec281b",
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
							uuid = "b66ef0db-52b2-34d0-b728-7b1236a4a478",
							version = 3,
						},
					},
				},
				mechanicTime = 109.655,
				name = "[Draw] Light Party Stacks",
				timelineIndex = 23,
				timerOffset = -1,
				uuid = "8c38ff89-58b5-ae31-8ea8-e749e3a5838b",
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
							actionLua = "local timeout = 6000 \nlocal player = TensorCore.mGetPlayer()\nlocal sourcePos = player.pos\n\n-- Determine target X coordinate based on Role\nlocal myRole = GetCurrentRole()\nlocal isSupport = { [\"MT\"] = true, [\"OT\"] = true, [\"H1\"] = true, [\"H2\"] = true }\n\nlocal targetX = 104\nif isSupport[myRole] then\n    targetX = 96\nend\n\nlocal targetPos = { x = targetX, y = 0, z = 100 }\n\n-- Calculate exact heading and distance from player to target\nlocal heading = TensorCore.getHeadingToTarget(sourcePos, targetPos)\nlocal totalDistance = TensorCore.getDistance2d(sourcePos, targetPos)\n\n-- Dynamic sizing to make the arrow stretch exactly from player to coordinate\nlocal tipLength = 1.5\nlocal baseLength = totalDistance - tipLength\n\n-- Static widths keep the arrow sleek regardless of how long it stretches\nlocal baseWidth = 1\nlocal tipWidth = 3\n\nlocal colorStart = 0xFF00FFFF\nlocal colorMid = 0xFF0088FF\nlocal colorEnd = 0xFF0000FF\nlocal colorOutline = 0xFFFFFFFF\nlocal outlineThickness = 2\n\nlocal drawer = TensorCore.getCachedDrawer(colorStart, colorMid, colorEnd, colorOutline, outlineThickness)\n\nif baseLength > 0 then\n    local renderFlags = Argus2.RenderFlags.FLAG_RENDER_OVERLAY\n    drawer:addTimedArrow(\n        timeout, \n        sourcePos.x, sourcePos.y, sourcePos.z, \n        heading, \n        baseLength, baseWidth, tipLength, tipWidth, \n        0, nil, renderFlags\n    )\nend\n\nself.used = true",
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
							uuid = "b66ef0db-52b2-34d0-b728-7b1236a4a478",
							version = 3,
						},
					},
				},
				mechanicTime = 161.999,
				name = "[Draw] Light Party Stacks",
				timelineIndex = 33,
				uuid = "446aa024-96f3-88d6-a884-9cadcc94085a",
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
							actionLua = "local player = TensorCore.mGetPlayer()\nlocal sourcePos = player.pos\nlocal myRole = GetCurrentRole()\n\n-- Perfectly mirrored pinwheel coordinates\nlocal rolePositions = {\n    -- NW Pair (Vertical Line: Shared X)\n    [\"MT\"] = { x = 93.5,  y = 0, z = 96.5 },\n    [\"R1\"] = { x = 93.5,  y = 0, z = 90.5 },\n    \n    -- NE Pair (Horizontal Line: Shared Z)\n    [\"OT\"] = { x = 103.5, y = 0, z = 93.5 },\n    [\"R2\"] = { x = 109.5, y = 0, z = 93.5 },\n    \n    -- SE Pair (Vertical Line: Shared X)\n    [\"M2\"] = { x = 106.5, y = 0, z = 103.5 },\n    [\"H2\"] = { x = 106.5, y = 0, z = 109.5 },\n    \n    -- SW Pair (Horizontal Line: Shared Z)\n    [\"M1\"] = { x = 96.5,  y = 0, z = 106.5 },\n    [\"H1\"] = { x = 90.5,  y = 0, z = 106.5 }\n}\n\nlocal targetPos = rolePositions[myRole]\n\nif targetPos then\n    local totalDistance = TensorCore.getDistance2d(sourcePos, targetPos)\n\n    -- Stop drawing when the player gets close (within 1.5 yalms)\n    if totalDistance > 1.5 then\n        -- Frame draws only use colorEnd, so getStaticDrawer is perfect for this\n        -- 0xFF00FF00 represents a solid ARGB Green\n        local drawer = TensorCore.getStaticDrawer(0xFF00FF00, 2)\n\n        -- Draw the line from the player to the spot\n        drawer:addLine(\n            sourcePos.x, sourcePos.y, sourcePos.z,\n            targetPos.x, targetPos.y, targetPos.z,\n            3 -- line thickness\n        )\n\n        -- Draw the green target circle at the destination\n        drawer:addCircle(\n            targetPos.x, targetPos.y, targetPos.z,\n            1 -- radius\n        )\n    end\nend\n\nself.used = true",
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
							uuid = "c356788b-c5f1-2e92-89c8-6b4cd35b401f",
							version = 3,
						},
					},
				},
				eventType = 12,
				mechanicTime = 167.546,
				name = "[Draw] Arrow Positions",
				timeRange = true,
				timelineIndex = 35,
				timerEndOffset = 6.5,
				timerOffset = 1,
				timerStartOffset = 0.20000000298023,
				uuid = "f87122de-a9a0-80be-9801-5b5c2308d305",
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
							actionLua = "local timeout = 5000 \nlocal player = TensorCore.mGetPlayer()\nlocal sourcePos = player.pos\n\n-- Get the position of the 'A' waymark using Argus (1 corresponds to 'A')\nlocal targetX, targetY, targetZ, isActive = Argus.getWaymarkInfo(1)\n\n-- Proceed only if the waymark is placed and active\nif isActive then\n    local targetPos = { x = targetX, y = targetY, z = targetZ }\n\n    -- Calculate exact heading and distance from the player to the waymark\n    local heading = TensorCore.getHeadingToTarget(sourcePos, targetPos)\n    local totalDistance = TensorCore.getDistance2d(sourcePos, targetPos)\n\n    -- Proximity Scaling\n    local scale = math.min(1, totalDistance / 15)\n    local baseWidth = math.max(0.5, 1 * scale) \n    local tipWidth = math.max(1.5, 5 * scale)\n    local tipLength = math.max(2, 3 * scale)\n\n    local baseLength = totalDistance - tipLength\n\n    -- Draw the Arrow\n    if baseLength > 0 then\n        local arrowDrawer = TensorCore.getCachedDrawer(0xFF00FFFF, 0xFF0088FF, 0xFF0000FF, 0xFFFFFFFF, 2)\n        arrowDrawer:addTimedArrow(\n            timeout, \n            sourcePos.x, sourcePos.y, sourcePos.z, \n            heading, \n            baseLength, baseWidth, tipLength, tipWidth, \n            0, false\n        )\n    end\nend\n\nself.used = true",
							gVar = "ACR_RikuSGE3_CD",
							uuid = "8fdb0cac-68d8-97dd-8579-50405d001bc5",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				mechanicTime = 318.092,
				name = "[Draw] Arrow to A Waymark",
				timelineIndex = 62,
				uuid = "2e119935-ffe6-5cae-837b-577c117e3618",
				version = 2,
			},
		},
	},
	[77] = 
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
							actionLua = "local timeout = 10000\nlocal player = TensorCore.mGetPlayer()\nlocal sourcePos = player.pos\n\nlocal roleTargets = {\n    [\"H1\"] = 2015291, [\"H2\"] = 2015291, -- Water Crystal\n    [\"R1\"] = 2015290, [\"R2\"] = 2015290, -- Fire Crystal\n    [\"MT\"] = 2015292, [\"OT\"] = 2015292, [\"M1\"] = 2015292, [\"M2\"] = 2015292  -- Wind Crystal\n}\n\nlocal myRole = GetCurrentRole()\nlocal targetContentID = roleTargets[myRole]\n\n\nif targetContentID ~= nil then\n    local targetEntity = nil  \n    local entityList = TensorCore.entityList(\"contentid=\" .. targetContentID)\n    \n    if table.valid(entityList) then\n        for _, entity in pairs(entityList) do\n            targetEntity = entity\n            break\n        end\n    end\n\n    if targetEntity ~= nil then\n        local targetPos = { x = targetEntity.pos.x, y = targetEntity.pos.y, z = targetEntity.pos.z }\n\n        if myRole == \"OT\" then -- Opposite Wind\n            local centerX = 100.0\n            local centerZ = 100.0\n            targetPos.x = centerX + (centerX - targetPos.x)\n            targetPos.z = centerZ + (centerZ - targetPos.z)\n        end\n\n        local heading = TensorCore.getHeadingToTarget(sourcePos, targetPos)\n        local totalDistance = TensorCore.getDistance2d(sourcePos, targetPos)\n        local scale = math.min(1, totalDistance / 15)\n        local baseWidth = math.max(0.5, 1 * scale) \n        local tipWidth = math.max(1.5, 5 * scale)\n        local tipLength = math.max(2, 3 * scale)\n        local baseLength = totalDistance - tipLength\n\n        if baseLength > 0 then\n            local arrowDrawer = TensorCore.getCachedDrawer(0xFF00FFFF, 0xFF0088FF, 0xFF0000FF, 0xFFFFFFFF, 2)\n            arrowDrawer:addTimedArrow(\n                timeout, \n                sourcePos.x, sourcePos.y, sourcePos.z, \n                heading, \n                baseLength, baseWidth, tipLength, tipWidth, \n                0, false\n            )\n        end\n    end\nend\n\nself.used = true",
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
							uuid = "a0225b2c-4cb9-7884-9db9-620a44267b80",
							version = 3,
						},
					},
				},
				mechanicTime = 445.717,
				name = "[Draw] Arrow to Crystals",
				timelineIndex = 77,
				timerOffset = 1,
				uuid = "120176a5-3e78-95f9-92bb-6ccd460d37a9",
				version = 2,
			},
		},
	},
	inheritedProfiles = 
	{
	},
	timelineName = "dmu",
	version = "1.5.1",
}



return tbl