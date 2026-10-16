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
						actionLua = "local player = TensorCore.mGetPlayer()\nArgus.setMisdirectionHeading(TensorCore.restoreHeading(player.camera.h + math.pi))\n\nself.used = true\n",
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
						name = "Steer by Camera",
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
						actionLua = "-- Blunderville (map 1165) next-impact telegraphs for the repeating instant hazards, learned live each round.\n-- Hits are grouped per emitter (moving hazards by entity, turn-taking emitters by proximity). Each group's\n-- volleys are recorded with Now(); once a volley has been seen followed by another, the next time it fires the\n-- follow-up is drawn until it lands, with a countdown when it is 1s or more away (both ends for lines).\n-- Learned cycles are keyed by position, which is identical every round, so they persist in ljBlundervilleLearned\n-- and are saved to LuaMods\\ffxivminion\\Lj\\BlundervilleLearned.lua (by Save Learned Hazards when leaving the map)\n-- and loaded here, so later sessions predict from the first hit. A missing or unreadable file just starts empty.\n-- The file also keeps the stage 3 and round 2 routes' hazard periods (known.periods, written by S3 - Route Observe\n-- and S2 - Route Observe).\n-- Only per-round draw state lives in data.ljBlunderville.learn. Event: OnEntityCast.\nlocal cfg = ljBlundervilleLearnCfg\nif cfg == nil or cfg.version ~= 3 then\n    cfg = {\n        version = 3,\n        -- entity: group by the moving emitter; radius: group emitters of the spell within this many yalms.\n        spells = {\n            [34801] = { entity = true, circle = 6 },\n            [34796] = { entity = true, circle = 5 },\n            [29795] = { entity = true, circle = 3 },\n            [34774] = { entity = true, line = 3 },\n            [34802] = { radius = 21, circle = 5 },\n            [34799] = { radius = 17, length = 4, width = 4 },\n            [34718] = { radius = 4.5, length = 4, width = 10 },\n            [34716] = { radius = 3.5, length = 3, width = 2 },\n        },\n    }\n    ljBlundervilleLearnCfg = cfg\nend\n\nlocal state = data.ljBlunderville\nif state == nil then\n    state = { groups = {}, lanes = {} }\n    data.ljBlunderville = state\nend\n-- Knowledge kept across rounds and sessions: what follows each hit (by position) and where each spell's emitters sit.\nlocal known = ljBlundervilleLearned\nif known == nil or known.version ~= 4 then\n    local folder = GetLuaModsPath() .. [[ffxivminion\\Lj\\]]\n    known = { version = 4, next = {}, emitters = {}, periods = {}, nextGroup = 0, dirty = false,\n        folder = folder, path = folder .. [[BlundervilleLearned.lua]] }\n\n    local saved = FileExists(known.path) and FileLoad(known.path) or nil\n    if type(saved) == \"table\" and saved.format == 1 then\n        known.nextGroup = tonumber(saved.nextGroup) or 0\n        for spellKey, list in pairs(saved.emitters or {}) do\n            local spellId = tonumber(spellKey)\n            if spellId and type(list) == \"table\" then\n                local emitters = {}\n                for _, e in ipairs(list) do\n                    emitters[#emitters + 1] = { x = e.x, y = e.y, z = e.z, group = e.group }\n                end\n                known.emitters[spellId] = emitters\n            end\n        end\n        for k, n in pairs(saved.next or {}) do\n            if type(n) == \"table\" and type(n.hits) == \"table\" then\n                known.next[k] = { volley = { hits = n.hits, keys = {} }, delay = tonumber(n.delay) or 0 }\n            end\n        end\n        for k, period in pairs(saved.periods or {}) do\n            known.periods[k] = tonumber(period)\n        end\n    end\n\n    -- Plain numbers and ASCII strings only, in the shape loaded above.\n    function known.export()\n        local out = { format = 1, nextGroup = known.nextGroup, emitters = {}, next = {}, periods = {} }\n        for spellId, list in pairs(known.emitters) do\n            local emitters = {}\n            for _, e in ipairs(list) do\n                emitters[#emitters + 1] = { x = e.x, y = e.y, z = e.z, group = e.group }\n            end\n            out.emitters[tostring(spellId)] = emitters\n        end\n        for k, n in pairs(known.next) do\n            local hits = {}\n            for _, h in ipairs(n.volley.hits) do\n                hits[#hits + 1] = { x = h.x, y = h.y, z = h.z, h = h.h, cx = h.cx, cz = h.cz }\n            end\n            out.next[k] = { delay = n.delay, hits = hits }\n        end\n        for k, period in pairs(known.periods) do\n            out.periods[k] = math.floor(period + 0.5)\n        end\n        return out\n    end\n\n    function known.save()\n        if not FolderExists(known.folder) then\n            FolderCreate(known.folder)\n        end\n        FileSave(known.path, known.export())\n        known.dirty = false\n    end\n\n    ljBlundervilleLearned = known\nend\n-- Per-round state: each group's current volley and live draws.\nlocal learn = state.learn\nif learn == nil then\n    learn = { groups = {} }\n    state.learn = learn\nend\n\nlocal spell = eventArgs.spellID\nlocal spec = cfg.spells[spell]\nlocal ent = TensorCore.mGetEntity(eventArgs.entityID)\nif spec and ent then\n    local p = ent.pos\n    local now = Now()\n\n    -- Find this emitter's group.\n    local gid\n    if spec.entity then\n        gid = eventArgs.entityID\n    else\n        local list = known.emitters[spell]\n        if list == nil then\n            list = {}\n            known.emitters[spell] = list\n        end\n        local own\n        for _, e in ipairs(list) do\n            local dx, dz = e.x - p.x, e.z - p.z\n            local d2 = dx * dx + dz * dz\n            if d2 < 0.36 then\n                own = e\n                break\n            elseif d2 <= spec.radius * spec.radius then\n                if gid == nil then\n                    gid = e.group\n                elseif e.group ~= gid then\n                    -- This emitter links two groups; merge the other into ours.\n                    local old = e.group\n                    for _, o in ipairs(list) do\n                        if o.group == old then\n                            o.group = gid\n                        end\n                    end\n                end\n            end\n        end\n        if own then\n            gid = own.group\n        else\n            if gid == nil then\n                known.nextGroup = known.nextGroup + 1\n                gid = \"g\" .. known.nextGroup\n            end\n            list[#list + 1] = { x = p.x, y = p.y, z = p.z, group = gid }\n            known.dirty = true\n        end\n    end\n\n    local group = learn.groups[gid]\n    if group == nil then\n        group = { uuids = {} }\n        learn.groups[gid] = group\n    end\n\n    local key = string.format(\"%d:%d:%d:%d:%d:%d\", spell, math.floor(p.x * 2 + 0.5), math.floor(p.z * 2 + 0.5),\n        math.floor(eventArgs.heading * 2 + 0.5), math.floor((eventArgs.castPosX or 0) * 2 + 0.5), math.floor((eventArgs.castPosZ or 0) * 2 + 0.5))\n    local hit = { x = p.x, y = p.y, z = p.z, h = eventArgs.heading, cx = eventArgs.castPosX, cz = eventArgs.castPosZ }\n\n    local volley = group.volley\n    if volley == nil or now - volley.t > 150 then\n        -- A new volley: teach the previous volley's members what follows them, then predict what follows this one.\n        local fresh = { t = now, hits = {}, keys = {} }\n        if volley then\n            local delay = now - volley.t\n            for _, k in ipairs(volley.keys) do\n                if known.next[k] == nil then\n                    known.dirty = true\n                end\n                known.next[k] = { volley = fresh, delay = delay }\n            end\n        end\n        group.volley = fresh\n        volley = fresh\n\n        local uuids = group.uuids\n        for i = #uuids, 1, -1 do\n            Argus.deleteTimedShape(uuids[i])\n            uuids[i] = nil\n        end\n\n        local nextVolley = known.next[key]\n        local delay = nextVolley and nextVolley.delay or 0\n        local timeout = delay > 0 and delay + 400 or 1000\n        local countdown = delay >= 1000 and AnyoneCore and AnyoneCore.addWorldTextCountdown\n\n        if nextVolley then\n            local drawer = TensorCore.getMoogleDrawer()\n            for _, s in ipairs(nextVolley.volley.hits) do\n                if spec.line then\n                    local dx, dz = (s.cx or s.x) - s.x, (s.cz or s.z) - s.z\n                    local length = math.sqrt(dx * dx + dz * dz)\n                    uuids[#uuids + 1] = drawer:addTimedRect(timeout, s.x, s.y, s.z, length, spec.line, math.atan2(dx, dz))\n                    if countdown then\n                        -- Lines of 5y or more get a countdown at each end (the camera may only show one); shorter ones one centred.\n                        if s.countdownA == nil then\n                            if length >= 5 then\n                                s.countdownA = s\n                                s.countdownB = { x = s.cx, y = s.y, z = s.cz }\n                            else\n                                s.countdownA = { x = s.x + dx / 2, y = s.y, z = s.z + dz / 2 }\n                            end\n                        end\n                        AnyoneCore.addWorldTextCountdown(delay, s.countdownA, 0xFFFFFFFF, true, 1)\n                        if s.countdownB then\n                            AnyoneCore.addWorldTextCountdown(delay, s.countdownB, 0xFFFFFFFF, true, 1)\n                        end\n                    end\n                else\n                    if spec.circle then\n                        uuids[#uuids + 1] = drawer:addTimedCircle(timeout, s.x, s.y, s.z, spec.circle)\n                    else\n                        uuids[#uuids + 1] = drawer:addTimedCenteredRect(timeout, s.x, s.y, s.z, spec.length, spec.width, s.h)\n                    end\n                    if countdown then\n                        AnyoneCore.addWorldTextCountdown(delay, s, 0xFFFFFFFF, true, 1)\n                    end\n                end\n            end\n        end\n    end\n\n    volley.hits[#volley.hits + 1] = hit\n    volley.keys[#volley.keys + 1] = key\nend\n\nself.used = true\n",
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
						actionLua = "local face = ljBlundervilleMarchFace\nif face == nil or face.version ~= 7 then\n    -- Facing offset per order; left of facing = +pi/2 (Right Face turned the player -pi/2 before marching).\n    face = { version = 7, offset = { [3698] = 0, [3699] = math.pi, [3700] = -math.pi / 2, [3701] = math.pi / 2 } }\n    ljBlundervilleMarchFace = face\nend\n\nlocal player = TensorCore.mGetPlayer()\nlocal forward = math.pi -- north (-z), fixed\nfor id, offset in pairs(face.offset) do\n    if TensorCore.getBuff(player, id) then\n        local heading = forward + offset\n        local p = player.pos\n        player:SetFacing(p.x + math.sin(heading) * 10, p.y, p.z + math.cos(heading) * 10)\n        break\n    end\nend\n\nself.used = true",
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
						name = "Face - North",
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
						buffDuration = 0.5,
						buffIDList = 
						{
							3698,
							3699,
							3700,
							3701,
						},
						category = "Self",
						comparator = 2,
						name = "Order <= 0.5s",
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
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "-- Stage 1: 34775 pendulum rows (3 cells each at x 0.5/3.5/6.5, mirrored on alternate rows). A sweep crosses the row in\n-- ~0.4s, rests, then sweeps back starting from the cell it ended on: 2041 of 2044 logged sweeps, median rest 1.78s\n-- (p5 1.72, p95 1.84). The rest is the safe window, so on each sweep's last hit draw the row only for the last 0.8s\n-- before it comes back. Event: OnEntityCast (34775).\nlocal state = data.ljBlunderville\nif state == nil then\n    state = { groups = {}, lanes = {} }\n    data.ljBlunderville = state\nend\nlocal rows = state.pendulums\nif rows == nil then\n    rows = {}\n    state.pendulums = rows\nend\n\nlocal ent = TensorCore.mGetEntity(eventArgs.entityID)\nif ent then\n    local p = ent.pos\n    local key = math.floor(p.z + 0.5)\n    local row = rows[key]\n    if row == nil then\n        row = {}\n        rows[key] = row\n    end\n    local now = Now()\n    local middle = math.abs(math.abs(p.x) - 3.5) < 0.6\n    if middle then\n        row.middleT = now\n    elseif row.middleT and now - row.middleT < 450 then\n        -- This end cell finished a sweep; the return sweep starts here in ~1.78s.\n        row.middleT = nil\n        local cx = p.x > 0 and 3.5 or -3.5\n        TensorCore.getMoogleDrawer():addTimedCenteredRect(1250, cx, p.y, p.z, 9, 3, eventArgs.heading, 980)\n    end\nend\n\nself.used = true\n",
						conditions = 
						{
							
							{
								"4ed1ddc5-1845-b8b0-93b5-3999a0260afc",
								true,
							},
							
							{
								"acfb6405-8797-e442-b8bc-5e1ad5ff15cf",
								true,
							},
						},
						name = "Draw - Return Sweep",
						uuid = "736e3748-ed08-cd04-be82-f220ebe81daf",
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
						uuid = "4ed1ddc5-1845-b8b0-93b5-3999a0260afc",
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
						uuid = "acfb6405-8797-e442-b8bc-5e1ad5ff15cf",
						version = 3,
					},
				},
			},
			displayPath = "Stage 1",
			eventType = 2,
			name = "S1 - Pendulum Return Sweep",
			uuid = "7cc57114-03e5-87cb-97bd-dd3b63079f59",
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
						actionLua = "-- Stage 2 (three-obstacle variant): the player's aura names the obstacle to run (1887 west, 1888 east,\n-- 1889 south; from 2026-10-07 logs). Point a green arrow from the arena centre toward it until the aura\n-- changes again, and record the obstacle for S2 - Route Overlay (cleared when the aura goes: run finished or\n-- failed). Event: OnAuraChange (self only).\nlocal arrow = ljBlundervilleObstacleArrow\nif arrow == nil or arrow.version ~= 1 then\n    arrow = {\n        version = 1,\n        centre = { x = -200, y = 3.02, z = 252 },\n        ends = { [1887] = { x = -238, z = 275 }, [1888] = { x = -161, z = 273 }, [1889] = { x = -198, z = 207 } },\n    }\n    ljBlundervilleObstacleArrow = arrow\nend\n\nlocal state = data.ljBlunderville\nif state == nil then\n    state = { groups = {}, lanes = {} }\n    data.ljBlunderville = state\nend\n\nif state.obstacleArrow then\n    Argus.deleteTimedShape(state.obstacleArrow)\n    state.obstacleArrow = nil\nend\n\nlocal target = arrow.ends[eventArgs.newActiveAura1]\nstate.obstacle = target and eventArgs.newActiveAura1 or nil\nif target then\n    -- Marks this round as the aura stage for Next Impact's green lanes.\n    state.auraStage = true\n    local c = arrow.centre\n    local heading = TensorCore.getHeadingToTarget(c, target)\n    local drawer = TensorCore.getCachedDrawer(0xFF00FF00, 0xFF00DD00, 0xFF00BB00, 0xFFFFFFFF, 2)\n    state.obstacleArrow = drawer:addTimedArrow(60000, c.x, c.y, c.z, heading, 5, 1, 3, 3, 0, false)\nend\n\nself.used = true\n",
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
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "-- Round 2 route: record when each repeating hazard fires, with the geometry the overlay needs, keyed by spell and\n-- position (identical every round). Pushers (34716) are also keyed by heading, and the sliding pillars (34774,\n-- 35409) by both ends of the line they cover (caster = end, cast position = start). Each key fires on a fixed period\n-- (3.0-9.9s); the period is learned from consecutive hits and kept in ljBlundervilleLearned.periods with stage 3's.\n-- Event: OnEntityCast (34774, 34799, 34716, 34800, 34805, 34797, 34798, 35409).\nlocal state = data.ljBlunderville\nif state == nil then\n    state = { groups = {}, lanes = {} }\n    data.ljBlunderville = state\nend\nlocal seen = state.route2Seen\nif seen == nil then\n    seen = { list = {} }\n    state.route2Seen = seen\nend\n\nlocal ent = TensorCore.mGetEntity(eventArgs.entityID)\nif ent then\n    local p = ent.pos\n    local spell = eventArgs.spellID\n    local x, z = math.floor(p.x * 2 + 0.5), math.floor(p.z * 2 + 0.5)\n    local key\n    if spell == 34774 or spell == 35409 then\n        key = string.format(\"%d:%d:%d:%d:%d\", spell, x, z, math.floor(eventArgs.castPosX * 2 + 0.5), math.floor(eventArgs.castPosZ * 2 + 0.5))\n    elseif spell == 34716 then\n        key = string.format(\"%d:%d:%d:%d\", spell, x, z, math.floor(p.h * 2 + 0.5))\n    else\n        key = string.format(\"%d:%d:%d\", spell, x, z)\n    end\n    local now = Now()\n    local s = seen[key]\n    if s == nil then\n        s = { key = key, spell = spell, x = p.x, z = p.z, h = p.h, cx = eventArgs.castPosX, cz = eventArgs.castPosZ }\n        seen[key] = s\n        seen.list[#seen.list + 1] = s\n    elseif s.last then\n        local gap = now - s.last\n        if gap >= 1000 and gap <= 15000 then\n            -- A missed hit only lengthens a gap, so the shortest plausible gap is the period.\n            if s.period == nil or gap < s.period - 300 then\n                s.period = gap\n            elseif math.abs(gap - s.period) < 300 then\n                s.period = s.period + (gap - s.period) * 0.25\n            end\n            local known = ljBlundervilleLearned\n            if known and known.periods then\n                local saved = known.periods[key]\n                if saved == nil or gap < saved - 300 then\n                    known.periods[key] = gap\n                    known.dirty = true\n                elseif math.abs(gap - saved) < 300 then\n                    known.periods[key] = saved + (gap - saved) * 0.25\n                end\n            end\n        end\n    end\n    s.last = now\nend\n\nself.used = true\n",
						conditions = 
						{
							
							{
								"e73578b6-4835-ba25-a910-05f9eed5cae8",
								true,
							},
							
							{
								"4a51b8d0-aff0-1424-8e53-4a627c18eefe",
								true,
							},
						},
						name = "Record Hazard Timing",
						uuid = "3b03de6a-2181-8f26-9472-179afbb50284",
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
						name = "Round 2 Hazards",
						spellIDList = 
						{
							34774,
							34799,
							34716,
							34800,
							34805,
							34797,
							34798,
							35409,
						},
						uuid = "e73578b6-4835-ba25-a910-05f9eed5cae8",
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
						uuid = "4a51b8d0-aff0-1424-8e53-4a627c18eefe",
						version = 3,
					},
				},
			},
			displayPath = "Stage 2",
			eventType = 2,
			name = "S2 - Route Observe",
			uuid = "e1d77438-51bd-5ebd-bf20-2806ecab6f10",
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
						actionLua = "-- Round 2 route: some hazards telegraph their hit (arena: 34805 circles 2.7s ahead, 34797/34798 hammer half-circles\n-- and 35409 pillar lines 1.2s; south obstacle: 34800 Typhoon 3.2s), so record when it will land; the route then knows\n-- each hit before its first cast.\n-- Hit = telegraph + duration + 280 ms (timed rounds). Keys match S2 - Route Observe: a 35409 pillar slides from the\n-- telegraph point back along the heading and casts from the far end. Event: OnAOECreate.\nlocal state = data.ljBlunderville\nif state == nil then\n    state = { groups = {}, lanes = {} }\n    data.ljBlunderville = state\nend\nlocal seen = state.route2Seen\nif seen == nil then\n    seen = { list = {} }\n    state.route2Seen = seen\nend\n\nlocal spell = eventArgs.aoeID\nlocal x, z, cx, cz = eventArgs.x, eventArgs.z, 0, 0\nlocal key\nif spell == 35409 then\n    cx, cz = x, z\n    x, z = x - eventArgs.aoeLength * math.sin(eventArgs.heading), z - eventArgs.aoeLength * math.cos(eventArgs.heading)\n    key = string.format(\"%d:%d:%d:%d:%d\", spell, math.floor(x * 2 + 0.5), math.floor(z * 2 + 0.5), math.floor(cx * 2 + 0.5), math.floor(cz * 2 + 0.5))\nelse\n    key = string.format(\"%d:%d:%d\", spell, math.floor(x * 2 + 0.5), math.floor(z * 2 + 0.5))\nend\nlocal s = seen[key]\nif s == nil then\n    s = { key = key, spell = spell, x = x, z = z, h = eventArgs.heading, cx = cx, cz = cz }\n    seen[key] = s\n    seen.list[#seen.list + 1] = s\nend\ns.next = Now() + eventArgs.duration * 1000 + 280\n\nself.used = true\n",
						conditions = 
						{
							
							{
								"dbd533f7-c9da-db2e-9ee9-ffae9f9b07cc",
								true,
							},
							
							{
								"ba2e6390-6808-77f9-b69d-18cd97692baa",
								true,
							},
						},
						name = "Record Telegraphed Hit",
						uuid = "bce3a4ee-e4dc-5d9c-a2ab-633161c89056",
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
						uuid = "ba2e6390-6808-77f9-b69d-18cd97692baa",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local id = eventArgs.aoeID\nreturn id == 34800 or id == 34805 or id == 34797 or id == 34798 or id == 35409",
						dequeueIfLuaFalse = true,
						name = "Telegraphed Hazard",
						uuid = "dbd533f7-c9da-db2e-9ee9-ffae9f9b07cc",
						version = 3,
					},
				},
			},
			displayPath = "Stage 2",
			eventType = 18,
			name = "S2 - Route Telegraphs",
			uuid = "967cae57-b027-5056-84d0-22f38936e054",
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
						actionLua = "-- Round 2 route overlay, for the three-obstacle aura stage and the arena loop. Plans the fastest safe way along your\n-- course from the predicted hazard timings and draws it like stage 3: green = run this now, amber ring with \"WAIT x.x\"\n-- = stop here until the timer ends, faint white = the rest of the route.\n-- Aura stage: only your obstacle (aura 1887 west, 1888 east, 1889 south, stored by S2 - Obstacle Arrow), from the\n-- centre to its end. Arena: 50 degrees ahead around the loop, counterclockwise as everyone runs it.\n-- Courses are 0.5y lattices of the walkway (\"#\" = walkable) measured from 43 aura-stage and 39 arena rounds of your\n-- own movement; obstacles are laid out along their spoke (rows = yalms from the centre), the arena in polar form\n-- (rows = 2 degree steps counterclockwise from +x, columns = radius). Hazard timings come from S2 - Route Observe.\n-- Event: OnFrame.\nlocal route = ljBlundervilleRoute2\nif route == nil or route.version ~= 2 then\n    route = {\n        version = 2,\n        speed = 6 / 1000,       -- yalms per ms\n        tightMargin = 120,      -- fallback margin when cornered (each course sets its normal margin)\n        pad = 1.0,              -- yalms added around every hazard\n        maxWait = 7000,\n        replanEvery = 150,\n        step = 0.5,\n        arenaCentre = { x = 200, z = -125 },\n        -- lag = ms after the cast that the hit lands. Stuns arrive 440-690 ms after a sliding pillar's cast and 125-250 ms\n        -- after everything else's, which is ~190 ms of stun-event latency on top of a ~310 ms pillar slide.\n        shapes = {\n            [34774] = { line = 1.5, lag = 400 }, [35409] = { line = 1.5, lag = 400 },\n            [34799] = { length = 4, width = 4, lag = 100 }, [34716] = { length = 3, width = 2, lag = 100 },\n            [34805] = { r = 6, lag = 100 }, [34797] = { cone = 8, inward = true, lag = 100 }, [34798] = { cone = 8, lag = 100 },\n            -- Typhoon (south obstacle) does not stun: 750-1000 ms after its cast it blows everyone in its 31x12 area along\n            -- its heading until a wall or 12.6y past the caster (z 224.6), so the route never stands where it would move\n            -- you over 1y (only the crossbar centre at z 220.6 is sheltered). delay = danger start relative to the cast:\n            -- from 500 ms before it, so a late start down the lane still finishes in time (sim: 11 knockbacks in 132\n            -- lagged runs, against 70 for a route blind to it).\n            [34800] = { push = 12.6, length = 31, width = 12, delay = -500, lag = 1000 },\n        },\n        dr = { 0, 0, 1, -1, 1, -1, 1, -1, 2, -2, 2, -2, 1, -1, 1, -1 },\n        dc = { 1, -1, 0, 0, 1, 1, -1, -1, 1, 1, -1, -1, 2, 2, -2, -2 },\n        geom = {},\n        courses = {\n            -- West obstacle: rows run from 4y behind the centre (-200,252) out along heading -60 degrees; columns from 7y left to 7y right.\n            [1887] = {\n                heading = -math.pi / 3, x = -200, z = 252, u0 = -4, v0 = -7, ahead = 104, back = 8, maxRun = 1000, margin = 350,\n                heights = { 0, 5.7, 2, 5.5, 16, 5.7, 18, 5.9, 20, 6.0, 103, 6.0 },\n                rows = {\n                    \"..............####...........\",\n                    \"..............####...........\",\n                    \"..............####...........\",\n                    \"..............####...........\",\n                    \"..............#####..........\",\n                    \"..............#####..........\",\n                    \".............#########.......\",\n                    \"...........###########.......\",\n                    \".........##########..#.......\",\n                    \".........##########..#.......\",\n                    \"........##############.......\",\n                    \".......###############.......\",\n                    \"......################.......\",\n                    \".......###############.......\",\n                    \"........###############......\",\n                    \".........##########..#.......\",\n                    \".........##########..#.......\",\n                    \"...........########..#.......\",\n                    \"............#######..#.......\",\n                    \"............##########.......\",\n                    \"...........###########.......\",\n                    \"...........###########.......\",\n                    \"..........############.......\",\n                    \".......###############.......\",\n                    \".......###############.......\",\n                    \"......#################......\",\n                    \"......##################.....\",\n                    \".......#################.....\",\n                    \".......#################.....\",\n                    \".......#################.....\",\n                    \".......#################.....\",\n                    \"......##################.....\",\n                    \"......##################.....\",\n                    \"......##################.....\",\n                    \"......##################.....\",\n                    \"......##################.....\",\n                    \"......##################.....\",\n                    \"......#################......\",\n                    \"......############..###......\",\n                    \"......############..###......\",\n                    \"......#################......\",\n                    \".......################......\",\n                    \".......################......\",\n                    \".......################......\",\n                    \".......################......\",\n                    \"........################.....\",\n                    \".........###############.....\",\n                    \".........###############.....\",\n                    \".........###############.....\",\n                    \".........###############.....\",\n                    \"......##################.....\",\n                    \"....####################.....\",\n                    \"....#####..############......\",\n                    \"....#####..############......\",\n                    \".....##################......\",\n                    \"......#################......\",\n                    \"......################.......\",\n                    \".....#################.......\",\n                    \".....################........\",\n                    \".....################........\",\n                    \".....################........\",\n                    \".....################........\",\n                    \"......###..##########........\",\n                    \"......###..##########........\",\n                    \"......###..###########.......\",\n                    \"......################.......\",\n                    \".......###############.......\",\n                    \".......##...##########.......\",\n                    \".......##...#####..###.......\",\n                    \".......##...#####..###.......\",\n                    \".......##...#####..###.......\",\n                    \".......##...#####...##.......\",\n                    \".......###..#####...##.......\",\n                    \".......###..#####...##.......\",\n                    \".......###..#####...##.......\",\n                    \".......##########...##.......\",\n                    \"........##..##########.......\",\n                    \"........##..##########.......\",\n                    \"........#...##########.......\",\n                    \"............##########.......\",\n                    \"............##########.......\",\n                    \"............##########.......\",\n                    \"............#########........\",\n                    \"............#########........\",\n                    \".........#..#########........\",\n                    \".........#..#########........\",\n                    \"..........###########........\",\n                    \"..........###########........\",\n                    \"..........###########........\",\n                    \"..........###########........\",\n                    \"..........###########........\",\n                    \"..........##########.........\",\n                    \"..........##########.........\",\n                    \"...........#########.........\",\n                    \"...........#########.........\",\n                    \"...........#########.........\",\n                    \"...........#########.........\",\n                    \"...........#########.........\",\n                    \"...........#########.........\",\n                    \"...........###########.......\",\n                    \"...........##########........\",\n                    \"...........##########........\",\n                    \"...........##########........\",\n                    \".............##..............\",\n                    \".............................\",\n                },\n            },\n            -- East obstacle: heading +60 degrees.\n            [1888] = {\n                heading = math.pi / 3, x = -200, z = 252, u0 = -4, v0 = -7, ahead = 104, back = 8, maxRun = 1000, margin = 350,\n                heights = { 1, 5.5, 16, 5.7, 18, 5.9, 20, 6.0, 104, 6.0 },\n                rows = {\n                    \".............................\",\n                    \".............................\",\n                    \"..............#..............\",\n                    \"............###..............\",\n                    \"............###..#...........\",\n                    \"............######..##.......\",\n                    \"............#########........\",\n                    \"............########.........\",\n                    \"..........##########.........\",\n                    \"........############.........\",\n                    \".......############..........\",\n                    \"........###########..........\",\n                    \"........###########..........\",\n                    \".......#############.........\",\n                    \"......#############..........\",\n                    \"........##########...........\",\n                    \"........##########...........\",\n                    \"..........#########..........\",\n                    \"..........########...........\",\n                    \"............######...........\",\n                    \"............#######..........\",\n                    \"............#######..........\",\n                    \"............#######..........\",\n                    \"............#######..........\",\n                    \"............#######..........\",\n                    \"...........########..........\",\n                    \"...........########..........\",\n                    \"...........########..........\",\n                    \"...........#########.........\",\n                    \"..........##########.........\",\n                    \"..........##########.........\",\n                    \"..........#########..........\",\n                    \"..........#########..........\",\n                    \"..........##########.........\",\n                    \"..........##########.........\",\n                    \"..........##########.........\",\n                    \"..........#########..........\",\n                    \".........##########..........\",\n                    \".........###########.........\",\n                    \"........############.........\",\n                    \".......##############........\",\n                    \".....##..############........\",\n                    \".....##.#############........\",\n                    \".....###..#########..#.......\",\n                    \".....##...#########..#.......\",\n                    \".....##...#########..........\",\n                    \"....##....#########..........\",\n                    \"....##....#########..........\",\n                    \"....###...#########..........\",\n                    \"......#############..........\",\n                    \".........############........\",\n                    \".....#...##########..........\",\n                    \".....#############...........\",\n                    \"....##############...........\",\n                    \"....####..#########..........\",\n                    \".....###..#########..........\",\n                    \"......##..#########..........\",\n                    \"......##..#########..........\",\n                    \".....#############...........\",\n                    \".....#############...........\",\n                    \".....#############...........\",\n                    \".....##..#########...........\",\n                    \".....##...########...........\",\n                    \".....##...########...........\",\n                    \".....##...########...........\",\n                    \".....##....#######...........\",\n                    \"......#....#######...........\",\n                    \"......#...########...........\",\n                    \"......#...########...........\",\n                    \"......#...#########..........\",\n                    \"......#....########..........\",\n                    \".......#...#########.........\",\n                    \".......#..##########.........\",\n                    \"........############.........\",\n                    \"........###########..........\",\n                    \"..........#########..........\",\n                    \"..........##########.........\",\n                    \"..........##########.........\",\n                    \"..........##########.........\",\n                    \"..........#########..........\",\n                    \"..........#########..........\",\n                    \"..........#########..........\",\n                    \"..........#########..........\",\n                    \"..........#########..........\",\n                    \"..........#########..........\",\n                    \"..........#########..........\",\n                    \"..........#########..........\",\n                    \"..........#########..........\",\n                    \"..........#########..........\",\n                    \"..........#########..........\",\n                    \"..........#########..........\",\n                    \"..........#########..........\",\n                    \"..........#########..........\",\n                    \"..........#########..........\",\n                    \"..........#########..........\",\n                    \"..........##########.........\",\n                    \"..........##########.........\",\n                    \"..........##########.........\",\n                    \"..........##########.........\",\n                    \"..........############.......\",\n                    \"...........###########.......\",\n                    \"............##########.......\",\n                    \".............#####...........\",\n                    \".............###.#...........\",\n                    \"..............##.............\",\n                },\n            },\n            -- South obstacle: heading 180 degrees.\n            [1889] = {\n                heading = math.pi, x = -200, z = 252, u0 = -4, v0 = -7, ahead = 104, back = 8, maxRun = 1000, margin = 350,\n                heights = { 0, 5.7, 2, 5.5, 17, 5.8, 19, 6.0, 104, 6.0 },\n                rows = {\n                    \"..............#..............\",\n                    \".............##..............\",\n                    \".............##..............\",\n                    \".............##..............\",\n                    \".............###.............\",\n                    \".............###........#....\",\n                    \".............####....#..#....\",\n                    \"..........#..#########..#....\",\n                    \"..........###############....\",\n                    \"........################.....\",\n                    \"......##################.....\",\n                    \"......##################.....\",\n                    \"......##################.....\",\n                    \"......##################.....\",\n                    \"........#..#############.....\",\n                    \"........#..#########..##.....\",\n                    \"........#..########....#.....\",\n                    \".........##########....#.....\",\n                    \"..........#########....#.....\",\n                    \"...........########....#.....\",\n                    \"...........#########...#.....\",\n                    \"...........#########...#.....\",\n                    \"...........##########..#.....\",\n                    \".........############..#.....\",\n                    \".......###..#########..#.....\",\n                    \".......#....############.....\",\n                    \".......#....############.....\",\n                    \".......#....############.....\",\n                    \".......##...############.....\",\n                    \"........##..######..####.....\",\n                    \"..........########..####.....\",\n                    \"...........########..####....\",\n                    \"...........########..####....\",\n                    \"...........########...###....\",\n                    \"...........#######....###....\",\n                    \"............######....###....\",\n                    \"............#############....\",\n                    \"............#############....\",\n                    \"............#######...###....\",\n                    \"............######....##.....\",\n                    \"............######.....#.....\",\n                    \"............######.....#.....\",\n                    \"...........########....#.....\",\n                    \"...........########....##....\",\n                    \"...........########....##....\",\n                    \"...........########....##....\",\n                    \"...........########....##....\",\n                    \"...........########....##....\",\n                    \"...........########....#.....\",\n                    \"..........#########....#.....\",\n                    \"..........#########...##.....\",\n                    \"........################.....\",\n                    \"........################.....\",\n                    \"........###############......\",\n                    \"..........############.......\",\n                    \"..........##########.........\",\n                    \"..........##########.........\",\n                    \".........#####..####.........\",\n                    \".........#####...##..........\",\n                    \".........####....##..........\",\n                    \".........####....##..........\",\n                    \".........####....###.........\",\n                    \"........####.....###.........\",\n                    \".....#######.....######......\",\n                    \".....########....######......\",\n                    \"......#######....######......\",\n                    \"......#######....######......\",\n                    \".....########...#######......\",\n                    \".....########...#######......\",\n                    \"......#######..########......\",\n                    \"......#################......\",\n                    \".....##################......\",\n                    \".....######.......#####......\",\n                    \"....######.........####......\",\n                    \"....#####..........####......\",\n                    \"....#####..........####......\",\n                    \"....#####..........####......\",\n                    \"....#####..........####......\",\n                    \"....#####..........####......\",\n                    \"....#####..........####......\",\n                    \".....####..........####......\",\n                    \".....####..........####......\",\n                    \".....####..........####......\",\n                    \".....#####..........###......\",\n                    \".....#####..........###......\",\n                    \".....#####..........###......\",\n                    \".....#####..........###......\",\n                    \".....#####..........###......\",\n                    \".....#####..........###......\",\n                    \".....#####..........###......\",\n                    \".....#####..........###......\",\n                    \".....#####..........###......\",\n                    \".....#####..........###......\",\n                    \".....######........####......\",\n                    \".....######........####......\",\n                    \".....######........####......\",\n                    \".....######........####......\",\n                    \".....######........####......\",\n                    \".....######........####......\",\n                    \".....######.......######.....\",\n                    \".....######......#######.....\",\n                    \"......#####.......#####......\",\n                    \".......########...#####......\",\n                    \".......#######...####........\",\n                    \"............##...............\",\n                },\n            },\n            -- Arena loop around (200,-125): rows are 2 degree steps counterclockwise from +x, columns radius 8y outwards.\n            arena = {\n                ring = true, x = 200, z = -125, v0 = 8, ahead = 25, back = 3, maxRun = 3, margin = 300,\n                heights = { 0, 10.0, 109, 10.4, 110, 10.8, 111, 11.2, 112, 11.3, 115, 10.8, 116, 10.4, 117, 10.1, 144, 10.5, 145, 11.1, 146, 11.4, 148, 11.0, 149, 10.7, 150, 10.5, 151, 10.7, 152, 11.0, 153, 11.3, 156, 10.0, 157, 10.4, 158, 10.0, 179, 10.0 },\n                rows = {\n                    \"................######....###................\",\n                    \"................######....###................\",\n                    \"................######....###................\",\n                    \"................#######...###................\",\n                    \"................#######...###................\",\n                    \"................#############................\",\n                    \"................#############................\",\n                    \"................#############................\",\n                    \"................##############...............\",\n                    \"................##############...............\",\n                    \"................##############...............\",\n                    \"................##############...............\",\n                    \"................##############...............\",\n                    \"................##############...............\",\n                    \"................##############...............\",\n                    \"................##############...............\",\n                    \"................##############...............\",\n                    \"................##############...............\",\n                    \"................##############...............\",\n                    \"................###############..............\",\n                    \"................###############..............\",\n                    \"................###############..............\",\n                    \"................################.............\",\n                    \"................###############..............\",\n                    \"................###############..............\",\n                    \"................###############..............\",\n                    \"................##############...............\",\n                    \"................##############...............\",\n                    \"................##############...............\",\n                    \"................##############...............\",\n                    \"................#############................\",\n                    \"................#############................\",\n                    \"................############.................\",\n                    \"................############.................\",\n                    \"................############.................\",\n                    \"................############.................\",\n                    \"................############.................\",\n                    \"................############.................\",\n                    \"................############.................\",\n                    \"................############.................\",\n                    \"................############.................\",\n                    \"................############.................\",\n                    \"................###########..................\",\n                    \"................###########..................\",\n                    \"................###########..................\",\n                    \"................###########..................\",\n                    \"................##########...................\",\n                    \"................##########...................\",\n                    \"................###########..................\",\n                    \"................############.................\",\n                    \"................############.................\",\n                    \"................#############................\",\n                    \"................#############................\",\n                    \"................##############...............\",\n                    \"................##############...............\",\n                    \"................##############...............\",\n                    \".................#############...............\",\n                    \".................#############...............\",\n                    \".................#############...............\",\n                    \".................#############...............\",\n                    \".................#############...............\",\n                    \".................#############...............\",\n                    \".................#############...............\",\n                    \".................#############...............\",\n                    \".................##############..............\",\n                    \".................##############..............\",\n                    \".................##############..............\",\n                    \".................##############..............\",\n                    \".................##############..............\",\n                    \".................##############..............\",\n                    \".................##############..............\",\n                    \".................##############..............\",\n                    \".................#############...............\",\n                    \".................#############...............\",\n                    \".................#############...............\",\n                    \".................#############...............\",\n                    \".................#############...............\",\n                    \".................#############...............\",\n                    \".................#############...............\",\n                    \".................##############..............\",\n                    \".................##############..............\",\n                    \".................##############..............\",\n                    \".................##############..............\",\n                    \".................##############..............\",\n                    \".................#############...............\",\n                    \".................############................\",\n                    \".................############................\",\n                    \".................#######..###................\",\n                    \".................######...###................\",\n                    \".................######...###................\",\n                    \".................######...#########..........\",\n                    \".................#######..###................\",\n                    \".................############................\",\n                    \".................############................\",\n                    \".................############................\",\n                    \"................##############...............\",\n                    \"................#############................\",\n                    \"..............###############................\",\n                    \"................#############................\",\n                    \"................#############................\",\n                    \"................#############................\",\n                    \"................#############................\",\n                    \"...............###########.###...............\",\n                    \"...............##########..##................\",\n                    \"...............############..................\",\n                    \"...............###########...................\",\n                    \"...............########......................\",\n                    \"...............########......................\",\n                    \"...............#######.......................\",\n                    \"................######.......................\",\n                    \"................#####........................\",\n                    \"................#####........................\",\n                    \"................#####........................\",\n                    \".................####........................\",\n                    \".................####........................\",\n                    \".................#####.......................\",\n                    \"..................####.......................\",\n                    \"..................####.......................\",\n                    \"...................####......................\",\n                    \"....................####.....................\",\n                    \"......................####...................\",\n                    \"........................####.................\",\n                    \"..........................####...............\",\n                    \"............................####.............\",\n                    \"..............................#####..........\",\n                    \".................................#####.......\",\n                    \"....................................#########\",\n                    \"....................................###...###\",\n                    \"....................................###......\",\n                    \".....................................##......\",\n                    \".....................................###.....\",\n                    \".....................................####....\",\n                    \".....................................##......\",\n                    \".....................................##......\",\n                    \"......................................#......\",\n                    \"......................................##.....\",\n                    \"......................................##.....\",\n                    \"....................................####.....\",\n                    \"..................................####.......\",\n                    \".................................###.........\",\n                    \"...............................###...........\",\n                    \"..............................###............\",\n                    \".............................###.............\",\n                    \"............................###..............\",\n                    \"...........................###...............\",\n                    \"...........................##................\",\n                    \"..........................##.................\",\n                    \".........................###.................\",\n                    \".........................##..................\",\n                    \"........................###..................\",\n                    \"........................##...................\",\n                    \".......................###...................\",\n                    \".......................##....................\",\n                    \"......................###....................\",\n                    \"......................###....................\",\n                    \".....................###.....................\",\n                    \".....................###.....................\",\n                    \".....................###.....................\",\n                    \"....................####.....................\",\n                    \"................#########....................\",\n                    \"................#########....................\",\n                    \"................###############..............\",\n                    \"................##############...............\",\n                    \"................##############...............\",\n                    \"................##############...............\",\n                    \"................##############...............\",\n                    \"................###############..............\",\n                    \"................###############..............\",\n                    \"................###############..............\",\n                    \"................###############..............\",\n                    \".................#############...............\",\n                    \".................#############...............\",\n                    \"................########..####...............\",\n                    \"................########..####...............\",\n                    \"................##############...............\",\n                    \"................#########..###...............\",\n                    \"................########...##................\",\n                    \"................########...##................\",\n                    \"................######..#####................\",\n                    \"................######....###................\",\n                },\n            },\n        },\n        startNode = {}, startT = {},\n        pathNode = {}, planX = {}, planZ = {}, planY = {}, planArr = {}, planDep = {}, planN = 0, planAt = 0,\n        heapT = {}, heapN = {},\n        go = TensorCore.getCachedDrawer(nil, nil, 0xB000FF00, 0xFF00FF00, 1.5),\n        rest = TensorCore.getCachedDrawer(nil, nil, 0x40FFFFFF, 0x80FFFFFF, 1),\n        hold = TensorCore.getCachedDrawer(nil, nil, 0x5000A5FF, 0xFF00A5FF, 2.5),\n    }\n    local step = route.step\n\n    -- Lattice position (fractional row, column) of a world point.\n    local function toLattice(course, x, z)\n        if course.ring then\n            local dx, dz = x - course.x, z - course.z\n            local a = math.atan2(dz, dx)\n            if a < 0 then\n                a = a + 2 * math.pi\n            end\n            return a / course.dA, (math.sqrt(dx * dx + dz * dz) - course.v0) / step\n        end\n        local rx, rz = x - course.x, z - course.z\n        return (rx * course.sin + rz * course.cos - course.u0) / step, (rx * course.cos - rz * course.sin - course.v0) / step\n    end\n\n    local function cell(course, r, c)\n        r, c = math.floor(r + 0.5), math.floor(c + 0.5)\n        if c < 0 or c >= course.cols then\n            return nil\n        end\n        if course.ring then\n            r = r % course.nRows\n        elseif r < 0 or r >= course.nRows then\n            return nil\n        end\n        local i = r * course.cols + c + 1\n        if course.walk[i] then\n            return i\n        end\n        return nil\n    end\n\n    local function heightAt(list, r)\n        if r <= list[1] then\n            return list[2]\n        end\n        for q = 3, #list, 2 do\n            if r <= list[q] then\n                return list[q - 1] + (r - list[q - 2]) / (list[q] - list[q - 2]) * (list[q + 1] - list[q - 1])\n            end\n        end\n        return list[#list]\n    end\n\n    -- Nodes, heights and the moves between them; built the first time the course is used.\n    function route.build(course)\n        local rows, cols = course.rows, #course.rows[1]\n        course.nRows, course.cols = #rows, cols\n        course.walk, course.nx, course.nz, course.ny, course.row = {}, {}, {}, {}, {}\n        course.edge, course.edgeT, course.edgeHaz, course.nodeHaz = {}, {}, {}, {}\n        course.inst, course.actGen, course.actLast, course.actPeriod, course.actLag, course.actDelay, course.actPush = {}, {}, {}, {}, {}, {}, {}\n        course.best, course.prev, course.via, course.dep, course.stamp, course.startGen = {}, {}, {}, {}, {}, {}\n        course.gen, course.sgen, course.nInst = 0, 0, 0\n        if course.ring then\n            course.dA = 2 * math.pi / #rows\n        else\n            course.sin, course.cos = math.sin(course.heading), math.cos(course.heading)\n        end\n        course.lastRow = 0\n        for r = 0, #rows - 1 do\n            local line = rows[r + 1]\n            for c = 0, cols - 1 do\n                local i = r * cols + c + 1\n                if line:sub(c + 1, c + 1) == \"#\" then\n                    course.walk[i] = true\n                    course.row[i] = r\n                    course.lastRow = r\n                    local v = course.v0 + c * step\n                    if course.ring then\n                        local a = r * course.dA\n                        course.nx[i], course.nz[i] = course.x + v * math.cos(a), course.z + v * math.sin(a)\n                    else\n                        local u = course.u0 + r * step\n                        course.nx[i] = course.x + u * course.sin + v * course.cos\n                        course.nz[i] = course.z + u * course.cos - v * course.sin\n                    end\n                    course.ny[i] = heightAt(course.heights, r)\n                end\n            end\n        end\n        for i in pairs(course.walk) do\n            local r, c = course.row[i], (i - 1) % cols\n            for k = 1, 16 do\n                local j = cell(course, r + route.dr[k], c + route.dc[k])\n                if j then\n                    for f = 0.25, 0.75, 0.25 do\n                        if cell(course, r + route.dr[k] * f, c + route.dc[k] * f) == nil then\n                            j = nil\n                            break\n                        end\n                    end\n                end\n                if j then\n                    local e = (i - 1) * 16 + k\n                    course.edge[e] = j\n                    local dx, dz = course.nx[j] - course.nx[i], course.nz[j] - course.nz[i]\n                    course.edgeT[e] = math.sqrt(dx * dx + dz * dz) / route.speed\n                end\n            end\n        end\n        course.built = true\n    end\n\n    -- World geometry of a recorded hazard (positions are fixed every round, so it is cached by key).\n    local function geometry(s)\n        local g = route.geom[s.key]\n        if g == nil then\n            local shape = route.shapes[s.spell]\n            g = { lag = shape.lag, delay = shape.delay or 0, push = shape.push }\n            if shape.line then\n                local dx, dz = s.cx - s.x, s.cz - s.z\n                local L = math.sqrt(dx * dx + dz * dz)\n                g.hx, g.hz, g.dx, g.dz = (s.x + s.cx) / 2, (s.z + s.cz) / 2, dx / L, dz / L\n                g.hl, g.hw = L / 2, shape.line\n            elseif shape.length then\n                g.hx, g.hz, g.dx, g.dz = s.x, s.z, math.sin(s.h), math.cos(s.h)\n                g.hl, g.hw = shape.length / 2, shape.width / 2\n            else\n                g.hx, g.hz, g.r = s.x, s.z, shape.r or shape.cone\n                if shape.cone then\n                    -- The hammers' cast heading is their own facing, not the half-circle's: 34797 faces the centre.\n                    local c = route.arenaCentre\n                    local dx, dz = c.x - s.x, c.z - s.z\n                    local L = math.sqrt(dx * dx + dz * dz)\n                    if not shape.inward then\n                        L = -L\n                    end\n                    g.dx, g.dz = dx / L, dz / L\n                end\n            end\n            g.reach = (g.r or (g.hl + g.hw)) + route.pad + 2.5\n            route.geom[s.key] = g\n        end\n        return g\n    end\n\n    -- Entry and exit distance of segment (x,z)+(ux,uz)*s, s in [0,len], through hazard g grown by pad; nil if it misses.\n    local function clip(x, z, ux, uz, len, g)\n        local pad = route.pad\n        local fx, fz = x - g.hx, z - g.hz\n        local sIn, sOut\n        if g.r then\n            local R = g.r + pad\n            local b = ux * fx + uz * fz\n            local disc = b * b - (fx * fx + fz * fz - R * R)\n            if disc < 0 then\n                return nil\n            end\n            disc = math.sqrt(disc)\n            sIn, sOut = -b - disc, -b + disc\n            if g.dx then\n                -- Half-circle: keep the side its heading faces.\n                local f0, fd = fx * g.dx + fz * g.dz + pad, ux * g.dx + uz * g.dz\n                if math.abs(fd) < 1e-9 then\n                    if f0 < 0 then\n                        return nil\n                    end\n                elseif fd > 0 then\n                    sIn = math.max(sIn, -f0 / fd)\n                else\n                    sOut = math.min(sOut, -f0 / fd)\n                end\n            end\n        else\n            sIn, sOut = -math.huge, math.huge\n            for axis = 1, 2 do\n                local p, u, H\n                if axis == 1 then\n                    p, u, H = fx * g.dx + fz * g.dz, ux * g.dx + uz * g.dz, g.hl + pad\n                else\n                    p, u, H = fx * g.dz - fz * g.dx, ux * g.dz - uz * g.dx, g.hw + pad\n                end\n                if math.abs(u) < 1e-9 then\n                    if p < -H or p > H then\n                        return nil\n                    end\n                else\n                    local a, b = (-H - p) / u, (H - p) / u\n                    if a > b then\n                        a, b = b, a\n                    end\n                    sIn, sOut = math.max(sIn, a), math.min(sOut, b)\n                end\n            end\n        end\n        sIn, sOut = math.max(sIn, 0), math.min(sOut, len)\n        if sIn > sOut then\n            return nil\n        end\n        return sIn, sOut\n    end\n\n    -- Walls for knockbacks: the enclosed holes in the walkway (unwalkable cells not connected to the lattice edge).\n    -- Other unwalked cells may just be floor nobody stood on (lanes look narrower than they are next to the central\n    -- block), so they do not stop a push; on live runs only the crossbar centre, behind such a hole, ever held.\n    local function findEnclosed(course)\n        local rows, cols = course.nRows, course.cols\n        local open, stack, n = {}, {}, 0\n        for r = 0, rows - 1 do\n            for c = 0, cols - 1 do\n                local i = r * cols + c + 1\n                if not course.walk[i] and (r == 0 or r == rows - 1 or c == 0 or c == cols - 1) then\n                    open[i] = true\n                    n = n + 1\n                    stack[n] = i\n                end\n            end\n        end\n        while n > 0 do\n            local i = stack[n]\n            n = n - 1\n            local r, c = math.floor((i - 1) / cols), (i - 1) % cols\n            for k = 1, 4 do\n                -- the first four moves are the straight neighbours\n                local r2, c2 = r + route.dr[k], c + route.dc[k]\n                if r2 >= 0 and r2 < rows and c2 >= 0 and c2 < cols then\n                    local j = r2 * cols + c2 + 1\n                    if not course.walk[j] and not open[j] then\n                        open[j] = true\n                        n = n + 1\n                        stack[n] = j\n                    end\n                end\n            end\n        end\n        course.enclosed = {}\n        for r = 0, rows - 1 do\n            for c = 0, cols - 1 do\n                local i = r * cols + c + 1\n                if not course.walk[i] and not open[i] then\n                    course.enclosed[i] = true\n                end\n            end\n        end\n    end\n\n    -- How far a knockback carries you from (x, z): along its heading until a wall or its stop line.\n    local function pushed(course, g, x, z)\n        if course.enclosed == nil then\n            findEnclosed(course)\n        end\n        local a = (x - g.hx) * g.dx + (z - g.hz) * g.dz\n        local d = 0\n        while a + d < g.push do\n            local step = math.min(0.25, g.push - a - d)\n            local r, c = toLattice(course, x + g.dx * (d + step), z + g.dz * (d + step))\n            r, c = math.floor(r + 0.5), math.floor(c + 0.5)\n            if r >= 0 and r < course.nRows and c >= 0 and c < course.cols and course.enclosed[r * course.cols + c + 1] then\n                break\n            end\n            d = d + step\n        end\n        return d\n    end\n\n    local function knockedBack(course, g, i)\n        local fx, fz = course.nx[i] - g.hx, course.nz[i] - g.hz\n        return math.abs(fx * g.dx + fz * g.dz) <= g.hl and math.abs(fx * g.dz - fz * g.dx) <= g.hw\n            and pushed(course, g, course.nx[i], course.nz[i]) > 1\n    end\n\n    -- Which nodes a hazard covers and where it cuts each nearby move on this course. A knockback covers the nodes\n    -- it would move you more than 1y from, and every move touching them.\n    local function register(course, s)\n        local g = geometry(s)\n        course.nInst = course.nInst + 1\n        local idx = course.nInst\n        course.inst[s.key] = idx\n        course.actLag[idx] = g.lag\n        course.actDelay[idx] = g.delay\n        course.actPush[idx] = g.push ~= nil\n        local reach2 = g.reach * g.reach\n        local moved\n        if g.push then\n            moved = {}\n            for i in pairs(course.walk) do\n                if (course.nx[i] - g.hx) ^ 2 + (course.nz[i] - g.hz) ^ 2 <= reach2 and knockedBack(course, g, i) then\n                    moved[i] = true\n                end\n            end\n        end\n        for i in pairs(course.walk) do\n            local x, z = course.nx[i], course.nz[i]\n            if (x - g.hx) ^ 2 + (z - g.hz) ^ 2 <= reach2 then\n                if (moved and moved[i]) or (moved == nil and clip(x, z, 1, 0, 0, g)) then\n                    local list = course.nodeHaz[i]\n                    if list == nil then\n                        list = {}\n                        course.nodeHaz[i] = list\n                    end\n                    list[#list + 1] = idx\n                end\n                for k = 1, 16 do\n                    local e = (i - 1) * 16 + k\n                    local j = course.edge[e]\n                    if j then\n                        local dx, dz = course.nx[j] - x, course.nz[j] - z\n                        local len = math.sqrt(dx * dx + dz * dz)\n                        local sIn, sOut\n                        if moved then\n                            if moved[i] or moved[j] then\n                                sIn, sOut = 0, len\n                            end\n                        else\n                            sIn, sOut = clip(x, z, dx / len, dz / len, len, g)\n                        end\n                        if sIn then\n                            local list = course.edgeHaz[e]\n                            if list == nil then\n                                list = {}\n                                course.edgeHaz[e] = list\n                            end\n                            list[#list + 1] = idx\n                            list[#list + 1] = sIn / route.speed\n                            list[#list + 1] = sOut / route.speed\n                        end\n                    end\n                end\n            end\n        end\n    end\n\n    route.m = route.tightMargin\n\n    -- Latest hit of hazard idx within [lo, hi] (ms), or nil. Knockbacks are skipped when cornered (route.soft): a\n    -- stun fails the run, a knockback only costs ground, so then the route runs for it.\n    local function activation(course, idx, lo, hi)\n        if course.actGen[idx] ~= course.gen or (route.soft and course.actPush[idx]) then\n            return nil\n        end\n        local a, P = course.actLast[idx], course.actPeriod[idx]\n        if P == nil then\n            if a >= lo and a <= hi then\n                return a\n            end\n            return nil\n        end\n        local th = a + math.floor((hi - a) / P) * P\n        if th >= lo then\n            return th\n        end\n        return nil\n    end\n\n    local function contains(list, idx)\n        if list then\n            for q = 1, #list do\n                if list[q] == idx then\n                    return true\n                end\n            end\n        end\n        return false\n    end\n\n    -- Earliest departure >= ta along edge e that no hazard catches, or nil. A hit at th is dangerous over\n    -- [th + delay - m, th + lag + m]. Hazards in ignore (those already covering the spot being escaped) are skipped.\n    local function depart(course, e, ta, ignore)\n        local list = course.edgeHaz[e]\n        if list == nil then\n            return ta\n        end\n        local m = route.m\n        local td = ta\n        for _ = 1, 12 do\n            local moved = false\n            for q = 1, #list, 3 do\n                local idx, tIn = list[q], list[q + 1]\n                local lag = course.actLag[idx]\n                local th = not contains(ignore, idx)\n                    and activation(course, idx, td + tIn - m - lag, td + list[q + 2] + m - course.actDelay[idx])\n                if th then\n                    td = th + lag + m - tIn + 1\n                    moved = true\n                end\n            end\n            if not moved then\n                return td\n            end\n            if td - ta > route.maxWait then\n                return nil\n            end\n        end\n        return nil\n    end\n\n    local function waitOk(course, i, ta, td)\n        local list = course.nodeHaz[i]\n        if list then\n            local m = route.m\n            for q = 1, #list do\n                local idx = list[q]\n                if activation(course, idx, ta - m - course.actLag[idx], td + m - course.actDelay[idx]) then\n                    return false\n                end\n            end\n        end\n        return true\n    end\n\n    local heapT, heapN = route.heapT, route.heapN\n    local heapSize = 0\n    local function push(t, n)\n        heapSize = heapSize + 1\n        local q = heapSize\n        while q > 1 do\n            local parent = math.floor(q / 2)\n            if heapT[parent] <= t then\n                break\n            end\n            heapT[q], heapN[q] = heapT[parent], heapN[parent]\n            q = parent\n        end\n        heapT[q], heapN[q] = t, n\n    end\n    local function pop()\n        local t, n = heapT[1], heapN[1]\n        local lastT, lastN = heapT[heapSize], heapN[heapSize]\n        heapSize = heapSize - 1\n        local q = 1\n        while true do\n            local child = q * 2\n            if child > heapSize then\n                break\n            end\n            if child < heapSize and heapT[child + 1] < heapT[child] then\n                child = child + 1\n            end\n            if heapT[child] >= lastT then\n                break\n            end\n            heapT[q], heapN[q] = heapT[child], heapN[child]\n            q = child\n        end\n        heapT[q], heapN[q] = lastT, lastN\n        return t, n\n    end\n\n    function route.plan(course, now, px, pz, seen, periods)\n        if not course.built then\n            route.build(course)\n        end\n        course.gen = course.gen + 1\n        local gen = course.gen\n        for _, s in ipairs(seen.list) do\n            if course.inst[s.key] == nil then\n                register(course, s)\n            end\n            local idx = course.inst[s.key]\n            -- A telegraphed hit still to come (S2 - Route Telegraphs) anchors the cycle better than the last cast.\n            local a = s.last\n            if s.next and (a == nil or s.next > a) then\n                a = s.next\n            end\n            if a and now - a < 30000 then\n                course.actGen[idx] = gen\n                course.actLast[idx] = a\n                course.actPeriod[idx] = periods and periods[s.key] or s.period\n            end\n        end\n\n        -- Start from every walkable node within 0.8y (the nearest one alone can sit inside a hazard's padding while\n        -- you are just outside it); off the course there is nothing to draw.\n        route.planN = 0\n        route.planAt = now\n        local fr, fc = toLattice(course, px, pz)\n        local start, startD\n        local starts, startT, ns = route.startNode, route.startT, 0\n        for r = math.floor(fr) - 2, math.floor(fr) + 3 do\n            for c = math.floor(fc) - 2, math.floor(fc) + 3 do\n                local i = cell(course, r, c)\n                if i then\n                    local d = (course.nx[i] - px) ^ 2 + (course.nz[i] - pz) ^ 2\n                    if startD == nil or d < startD then\n                        start, startD = i, d\n                    end\n                    if d <= 0.64 then\n                        ns = ns + 1\n                        starts[ns], startT[ns] = i, now + math.sqrt(d) / route.speed\n                        course.startGen[i] = gen\n                    end\n                end\n            end\n        end\n        if start == nil or startD > 4 then\n            return\n        end\n        if ns == 0 then\n            ns = 1\n            starts[1], startT[1] = start, now + math.sqrt(startD) / route.speed\n            course.startGen[start] = gen\n        end\n        local rows = course.nRows\n        local rStart = course.row[start]\n        -- Progress = rows ahead of the start (around the loop for the arena); the goal is the first node reached\n        -- at the end of the window, else the furthest one.\n        local ahead, back = course.ahead, course.back\n        local goalAt = course.ring and ahead or math.min(ahead, course.lastRow - 1 - rStart)\n\n        local best, prev, via, dep, stamp = course.best, course.prev, course.via, course.dep, course.stamp\n        local edge, edgeT, row = course.edge, course.edgeT, course.row\n        local goal, goalP, goalT\n        -- If nothing gets anywhere at the normal margin (cornered, or overshot a hold into a hazard's padding), retry\n        -- tighter, ignoring knockbacks, and let the first move ignore the hazards covering the current spot, so the\n        -- route leads out of them instead of vanishing.\n        for attempt = 1, 2 do\n            route.m = attempt == 1 and course.margin or route.tightMargin\n            local escape = attempt == 2\n            route.soft = escape\n            course.sgen = course.sgen + 1\n            local sgen = course.sgen\n            heapSize = 0\n            goal = nil\n            for q = 1, ns do\n                local s0 = starts[q]\n                stamp[s0], best[s0], prev[s0], via[s0], dep[s0] = sgen, startT[q], nil, nil, nil\n                push(startT[q], s0)\n            end\n            while heapSize > 0 do\n                local t, i = pop()\n                if t <= best[i] then\n                    local p = row[i] - rStart\n                    if course.ring then\n                        p = p % rows\n                        if p > rows / 2 then\n                            p = p - rows\n                        end\n                    end\n                    if goal == nil or p > goalP or (p == goalP and t < goalT) then\n                        goal, goalP, goalT = i, p, t\n                    end\n                    if p >= goalAt then\n                        break\n                    end\n                    local base = (i - 1) * 16\n                    for k = 1, 16 do\n                        local e = base + k\n                        local j = edge[e]\n                        if j then\n                            local p2 = p + route.dr[k]\n                            if p2 >= -back and p2 <= ahead then\n                                local fromStart = escape and prev[i] == nil and course.startGen[i] == gen\n                                local td = depart(course, e, t, fromStart and course.nodeHaz[i] or nil)\n                                if td and (fromStart or td - t < 60 or waitOk(course, i, t, td)) then\n                                    local tj = td + edgeT[e]\n                                    if stamp[j] ~= sgen or tj < best[j] then\n                                        stamp[j], best[j], prev[j], via[j], dep[j] = sgen, tj, i, k, td\n                                        push(tj, j)\n                                    end\n                                end\n                            end\n                        end\n                    end\n                end\n            end\n            if prev[goal] ~= nil then\n                break\n            end\n        end\n\n        -- Walk back from the goal, then keep only the corners, the hold points and (around the loop) every few nodes.\n        local path = route.pathNode\n        local n = 0\n        local i = goal\n        while i do\n            n = n + 1\n            path[n] = i\n            i = prev[i]\n        end\n        local out, run = 0, 0\n        local lastK\n        for q = n, 1, -1 do\n            local node = path[q]\n            local nextNode = path[q - 1]\n            local depT = nextNode and dep[nextNode] or best[node]\n            local hold = depT - best[node] > 100\n            local k = nextNode and via[nextNode]\n            run = run + 1\n            if out == 0 or hold or k ~= lastK or run > course.maxRun then\n                out = out + 1\n                route.planX[out], route.planZ[out], route.planY[out] = course.nx[node], course.nz[node], course.ny[node]\n                route.planArr[out], route.planDep[out] = best[node], depT\n                run = 0\n            end\n            lastK = k\n        end\n        route.planN = out\n    end\n\n    ljBlundervilleRoute2 = route\nend\n\nlocal state = data.ljBlunderville\nlocal seen = state and state.route2Seen\nlocal player = TensorCore.mGetPlayer()\nlocal p = player.pos\nlocal course\nif p.x > 100 then\n    course = route.courses.arena\nelseif state and state.obstacle then\n    course = route.courses[state.obstacle]\nend\nlocal now = Now()\nif course ~= route.course then\n    route.course = course\n    route.planN = 0\nend\nif course and seen and now - route.planAt >= route.replanEvery then\n    local known = ljBlundervilleLearned\n    route.plan(course, now, p.x, p.z, seen, known and known.periods)\nend\n\nlocal n = route.planN\nlocal holdAt\nif course and n > 0 then\n    for q = 1, n do\n        if route.planDep[q] - route.planArr[q] > 100 and route.planDep[q] - now > 100 then\n            holdAt = q\n            break\n        end\n    end\n    -- The first waypoint is only the lattice node nearest the player; skip it unless it is a hold.\n    local first = (holdAt == 1 or n == 1) and 1 or 2\n    local fx, fz = p.x, p.z\n    local fy = p.y + 0.05\n    for q = first, n do\n        local tx, tz = route.planX[q], route.planZ[q]\n        local ddx, ddz = tx - fx, tz - fz\n        local L = math.sqrt(ddx * ddx + ddz * ddz)\n        if L > 0.3 then\n            local drawer = (holdAt == nil or q <= holdAt) and route.go or route.rest\n            drawer:addRect(fx, fy, fz, L, 0.45, math.atan2(ddx, ddz))\n        end\n        fx, fz = tx, tz\n        fy = route.planY[q] + 0.05\n    end\nend\nif holdAt then\n    local hx, hz = route.planX[holdAt], route.planZ[holdAt]\n    local hy = holdAt == 1 and p.y or route.planY[holdAt]\n    route.hold:addCircle(hx, hy, hz, 1)\n    -- One AnyoneCore countdown per hold (same rules as stage 3: replaced only when the hold moves or shifts by more\n    -- than 300ms, none for holds under 0.5s).\n    if AnyoneCore and AnyoneCore.addWorldTextCountdown then\n        local depart = route.planDep[holdAt]\n        if route.textUuid and (hx ~= route.textX or hz ~= route.textZ or math.abs(depart - route.textDepart) > 300) then\n            if AnyoneCore.removeTimedWorldText then\n                AnyoneCore.removeTimedWorldText(route.textUuid)\n            end\n            route.textUuid = nil\n        end\n        if route.textUuid == nil and depart - now >= 500 then\n            route.textUuid = AnyoneCore.addWorldTextCountdown(depart - now, { x = hx, y = hy + 1.5, z = hz }, 0xFF00A5FF,\n                true, 1.3, 0, \"WAIT \")\n            route.textX, route.textZ, route.textDepart = hx, hz, depart\n        end\n    end\nelseif route.textUuid then\n    -- The hold vanished (plan changed or the course ended); drop its countdown unless it was finishing anyway.\n    if route.textDepart - now > 150 and AnyoneCore and AnyoneCore.removeTimedWorldText then\n        AnyoneCore.removeTimedWorldText(route.textUuid)\n    end\n    route.textUuid = nil\nend\n\nself.used = true\n",
						conditions = 
						{
							
							{
								"0c49587e-d52c-2990-8c49-1dfc66bd1c88",
								true,
							},
							
							{
								"5af59546-4254-a138-ade9-b1c796fbdb01",
								true,
							},
						},
						name = "Plan + Draw Route",
						uuid = "a4f39899-d98f-33a9-87ab-a7411ad63180",
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
						uuid = "0c49587e-d52c-2990-8c49-1dfc66bd1c88",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local p = TensorCore.mGetPlayer().pos\nreturn (p.x > -250 and p.x < -145 and p.z > 195 and p.z < 290)\n    or (p.x > 165 and p.x < 235 and p.z > -165 and p.z < -85)",
						name = "On Round 2 Course",
						uuid = "5af59546-4254-a138-ade9-b1c796fbdb01",
						version = 3,
					},
				},
			},
			displayPath = "Stage 2",
			enabled = false,
			eventType = 12,
			name = "S2 - Route Overlay",
			uuid = "07f4fdc8-d416-3e79-a140-8a0442cdb011",
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
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "-- Stage 3 route: record when each repeating hazard fires, keyed by spell and position (identical every round).\n-- Each emitter fires on a fixed period (2.5-11s); the period is learned from consecutive hits and kept in\n-- ljBlundervilleLearned.periods so it is saved with the other learned data. The route overlay predicts from these.\n-- Event: OnEntityCast (34801, 34802, 34796, 29795).\nlocal state = data.ljBlunderville\nif state == nil then\n    state = { groups = {}, lanes = {} }\n    data.ljBlunderville = state\nend\nlocal seen = state.routeSeen\nif seen == nil then\n    seen = { list = {} }\n    state.routeSeen = seen\nend\n\nlocal ent = TensorCore.mGetEntity(eventArgs.entityID)\nif ent then\n    local p = ent.pos\n    local spell = eventArgs.spellID\n    local key = string.format(\"%d:%d:%d\", spell, math.floor(p.x * 2 + 0.5), math.floor(p.z * 2 + 0.5))\n    local now = Now()\n    local s = seen[key]\n    if s == nil then\n        s = { key = key, spell = spell, x = p.x, z = p.z }\n        seen[key] = s\n        seen.list[#seen.list + 1] = s\n    elseif s.last then\n        local gap = now - s.last\n        if gap >= 1000 and gap <= 15000 then\n            -- A missed hit only lengthens a gap, so the shortest plausible gap is the period.\n            if s.period == nil or gap < s.period - 300 then\n                s.period = gap\n            elseif math.abs(gap - s.period) < 300 then\n                s.period = s.period + (gap - s.period) * 0.25\n            end\n            local known = ljBlundervilleLearned\n            if known and known.periods then\n                local saved = known.periods[key]\n                if saved == nil or gap < saved - 300 then\n                    known.periods[key] = gap\n                    known.dirty = true\n                elseif math.abs(gap - saved) < 300 then\n                    known.periods[key] = saved + (gap - saved) * 0.25\n                end\n            end\n        end\n    end\n    s.last = now\nend\n\nself.used = true\n",
						conditions = 
						{
							
							{
								"90d5bc72-c9b4-5070-9e52-609e5b28a291",
								true,
							},
							
							{
								"b31a897e-b91d-4863-8ceb-8e468d966ebe",
								true,
							},
						},
						name = "Record Hazard Timing",
						uuid = "9bf983a4-bffb-168d-95e9-ebb74242d583",
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
						name = "Repeating Hazards",
						spellIDList = 
						{
							34801,
							34802,
							34796,
							29795,
						},
						uuid = "90d5bc72-c9b4-5070-9e52-609e5b28a291",
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
						uuid = "b31a897e-b91d-4863-8ceb-8e468d966ebe",
						version = 3,
					},
				},
			},
			displayPath = "Stage 3",
			eventType = 2,
			name = "S3 - Route Observe",
			uuid = "f616f879-242f-72e7-8bab-49e315765445",
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
						actionLua = "-- Stage 3 route: ramp rollers. A 34812 channel at the ramp top starts a roller that hits its lane at z 190.4 (+1.0s),\n-- 196.4 (+1.5s), 202.4 (+1.94s), 208.4 (+2.38s) and 214.4 (+2.81s), and each lane repeats every 6s (medians over 355\n-- cycles). The samurai's sword spin is left out: no stun in the logs ever came from it, even with players 3-8y away.\n-- Event: OnEntityChannel (34812).\nlocal state = data.ljBlunderville\nif state == nil then\n    state = { groups = {}, lanes = {} }\n    data.ljBlunderville = state\nend\nlocal seen = state.routeSeen\nif seen == nil then\n    seen = { list = {} }\n    state.routeSeen = seen\nend\n\nlocal roller = ljBlundervilleRouteRoller\nif roller == nil or roller.version ~= 1 then\n    roller = {\n        version = 1,\n        steps = { { 34812, 190.4, 1000 }, { 34804, 196.4, 1500 }, { 34804, 202.4, 1937 }, { 34804, 208.4, 2375 }, { 34804, 214.4, 2813 } },\n    }\n    ljBlundervilleRouteRoller = roller\nend\n\nlocal ent = TensorCore.mGetEntity(eventArgs.entityID)\nif ent then\n    local x = ent.pos.x\n    local now = Now()\n    for _, step in ipairs(roller.steps) do\n        local key = string.format(\"%d:%d:%d\", step[1], math.floor(x * 2 + 0.5), math.floor(step[2] * 2 + 0.5))\n        local s = seen[key]\n        if s == nil then\n            s = { key = key, spell = step[1], x = x, z = step[2], period = 6000 }\n            seen[key] = s\n            seen.list[#seen.list + 1] = s\n        end\n        s.last = now + step[3]\n    end\nend\n\nself.used = true\n",
						conditions = 
						{
							
							{
								"c9a86a53-aaec-cb78-84d4-b7fcbe63ccc1",
								true,
							},
							
							{
								"19e5d988-1723-6680-b965-184e242d658b",
								true,
							},
						},
						name = "Record Roller Timing",
						uuid = "05bf47f2-82d1-9141-8d22-f15e515e91e8",
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
						uuid = "c9a86a53-aaec-cb78-84d4-b7fcbe63ccc1",
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
						uuid = "19e5d988-1723-6680-b965-184e242d658b",
						version = 3,
					},
				},
			},
			displayPath = "Stage 3",
			eventType = 3,
			name = "S3 - Route Rollers",
			uuid = "5ebe051d-3112-7b4c-abee-6c847bc6d8be",
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
						actionLua = "-- Stage 3 route overlay. Plans the fastest safe way down the course from the predicted hazard timings and draws it:\n-- green = run this now, amber ring with \"WAIT x.x\" = stop here until the timer ends, faint white = the rest of the route.\n-- Planner: time-aware Dijkstra over a 1y grid of the walkable course (walls from vfallguy's stage 3 map), 25y ahead,\n-- where every move is checked against each hazard's next activations (last hit + learned period, from the Route\n-- Observe/Channels reactions). Replans every 150ms from the current position. Event: OnFrame.\nlocal route = ljBlundervilleRoute\nif route == nil or route.version ~= 1 then\n    route = {\n        version = 1,\n        speed = 6 / 1000,       -- yalms per ms\n        margin = 450,           -- ms either side of a hit treated as dangerous\n        tightMargin = 120,      -- fallback margin when cornered\n        slack = 0,              -- extra ms after each hit (more made the sim slower and hit more often)\n        pad = 1.0,              -- yalms added to every hazard radius\n        ahead = 25,             -- rows (yalms) planned ahead\n        maxWait = 7000,\n        replanEvery = 150,\n        cols = 27, rows = 169, x0 = -13, z0 = 124,\n        shapes = {\n            [34801] = { r = 6 }, [34802] = { r = 5 }, [34796] = { r = 5 }, [29795] = { r = 3 },\n            [34812] = { half = 3 }, [34804] = { half = 3 },\n        },\n        heights = { 135.6, 36.2, 139.0, 35.5, 139.1, 34.5, 143.0, 34.3, 143.1, 33.6, 147.0, 33.4, 147.1, 32.8, 150.9, 32.5,\n            151.0, 31.9, 180.7, 28.8, 218.9, 15.1, 229.7, 14.5, 236.8, 13.5, 262.9, 6.0, 273.2, 6.0, 286.9, 3.2 },\n        dx = { 1, -1, 0, 0, 1, 1, -1, -1, 1, 1, -1, -1, 2, 2, -2, -2 },\n        dz = { 0, 0, 1, -1, 1, -1, 1, -1, 2, -2, 2, -2, 1, -1, 1, -1 },\n        len = {}, dIdx = {},\n        walk = {}, edgeOk = {}, edgeHaz = {}, nodeHaz = {},\n        inst = {}, instKey = {}, instShape = {},\n        actGen = {}, actLast = {}, actPeriod = {},\n        best = {}, prev = {}, dep = {}, stamp = {}, gen = 0, sgen = 0,\n        heapT = {}, heapN = {},\n        pathNode = {}, planX = {}, planZ = {}, planArr = {}, planDep = {}, planN = 0, planAt = 0,\n        go = TensorCore.getCachedDrawer(nil, nil, 0xB000FF00, 0xFF00FF00, 1.5),\n        rest = TensorCore.getCachedDrawer(nil, nil, 0x40FFFFFF, 0x80FFFFFF, 1),\n        hold = TensorCore.getCachedDrawer(nil, nil, 0x5000A5FF, 0xFF00A5FF, 2.5),\n    }\n\n    local function inRect(x, z, x1, x2, z1, z2)\n        return x >= x1 and x <= x2 and z >= z1 and z <= z2\n    end\n    local prisms = { -9, 211, 9, 211, -2.5, 202, 2.5, 202, -9, 194, 9, 194, 0, 188 }\n    local function inTrapezium(x, z, dx1, z1, dx2, z2)\n        local coeff = (dx2 - dx1) / (z2 - z1)\n        return z >= z2 and z <= z1 and math.abs(x) < dx1 - z1 * coeff + coeff * z\n    end\n    local function blocked(x, z)\n        if x < -14 or x > 14 then\n            return true\n        end\n        if (x + 4) ^ 2 + (z - 292) ^ 2 <= 2.25 or (x - 4) ^ 2 + (z - 292) ^ 2 <= 2.25\n            or inRect(x, z, -10, -3.3, 285.5, 293) or inRect(x, z, 3.3, 10, 285.5, 293)\n            or inRect(x, z, -2, 2, 271, 278) or inRect(x, z, -5.5, 5.5, 262.5, 271) then\n            return true\n        end\n        -- exaflare lane columns\n        if ((z >= 247.5 and z <= 256) or (z >= 238.5 and z <= 246.5))\n            and ((x >= -9.5 and x <= -5.5) or (x >= -2 and x <= 2) or (x >= 5.5 and x <= 9.5)) then\n            return true\n        end\n        for q = 1, #prisms, 2 do\n            if math.abs(x - prisms[q]) + math.abs(z - prisms[q + 1]) <= 4 then\n                return true\n            end\n        end\n        if inTrapezium(x, z, 1.1, 151.5, 3.3, 139) or inTrapezium(x, z, 4.3, 133.5, 8.5, 123.7) then\n            return true\n        end\n        if z >= 123 and z <= 139 then\n            -- final corridor corners: (14,139) -> (7,136) -> (13,123), mirrored\n            local ax = math.abs(x)\n            if -3 * (ax - 14) + 7 * (z - 139) < 0 and -13 * (ax - 7) - 6 * (z - 136) < 0 then\n                return true\n            end\n        end\n        return false\n    end\n\n    local cols, rows = route.cols, route.rows\n    for k = 1, 16 do\n        route.len[k] = math.sqrt(route.dx[k] ^ 2 + route.dz[k] ^ 2)\n        route.dIdx[k] = route.dz[k] * cols + route.dx[k]\n    end\n    for r = 0, rows - 1 do\n        for c = 0, cols - 1 do\n            route.walk[r * cols + c + 1] = not blocked(route.x0 + c, route.z0 + r)\n        end\n    end\n    for r = 0, rows - 1 do\n        for c = 0, cols - 1 do\n            local i = r * cols + c + 1\n            if route.walk[i] then\n                for k = 1, 16 do\n                    local c2, r2 = c + route.dx[k], r + route.dz[k]\n                    local ok = c2 >= 0 and c2 < cols and r2 >= 0 and r2 < rows and route.walk[r2 * cols + c2 + 1]\n                    if ok then\n                        local x, z = route.x0 + c, route.z0 + r\n                        for f = 0.25, 0.75, 0.25 do\n                            if blocked(x + route.dx[k] * f, z + route.dz[k] * f) then\n                                ok = false\n                                break\n                            end\n                        end\n                    end\n                    route.edgeOk[(i - 1) * 16 + k] = ok or nil\n                end\n            end\n        end\n    end\n\n    function route.heightAt(z)\n        local h = route.heights\n        if z <= h[1] then\n            return h[2]\n        end\n        for q = 3, #h, 2 do\n            if z <= h[q] then\n                return h[q - 1] + (z - h[q - 2]) / (h[q] - h[q - 2]) * (h[q + 1] - h[q - 1])\n            end\n        end\n        return h[#h]\n    end\n\n    -- Entry and exit distance of segment (x,z)+(ux,uz)*s, s in [0,len], through a hazard grown by pad; nil if it misses.\n    local function clip(x, z, ux, uz, len, hx, hz, shape)\n        local sIn, sOut\n        if shape.r then\n            local R = shape.r + route.pad\n            local fx, fz = x - hx, z - hz\n            local b = ux * fx + uz * fz\n            local disc = b * b - (fx * fx + fz * fz - R * R)\n            if disc < 0 then\n                return nil\n            end\n            disc = math.sqrt(disc)\n            sIn, sOut = -b - disc, -b + disc\n        else\n            local H = shape.half + route.pad\n            sIn, sOut = -math.huge, math.huge\n            for axis = 1, 2 do\n                local p, u, h = x, ux, hx\n                if axis == 2 then\n                    p, u, h = z, uz, hz\n                end\n                if math.abs(u) < 1e-9 then\n                    if p < h - H or p > h + H then\n                        return nil\n                    end\n                else\n                    local a, b = (h - H - p) / u, (h + H - p) / u\n                    if a > b then\n                        a, b = b, a\n                    end\n                    sIn, sOut = math.max(sIn, a), math.min(sOut, b)\n                end\n            end\n        end\n        sIn, sOut = math.max(sIn, 0), math.min(sOut, len)\n        if sIn > sOut then\n            return nil\n        end\n        return sIn, sOut\n    end\n\n    -- Fixed geometry for a hazard position: which grid nodes it covers and where it cuts each nearby move.\n    function route.register(key, spell, hx, hz)\n        local shape = route.shapes[spell]\n        local idx = #route.instKey + 1\n        route.instKey[idx] = key\n        route.inst[key] = idx\n        local reach = (shape.r or shape.half * 1.42) + route.pad + 2.5\n        local c1, c2 = math.max(0, math.floor(hx - reach - route.x0)), math.min(cols - 1, math.ceil(hx + reach - route.x0))\n        local r1, r2 = math.max(0, math.floor(hz - reach - route.z0)), math.min(rows - 1, math.ceil(hz + reach - route.z0))\n        for r = r1, r2 do\n            for c = c1, c2 do\n                local i = r * cols + c + 1\n                if route.walk[i] then\n                    local x, z = route.x0 + c, route.z0 + r\n                    if clip(x, z, 1, 0, 0, hx, hz, shape) then\n                        local list = route.nodeHaz[i]\n                        if list == nil then\n                            list = {}\n                            route.nodeHaz[i] = list\n                        end\n                        list[#list + 1] = idx\n                    end\n                    for k = 1, 16 do\n                        local e = (i - 1) * 16 + k\n                        if route.edgeOk[e] then\n                            local len = route.len[k]\n                            local sIn, sOut = clip(x, z, route.dx[k] / len, route.dz[k] / len, len, hx, hz, shape)\n                            if sIn then\n                                local list = route.edgeHaz[e]\n                                if list == nil then\n                                    list = {}\n                                    route.edgeHaz[e] = list\n                                end\n                                list[#list + 1] = idx\n                                list[#list + 1] = sIn / route.speed\n                                list[#list + 1] = sOut / route.speed\n                            end\n                        end\n                    end\n                end\n            end\n        end\n        return idx\n    end\n\n    -- Current timing margin (ms); plan() tightens it when nothing is safe at the normal margin.\n    route.m = route.margin\n\n    -- Latest activation of hazard idx within [lo, hi] (ms), or nil.\n    local function activation(idx, lo, hi)\n        if route.actGen[idx] ~= route.gen then\n            return nil\n        end\n        local a, P = route.actLast[idx], route.actPeriod[idx]\n        if P == nil then\n            if a >= lo and a <= hi then\n                return a\n            end\n            return nil\n        end\n        local th = a + math.floor((hi - a) / P) * P\n        if th >= lo then\n            return th\n        end\n        return nil\n    end\n\n    -- Earliest departure >= ta along edge e that no hazard catches, or nil.\n    local function depart(e, ta)\n        local list = route.edgeHaz[e]\n        if list == nil then\n            return ta\n        end\n        local m = route.m\n        local td = ta\n        for _ = 1, 12 do\n            local moved = false\n            for q = 1, #list, 3 do\n                local tIn = list[q + 1]\n                local th = activation(list[q], td + tIn - m, td + list[q + 2] + m + route.slack)\n                if th then\n                    td = th + m - tIn + 1\n                    moved = true\n                end\n            end\n            if not moved then\n                return td\n            end\n            if td - ta > route.maxWait then\n                return nil\n            end\n        end\n        return nil\n    end\n\n    local function waitOk(i, ta, td)\n        local list = route.nodeHaz[i]\n        if list then\n            for q = 1, #list do\n                if activation(list[q], ta - route.m, td + route.m + route.slack) then\n                    return false\n                end\n            end\n        end\n        return true\n    end\n\n    local heapT, heapN = route.heapT, route.heapN\n    local heapSize = 0\n    local function push(t, n)\n        heapSize = heapSize + 1\n        local q = heapSize\n        while q > 1 do\n            local parent = math.floor(q / 2)\n            if heapT[parent] <= t then\n                break\n            end\n            heapT[q], heapN[q] = heapT[parent], heapN[parent]\n            q = parent\n        end\n        heapT[q], heapN[q] = t, n\n    end\n    local function pop()\n        local t, n = heapT[1], heapN[1]\n        local lastT, lastN = heapT[heapSize], heapN[heapSize]\n        heapSize = heapSize - 1\n        local q = 1\n        while true do\n            local child = q * 2\n            if child > heapSize then\n                break\n            end\n            if child < heapSize and heapT[child + 1] < heapT[child] then\n                child = child + 1\n            end\n            if heapT[child] >= lastT then\n                break\n            end\n            heapT[q], heapN[q] = heapT[child], heapN[child]\n            q = child\n        end\n        heapT[q], heapN[q] = lastT, lastN\n        return t, n\n    end\n\n    function route.plan(now, px, pz, seen, periods)\n        route.gen = route.gen + 1\n        local gen = route.gen\n        for _, s in ipairs(seen.list) do\n            local idx = route.inst[s.key] or route.register(s.key, s.spell, s.x, s.z)\n            local P = periods and periods[s.key] or s.period\n            if s.last and now - s.last < 30000 then\n                route.actGen[idx] = gen\n                route.actLast[idx] = s.last\n                route.actPeriod[idx] = P\n            end\n        end\n\n        -- Start from the nearest walkable node.\n        local c0 = math.min(cols - 1, math.max(0, math.floor(px - route.x0 + 0.5)))\n        local r0 = math.min(rows - 1, math.max(0, math.floor(pz - route.z0 + 0.5)))\n        local start, startD\n        for r = math.max(0, r0 - 2), math.min(rows - 1, r0 + 2) do\n            for c = math.max(0, c0 - 2), math.min(cols - 1, c0 + 2) do\n                local i = r * cols + c + 1\n                if route.walk[i] then\n                    local d = (route.x0 + c - px) ^ 2 + (route.z0 + r - pz) ^ 2\n                    if startD == nil or d < startD then\n                        start, startD = i, d\n                    end\n                end\n            end\n        end\n        route.planN = 0\n        route.planAt = now\n        if start == nil then\n            return\n        end\n        local rStart = math.floor((start - 1) / cols)\n        local rMin, rMax = math.max(0, rStart - route.ahead), math.min(rows - 1, rStart + 4)\n\n        local best, prev, dep, stamp = route.best, route.prev, route.dep, route.stamp\n        local edgeOk, dIdx, dz, len = route.edgeOk, route.dIdx, route.dz, route.len\n        local goal, goalRow, goalT\n        -- If nothing gets anywhere at the normal margin (cornered in a pocket), retry tighter rather than stand still.\n        for attempt = 1, 2 do\n            route.m = attempt == 1 and route.margin or route.tightMargin\n            route.sgen = route.sgen + 1\n            local sgen = route.sgen\n            heapSize = 0\n            goal = nil\n            stamp[start], best[start], prev[start], dep[start] = sgen, now + math.sqrt(startD) / route.speed, nil, nil\n            push(best[start], start)\n            while heapSize > 0 do\n                local t, i = pop()\n                if t <= best[i] then\n                    local r = math.floor((i - 1) / cols)\n                    if goal == nil or r < goalRow or (r == goalRow and t < goalT) then\n                        goal, goalRow, goalT = i, r, t\n                    end\n                    if r <= rMin then\n                        break\n                    end\n                    local base = (i - 1) * 16\n                    for k = 1, 16 do\n                        local e = base + k\n                        local r2 = r + dz[k]\n                        if edgeOk[e] and r2 >= rMin and r2 <= rMax then\n                            local td = depart(e, t)\n                            if td and (td - t < 60 or waitOk(i, t, td)) then\n                                local j = i + dIdx[k]\n                                local tj = td + len[k] / route.speed\n                                if stamp[j] ~= sgen or tj < best[j] then\n                                    stamp[j], best[j], prev[j], dep[j] = sgen, tj, i, td\n                                    push(tj, j)\n                                end\n                            end\n                        end\n                    end\n                end\n            end\n            if goal ~= start then\n                break\n            end\n        end\n\n        -- Walk back from the goal, then keep only the corners and the hold points.\n        local path = route.pathNode\n        local n = 0\n        local i = goal\n        while i do\n            n = n + 1\n            path[n] = i\n            i = prev[i]\n        end\n        local out = 0\n        local lastDx, lastDz\n        for q = n, 1, -1 do\n            local node = path[q]\n            local nextNode = path[q - 1]\n            local depT = nextNode and dep[nextNode] or best[node]\n            local x = route.x0 + (node - 1) % cols\n            local z = route.z0 + math.floor((node - 1) / cols)\n            local hold = depT - best[node] > 100\n            local ddx, ddz\n            if nextNode then\n                ddx = (nextNode - 1) % cols - (node - 1) % cols\n                ddz = math.floor((nextNode - 1) / cols) - math.floor((node - 1) / cols)\n            end\n            -- A node mid-way along a straight run with no hold is not a waypoint.\n            if out == 0 or hold or ddx ~= lastDx or ddz ~= lastDz then\n                out = out + 1\n                route.planX[out], route.planZ[out] = x, z\n                route.planArr[out], route.planDep[out] = best[node], depT\n            end\n            lastDx, lastDz = ddx, ddz\n        end\n        route.planN = out\n    end\n\n    ljBlundervilleRoute = route\nend\n\nlocal state = data.ljBlunderville\nlocal seen = state and state.routeSeen\nlocal player = TensorCore.mGetPlayer()\nlocal p = player.pos\nlocal now = Now()\nif seen and now - route.planAt >= route.replanEvery then\n    local known = ljBlundervilleLearned\n    route.plan(now, p.x, p.z, seen, known and known.periods)\nend\n\nlocal n = route.planN\nif seen and n > 0 then\n    local holdAt\n    for q = 1, n do\n        if route.planDep[q] - route.planArr[q] > 100 and route.planDep[q] - now > 100 then\n            holdAt = q\n            break\n        end\n    end\n    -- The first waypoint is only the grid node nearest the player; skip it unless it is a hold.\n    local first = (holdAt == 1 or n == 1) and 1 or 2\n    local fx, fz = p.x, p.z\n    local fy = p.y + 0.05\n    for q = first, n do\n        local tx, tz = route.planX[q], route.planZ[q]\n        local ddx, ddz = tx - fx, tz - fz\n        local L = math.sqrt(ddx * ddx + ddz * ddz)\n        if L > 0.3 then\n            local drawer = (holdAt == nil or q <= holdAt) and route.go or route.rest\n            drawer:addRect(fx, fy, fz, L, 0.45, math.atan2(ddx, ddz))\n        end\n        fx, fz = tx, tz\n        fy = route.heightAt(tz) + 0.05\n    end\n    if holdAt then\n        local hx, hz = route.planX[holdAt], route.planZ[holdAt]\n        local hy = holdAt == 1 and p.y or route.heightAt(hz)\n        route.hold:addCircle(hx, hy, hz, 1)\n        -- One AnyoneCore countdown per hold, so it ticks smoothly on its own. Replans nudge the departure time by\n        -- a few ms, so it is only replaced when the hold moves or shifts by more than 300ms, and holds under 0.5s\n        -- get no text at all (those blips made the text flash).\n        if AnyoneCore and AnyoneCore.addWorldTextCountdown then\n            local depart = route.planDep[holdAt]\n            if route.textUuid and (hx ~= route.textX or hz ~= route.textZ or math.abs(depart - route.textDepart) > 300) then\n                if AnyoneCore.removeTimedWorldText then\n                    AnyoneCore.removeTimedWorldText(route.textUuid)\n                end\n                route.textUuid = nil\n            end\n            if route.textUuid == nil and depart - now >= 500 then\n                route.textUuid = AnyoneCore.addWorldTextCountdown(depart - now, { x = hx, y = hy + 1.5, z = hz }, 0xFF00A5FF,\n                    true, 1.3, 0, \"WAIT \")\n                route.textX, route.textZ, route.textDepart = hx, hz, depart\n            end\n        end\n    elseif route.textUuid then\n        -- The hold vanished (plan changed); drop its countdown unless it was finishing anyway.\n        if route.textDepart - now > 150 and AnyoneCore and AnyoneCore.removeTimedWorldText then\n            AnyoneCore.removeTimedWorldText(route.textUuid)\n        end\n        route.textUuid = nil\n    end\nend\n\nself.used = true\n",
						conditions = 
						{
							
							{
								"2d48f32e-ab84-d234-8584-e64cb68fb0b9",
								true,
							},
							
							{
								"e0c7bf22-9abc-07c0-bbd3-1970800a106d",
								true,
							},
						},
						name = "Plan + Draw Route",
						uuid = "a6ee1a6e-f9cf-3ad6-bedb-b86756a5f6ad",
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
						uuid = "2d48f32e-ab84-d234-8584-e64cb68fb0b9",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local p = TensorCore.mGetPlayer().pos\nreturn p.x > -20 and p.x < 20 and p.z > 118 and p.z < 300",
						name = "On Stage 3 Course",
						uuid = "e0c7bf22-9abc-07c0-bbd3-1970800a106d",
						version = 3,
					},
				},
			},
			displayPath = "Stage 3",
			eventType = 12,
			name = "S3 - Route Overlay",
			uuid = "9b341800-b050-7c0e-a8a8-02003aaefbac",
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
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "-- Save what Next Impact learned to LuaMods\\ffxivminion\\Lj\\BlundervilleLearned.lua after leaving map 1165, only when\n-- something new was learned. A failed save is ignored (and not retried until more is learned).\n-- Event: OnMapChange (conditions: Map 1165 = false, learned data changed).\nlocal known = ljBlundervilleLearned\nif known and known.save then\n    if not pcall(known.save) then\n        known.dirty = false\n    end\nend\n\nself.used = true\n",
						conditions = 
						{
							
							{
								"7c2f9469-3f12-c4a9-9276-d2246cfef9f8",
								false,
							},
							
							{
								"faf38d61-2e73-3ca7-bf81-547a608a8761",
								true,
							},
						},
						name = "Save - BlundervilleLearned.lua",
						uuid = "b7adcf70-7870-0682-ac94-82a086396447",
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
						uuid = "7c2f9469-3f12-c4a9-9276-d2246cfef9f8",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return ljBlundervilleLearned ~= nil and ljBlundervilleLearned.dirty == true",
						dequeueIfLuaFalse = true,
						name = "Learned Something New",
						uuid = "faf38d61-2e73-3ca7-bf81-547a608a8761",
						version = 3,
					},
				},
			},
			eventType = 11,
			name = "Save Learned Hazards",
			uuid = "11c37724-6be1-20c3-8333-430fd719e36b",
			version = 2,
		},
	}, 
	inheritedProfiles = 
	{
	},
}



return tbl