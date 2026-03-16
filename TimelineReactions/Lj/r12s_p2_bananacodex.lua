local tbl = 
{
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
							actionLua = "-- M12S Replication 2 \"Banana Codex\" (Patched Priority)\n\n-- =====================================================================================\n-- 1. SETUP & STATE\n-- =====================================================================================\nlocal CLONE_ID_PERSONAL = 14383 \nlocal CLONE_ID_MECHANIC = 14380 -- Lindschrat\nlocal BOSS_ID = 14379           -- Lindwurm\n\nlocal COLOR_GREEN = 1073807104 -- Green with 0.25 Alpha (0x4000FF00)\nlocal COLOR_WHITE  = 4294967295 -- Opaque White (0xFFFFFFFF)\n\nlocal TETHER_CONE       = 111\nlocal TETHER_DEFAMATION = 112 \nlocal TETHER_STACK      = 113 \nlocal TETHER_BOSS       = 118 \n\nlocal ARRIVAL_DIST = 2.0 -- Distance to switch from Arrow to Circle Draw\n\nif not data.Replication2State then\n    data.Replication2State = {\n        Initialized = false,\n        Phase = 0,\n        MyRole = nil,\n        MyGroup = nil,\n        TargetEntityPos = nil, \n        Finished = false,\n        TetherLocked = false,\n        Drawer = nil\n    }\nend\n\nlocal state = data.Replication2State\n\n-- MECHANIC SPOTS\nlocal Coords_LP2 = { \n    Phase1 = { Stack = {x=81, z=96}, Cone = {x=82.5, z=92}, Defamation = {x=102.85, z=81}, Boss = {x=89, z=100}, Nothing = {x=119.5, z=100} },\n    Phase2 = { Stack = {x=94, z=94.5}, Cone = {x=91.5, z=97.5}, Defamation = {x=94, z=94.5}, Boss = {x=94, z=104.5}, Nothing = {x=94, z=94.5} },\n    Phase3 = { Stack = {x=89, z=96.5}, Cone = {x=89, z=91}, Defamation = {x=82.5, z=100.5}, Boss = {x=82.5, z=100.5}, Nothing = {x=82.5, z=100.5} },\n    Phase4 = { Stack = {x=81, z=96}, Cone = {x=82.5, z=92}, Defamation = {x=90, z=110}, Boss = {x=90, z=110}, Nothing = {x=90, z=110} },\n    Phase5 = { Stack = {x=81, z=96}, Cone = {x=82.5, z=92}, Defamation = {x=90, z=90}, Boss = {x=90, z=90}, Nothing = {x=90, z=90} }\n}\nlocal Coords_LP1 = { \n    Phase1 = { Stack = {x=81, z=102.5}, Cone = {x=82, z=107}, Defamation = {x=102.85, z=119}, Boss = {x=89, z=100}, Nothing = {x=119.5, z=100} },\n    Phase2 = { Stack = {x=94, z=104.5}, Cone = {x=91.5, z=102.5}, Defamation = {x=94, z=104.5}, Boss = {x=94, z=104.5}, Nothing = {x=94, z=94.5} },\n    Phase3 = { Stack = {x=89, z=103.5}, Cone = {x=89, z=109}, Defamation = {x=82.5, z=100.5}, Boss = {x=82.5, z=100.5}, Nothing = {x=82.5, z=100.5} },\n    Phase4 = { Stack = {x=81, z=102.5}, Cone = {x=82, z=107}, Defamation = {x=90, z=110}, Boss = {x=90, z=110}, Nothing = {x=90, z=110} },\n    Phase5 = { Stack = {x=81, z=102.5}, Cone = {x=82, z=107}, Defamation = {x=90, z=90}, Boss = {x=90, z=90}, Nothing = {x=90, z=90} }\n}\n\n-- =====================================================================================\n-- 2. MAIN LOOP\n-- =====================================================================================\nif state.Finished then return end\nlocal me = TensorCore.mGetPlayer()\nif not me then return end\n\n-- A. IDENTIFY MECHANIC ROLE\nif not state.Initialized then\n    local myTethers = Argus.getTethersOnEnt(me.id)\n    \n    if myTethers then\n        for _, tether in pairs(myTethers) do\n            local partnerID = tether.partnerid\n            local partnerEnt = TensorCore.mGetEntity(partnerID)\n\n            if partnerEnt and partnerEnt.contentid == CLONE_ID_PERSONAL then\n                \n                -- Determine Sector (Compass) based on CLONE position\n                local dx = partnerEnt.pos.x - 100\n                local dz = partnerEnt.pos.z - 100\n                local deg = math.deg(math.atan2(dx, dz)) \n                if deg < 0 then deg = deg + 360 end\n                local sector = math.floor((deg + 22.5) / 45) % 8\n                \n                local group, role = nil, nil\n                \n                -- MAP SECTOR TO ROLE\n                if sector == 0 then group=\"LP1\"; role=\"Cone\"        -- S\n                elseif sector == 1 then group=\"LP1\"; role=\"Defamation\" -- SE\n                elseif sector == 2 then group=\"LP1\"; role=\"Nothing\"    -- E\n                elseif sector == 7 then group=\"LP1\"; role=\"Stack\"      -- SW\n                elseif sector == 6 then group=\"LP2\"; role=\"Boss\"       -- W\n                elseif sector == 5 then group=\"LP2\"; role=\"Stack\"      -- NW\n                elseif sector == 4 then group=\"LP2\"; role=\"Cone\"       -- N\n                elseif sector == 3 then group=\"LP2\"; role=\"Defamation\" -- NE\n                end\n\n                if group and role then\n                    state.MyGroup = group\n                    state.MyRole = role\n                    state.Phase = 1\n                    state.Initialized = true\n                    TensorCore.addAlertText(17000, group .. \": \" .. role, 1.2, 2, false)\n                end\n                break -- Found our match, stop looping tethers\n            end\n        end\n    end\nend\n\n-- B. FIND BOSS CLONE (FIXED WITH FULL SNAKE FALLBACK)\nif state.Initialized and not state.TargetEntityPos then\n    \n    local role = state.MyRole\n    local group = state.MyGroup\n    \n    if role == \"Nothing\" then\n        state.TargetEntityPos = \"NONE\"\n    \n    elseif role == \"Boss\" then\n        state.TargetEntityPos = {x=100, y=0, z=100}\n        \n    else\n        -- 1. IDENTIFY BOSS CLONE TETHER\n        local targetTetherID = 0\n        if role == \"Stack\" then targetTetherID = TETHER_STACK end\n        if role == \"Cone\" then targetTetherID = TETHER_CONE end\n        if role == \"Defamation\" then targetTetherID = TETHER_DEFAMATION end\n        \n        -- 2. GET BOSS CLONES AND MAP THEM\n        local clones = TensorCore.entityList(\"contentid=\"..CLONE_ID_MECHANIC)\n        local sectorMap = {}\n        \n        if clones then\n            for _, c in pairs(clones) do\n                -- Check if this clone has the tether we need\n                local hasTether = false\n                local tethers = Argus.getTethersOnEnt(c.id)\n                if tethers then\n                    for _, t in pairs(tethers) do\n                        if tonumber(t.type) == targetTetherID then \n                            hasTether = true\n                            break \n                        end\n                    end\n                end\n                \n                if hasTether then\n                    -- Calc Sector\n                    local dx = c.pos.x - 100\n                    local dz = c.pos.z - 100\n                    local deg = math.deg(math.atan2(dx, dz)) \n                    if deg < 0 then deg = deg + 360 end\n                    local cSector = math.floor((deg + 22.5) / 45) % 8                    \n                    sectorMap[cSector] = c\n                end\n            end\n        end\n\n        -- 3. SNAKE PRIORITY LOOKUP\n        -- LP1 (CCW Scan): SW(7)->S(0)->SE(1)->E(2) -> [Fallback] NE(3)->N(4)->NW(5)->W(6)\n        local LP1_FULL_ORDER = {7, 0, 1, 2, 3, 4, 5, 6}\n\n        -- LP2 (CW Scan): W(6)->NW(5)->N(4)->NE(3) -> [Fallback] E(2)->SE(1)->S(0)->SW(7)\n        local LP2_FULL_ORDER = {6, 5, 4, 3, 2, 1, 0, 7}\n\n        local priorityList = (group == \"LP1\") and LP1_FULL_ORDER or LP2_FULL_ORDER\n        \n        for _, sectorToScan in ipairs(priorityList) do\n            local match = sectorMap[sectorToScan]\n            if match then\n                state.TargetEntityPos = {x=match.pos.x, y=match.pos.y, z=match.pos.z}\n                break \n            end\n        end\n    end\nend\n\n-- C. DRAWING LOGIC\nif state.Phase > 0 and state.Initialized then\n    if not state.Drawer then\n        state.Drawer = Argus2.ShapeDrawer:new(nil, nil, COLOR_GREEN, COLOR_WHITE, 2)\n    end\n    local guideDrawer = state.Drawer\n\n    -- Helper function to draw the arrow OR circle based on distance\n    local function DrawSmartGuide(destX, destZ)\n        local destPos = {x=destX, y=me.pos.y, z=destZ} \n        local dist = TensorCore.getDistance2d(me.pos, destPos)\n        \n        if dist > ARRIVAL_DIST then\n            local angle = TensorCore.getHeadingToTarget(me.pos, destPos)            \n            guideDrawer:addArrow(me.pos.x, me.pos.y, me.pos.z, angle, dist - 1.0, 0.5, 1, 1, true)\n        else\n            guideDrawer:addCircle(destX, me.pos.y, destZ, 0.75, false) \n        end\n    end\n\n    -- STATE 1: Go to Boss Clone\n    if not state.TetherLocked then\n        local tPos = state.TargetEntityPos\n        if tPos and tPos ~= \"NONE\" then \n            DrawSmartGuide(tPos.x, tPos.z)\n        end\n\n    -- STATE 2: Go to Mechanic Spot\n    else\n        local coordSet = (state.MyGroup == \"LP1\") and Coords_LP1 or Coords_LP2\n        \n        if coordSet and coordSet[\"Phase\"..state.Phase] then\n            local dest = coordSet[\"Phase\"..state.Phase][state.MyRole]\n            if dest then\n                DrawSmartGuide(dest.x, dest.z)\n            end\n        end\n    end\nend\n\nself.used = true",
							conditions = 
							{
								
								{
									"385d8f9c-ab43-14ec-a29a-d749719324d0",
									true,
								},
								
								{
									"a6b2b1b2-2d31-e783-b35d-0bbaa402170e",
									true,
								},
							},
							gVar = "ACR_RikuWAR3_CD",
							uuid = "98148767-be14-1e30-96c5-a5ec0472adbe",
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
							conditionLua = "return AnyoneCore.Settings.Reactions.m12sRep2Strat == 0 or AnyoneCore.Settings.Reactions.m12sRep2Strat == 2",
							uuid = "385d8f9c-ab43-14ec-a29a-d749719324d0",
							version = 3,
						},
					},
				},
				eventType = 12,
				loop = true,
				mechanicTime = 91.141,
				name = "[Draw] Banana Codex",
				timeRange = true,
				timelineIndex = 16,
				timerEndOffset = 80,
				uuid = "72c501f4-a1bd-e906-a22b-fd9e18d0f682",
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
							actionLua = "if data.Replication2State then\n    local state = data.Replication2State\n    local sid = eventArgs.spellID\n\n    local transitions = {\n        [46311] = 1, -- Spread -> Stack\n        [46315] = 2, -- Stack -> Reenactment\n        [46384] = 3, -- Reenactment -> Move\n        [47329] = 4, -- Post-Reenactment -> Final\n    }\n\n    local currentTriggerPhase = transitions[sid]\n\n    if currentTriggerPhase and state.Phase == currentTriggerPhase then\n        state.Phase = currentTriggerPhase + 1\n    elseif sid == 48733 then\n        state.Phase = 5\n    end\nend\n\nself.used = true",
							conditions = 
							{
								
								{
									"985c0866-ddbe-e5d5-9581-2d0dfe3d167a",
									true,
								},
								
								{
									"ec4378e1-83a3-6ee7-9f59-8e39b21c4370",
									true,
								},
								
								{
									"4e8ae495-db99-fe25-a66c-bbd197763bdd",
									true,
								},
							},
							gVar = "ACR_RikuRDM3_CD",
							uuid = "65e0e418-16d9-06d8-8e57-cd7e0fafb337",
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
							conditionLua = "return AnyoneCore.Settings.Reactions.m12sRep2Strat == 0 or AnyoneCore.Settings.Reactions.m12sRep2Strat == 2",
							uuid = "ec4378e1-83a3-6ee7-9f59-8e39b21c4370",
							version = 3,
						},
						inheritedIndex = 1,
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
								46311,
								46315,
								46384,
								47329,
								48733,
							},
							uuid = "985c0866-ddbe-e5d5-9581-2d0dfe3d167a",
							version = 3,
						},
					},
				},
				eventType = 2,
				loop = true,
				mechanicTime = 91.141,
				name = "[Core] Banana Codex Phase Management",
				timeRange = true,
				timelineIndex = 16,
				timerEndOffset = 80,
				uuid = "912e2625-b27c-1630-b350-f9e2c131491b",
				version = 2,
			},
		},
	},
	[18] = 
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
							actionLua = "data.Replication2State.TetherLocked = true\nself.used = true",
							conditions = 
							{
								
								{
									"49a422bc-c4ad-6b96-9b72-24677418960f",
									true,
								},
								
								{
									"40817e19-4266-61c0-8cd2-fdcd71edb59c",
									true,
								},
								
								{
									"9de080a6-27dd-b93f-9666-2cd682557863",
									true,
								},
							},
							gVar = "ACR_RikuRDM3_CD",
							uuid = "c10d0a92-66c4-24a6-83bb-26907d81d286",
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
							conditionLua = "return AnyoneCore.Settings.Reactions.m12sRep2Strat == 0 or AnyoneCore.Settings.Reactions.m12sRep2Strat == 2",
							uuid = "40817e19-4266-61c0-8cd2-fdcd71edb59c",
							version = 3,
						},
						inheritedIndex = 1,
					},
					
					{
						data = 
						{
							category = "Event",
							dequeueIfLuaFalse = true,
							eventArgType = 2,
							eventSpellID = 46307,
							name = "Firefall Splash",
							uuid = "49a422bc-c4ad-6b96-9b72-24677418960f",
							version = 3,
						},
					},
				},
				eventType = 3,
				mechanicTime = 127.626,
				name = "[Core] Tethers Locked",
				timeRange = true,
				timelineIndex = 18,
				timerOffset = -8,
				timerStartOffset = -10,
				uuid = "89fb3f60-f4f1-8e58-8105-46029efc13e8",
				version = 2,
			},
		},
	},
	inheritedProfiles = 
	{
	},
	timelineName = "r12s2",
	version = "1.5.0",
}



return tbl
