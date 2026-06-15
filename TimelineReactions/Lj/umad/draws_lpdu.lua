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
							name = "Role Set",
							uuid = "c5bafdfa-4352-f094-9392-198940ca1a79",
							version = 3,
						},
					},
				},
				mechanicTime = 38.012854917972,
				name = "[Lj Draw] Draw Wavecannon",
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
				mechanicTime = 80.121849240769,
				name = "[Lj Draw] Light Party Stacks",
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
				mechanicTime = 100.29172113594,
				name = "[Lj Draw] Light Party Stacks",
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
							name = "Light Party Set",
							uuid = "b66ef0db-52b2-34d0-b728-7b1236a4a478",
							version = 3,
						},
					},
				},
				mechanicTime = 109.77404737751,
				name = "[Lj Draw] Light Party Stacks",
				timelineIndex = 23,
				timerOffset = -1,
				uuid = "8c38ff89-58b5-ae31-8ea8-e749e3a5838b",
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
							actionLua = "local timeout = 6000 \nlocal player = TensorCore.mGetPlayer()\nlocal sourcePos = player.pos\n\n-- Determine target X coordinate based on Role\nlocal myRole = GetCurrentRole()\nlocal isSupport = { [\"MT\"] = true, [\"OT\"] = true, [\"H1\"] = true, [\"H2\"] = true }\n\nlocal targetX = 104\nif isSupport[myRole] then\n    targetX = 96\nend\n\nlocal targetPos = { x = targetX, y = 0, z = 100 }\n\n-- Calculate exact heading and distance from player to target\nlocal heading = TensorCore.getHeadingToTarget(sourcePos, targetPos)\nlocal totalDistance = TensorCore.getDistance2d(sourcePos, targetPos)\n\n-- Dynamic sizing to make the arrow stretch exactly from player to coordinate\nlocal tipLength = 1.5\nlocal baseLength = totalDistance - tipLength\n\n-- Static widths keep the arrow sleek regardless of how long it stretches\nlocal baseWidth = 1\nlocal tipWidth = 3\n\nlocal colorStart = 0xFF00FFFF\nlocal colorMid = 0xFF0088FF\nlocal colorEnd = 0xFF0000FF\nlocal colorOutline = 0xFFFFFFFF\nlocal outlineThickness = 2\n\nlocal drawer = TensorCore.getCachedDrawer(colorStart, colorMid, colorEnd, colorOutline, outlineThickness)\n\nif baseLength > 0 then\n    local renderFlags = Argus2.RenderFlags.FLAG_RENDER_OVERLAY\n    drawer:addTimedArrow(\n        timeout, \n        sourcePos.x, sourcePos.y, sourcePos.z, \n        heading, \n        baseLength, baseWidth, tipLength, tipWidth, \n        0, nil, renderFlags\n    )\nend\n\nself.used = true",
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
							actionLua = "local timeout = 6000 \nlocal player = TensorCore.mGetPlayer()\nlocal sourcePos = player.pos\n\n-- Determine target X and Z coordinates based on Role\nlocal myRole = GetCurrentRole()\nlocal isSupport = { [\"MT\"] = true, [\"OT\"] = true, [\"H1\"] = true, [\"H2\"] = true }\n\nlocal targetX = 106\nlocal targetZ = 106\n\nif isSupport[myRole] then\n    targetX = 94\n    targetZ = 94\nend\n\nlocal targetPos = { x = targetX, y = 0, z = targetZ }\n\n-- Calculate exact heading and distance from player to target\nlocal heading = TensorCore.getHeadingToTarget(sourcePos, targetPos)\nlocal totalDistance = TensorCore.getDistance2d(sourcePos, targetPos)\n\n-- Dynamic sizing to make the arrow stretch exactly from player to coordinate\nlocal tipLength = 1.5\nlocal baseLength = totalDistance - tipLength\n\n-- Static widths keep the arrow sleek regardless of how long it stretches\nlocal baseWidth = 1\nlocal tipWidth = 3\n\nlocal colorStart = 0xFF00FFFF\nlocal colorMid = 0xFF0088FF\nlocal colorEnd = 0xFF0000FF\nlocal colorOutline = 0xFFFFFFFF\nlocal outlineThickness = 2\n\nlocal drawer = TensorCore.getCachedDrawer(colorStart, colorMid, colorEnd, colorOutline, outlineThickness)\n\nif baseLength > 0 then\n    local renderFlags = Argus2.RenderFlags.FLAG_RENDER_OVERLAY\n    drawer:addTimedArrow(\n        timeout, \n        sourcePos.x, sourcePos.y, sourcePos.z, \n        heading, \n        baseLength, baseWidth, tipLength, tipWidth, \n        0, nil, renderFlags\n    )\nend\n\nself.used = true",
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
				eventType = 15,
				mechanicTime = 163.54778319029,
				name = "[Lj Data] Get Tethers",
				timeRange = true,
				timelineIndex = 33,
				timerEndOffset = 2,
				timerStartOffset = -2,
				uuid = "cb79b48b-2d01-7a87-9006-79f6a344da34",
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
				eventType = 12,
				mechanicTime = 167.71168967762,
				name = "[Lj Draw] Arrow Positions",
				timeRange = true,
				timelineIndex = 34,
				timerEndOffset = 6.5,
				timerOffset = 1,
				timerStartOffset = 0.20000000298023,
				uuid = "f87122de-a9a0-80be-9801-5b5c2308d305",
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
							actionLua = "local timeout = 5000 \nlocal player = TensorCore.mGetPlayer()\nif not player then return end\nlocal sourcePos = player.pos\n\n-- Get the position of the 'A' waymark using Argus (1 corresponds to 'A')\nlocal targetX, targetY, targetZ, isActive = Argus.getWaymarkInfo(1)\n\n-- Proceed only if the waymark is placed and active\nif isActive then\n    local targetPos = { x = targetX, y = targetY, z = targetZ }\n\n    -- Calculate exact heading and distance from the player to the waymark\n    local heading = TensorCore.getHeadingToTarget(sourcePos, targetPos)\n    local totalDistance = TensorCore.getDistance2d(sourcePos, targetPos)\n\n    -- Calculate the starting coordinates 1/4 of the way to the target\n    local startX = sourcePos.x + (targetPos.x - sourcePos.x) * 0.25\n    local startY = sourcePos.y + (targetPos.y - sourcePos.y) * 0.25\n    local startZ = sourcePos.z + (targetPos.z - sourcePos.z) * 0.25\n    local drawDistance = totalDistance * 0.75\n\n    -- Proximity Scaling (Using totalDistance to keep scaling visually consistent)\n    local scale = math.min(1, totalDistance / 15)\n    local baseWidth = math.max(0.5, 1 * scale) \n    local tipWidth = math.max(1.5, 5 * scale)\n    local tipLength = math.max(2, 3 * scale)\n\n    -- Calculate base length based on the new draw distance\n    local baseLength = drawDistance - tipLength\n\n    -- Draw the Arrow\n    if baseLength > 0 then\n        local arrowDrawer = TensorCore.getCachedDrawer(0xFF00FFFF, 0xFF0088FF, 0xFF0000FF, 0xFFFFFFFF, 2)\n        arrowDrawer:addTimedArrow(\n            timeout, \n            startX, startY, startZ, \n            heading, \n            baseLength, baseWidth, tipLength, tipWidth, \n            0,\n            false,\n            Argus2.RenderFlags.FLAG_RENDER_OVERLAY\n        )\n    end\nend\n\nself.used = true",
							gVar = "ACR_RikuSGE3_CD",
							uuid = "8fdb0cac-68d8-97dd-8579-50405d001bc5",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				mechanicTime = 321.78311722413,
				name = "[Lj Draw] Arrow to A Waymark",
				timelineIndex = 64,
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
							actionLua = "local timeout = 10000\nlocal player = TensorCore.mGetPlayer()\nlocal sourcePos = player.pos\n\nlocal roleTargets = {\n    [\"H1\"] = 2015291, [\"H2\"] = 2015291, -- Water Crystal\n    [\"R1\"] = 2015290, [\"R2\"] = 2015290, -- Fire Crystal\n    [\"MT\"] = 2015292, [\"OT\"] = 2015292, [\"M1\"] = 2015292, [\"M2\"] = 2015292  -- Wind Crystal\n}\n\nlocal myRole = GetCurrentRole()\nlocal targetContentID = roleTargets[myRole]\n\n\nif targetContentID ~= nil then\n    local targetEntity = nil  \n    local entityList = TensorCore.entityList(\"contentid=\" .. targetContentID)\n    \n    if table.valid(entityList) then\n        for _, entity in pairs(entityList) do\n            targetEntity = entity\n            break\n        end\n    end\n\n    if targetEntity ~= nil then\n        local targetPos = { x = targetEntity.pos.x, y = targetEntity.pos.y, z = targetEntity.pos.z }\n\n        if myRole == \"OT\" then -- Opposite Wind\n            local centerX = 100.0\n            local centerZ = 100.0\n            targetPos.x = centerX + (centerX - targetPos.x)\n            targetPos.z = centerZ + (centerZ - targetPos.z)\n        end\n\n        local heading = TensorCore.getHeadingToTarget(sourcePos, targetPos)\n        local totalDistance = TensorCore.getDistance2d(sourcePos, targetPos)\n        local scale = math.min(1, totalDistance / 15)\n        local baseWidth = math.max(0.5, 1 * scale) \n        local tipWidth = math.max(1.5, 5 * scale)\n        local tipLength = math.max(2, 3 * scale)\n        local baseLength = totalDistance - tipLength\n\n        if baseLength > 0 then\n            local arrowDrawer = TensorCore.getCachedDrawer(0xFF00FFFF, 0xFF0088FF, 0xFF0000FF, 0xFFFFFFFF, 2)\n            arrowDrawer:addTimedArrow(\n                timeout, \n                sourcePos.x, sourcePos.y, sourcePos.z, \n                heading, \n                baseLength, baseWidth, tipLength, tipWidth, \n                0, false, Argus2.RenderFlags.FLAG_RENDER_OVERLAY\n            )\n        end\n    end\nend\n\nself.used = true",
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
				mechanicTime = 450.00390950196,
				name = "[Lj Draw] Arrow to Crystals",
				timelineIndex = 79,
				timerOffset = 1,
				uuid = "120176a5-3e78-95f9-92bb-6ccd460d37a9",
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
							actionLua = "local timeout = 6000\nlocal player = TensorCore.mGetPlayer()\nlocal sourcePos = player.pos\n\nlocal targetContentID = 2015292 -- Wind Crystal\nlocal targetEntity = nil  \nlocal entityList = TensorCore.entityList(\"contentid=\" .. targetContentID)\n\nif table.valid(entityList) then\n    for _, entity in pairs(entityList) do\n        targetEntity = entity\n        break\n    end\nend\n\nif targetEntity ~= nil then\n    -- Calculate opposite position of the Wind Crystal\n    local centerX = 100.0\n    local centerZ = 100.0\n    local targetPos = { \n        x = centerX + (centerX - targetEntity.pos.x), \n        y = targetEntity.pos.y, \n        z = centerZ + (centerZ - targetEntity.pos.z) \n    }\n\n    local heading = TensorCore.getHeadingToTarget(sourcePos, targetPos)\n    local totalDistance = TensorCore.getDistance2d(sourcePos, targetPos)\n    local scale = math.min(1, totalDistance / 15)\n    local baseWidth = math.max(0.5, 1 * scale) \n    local tipWidth = math.max(1.5, 5 * scale)\n    local tipLength = math.max(2, 3 * scale)\n    local baseLength = totalDistance - tipLength\n\n    if baseLength > 0 then\n        local arrowDrawer = TensorCore.getCachedDrawer(0xFF00FFFF, 0xFF0088FF, 0xFF0000FF, 0xFFFFFFFF, 2)\n        arrowDrawer:addTimedArrow(\n            timeout, \n            sourcePos.x, sourcePos.y, sourcePos.z, \n            heading, \n            baseLength, baseWidth, tipLength, tipWidth, \n            0, false, Argus2.RenderFlags.FLAG_RENDER_OVERLAY\n        )\n    end\nend\n\nself.used = true",
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
							conditionLua = "return GetCurrentRole() == \"R1\"",
							dequeueIfLuaFalse = true,
							name = "Self: R1",
							uuid = "a0225b2c-4cb9-7884-9db9-620a44267b80",
							version = 3,
						},
					},
				},
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
	inheritedProfiles = 
	{
	},
	timelineName = "dmu",
	version = "1.5.5",
}



return tbl
