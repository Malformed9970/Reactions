local tbl = 
{
	
	{
		data = 
		{
			displayPath = "",
			name = "Misdirection",
			uuid = "ce4dd45c-6768-8215-ad6a-68577a089c2f",
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
						actionLua = "-- Blunderville (map 1165) misdirection override: make WASD behave as if misdirection were not applied.\n-- W follows the camera's forward heading, S goes back, A/D go left/right, diagonals combine.\n-- Event: OnFrame (the hand re-spins every frame). Conditions: Self Map ID 1165 (dequeue), Temporary Misdirection 3694.\nlocal player = TensorCore.mGetPlayer()\nlocal cam = player.camera\n\n-- Skip in first person, where the camera sits on the player and has no usable forward heading.\nif TensorCore.getDistance2d(cam, player.pos) > 0.5 then\n    local forward = (GUI:IsKeyDown(0x57) and 1 or 0) - (GUI:IsKeyDown(0x53) and 1 or 0)\n    local right = (GUI:IsKeyDown(0x44) and 1 or 0) - (GUI:IsKeyDown(0x41) and 1 or 0)\n    if forward ~= 0 or right ~= 0 then\n        -- Movement under misdirection runs opposite to camera -> player (confirmed in game), so forward is player -> camera.\n        -- Heading turns counter-clockwise, so left is +pi/2 and right is -pi/2.\n        local base = TensorCore.getHeadingToTarget(player.pos, cam)\n        Argus.setMisdirectionHeading(TensorCore.restoreHeading(base + math.atan2(-right, forward)))\n    end\nend\n\nself.used = true\n",
						conditions = 
						{
							
							{
								"ae348f62-11c7-32fb-a72c-217a3f13357e",
								true,
							},
							
							{
								"196fb61f-fe0f-c84f-b5c2-e88b3b9aa069",
								true,
							},
						},
						name = "Steer by WASD + Camera",
						uuid = "c8cc9975-076f-5cd2-9966-a6b1ce3581c1",
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
						conditionType = 8,
						dequeueIfLuaFalse = true,
						localmapid = 1165,
						name = "Map 1165",
						uuid = "ae348f62-11c7-32fb-a72c-217a3f13357e",
						version = 3,
					},
				},
				
				{
					data = 
					{
						buffCheckType = 5,
						buffIDList = 
						{
							3694,
						},
						category = "Self",
						matchAnyBuff = true,
						name = "Temporary Misdirection",
						uuid = "196fb61f-fe0f-c84f-b5c2-e88b3b9aa069",
						version = 3,
					},
				},
			},
			displayPath = "Misdirection",
			eventType = 12,
			execute = "-- Blunderville (map 1165) misdirection override.\n-- Steers forced movement toward the camera's facing instead of the spinning arrow overhead.\n-- Event: OnFrame (the hand re-spins every frame). Conditions: Self Map ID 1165, Self Has Buffs (any)\n-- Temporary Misdirection 3694/1422/2936/3909. 3694 is the likely Blunderville status; confirm from a log.\n\nlocal player = TensorCore.mGetPlayer()\nlocal cam = player.camera\n\n-- The camera orbits the player, so camera -> player is the camera's forward direction.\n-- Skip in first person, where the camera sits on the player and the heading is meaningless.\nif TensorCore.getDistance2d(cam, player.pos) > 0.5 then\n    local heading = TensorCore.restoreHeading(TensorCore.getHeadingToTarget(cam, player.pos))\n    Argus.setMisdirectionHeading(heading)\nend\n\nself.used = true\n",
			name = "Misdirection - Steer by Camera",
			uuid = "3fbc742b-8f13-eef7-9d27-4664cfe3a9d2",
			version = 2,
		},
	},
	
	{
		data = 
		{
			displayPath = "",
			name = "All Stages",
			uuid = "9c169717-2af8-6b56-ade1-d699afda0d71",
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
						actionLua = "-- Blunderville (map 1165) next-impact telegraphs for the repeating instant hazards, learned live each round.\n-- Hits are grouped per emitter (moving hazards by entity, turn-taking emitters by proximity). Each group's\n-- volleys are recorded with Now(); once a volley has been seen followed by another, the next time it fires the\n-- follow-up is drawn until it lands, with a countdown when it is 1s or more away (both ends for lines).\n-- Learned cycles are keyed by position, which is identical every round, so they persist for the session in\n-- ljBlundervilleLearned; only per-round draw state lives in data.ljBlunderville.learn. Event: OnEntityCast.\nlocal cfg = ljBlundervilleLearnCfg\nif cfg == nil or cfg.version ~= 3 then\n    cfg = {\n        version = 3,\n        -- entity: group by the moving emitter; radius: group emitters of the spell within this many yalms.\n        spells = {\n            [34801] = { entity = true, circle = 6 },\n            [34796] = { entity = true, circle = 5 },\n            [29795] = { entity = true, circle = 3 },\n            [34774] = { entity = true, line = 3 },\n            [34802] = { radius = 21, circle = 5 },\n            [34799] = { radius = 17, length = 4, width = 4 },\n            [34718] = { radius = 4.5, length = 4, width = 10 },\n            [34716] = { radius = 3.5, length = 3, width = 2 },\n        },\n    }\n    ljBlundervilleLearnCfg = cfg\nend\n\nlocal state = data.ljBlunderville\nif state == nil then\n    state = { groups = {}, lanes = {} }\n    data.ljBlunderville = state\nend\n-- Session-wide knowledge: what follows each hit (by position) and where each spell's emitters sit.\nlocal known = ljBlundervilleLearned\nif known == nil or known.version ~= 1 then\n    known = { version = 1, next = {}, emitters = {}, nextGroup = 0 }\n    ljBlundervilleLearned = known\nend\n-- Per-round state: each group's current volley and live draws.\nlocal learn = state.learn\nif learn == nil then\n    learn = { groups = {} }\n    state.learn = learn\nend\n\nlocal spell = eventArgs.spellID\nlocal spec = cfg.spells[spell]\nlocal ent = TensorCore.mGetEntity(eventArgs.entityID)\nif spec and ent then\n    local p = ent.pos\n    local now = Now()\n\n    -- Find this emitter's group.\n    local gid\n    if spec.entity then\n        gid = eventArgs.entityID\n    else\n        local list = known.emitters[spell]\n        if list == nil then\n            list = {}\n            known.emitters[spell] = list\n        end\n        local own\n        for _, e in ipairs(list) do\n            local dx, dz = e.x - p.x, e.z - p.z\n            local d2 = dx * dx + dz * dz\n            if d2 < 0.36 then\n                own = e\n                break\n            elseif d2 <= spec.radius * spec.radius then\n                if gid == nil then\n                    gid = e.group\n                elseif e.group ~= gid then\n                    -- This emitter links two groups; merge the other into ours.\n                    local old = e.group\n                    for _, o in ipairs(list) do\n                        if o.group == old then\n                            o.group = gid\n                        end\n                    end\n                end\n            end\n        end\n        if own then\n            gid = own.group\n        else\n            if gid == nil then\n                known.nextGroup = known.nextGroup + 1\n                gid = \"g\" .. known.nextGroup\n            end\n            list[#list + 1] = { x = p.x, y = p.y, z = p.z, group = gid }\n        end\n    end\n\n    local group = learn.groups[gid]\n    if group == nil then\n        group = { uuids = {} }\n        learn.groups[gid] = group\n    end\n\n    local key = string.format(\"%d:%d:%d:%d:%d:%d\", spell, math.floor(p.x * 2 + 0.5), math.floor(p.z * 2 + 0.5),\n        math.floor(eventArgs.heading * 2 + 0.5), math.floor((eventArgs.castPosX or 0) * 2 + 0.5), math.floor((eventArgs.castPosZ or 0) * 2 + 0.5))\n    local hit = { x = p.x, y = p.y, z = p.z, h = eventArgs.heading, cx = eventArgs.castPosX, cz = eventArgs.castPosZ }\n\n    local volley = group.volley\n    if volley == nil or now - volley.t > 150 then\n        -- A new volley: teach the previous volley's members what follows them, then predict what follows this one.\n        local fresh = { t = now, hits = {}, keys = {} }\n        if volley then\n            local delay = now - volley.t\n            for _, k in ipairs(volley.keys) do\n                known.next[k] = { volley = fresh, delay = delay }\n            end\n        end\n        group.volley = fresh\n        volley = fresh\n\n        local uuids = group.uuids\n        for i = #uuids, 1, -1 do\n            Argus.deleteTimedShape(uuids[i])\n            uuids[i] = nil\n        end\n\n        local nextVolley = known.next[key]\n        local delay = nextVolley and nextVolley.delay or 0\n        local timeout = delay > 0 and delay + 400 or 1000\n        local countdown = delay >= 1000 and AnyoneCore and AnyoneCore.addWorldTextCountdown\n\n        if nextVolley then\n            local drawer = TensorCore.getMoogleDrawer()\n            for _, s in ipairs(nextVolley.volley.hits) do\n                if spec.line then\n                    local dx, dz = (s.cx or s.x) - s.x, (s.cz or s.z) - s.z\n                    local length = math.sqrt(dx * dx + dz * dz)\n                    uuids[#uuids + 1] = drawer:addTimedRect(timeout, s.x, s.y, s.z, length, spec.line, math.atan2(dx, dz))\n                    if countdown then\n                        -- Lines of 5y or more get a countdown at each end (the camera may only show one); shorter ones one centred.\n                        if s.countdownA == nil then\n                            if length >= 5 then\n                                s.countdownA = s\n                                s.countdownB = { x = s.cx, y = s.y, z = s.cz }\n                            else\n                                s.countdownA = { x = s.x + dx / 2, y = s.y, z = s.z + dz / 2 }\n                            end\n                        end\n                        AnyoneCore.addWorldTextCountdown(delay, s.countdownA, 0xFFFFFFFF, true, 1)\n                        if s.countdownB then\n                            AnyoneCore.addWorldTextCountdown(delay, s.countdownB, 0xFFFFFFFF, true, 1)\n                        end\n                    end\n                else\n                    if spec.circle then\n                        uuids[#uuids + 1] = drawer:addTimedCircle(timeout, s.x, s.y, s.z, spec.circle)\n                    else\n                        uuids[#uuids + 1] = drawer:addTimedCenteredRect(timeout, s.x, s.y, s.z, spec.length, spec.width, s.h)\n                    end\n                    if countdown then\n                        AnyoneCore.addWorldTextCountdown(delay, s, 0xFFFFFFFF, true, 1)\n                    end\n                end\n            end\n        end\n    end\n\n    volley.hits[#volley.hits + 1] = hit\n    volley.keys[#volley.keys + 1] = key\nend\n\nself.used = true\n",
						conditions = 
						{
							
							{
								"143cb6b6-8874-d242-8a12-39d3bab7c815",
								true,
							},
							
							{
								"af317672-bd26-a9f3-820b-2247adb091c3",
								true,
							},
						},
						name = "Draw - Next Impact",
						uuid = "cc655fff-b59a-c6a1-ab69-f8fc3f999154",
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
						eventArgOptionType = 3,
						eventArgType = 2,
						name = "Hazard Spells",
						spellIDList = 
						{
							34801,
							34802,
							34796,
							29795,
							34799,
							34716,
							34774,
							34718,
						},
						uuid = "143cb6b6-8874-d242-8a12-39d3bab7c815",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 8,
						dequeueIfLuaFalse = true,
						localmapid = 1165,
						name = "Map 1165",
						uuid = "af317672-bd26-a9f3-820b-2247adb091c3",
						version = 3,
					},
				},
			},
			displayPath = "All Stages",
			eventType = 2,
			name = "Next Impact",
			uuid = "5e93c993-bd5d-f66c-b4dc-a687aedceb24",
			version = 2,
		},
	},
	
	{
		data = 
		{
			displayPath = "",
			name = "Stage 1",
			uuid = "7a6a31d1-539c-97fa-977b-d296c9f13090",
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
						actionLua = "-- Stage 1: 34773 spinners. Light each hitbox (r5) while it spins, and when a spinner finishes its burst (8 hits\n-- ~0.4s apart) draw it with a countdown to its next spin (~3.3s rest, measured 2026-10-07). Which spinners share a\n-- burst changes every round, so each spinner is tracked on its own by entity ID. Event: OnEntityCast.\nlocal state = data.ljBlunderville\nif state == nil then\n    state = { groups = {}, lanes = {} }\n    data.ljBlunderville = state\nend\nlocal spin = state.spinners\nif spin == nil then\n    spin = { last = {}, hits = {} }\n    state.spinners = spin\nend\n\nlocal ent = TensorCore.mGetEntity(eventArgs.entityID)\nif ent then\n    local p = ent.pos\n    local drawer = TensorCore.getMoogleDrawer()\n    drawer:addTimedCircle(600, p.x, p.y, p.z, 5)\n\n    local id = eventArgs.entityID\n    local last = spin.last[id]\n    if last == nil or TimeSince(last) > 1000 then\n        spin.hits[id] = 1\n    else\n        spin.hits[id] = spin.hits[id] + 1\n        if spin.hits[id] == 8 then\n            drawer:addTimedCircle(3300, p.x, p.y, p.z, 5)\n            if AnyoneCore and AnyoneCore.addWorldTextCountdownOnEnt then\n                AnyoneCore.addWorldTextCountdownOnEnt(3300, id, 0xFFFFFFFF, true, 1, 1)\n            end\n        end\n    end\n    spin.last[id] = Now()\nend\n\nself.used = true\n",
						conditions = 
						{
							
							{
								"565e3d74-eb88-2776-b8b7-0de8fcf972e6",
								true,
							},
							
							{
								"65c06cfc-020b-60fd-86c7-b225d761dbff",
								true,
							},
						},
						name = "Draw - Spinner + Countdown",
						uuid = "7a0a00cf-df99-ada1-a8ca-a527de928d20",
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
						eventArgOptionType = 3,
						eventArgType = 2,
						name = "Spell 34773",
						spellIDList = 
						{
							34773,
						},
						uuid = "565e3d74-eb88-2776-b8b7-0de8fcf972e6",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 8,
						dequeueIfLuaFalse = true,
						localmapid = 1165,
						name = "Map 1165",
						uuid = "65c06cfc-020b-60fd-86c7-b225d761dbff",
						version = 3,
					},
				},
			},
			displayPath = "Stage 1",
			eventType = 2,
			name = "S1 - Spinners + Next Spin Countdown",
			uuid = "17f08d0a-0810-0378-a4b5-3743783293d8",
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
						actionLua = "-- Stage 1: 34775 pendulum squares (3 x 3); light each hitbox as the pendulum sweeps through. Event: OnEntityCast.\nlocal ent = TensorCore.mGetEntity(eventArgs.entityID)\nif ent then\n    local p = ent.pos\n    TensorCore.getMoogleDrawer():addTimedCenteredRect(500, p.x, p.y, p.z, 3, 3, eventArgs.heading)\nend\n\nself.used = true\n",
						conditions = 
						{
							
							{
								"988314ea-b553-a990-991a-f0f77bfdc038",
								true,
							},
							
							{
								"9e8cab92-bc42-acb2-8004-9081dcfe2525",
								true,
							},
						},
						name = "Draw - Pendulum Hitbox",
						uuid = "410ba783-3577-5f15-be78-734c9eea8f4b",
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
						eventArgOptionType = 3,
						eventArgType = 2,
						name = "Spell 34775",
						spellIDList = 
						{
							34775,
						},
						uuid = "988314ea-b553-a990-991a-f0f77bfdc038",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 8,
						dequeueIfLuaFalse = true,
						localmapid = 1165,
						name = "Map 1165",
						uuid = "9e8cab92-bc42-acb2-8004-9081dcfe2525",
						version = 3,
					},
				},
			},
			displayPath = "Stage 1",
			eventType = 2,
			name = "S1 - Pendulum Flash",
			uuid = "3579233c-a1e2-ec81-8a85-deea0f093378",
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
						actionLua = "-- Stage 1: 34776 rolling balls (r2); keep a hitbox on each ball while it is hitting. Event: OnEntityCast.\nTensorCore.getMoogleDrawer():addTimedCircleOnEnt(500, eventArgs.entityID, 2)\n\nself.used = true\n",
						conditions = 
						{
							
							{
								"6f26970a-b5b5-acc1-a421-8edc278037e0",
								true,
							},
							
							{
								"4ce68c8d-db7d-b650-8c3a-66cf8d6493c2",
								true,
							},
						},
						name = "Draw - Ball Hitbox",
						uuid = "9727c145-d271-8250-823a-e74af23fc656",
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
						eventArgOptionType = 3,
						eventArgType = 2,
						name = "Spell 34776",
						spellIDList = 
						{
							34776,
						},
						uuid = "6f26970a-b5b5-acc1-a421-8edc278037e0",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 8,
						dequeueIfLuaFalse = true,
						localmapid = 1165,
						name = "Map 1165",
						uuid = "4ce68c8d-db7d-b650-8c3a-66cf8d6493c2",
						version = 3,
					},
				},
			},
			displayPath = "Stage 1",
			eventType = 2,
			name = "S1 - Rolling Ball Flash",
			uuid = "1de2ee7f-1039-d0a9-aea7-f65ef86c7dec",
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
						actionLua = "-- Stage 1 (moving-bumper variant): 34717 channel, circle r3 on the moving emitter with a countdown. Event: OnEntityChannel.\nlocal timeout = eventArgs.channelTimeMax * 1000\nTensorCore.getMoogleDrawer():addTimedCircleOnEnt(timeout, eventArgs.entityID, 3)\nif AnyoneCore and AnyoneCore.addWorldTextCountdownOnEnt then\n    AnyoneCore.addWorldTextCountdownOnEnt(timeout, eventArgs.entityID, 0xFFFFFFFF, true, 1, 1)\nend\n\nself.used = true\n",
						conditions = 
						{
							
							{
								"17666224-6999-6dd8-9b87-b8a1e258f3be",
								true,
							},
							
							{
								"2fe8be33-73d2-beb0-8e7c-3c85a3eda443",
								true,
							},
						},
						name = "Draw - Circle + Countdown",
						uuid = "03d9e802-dc9f-c378-8966-033d73952612",
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
						eventArgOptionType = 3,
						eventArgType = 2,
						name = "Spell 34717",
						spellIDList = 
						{
							34717,
						},
						uuid = "17666224-6999-6dd8-9b87-b8a1e258f3be",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 8,
						dequeueIfLuaFalse = true,
						localmapid = 1165,
						name = "Map 1165",
						uuid = "2fe8be33-73d2-beb0-8e7c-3c85a3eda443",
						version = 3,
					},
				},
			},
			displayPath = "Stage 1",
			eventType = 3,
			name = "S1 - Moving Bumper Telegraph",
			uuid = "73d07776-0dcd-aafa-93e3-1f667bbc9428",
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
								"7e932d3f-2804-2129-aecb-fb11fa8b66d5",
								true,
							},
							
							{
								"7ea9302b-d063-ace7-b1f3-98abcbbdcf7d",
								true,
							},
						},
						name = "Stop - Hold Still",
						stopAllActions = true,
						stopMoving = true,
						uuid = "dd4fdb96-9983-b0ad-94d7-bfc1094468b3",
						version = 2.1,
					},
				},
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "-- Record that the bomb stop ran so Acceleration Bomb - Resume releases it once.\ndata.ljBvBombStopped = true\n\nself.used = true\n",
						conditions = 
						{
							
							{
								"7e932d3f-2804-2129-aecb-fb11fa8b66d5",
								true,
							},
							
							{
								"7ea9302b-d063-ace7-b1f3-98abcbbdcf7d",
								true,
							},
						},
						name = "Mark Stopped",
						uuid = "1fc6813a-d4d7-5688-ae80-e0a014c8f55d",
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
						conditionType = 8,
						dequeueIfLuaFalse = true,
						localmapid = 1165,
						name = "Map 1165",
						uuid = "7e932d3f-2804-2129-aecb-fb11fa8b66d5",
						version = 3,
					},
				},
				
				{
					data = 
					{
						buffCheckType = 3,
						buffDuration = 1,
						buffID = 3802,
						category = "Self",
						comparator = 2,
						name = "3802 <= 1s",
						uuid = "7ea9302b-d063-ace7-b1f3-98abcbbdcf7d",
						version = 3,
					},
				},
			},
			displayPath = "Stage 1",
			eventType = 12,
			name = "S1 - Acceleration Bomb - Hold Still",
			uuid = "723b9b94-e012-2da1-9b7e-317df5fe08e5",
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
						aType = "Misc",
						conditions = 
						{
							
							{
								"c3a4e232-5c00-5027-8a21-30064f9f4511",
								true,
							},
							
							{
								"ea4c47ba-8253-e041-a8f5-899aa21b5c3b",
								true,
							},
						},
						name = "Resume - Bomb Resolved",
						resumeAllActions = true,
						uuid = "a3492b61-a391-059e-bedb-c25120e0645d",
						version = 2.1,
					},
				},
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "data.ljBvBombStopped = nil\n\nself.used = true\n",
						conditions = 
						{
							
							{
								"1f5fe1a9-1c15-6143-a002-2ec0ecabd501",
								true,
							},
						},
						name = "Clear Stopped",
						uuid = "f4ffc3c4-5112-e630-b581-f329a14f25cc",
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
						conditionLua = "return data.ljBvBombStopped == true",
						name = "Bomb Stopped",
						uuid = "c3a4e232-5c00-5027-8a21-30064f9f4511",
						version = 3,
					},
				},
				
				{
					data = 
					{
						buffCheckType = 2,
						buffID = 3802,
						category = "Self",
						name = "3802 Gone",
						uuid = "ea4c47ba-8253-e041-a8f5-899aa21b5c3b",
						version = 3,
					},
				},
				
				{
					data = 
					{
						actionUUID = "a3492b61-a391-059e-bedb-c25120e0645d",
						category = "Action",
						name = "Resume Used",
						uuid = "1f5fe1a9-1c15-6143-a002-2ec0ecabd501",
						version = 3,
					},
				},
			},
			displayPath = "Stage 1",
			name = "S1 - Acceleration Bomb - Resume",
			uuid = "e55b71cf-be29-28af-89b0-a743d469620f",
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
						aType = "Misc",
						conditions = 
						{
							
							{
								"9418183d-3939-b112-b75a-651f779ac923",
								true,
							},
							
							{
								"0395d311-de08-1b86-a348-ec86d4a1b092",
								true,
							},
							
							{
								"7707f3b3-12e0-726e-b499-e32ea7539562",
								true,
							},
						},
						name = "Stop - Before March",
						stopMoving = true,
						uuid = "e48a8312-ef0f-ca21-90b1-0bfbade9aed6",
						version = 2.1,
					},
				},
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "-- Stage 1 forced march (3698 Forward March, 3699 About Face, 3700 Left Face, 3701 Right Face): when the order\n-- expires the game turns you (Left/Right/About) and marches you from your current facing. With 1s left (alongside\n-- the Stop action), face the direction that makes the march run along camera forward (player -> camera, as the\n-- misdirection steer uses) plus the order's offset. Uses Player:SetFacing (instant): TensorACR Lock Face did not\n-- turn the character while stopped (Debug - March, 2026-10-07). Stop Moving needs no resume.\n-- Event: OnFrame.\nlocal face = ljBlundervilleMarchFace\nif face == nil or face.version ~= 5 then\n    -- Facing offset per order; left of facing = +pi/2 (confirmed: Right Face turned the player -pi/2 before marching).\n    face = { version = 5, offset = { [3698] = 0, [3699] = math.pi, [3700] = -math.pi / 2, [3701] = math.pi / 2 } }\n    ljBlundervilleMarchFace = face\nend\n\nlocal player = TensorCore.mGetPlayer()\nlocal cam = player.camera\nif TensorCore.getDistance2d(cam, player.pos) > 0.5 then\n    local forward = TensorCore.getHeadingToTarget(player.pos, cam)\n    for id, offset in pairs(face.offset) do\n        if TensorCore.getBuff(player, id) then\n            local heading = forward + offset\n            local p = player.pos\n            Player:SetFacing(p.x + math.sin(heading) * 10, p.y, p.z + math.cos(heading) * 10)\n            break\n        end\n    end\nend\n\nself.used = true\n",
						conditions = 
						{
							
							{
								"9418183d-3939-b112-b75a-651f779ac923",
								true,
							},
							
							{
								"0395d311-de08-1b86-a348-ec86d4a1b092",
								true,
							},
							
							{
								"7707f3b3-12e0-726e-b499-e32ea7539562",
								true,
							},
						},
						name = "Face - Camera Forward",
						uuid = "9fd7aa16-e1e9-951a-abca-0c76364b8ca1",
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
						conditionType = 8,
						dequeueIfLuaFalse = true,
						localmapid = 1165,
						name = "Map 1165",
						uuid = "9418183d-3939-b112-b75a-651f779ac923",
						version = 3,
					},
				},
				
				{
					data = 
					{
						buffCheckType = 5,
						buffIDList = 
						{
							3698,
							3699,
							3700,
							3701,
						},
						category = "Self",
						matchAnyBuff = true,
						name = "Has March Order",
						uuid = "0395d311-de08-1b86-a348-ec86d4a1b092",
						version = 3,
					},
				},
				
				{
					data = 
					{
						buffCheckType = 7,
						buffDuration = 1,
						buffIDList = 
						{
							3698,
							3699,
							3700,
							3701,
						},
						category = "Self",
						comparator = 2,
						name = "Order <= 1s",
						uuid = "7707f3b3-12e0-726e-b499-e32ea7539562",
						version = 3,
					},
				},
			},
			displayPath = "Stage 1",
			eventType = 12,
			name = "S1 - Forced March - Face Path",
			uuid = "68747662-93c0-f0fb-ba00-a81097710592",
			version = 2,
		},
	},
	
	{
		data = 
		{
			displayPath = "",
			name = "Stage 2",
			uuid = "bb7cae6c-4ba7-acdb-8a72-5b1fafbdfe62",
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
						actionLua = "-- Stage 2: 34800 channel telegraph (31 x 12 centred rect, no game omen) with a countdown at both ends of the\n-- sweep, so it reads from wherever you stand along it. Event: OnEntityChannel.\nlocal timeout = eventArgs.channelTimeMax * 1000\nlocal ent = TensorCore.mGetEntity(eventArgs.entityID)\nif ent then\n    local p = ent.pos\n    TensorCore.getMoogleDrawer():addTimedCenteredRect(timeout, p.x, p.y, p.z, 31, 12, p.h)\n    if AnyoneCore and AnyoneCore.addWorldTextCountdown then\n        local dx, dz = math.sin(p.h) * 15.5, math.cos(p.h) * 15.5\n        AnyoneCore.addWorldTextCountdown(timeout, { x = p.x + dx, y = p.y, z = p.z + dz }, 0xFFFFFFFF, true, 1.5)\n        AnyoneCore.addWorldTextCountdown(timeout, { x = p.x - dx, y = p.y, z = p.z - dz }, 0xFFFFFFFF, true, 1.5)\n    end\nend\n\nself.used = true\n",
						conditions = 
						{
							
							{
								"a9e7b84f-d277-35e6-b81c-7c9c9c2f82a4",
								true,
							},
							
							{
								"20f12655-d18f-6579-99ed-3827e8b61de5",
								true,
							},
						},
						name = "Draw - Sweep Rect",
						uuid = "8d27dfb2-ed99-df5e-877d-2a18cf53e8ef",
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
						eventArgOptionType = 3,
						eventArgType = 2,
						name = "Spell 34800",
						spellIDList = 
						{
							34800,
						},
						uuid = "a9e7b84f-d277-35e6-b81c-7c9c9c2f82a4",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 8,
						dequeueIfLuaFalse = true,
						localmapid = 1165,
						name = "Map 1165",
						uuid = "20f12655-d18f-6579-99ed-3827e8b61de5",
						version = 3,
					},
				},
			},
			displayPath = "Stage 2",
			eventType = 3,
			name = "S2 - Big Sweep Telegraph",
			uuid = "12d11740-338e-d28b-aa66-972881c5a709",
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
						actionLua = "-- Stage 2 (three-obstacle variant): the player's aura names the obstacle to run (1887 west, 1888 east,\n-- 1889 south; from 2026-10-07 logs). Point a green arrow from the arena centre toward it until the aura\n-- changes again. Event: OnAuraChange (self only).\nlocal arrow = ljBlundervilleObstacleArrow\nif arrow == nil or arrow.version ~= 1 then\n    arrow = {\n        version = 1,\n        centre = { x = -200, y = 3.02, z = 252 },\n        ends = { [1887] = { x = -238, z = 275 }, [1888] = { x = -161, z = 273 }, [1889] = { x = -198, z = 207 } },\n    }\n    ljBlundervilleObstacleArrow = arrow\nend\n\nlocal state = data.ljBlunderville\nif state == nil then\n    state = { groups = {}, lanes = {} }\n    data.ljBlunderville = state\nend\n\nif state.obstacleArrow then\n    Argus.deleteTimedShape(state.obstacleArrow)\n    state.obstacleArrow = nil\nend\n\nlocal target = arrow.ends[eventArgs.newActiveAura1]\nif target then\n    -- Marks this round as the aura stage for Next Impact's green lanes.\n    state.auraStage = true\n    local c = arrow.centre\n    local heading = TensorCore.getHeadingToTarget(c, target)\n    local drawer = TensorCore.getCachedDrawer(0xFF00FF00, 0xFF00DD00, 0xFF00BB00, 0xFFFFFFFF, 2)\n    state.obstacleArrow = drawer:addTimedArrow(60000, c.x, c.y, c.z, heading, 5, 1, 3, 3, 0, false)\nend\n\nself.used = true\n",
						conditions = 
						{
							
							{
								"8b8c3e85-8ef3-a576-9d7f-01b0c4247a34",
								true,
							},
							
							{
								"cb9e691f-a74f-5c2a-979c-9235a65a2af1",
								true,
							},
						},
						name = "Draw - Arrow to Obstacle",
						uuid = "83e58e1a-87e5-98ff-ace9-5e75706a2292",
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
						conditionLua = "return eventArgs.entityID == TensorCore.mGetPlayer().id",
						dequeueIfLuaFalse = true,
						name = "Self Aura",
						uuid = "8b8c3e85-8ef3-a576-9d7f-01b0c4247a34",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 8,
						dequeueIfLuaFalse = true,
						localmapid = 1165,
						name = "Map 1165",
						uuid = "cb9e691f-a74f-5c2a-979c-9235a65a2af1",
						version = 3,
					},
				},
			},
			displayPath = "Stage 2",
			eventType = 25,
			name = "S2 - Obstacle Arrow",
			uuid = "d275884b-fb08-5a85-b710-e20459288cc4",
			version = 2,
		},
	},
	
	{
		data = 
		{
			displayPath = "",
			name = "Stage 3",
			uuid = "9b396c61-f7ae-5740-af44-61ffaa2e87d4",
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
						actionLua = "-- Stage 3: 34812 channel starts a roller that hits its whole ramp lane (z 190.4 -> 214.4).\n-- Draw the lane until the roller's last hit clears it, with a countdown to the first hit. Event: OnEntityChannel.\nlocal state = data.ljBlunderville\nif state == nil then\n    state = { groups = {}, lanes = {} }\n    data.ljBlunderville = state\nend\n\nlocal ent = TensorCore.mGetEntity(eventArgs.entityID)\nif ent then\n    state.lanes[eventArgs.entityID] = TensorCore.getMoogleDrawer():addTimedCenteredRect(4000, ent.pos.x, 21.15, 202.4, 30, 6, 0)\nend\nif AnyoneCore and AnyoneCore.addWorldTextCountdownOnEnt then\n    AnyoneCore.addWorldTextCountdownOnEnt(eventArgs.channelTimeMax * 1000, eventArgs.entityID, 0xFFFFFFFF, true, 1.5, 1)\nend\n\nself.used = true\n",
						conditions = 
						{
							
							{
								"e47c1e45-5d1c-3bea-82c8-b1c5ab24de16",
								true,
							},
							
							{
								"eaa08172-24d1-b8ff-b5f7-d0a19c9821b2",
								true,
							},
						},
						name = "Draw - Ramp Lane",
						uuid = "55abd27f-f5e8-9483-8a05-d20c4e789bac",
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
						eventArgOptionType = 3,
						eventArgType = 2,
						name = "Spell 34812",
						spellIDList = 
						{
							34812,
						},
						uuid = "e47c1e45-5d1c-3bea-82c8-b1c5ab24de16",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 8,
						dequeueIfLuaFalse = true,
						localmapid = 1165,
						name = "Map 1165",
						uuid = "eaa08172-24d1-b8ff-b5f7-d0a19c9821b2",
						version = 3,
					},
				},
			},
			displayPath = "Stage 3",
			eventType = 3,
			name = "S3 - Ramp Lane",
			uuid = "bf7d0544-13dc-f528-a583-7e5700845838",
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
						actionLua = "-- Stage 3: remove a ramp lane draw when its roller makes the bottom hit (34804 at z 214.4). Event: OnEntityCast.\nlocal state = data.ljBlunderville\nif state then\n    local ent = TensorCore.mGetEntity(eventArgs.entityID)\n    local uuid = state.lanes[eventArgs.entityID]\n    if uuid and ent and ent.pos.z > 213 then\n        Argus.deleteTimedShape(uuid)\n        state.lanes[eventArgs.entityID] = nil\n    end\nend\n\nself.used = true\n",
						conditions = 
						{
							
							{
								"d7889390-c500-23cb-97ed-a83833e770f7",
								true,
							},
							
							{
								"b76b0c5c-50e7-8612-b126-7f672c09d997",
								true,
							},
						},
						name = "Delete - Ramp Lane",
						uuid = "410ba1f7-4d91-2ea7-a1d5-c258d4789282",
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
						eventArgOptionType = 3,
						eventArgType = 2,
						name = "Spell 34804",
						spellIDList = 
						{
							34804,
						},
						uuid = "d7889390-c500-23cb-97ed-a83833e770f7",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 8,
						dequeueIfLuaFalse = true,
						localmapid = 1165,
						name = "Map 1165",
						uuid = "b76b0c5c-50e7-8612-b126-7f672c09d997",
						version = 3,
					},
				},
			},
			displayPath = "Stage 3",
			eventType = 2,
			name = "S3 - Ramp Lane Clear",
			uuid = "659ed973-05d9-303c-9f0d-cfbf4d95875a",
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
						actionLua = "-- Stage 3: the samurai on the pedestal at the top of the ramp (~0, 188) channels 34803 (0.7s, every 3s with the ramp\n-- rollers), then spins his sword in a ring around himself. No omen or hit data exists; radius 8 is measured from a\n-- clip against the 12y lane spacing. Circle on him with a countdown. Event: OnEntityChannel.\nlocal timeout = eventArgs.channelTimeMax * 1000\nTensorCore.getMoogleDrawer():addTimedCircleOnEnt(timeout, eventArgs.entityID, 8)\nif AnyoneCore and AnyoneCore.addWorldTextCountdownOnEnt then\n    AnyoneCore.addWorldTextCountdownOnEnt(timeout, eventArgs.entityID, 0xFFFFFFFF, true, 1.5, 1)\nend\n\nself.used = true\n",
						conditions = 
						{
							
							{
								"518c9190-1a9b-0f0d-899d-1d673daf7f30",
								true,
							},
							
							{
								"ec4895a8-f715-252e-a535-d716e6887be8",
								true,
							},
						},
						name = "Draw - Swing Ring + Countdown",
						uuid = "c2591b51-92f2-8157-8ef0-5f3d41f71bd4",
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
						eventArgOptionType = 3,
						eventArgType = 2,
						name = "Spell 34803",
						spellIDList = 
						{
							34803,
						},
						uuid = "518c9190-1a9b-0f0d-899d-1d673daf7f30",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 8,
						dequeueIfLuaFalse = true,
						localmapid = 1165,
						name = "Map 1165",
						uuid = "ec4895a8-f715-252e-a535-d716e6887be8",
						version = 3,
					},
				},
			},
			displayPath = "Stage 3",
			eventType = 3,
			name = "S3 - Samurai Swing",
			uuid = "03ac48c8-93ad-695e-8cc2-45ca8395e94b",
			version = 2,
		},
	},
	
	{
		data = 
		{
			displayPath = "",
			name = "Arena",
			uuid = "c518453f-acc6-f066-b44d-05483fc13978",
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
						actionLua = "-- Arena (centre 200,-125): 34805 channel, circle r6 at the caster with a countdown. Event: OnEntityChannel.\nlocal timeout = eventArgs.channelTimeMax * 1000\nlocal ent = TensorCore.mGetEntity(eventArgs.entityID)\nif ent then\n    TensorCore.getMoogleDrawer():addTimedCircle(timeout, ent.pos.x, ent.pos.y, ent.pos.z, 6)\nend\nif AnyoneCore and AnyoneCore.addWorldTextCountdownOnEnt then\n    AnyoneCore.addWorldTextCountdownOnEnt(timeout, eventArgs.entityID, 0xFFFFFFFF, true, 1.5, 1)\nend\n\nself.used = true\n",
						conditions = 
						{
							
							{
								"ca2a7aeb-b28d-7fbc-b850-a075e1f830df",
								true,
							},
							
							{
								"3e115cb4-aefd-8a5b-b123-ec9c625ce0a0",
								true,
							},
						},
						name = "Draw - Circle + Countdown",
						uuid = "d98d4222-88c6-860a-926e-7c900e487daf",
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
						eventArgOptionType = 3,
						eventArgType = 2,
						name = "Spell 34805",
						spellIDList = 
						{
							34805,
						},
						uuid = "ca2a7aeb-b28d-7fbc-b850-a075e1f830df",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 8,
						dequeueIfLuaFalse = true,
						localmapid = 1165,
						name = "Map 1165",
						uuid = "3e115cb4-aefd-8a5b-b123-ec9c625ce0a0",
						version = 3,
					},
				},
			},
			displayPath = "Arena",
			eventType = 3,
			name = "Arena - Circle Telegraph",
			uuid = "fcce7b5d-c8e9-436e-858a-26abb0757821",
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
						actionLua = "-- Arena: 34797/34798 channels from the side casters (180,-125)/(220,-125). Shape is a radius-8 cast type 13\n-- with no known angle, so only the countdown is shown. Event: OnEntityChannel.\nif AnyoneCore and AnyoneCore.addWorldTextCountdownOnEnt then\n    AnyoneCore.addWorldTextCountdownOnEnt(eventArgs.channelTimeMax * 1000, eventArgs.entityID, 0xFFFFFFFF, true, 1.5, 1)\nend\n\nself.used = true\n",
						conditions = 
						{
							
							{
								"0b5e6c3f-287c-468d-bfac-ff6cfa7ca6a0",
								true,
							},
							
							{
								"afe3135b-796f-90f8-aceb-6e4819b6da7e",
								true,
							},
						},
						name = "Text - Countdown",
						uuid = "54ae04b1-23e2-95bf-86ed-37aa6664b73b",
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
						eventArgOptionType = 3,
						eventArgType = 2,
						name = "Spell 34797,34798",
						spellIDList = 
						{
							34797,
							34798,
						},
						uuid = "0b5e6c3f-287c-468d-bfac-ff6cfa7ca6a0",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 8,
						dequeueIfLuaFalse = true,
						localmapid = 1165,
						name = "Map 1165",
						uuid = "afe3135b-796f-90f8-aceb-6e4819b6da7e",
						version = 3,
					},
				},
			},
			displayPath = "Arena",
			enabled = false,
			eventType = 3,
			name = "Arena - Side Countdown",
			uuid = "ce8a973a-7f2b-bb45-9246-4022f247414a",
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
						actionLua = "-- Arena: 35409 channel, a 3-wide line that runs ~9.5y along the caster's heading (it shuttles between two\n-- fixed points), with a countdown. Event: OnEntityChannel.\nlocal timeout = eventArgs.channelTimeMax * 1000\nlocal ent = TensorCore.mGetEntity(eventArgs.entityID)\nif ent then\n    TensorCore.getMoogleDrawer():addTimedRect(timeout, ent.pos.x, ent.pos.y, ent.pos.z, 9.5, 3, ent.pos.h)\nend\nif AnyoneCore and AnyoneCore.addWorldTextCountdownOnEnt then\n    AnyoneCore.addWorldTextCountdownOnEnt(timeout, eventArgs.entityID, 0xFFFFFFFF, true, 1.5, 1)\nend\n\nself.used = true\n",
						conditions = 
						{
							
							{
								"96d07623-fa54-ece0-abdc-08385bc66ece",
								true,
							},
							
							{
								"9cda380a-918d-0885-a2e9-7a2c75bb6a28",
								true,
							},
						},
						name = "Draw - Line + Countdown",
						uuid = "ebf00171-a870-db70-9a83-3d8e300ec974",
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
						eventArgOptionType = 3,
						eventArgType = 2,
						name = "Spell 35409",
						spellIDList = 
						{
							35409,
						},
						uuid = "96d07623-fa54-ece0-abdc-08385bc66ece",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 8,
						dequeueIfLuaFalse = true,
						localmapid = 1165,
						name = "Map 1165",
						uuid = "9cda380a-918d-0885-a2e9-7a2c75bb6a28",
						version = 3,
					},
				},
			},
			displayPath = "Arena",
			eventType = 3,
			name = "Arena - Pillar Line",
			uuid = "f3cacc10-e5be-db0d-a1d6-f96b26d1293d",
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
						actionLua = "-- Arena: 34808 spinning bar through the centre (100 x 8), turning ~0.119 rad clockwise per hit.\n-- Draw where the next sweep lands; each hit replaces the previous draw. Event: OnEntityCast.\nlocal state = data.ljBlunderville\nif state == nil then\n    state = { groups = {}, lanes = {} }\n    data.ljBlunderville = state\nend\n\nlocal ent = TensorCore.mGetEntity(eventArgs.entityID)\nif ent then\n    if state.spin then\n        Argus.deleteTimedShape(state.spin)\n    end\n    local heading = TensorCore.restoreHeading(eventArgs.heading - 0.119)\n    state.spin = TensorCore.getMoogleDrawer():addTimedCenteredRect(3000, ent.pos.x, ent.pos.y, ent.pos.z, 100, 8, heading)\nend\n\nself.used = true\n",
						conditions = 
						{
							
							{
								"16e8f5f7-e5d8-8e0a-864e-f3468b90819d",
								true,
							},
							
							{
								"85238d28-9ffd-8a32-b8e9-e2a04c3a0be4",
								true,
							},
						},
						name = "Draw - Next Bar Sweep",
						uuid = "601a5307-2076-a92c-a75f-836c18cba56e",
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
						eventArgOptionType = 3,
						eventArgType = 2,
						name = "Spell 34808",
						spellIDList = 
						{
							34808,
						},
						uuid = "16e8f5f7-e5d8-8e0a-864e-f3468b90819d",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 8,
						dequeueIfLuaFalse = true,
						localmapid = 1165,
						name = "Map 1165",
						uuid = "85238d28-9ffd-8a32-b8e9-e2a04c3a0be4",
						version = 3,
					},
				},
			},
			displayPath = "Arena",
			enabled = false,
			eventType = 2,
			name = "Arena - Spinning Bar",
			uuid = "74c224cd-e51c-2fc3-87f8-94952d4a7f35",
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
						actionLua = "-- Arena (spiral): 34797/34798 from the side hammers at (180,-125)/(220,-125) are 180 degree half-circles r8\n-- (omen gl_fan180); 34797 faces the centre, 34798 faces out. Draw from the AOE's own position, heading and\n-- duration, with a countdown on the caster. Event: OnAOECreate.\nlocal timeout = eventArgs.duration * 1000\nTensorCore.getMoogleDrawer():addTimedCone(timeout, eventArgs.x, eventArgs.y, eventArgs.z, eventArgs.aoeLength, math.pi, eventArgs.heading)\nif AnyoneCore and AnyoneCore.addWorldTextCountdownOnEnt then\n    AnyoneCore.addWorldTextCountdownOnEnt(timeout, eventArgs.entityID, 0xFFFFFFFF, true, 1.5, 1)\nend\n\nself.used = true\n",
						conditions = 
						{
							
							{
								"0f12b6b0-722d-100d-9fcc-c1a7337d8067",
								true,
							},
							
							{
								"12f20685-1f51-a7fd-bdd5-683f03fc655f",
								true,
							},
						},
						name = "Draw - Half-Circle + Countdown",
						uuid = "b393d953-e8cf-6887-b6fe-ee089b61f67a",
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
						conditionLua = "return eventArgs.aoeID == 34797 or eventArgs.aoeID == 34798",
						dequeueIfLuaFalse = true,
						name = "AOE 34797/34798",
						uuid = "0f12b6b0-722d-100d-9fcc-c1a7337d8067",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 8,
						dequeueIfLuaFalse = true,
						localmapid = 1165,
						name = "Map 1165",
						uuid = "12f20685-1f51-a7fd-bdd5-683f03fc655f",
						version = 3,
					},
				},
			},
			displayPath = "Arena",
			eventType = 18,
			name = "Arena - Side Half-Circle",
			uuid = "fe4738be-13a3-497a-91fa-5c0b8b9a2594",
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
						actionLua = "-- Clear Blunderville draw state on entering map 1165; OnWipe never fires here. Event: OnMapChange.\ndata.ljBlunderville = nil\nljBvDebugState = nil\n\nself.used = true\n",
						conditions = 
						{
							
							{
								"652859f3-a8ba-7fe6-a16e-33065b3c6e9e",
								true,
							},
						},
						name = "Reset - data.ljBlunderville",
						uuid = "616bccb6-f38e-b47f-a6f7-3ce797e9ad37",
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
						conditionType = 8,
						dequeueIfLuaFalse = true,
						localmapid = 1165,
						name = "Map 1165",
						uuid = "652859f3-a8ba-7fe6-a16e-33065b3c6e9e",
						version = 3,
					},
				},
			},
			eventType = 11,
			name = "Reset State on Entry",
			uuid = "1d51591f-0a72-ad24-8c4f-fe34a5cd2e57",
			version = 2,
		},
	},
	
	{
		data = 
		{
			displayPath = "",
			name = "Speed Boost",
			uuid = "b85b6815-eb18-7bcc-a789-035488eba52c",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			displayPath = "",
			name = "Speed Hack",
			uuid = "b3bd4c42-1086-a5a0-922c-e77ea9de2cc7",
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
						actionLua = "-- Blunderville speed hack settings (map 1165): Enabled combo, a key picked by pressing it, and a speed\n-- multiplier. Saved to LuaMods\\ffxivminion\\Lj\\BlundervilleSpeedSettings.lua and mirrored into Lj_BVSPEED_*.\n-- Event: OnDraw.\nlocal ui = Lj_BVSPEED_UI\nif ui == nil or ui.version ~= 3 then\n    local folder = GetLuaModsPath() .. [[ffxivminion\\Lj\\]]\n    local path = folder .. [[BlundervilleSpeedSettings.lua]]\n    -- width: every control spans the 260px window's content area (260 - 2 x 8 padding) so they line up.\n    ui = { version = 3, folder = folder, path = path, capturing = false, modes = { \"Disabled\", \"Enabled\" }, width = 244,\n        captureLabel = \"Press a key (Esc cancel, right-click clear)###LjBVSpeedKey\", names = {\n        [0x05] = \"Mouse 4\", [0x06] = \"Mouse 5\", [0x09] = \"Tab\", [0x10] = \"Shift\", [0x11] = \"Ctrl\", [0x12] = \"Alt\",\n        [0x14] = \"Caps Lock\", [0x20] = \"Space\", [0xC0] = \"`\",\n    } }\n    for i = 0, 11 do\n        ui.names[0x70 + i] = \"F\" .. (i + 1)\n    end\n    function ui.keyName(vk)\n        if vk == 0 then\n            return \"Not set\"\n        elseif (vk >= 0x30 and vk <= 0x39) or (vk >= 0x41 and vk <= 0x5A) then\n            return string.char(vk)\n        end\n        return ui.names[vk] or string.format(\"Key 0x%02X\", vk)\n    end\n    ui.settings = FileExists(path) and FileLoad(path) or {}\n    Lj_BVSPEED_UI = ui\nend\n\nlocal s = ui.settings\nlocal changed = false\nif s.mode ~= \"Disabled\" and s.mode ~= \"Enabled\" then\n    s.mode = \"Disabled\"\n    changed = true\nend\nif type(s.key) ~= \"number\" then\n    s.key = 0\n    changed = true\nend\nif type(s.modifier) ~= \"number\" or s.modifier < 1 then\n    s.modifier = 1.2\n    changed = true\nelseif s.modifier > 2 then\n    s.modifier = 2\n    changed = true\nend\n\nGUI:SetNextWindowSize(260, 0, GUI.SetCond_Always)\nlocal flags = GUI.WindowFlags_NoTitleBar + GUI.WindowFlags_NoCollapse + GUI.WindowFlags_AlwaysAutoResize\nif GUI:Begin(\"Blunderville Speed Hack###LjBlundervilleSpeed\", true, flags) then\n    GUI:Text(\"Blunderville Speed Hack\")\n    GUI:PushTextWrapPos(0)\n    GUI:TextColored(1, 0.2, 0.2, 1, \"WARNING: changing movement speed can be caught by server-side movement checks and reported by other players in this race. Use it sparingly, keep the multiplier low, and use it at your own risk.\")\n    GUI:PopTextWrapPos()\n    GUI:Separator()\n    GUI:PushItemWidth(ui.width)\n    GUI:Text(\"Speed Hack\")\n    local index, picked = GUI:Combo(\"##LjBVSpeedMode\", s.mode == \"Enabled\" and 2 or 1, ui.modes)\n    if picked then\n        s.mode = ui.modes[index]\n        changed = true\n    end\n\n    if s.mode == \"Enabled\" then\n        -- One full-width button shows the bound key; click it, then press the new key.\n        GUI:Text(\"Hold key\")\n        if ui.keyLabelFor ~= s.key then\n            ui.keyLabel = ui.keyName(s.key) .. \"###LjBVSpeedKey\"\n            ui.keyLabelFor = s.key\n        end\n        if GUI:Button(ui.capturing and ui.captureLabel or ui.keyLabel, ui.width, 0) then\n            ui.capturing = not ui.capturing\n        elseif ui.capturing and GUI:IsMouseClicked(1) then\n            -- Right-click while picking removes the bind.\n            s.key = 0\n            changed = true\n            ui.capturing = false\n        elseif ui.capturing then\n            for vk = 0x05, 0xFE do\n                if GUI:IsKeyPressed(vk) then\n                    if vk ~= 0x1B then\n                        s.key = vk\n                        changed = true\n                    end\n                    ui.capturing = false\n                    break\n                end\n            end\n        end\n\n        GUI:Text(\"Speed multiplier\")\n        local value = GUI:SliderFloat(\"##LjBVSpeedModifier\", s.modifier, 1, 2)\n        if type(value) == \"number\" and math.abs(value - s.modifier) > 0.0001 then\n            s.modifier = math.max(1, math.min(2, value))\n            changed = true\n        end\n    end\n    GUI:PopItemWidth()\nend\nGUI:End()\n\nif changed then\n    if not FolderExists(ui.folder) then\n        FolderCreate(ui.folder)\n    end\n    FileSave(ui.path, s)\nend\n\nLj_BVSPEED_Enabled = s.mode == \"Enabled\"\nLj_BVSPEED_Key = s.key\nLj_BVSPEED_Modifier = s.modifier\n\nself.used = true\n",
						conditions = 
						{
							
							{
								"740481a6-a0ac-3a08-9f06-b0abae30a60e",
								true,
							},
						},
						name = "GUI - Speed Hack Settings",
						uuid = "2cfb0dec-eb39-cf28-8085-69ae83727aeb",
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
						conditionType = 8,
						dequeueIfLuaFalse = true,
						localmapid = 1165,
						name = "Map 1165",
						uuid = "740481a6-a0ac-3a08-9f06-b0abae30a60e",
						version = 3,
					},
				},
			},
			displayPath = "Speed Hack",
			eventType = 13,
			name = "Speed Hack - Settings",
			uuid = "c022ec69-da0f-1719-8e77-b89c83984b42",
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
						actionLua = "-- Blunderville speed hack: while the chosen key is held in map 1165, run speed = normal x multiplier; restore the\n-- normal speed on release, when disabled, or when leaving the map. No map condition so the hack can never stick.\n-- Event: OnFrame.\nlocal boost = Lj_BVSPEED_State\nif boost == nil then\n    boost = {}\n    Lj_BVSPEED_State = boost\nend\n\nlocal held = Lj_BVSPEED_Enabled and (Lj_BVSPEED_Key or 0) > 0 and GUI:IsKeyDown(Lj_BVSPEED_Key)\n    and TensorCore.mGetPlayer().localmapid == 1165\nif held then\n    if boost.base == nil then\n        boost.base = TensorCore.getSpeed()\n    end\n    TensorCore.setSpeed(1, boost.base * (Lj_BVSPEED_Modifier or 1))\nelseif boost.base then\n    TensorCore.setSpeed(1, boost.base)\n    boost.base = nil\nend\n\nself.used = true\n",
						name = "Set Run Speed",
						uuid = "13cc7798-c5b6-2e35-81a6-3aa646f62f29",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
			},
			displayPath = "Speed Hack",
			eventType = 12,
			name = "Speed Hack - Apply",
			uuid = "680e4b29-f841-e3aa-9955-da7f705a43f0",
			version = 2,
		},
	}, 
	inheritedProfiles = 
	{
	},
}



return tbl