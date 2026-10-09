local tbl = 
{
	
	{
		
		{
			data = 
			{
				name = "[VPR] Pool Gauge",
				uuid = "e62fc435-971b-3068-b270-07a530fab95d",
				version = 2,
			},
			inheritedObjectUUID = "c719da3e-ee16-0211-9704-ebf4d125e64e",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "AutoSim LB",
				uuid = "59526a8f-233e-8787-861b-7430bc390a7b",
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
							actionLua = "-- Per-phase Limit Break mode. Manual and Automatic both add the stun phase;\n-- only Automatic lets the Use Limit Break reactions press the Hotbar.\n-- Constants are built once per session (bump version to rebuild after editing them),\n-- so each frame only draws the GUI and does two cheap checks.\nif ljAutoSimLb == nil or ljAutoSimLb.version ~= 2 then\n    local folder = GetLuaModsPath() .. \"ffxivminion\\\\Lj\\\\\"\n    ljAutoSimLb = {\n        version = 2,\n        folder = folder,\n        path = folder .. \"AutoSimLBSettings.lua\",\n        flags = GUI.WindowFlags_NoTitleBar + GUI.WindowFlags_NoCollapse + GUI.WindowFlags_AlwaysAutoResize,\n        modes = { \"Disabled\", \"Manual\", \"Automatic\" },\n        -- GUI:Combo uses 1-based indices.\n        modeIndex = { Disabled = 1, Manual = 2, Automatic = 3 },\n        keys = { \"p4\", \"p5\" },\n        labels = { p4 = \"P4\", p5 = \"P5\" },\n        comboIDs = { p4 = \"##LjAutoSimLb_p4\", p5 = \"##LjAutoSimLb_p5\" },\n        -- World-swallower (09-29 logs): channel starts at P4 +47.4 and P5 +188.2;\n        -- ~4s channel, next GCD ~8.2s after the channel starts.\n        specs = {\n            p4 = { boundary = 6, offset = 47.36 },\n            p5 = { boundary = 8, offset = 188.17 },\n        },\n        stunDuration = 8.2,\n    }\n    -- Load saved modes; missing or unknown values fall back to Disabled.\n    local lb = ljAutoSimLb\n    ljAutoSimLbModes = FileExists(lb.path) and FileLoad(lb.path) or {}\n    local changed = false\n    for _, key in ipairs(lb.keys) do\n        if not lb.modeIndex[ljAutoSimLbModes[key]] then\n            ljAutoSimLbModes[key] = \"Disabled\"\n            changed = true\n        end\n    end\n    if changed then\n        if not FolderExists(lb.folder) then\n            FolderCreate(lb.folder)\n        end\n        FileSave(lb.path, ljAutoSimLbModes)\n    end\nend\n\nlocal lb = ljAutoSimLb\nlocal modes = ljAutoSimLbModes\n\n-- No title bar, so the window has no close button.\nlocal visible = GUI:Begin(\"Lj AutoSim LB###LjAutoSimLB\", true, lb.flags)\nif visible then\n    GUI:Text(\"Lj AutoSim LB\")\n    for i = 1, 2 do\n        local key = lb.keys[i]\n        GUI:Text(lb.labels[key])\n        GUI:SameLine(40)\n        GUI:PushItemWidth(110)\n        local selected, changed = GUI:Combo(lb.comboIDs[key], lb.modeIndex[modes[key]], lb.modes)\n        GUI:PopItemWidth()\n        if changed then\n            modes[key] = lb.modes[selected]\n            FileSave(lb.path, modes)\n        end\n    end\nend\nGUI:End()\n\n-- Keep each Limit Break stun phase in the AutoSim schedule in step with its mode.\n-- Per frame this is two lookups; phases are only added or removed when a mode changes.\nlocal state = data.ljAutoSimDmu\nif state then\n    local stuns = state.lbStunsByPhase\n    if stuns == nil then\n        stuns = {}\n        state.lbStunsByPhase = stuns\n    end\n    for i = 1, 2 do\n        local key = lb.keys[i]\n        local wanted = modes[key] ~= \"Disabled\"\n        local stun = stuns[key]\n        if wanted and stun == nil then\n            local spec = lb.specs[key]\n            local startTime = state.boundaries[spec.boundary].time + spec.offset\n            local endTime = startTime + lb.stunDuration\n            local phaseID = TensorCore.API.TensorACR.addAutoSimPhase(\"Stun\", startTime, endTime)\n            if phaseID then\n                -- Registered in state.phases so Targetability and Resync shifts it.\n                stun = { id = phaseID, phaseType = \"Stun\", startTime = startTime, endTime = endTime, value = 1 }\n                state.phases[#state.phases + 1] = stun\n            end\n            -- false marks a phase AutoSim clipped away, so it is not retried every frame.\n            stuns[key] = stun or false\n        elseif not wanted and stun ~= nil then\n            if stun then\n                for index = #state.phases, 1, -1 do\n                    if state.phases[index] == stun then\n                        TensorCore.API.TensorACR.removeAutoSimPhase(stun.id)\n                        table.remove(state.phases, index)\n                    end\n                end\n            end\n            stuns[key] = nil\n        end\n    end\nend\nself.used = true",
							conditions = 
							{
								
								{
									"5c24216e-49a3-588a-bc1e-228d50464e46",
									true,
								},
							},
							uuid = "b63f32df-b884-6e4a-8956-692bad63f1a4",
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
							name = "Self: Melee",
							partyTargetType = "Melee DPS",
							uuid = "5c24216e-49a3-588a-bc1e-228d50464e46",
							version = 3,
						},
					},
				},
				displayPath = "AutoSim LB",
				eventType = 13,
				execute = "-- Per-phase Limit Break mode. Manual and Automatic both add the stun phase;\n-- only Automatic lets the Use Limit Break reactions press the Hotbar.\nlocal modes = { \"Disabled\", \"Manual\", \"Automatic\" }\nif ljAutoSimLbModes == nil then\n    ljAutoSimLbModes = { p4 = \"Disabled\", p5 = \"Disabled\" }\nend\n\nlocal function modeCombo(label, key)\n    local current = 0\n    for index, mode in ipairs(modes) do\n        if mode == ljAutoSimLbModes[key] then\n            current = index - 1\n        end\n    end\n    GUI:PushItemWidth(110)\n    local selected = GUI:Combo(label .. \"##LjAutoSimLb_\" .. key, current, modes)\n    GUI:PopItemWidth()\n    ljAutoSimLbModes[key] = modes[selected + 1]\nend\n\nlocal visible = GUI:Begin(\"Lj AutoSim LB##LjAutoSimLB\", true,\n    GUI.WindowFlags_AlwaysAutoResize + GUI.WindowFlags_NoCollapse)\nif visible then\n    GUI:TextUnformatted(\"Limit Break\")\n    modeCombo(\"P4\", \"p4\")\n    modeCombo(\"P5\", \"p5\")\nend\nGUI:End()\n\n-- Keep each Limit Break stun phase in the AutoSim schedule in step with its mode.\nlocal state = data.ljAutoSimDmu\nif state then\n    local acr = TensorCore.API.TensorACR\n    -- World-swallower (09-29 logs): channel starts at P4 +47.4 and P5 +188.2;\n    -- ~4s channel, next GCD ~8.2s after the channel starts.\n    local specs = {\n        p4 = { boundary = 6, offset = 47.36 },\n        p5 = { boundary = 8, offset = 188.17 },\n    }\n    state.lbStunsByPhase = state.lbStunsByPhase or {}\n    for key, spec in pairs(specs) do\n        local wanted = ljAutoSimLbModes[key] ~= \"Disabled\"\n        local stun = state.lbStunsByPhase[key]\n        if wanted and stun == nil then\n            local startTime = state.boundaries[spec.boundary].time + spec.offset\n            local endTime = startTime + 8.2\n            local phaseID = acr.addAutoSimPhase(\"Stun\", startTime, endTime)\n            if phaseID then\n                -- Registered in state.phases so Targetability and Resync shifts it.\n                stun = { id = phaseID, phaseType = \"Stun\", startTime = startTime, endTime = endTime, value = 1 }\n                state.phases[#state.phases + 1] = stun\n            end\n            -- false marks a phase AutoSim clipped away, so it is not retried every frame.\n            state.lbStunsByPhase[key] = stun or false\n        elseif not wanted and stun ~= nil then\n            if stun then\n                for index = #state.phases, 1, -1 do\n                    if state.phases[index] == stun then\n                        acr.removeAutoSimPhase(stun.id)\n                        table.remove(state.phases, index)\n                    end\n                end\n            end\n            state.lbStunsByPhase[key] = nil\n        end\n    end\nend\nself.used = true",
				mechanicTime = 15.261765625,
				name = "[AutoSim LB] Limit Break Modes",
				timeRange = true,
				timelineIndex = 1,
				timerEndOffset = 1200,
				timerStartOffset = -16,
				uuid = "619676b5-eb7d-85ea-b922-848ac3815ed6",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "AutoSim v1",
				uuid = "4a180bf5-649b-4722-a3e6-700b8a2cc4f1",
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
							actionLua = "local acr = TensorCore.API.TensorACR\n\nacr.setAutoSimKillTime(1102.669)\n--acr.setAutoSimUnexpectedMovementPct(0)\n--acr.setAutoSimUnexpectedMeleeDowntimePct(0)\nacr.clearAutoSimPhases(\"FullDowntime\")\nacr.clearAutoSimPhases(\"CasterDowntime\")\nacr.clearAutoSimPhases(\"MeleeDowntime\")\nacr.clearAutoSimPhases(\"RaidBuff\")\nacr.clearAutoSimPhases(\"BossModifier\")\nacr.clearAutoSimUncertainty()\nacr.clearAutoSimPhases(\"Stun\")\nacr.clearAutoSimPhases(\"SelfCircle5Yd\")\nacr.clearAutoSimPhases(\"SelfCircle8Yd\")\nacr.clearAutoSimPhases(\"Cone8Yd\")\nacr.clearAutoSimPhases(\"Line10Yd\")\nacr.clearAutoSimPhases(\"Positional\")\nacr.clearAutoSimPhases(\"TargetLifetime\", 0)\nacr.clearAutoSimPhases(\"DotAvailability\", 0)\nacr.clearAutoSimPhases(\"TargetLifetime\", 1)\nacr.clearAutoSimPhases(\"DotAvailability\", 1)\nacr.clearAutoSimTarget(1)\n\nlocal state = {\n    killTime = 1102.669,\n    nextBoundary = 1,\n    phases = {},\n    boundaries = {\n        { kind = \"down\", time = 197.52, uncertainty = 0, lead = 0, boss = \"kefka\", early = 10, late = 10 },\n        { kind = \"up\", time = 207.88, uncertainty = 0, lead = 0, boss = \"kefka\", early = 10, late = 10 },\n        { kind = \"down\", time = 381.481, uncertainty = 10, lead = 10, boss = \"kefka\", early = 10, late = 10 },\n        { kind = \"up\", time = 427.46, uncertainty = 0, lead = 0, boss = \"duo\", early = 10, late = 10 },\n        { kind = \"down\", time = 720.490, uncertainty = 10, lead = 30.490, boss = \"duo\", early = 30.49, late = 10 },\n        { kind = \"up\", time = 724.930, uncertainty = 10, lead = 10, boss = \"kefka\", early = 10, late = 10 },\n        { kind = \"down\", time = 856.953, uncertainty = 10, lead = 10, boss = \"kefka\", early = 10, late = 10 },\n        { kind = \"up\", time = 887.943, uncertainty = 10, lead = 10, boss = \"kefka\", early = 10, late = 10 },\n    },\n    bossContentIDs = {\n        [7131] = true, -- Kefka\n        [7691] = true, -- Chaos\n        [6052] = true, -- Exdeath\n    },\n    duoTargetable = { [7691] = true, [6052] = true },\n}\n\nlocal phaseSpecs = {\n    Stun = {\n        { startTime = 174.37, endTime = 180 },\n        { startTime = 387.876, endTime = 420 },\n    },\n    SelfCircle5Yd = {\n        { startTime = 462.395, endTime = 544.89, value = 2 },\n    },\n    SelfCircle8Yd = {\n        { startTime = 462.395, endTime = 544.89, value = 2 },\n    },\n    Cone8Yd = {\n        { startTime = 427.46, endTime = 430.62, value = 2 },\n        { startTime = 462.395, endTime = 544.89, value = 2 },\n    },\n    Line10Yd = {\n        { startTime = 427.46, endTime = 430.62, value = 2 },\n        { startTime = 462.395, endTime = 544.89, value = 2 },\n    },\n    Positional = {\n        -- P1\n        { startTime = 42.2, endTime = 49.5, value = 3 }, -- Wave Cannon spread + towers\n        { startTime = 86.3, endTime = 91.3, value = 3 }, -- Gravitas stack at A (front of boss)\n        { startTime = 104.8, endTime = 109.8, value = 2 }, -- Gravitas stack at C (behind): rear OK, flank blocked\n        { startTime = 118.1, endTime = 123.0, value = 3 }, -- DTT knockback throws DPS in front, ~2 GCDs\n        { startTime = 159.3, endTime = 163.5, value = 3 }, -- Tele-trouncing resolves\n        { startTime = 173.4, endTime = 188.0, value = 3 }, -- Idyllic Will -> markers -> Ave Maria (lock-face)\n        -- P2\n        { startTime = 365.8, endTime = 370.3, value = 3 }, -- Trine run-out\n        -- P3\n        { startTime = 491.2, endTime = 497.0, value = 3 }, -- Lat/Long Implosion #1\n        { startTime = 514.4, endTime = 527.4, value = 3 }, -- Vacuum Wave -> Cyclone -> Ultima Blaster limit cut\n        { startTime = 574.6, endTime = 578.3, value = 3 }, -- Slap Happy\n        { startTime = 603.8, endTime = 608.4, value = 3 }, -- Damning Edict + Slap Happy\n        { startTime = 631.1, endTime = 635.0, value = 3 }, -- Damning Edict + Look upon Me\n        { startTime = 671.5, endTime = 677.0, value = 3 }, -- Lat/Long #2 + Slap Happy\n        { startTime = 689.3, endTime = 692.0, value = 3 }, -- Look upon Me\n        { startTime = 699.7, endTime = 720.490, value = 3 }, -- Blizzard III towers/stack/freeze, ends at duo down\n        -- P4 (combat clock: Kefka targetable at 724.93, offsets from logs)\n        { startTime = 744.6, endTime = 749.6, value = 3 }, -- Blizzard III Blowout #1 (+19.7)\n        { startTime = 759.6, endTime = 764.6, value = 3 }, -- Blizzard III Blowout #2 (+34.7)\n        { startTime = 774.7, endTime = 779.7, value = 3 }, -- Blizzard III Blowout #3 (+49.8)\n        { startTime = 791.2, endTime = 795.6, value = 3 }, -- Flood of Naught -> Death Surge (+66.3)\n        { startTime = 808.1, endTime = 813.1, value = 3 }, -- Thrumming Thunder III + gaze (+83.2)\n        { startTime = 818.2, endTime = 831.1, value = 3 }, -- Ultima Upsurge baits -> Blizzard III Blowout (+93.3)\n        { startTime = 839.2, endTime = 844.2, value = 3 }, -- Mana Release baits (+114.3)\n        -- P5 (combat clock: Kefka targetable at 887.943, offsets from logs)\n        { startTime = 912.6, endTime = 916.6, value = 3 }, -- Flood exaline dodge (+24.6)\n        { startTime = 925.7, endTime = 933.3, value = 3 }, -- Maddening Orchestra -> Chaotic Holy (+37.8)\n        { startTime = 942.4, endTime = 971.6, value = 3 }, -- Celestriad debuffs + tower soaks (+54.5 to +83.7)\n    },\n    TargetLifetime = {\n        { startTime = 0, endTime = 197.52, value = 1, targetSlot = 0 },\n        { startTime = 207.88, endTime = 381.481, value = 1, targetSlot = 0 },\n        { startTime = 427.46, endTime = 720.490, value = 1, targetSlot = 0 },\n        { startTime = 724.930, endTime = 856.953, value = 1, targetSlot = 0 },\n        { startTime = 887.943, endTime = 1102.669, value = 1, targetSlot = 0 },\n        { startTime = 427.46, endTime = 720.490, value = 1, targetSlot = 1 },\n    },\n    DotAvailability = {\n        { startTime = 0, endTime = 197.52, targetSlot = 0 },\n        { startTime = 207.88, endTime = 381.481, targetSlot = 0 },\n        { startTime = 427.46, endTime = 720.490, targetSlot = 0 },\n        { startTime = 724.930, endTime = 856.953, targetSlot = 0 },\n        { startTime = 887.943, endTime = 1102.669, targetSlot = 0 },\n        { startTime = 427.46, endTime = 430.62, targetSlot = 1 },\n        { startTime = 462.395, endTime = 544.89, targetSlot = 1 },\n    },\n    FullDowntime = {\n    { startTime = 197.52, endTime = 207.88 },\n    { startTime = 381.481, endTime = 427.46 },\n    { startTime = 720.490, endTime = 724.930 },\n    { startTime = 856.953, endTime = 887.943 },\n    },\n    RaidBuff = {\n    { startTime = 1.560, endTime = 21.115, value = 1.1025 },\n    { startTime = 122.595, endTime = 142.506, value = 1.1025 },\n    { startTime = 243.152, endTime = 262.214, value = 1.1025 },\n    { startTime = 363.497, endTime = 382.736, value = 1.1025 },\n    { startTime = 484.703, endTime = 502.520, value = 1.1025 },\n    { startTime = 604.734, endTime = 623.706, value = 1.1025 },\n    { startTime = 725.768, endTime = 745.411, value = 1.1025 },\n    { startTime = 845.888, endTime = 865.798, value = 1.1025 },\n    { startTime = 968.340, endTime = 987.002, value = 1.1025 },\n    { startTime = 1088.214, endTime = 1102.669, value = 1.1025 },\n    },\n}\n\nfor phaseType, specs in pairs(phaseSpecs) do\n    for _, spec in ipairs(specs) do\n        local value = spec.value or 1\n        local phaseID = acr.addAutoSimPhase(\n            phaseType,\n            spec.startTime,\n            spec.endTime,\n            value,\n            spec.targetSlot or 0\n        )\n        if phaseID then\n            state.phases[#state.phases + 1] = {\n                id = phaseID,\n                phaseType = phaseType,\n                startTime = spec.startTime,\n                endTime = spec.endTime,\n                value = value,\n            }\n        end\n    end\nend\n\n-- Potion guidance via BossModifier phases.\n-- Pot (846) cooldown is 270s: ~122 -> ~427 -> ~725 -> ~1073 fits.\n-- Phases go into state.phases so Targetability and Resync shifts them.\nlocal p3Start = state.boundaries[4].time\nlocal p3End = state.boundaries[5].time\nlocal p4Start = state.boundaries[6].time\nlocal potWindows = {\n    { startTime = 122.595, endTime = 152.595, value = 1.3 }, -- P1 2-min, raid buffs at 122.6\n    { startTime = p3Start + 0.1, endTime = p3Start + 30.1, value = 1.3 }, -- P3 start, no raid buffs\n    -- Late P3 until the 1 HP lock: a pot after ~455 is still on cooldown at P4 start (725),\n    -- so make the 604.7 raid buff window worth less than the P4 window.\n    { startTime = 600, endTime = p3End, value = 0.65 }, -- Late P3: keep pot/burst for P4\n    { startTime = p4Start + 0.1, endTime = p4Start + 30.1, value = 1.3 }, -- P4 start, raid buffs at 725.8\n    { startTime = state.killTime - 30, endTime = state.killTime, value = 1.3 }, -- Final 30s, raid buffs at 1088.2\n}\n\nfor _, window in ipairs(potWindows) do\n    local phaseID = acr.addAutoSimPhase(\n        \"BossModifier\",\n        window.startTime,\n        window.endTime,\n        window.value\n    )\n    if phaseID then\n        state.phases[#state.phases + 1] = {\n            id = phaseID,\n            phaseType = \"BossModifier\",\n            startTime = window.startTime,\n            endTime = window.endTime,\n            value = window.value,\n        }\n    end\nend\n\n-- Called by the P2/P3 zero-damage locks before they add their phase,\n-- because BossModifier phases cannot overlap.\nstate.trimBossModifiers = function(fromTime, toTime)\n    for index = #state.phases, 1, -1 do\n        local phase = state.phases[index]\n        if phase.phaseType == \"BossModifier\"\n            and phase.startTime < toTime and phase.endTime > fromTime then\n            local phaseID\n            if phase.startTime < fromTime then\n                phase.endTime = fromTime\n                phaseID = acr.setAutoSimPhase(\n                    phase.id,\n                    phase.startTime,\n                    phase.endTime,\n                    phase.value\n                )\n            else\n                acr.removeAutoSimPhase(phase.id)\n            end\n            if phaseID then\n                phase.id = phaseID\n            else\n                table.remove(state.phases, index)\n            end\n        end\n    end\nend\n\nstate.uncertaintyID = acr.addAutoSimUncertainty(188.311, 10)\ndata.ljAutoSimDmu = state\nself.used = true",
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
				uuid = "ede3db8d-f692-9524-b963-9a088762a577",
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
							actionLua = "local acr = TensorCore.API.TensorACR\nlocal state = data.ljAutoSimDmu\nlocal contentID = eventArgs.entityContentID\n\nif not state or not state.bossContentIDs[contentID] then\n    self.used = true\n    return\nend\n\n-- End phase 2's zero-damage period on the exact filtered Kefka.\nlocal damageLock = state.phaseTwoDamageLock\nif damageLock and not damageLock.closed\n    and eventArgs.entityID == damageLock.entityID\n    and not eventArgs.isTargetable then\n    local endedAt = acr.getAutoSimTime()\n    if endedAt > damageLock.startTime then\n        acr.setAutoSimPhase(damageLock.id, damageLock.startTime, endedAt, 0)\n    else\n        acr.removeAutoSimPhase(damageLock.id)\n    end\n    damageLock.closed = true\nend\n\nlocal phaseThreeLock = state.phaseThreeDamageLock\n\n-- Target assignment is independent of resync acceptance.\nif contentID == 6052 then\n    acr.setAutoSimTarget(1, eventArgs.entityID)\nelseif eventArgs.isTargetable then\n    acr.setAutoSimTarget(0, eventArgs.entityID)\nend\n\nlocal isDuo = contentID == 7691 or contentID == 6052\nif isDuo then\n    state.duoTargetable[contentID] = eventArgs.isTargetable\nend\n\nlocal now = acr.getAutoSimTime()\nlocal transitionKind = eventArgs.isTargetable and \"up\" or \"down\"\nlocal matchedIndex\nlocal boundary\nlocal bestDistance\n\n-- Match only unconsumed boundaries near their current predicted pull time.\n-- A later matching boundary can recover from an earlier missed event.\nfor index = state.nextBoundary, #state.boundaries do\n    local candidate = state.boundaries[index]\n    local delta = now - candidate.time\n    local bossMatches = (candidate.boss == \"duo\" and isDuo)\n        or (candidate.boss == \"kefka\" and contentID == 7131)\n    if bossMatches and candidate.kind == transitionKind\n        and delta >= -candidate.early and delta <= candidate.late then\n        local distance = math.abs(delta)\n        if not bestDistance or distance < bestDistance then\n            matchedIndex = index\n            boundary = candidate\n            bestDistance = distance\n        end\n    end\nend\n\nif not boundary then\n    self.used = true\n    return\nend\n\n-- Start the P4 transition only after both duo bosses are untargetable.\nif boundary.boss == \"duo\" and transitionKind == \"down\"\n    and (state.duoTargetable[7691] or state.duoTargetable[6052]) then\n    self.used = true\n    return\nend\n\nlocal expectedTime = boundary.time\nlocal delta = now - expectedTime\n\nstate.killTime = state.killTime + delta\nacr.setAutoSimKillTime(state.killTime)\n\n-- Damage stops being relevant once both duo bosses are untargetable.\n-- FullDowntime covers the remaining transition into Kefka.\n-- Shrinking closes before phases shift; extending closes after, so the lock\n-- never overlaps a BossModifier phase that has not moved yet.\nlocal function closePhaseThreeLock()\n    if not (phaseThreeLock and not phaseThreeLock.closed and matchedIndex == 5) then\n        return\n    end\n    if now > phaseThreeLock.startTime then\n        acr.setAutoSimPhase(\n            phaseThreeLock.id,\n            phaseThreeLock.startTime,\n            now,\n            0\n        )\n    else\n        acr.removeAutoSimPhase(phaseThreeLock.id)\n    end\n    phaseThreeLock.endTime = now\n    phaseThreeLock.closed = true\nend\n\nlocal lockShrinks = phaseThreeLock and now <= phaseThreeLock.endTime\nif lockShrinks then\n    closePhaseThreeLock()\nend\n\n-- At boundary 5 this moves FullDowntime's start to the exact duo-down time.\n-- At boundary 6 it moves FullDowntime's end to Kefka's exact targetable time.\n-- Move later phases first when shifting right and earlier phases first when\n-- shifting left, so a phase never overlaps a same-type phase that has not moved yet.\nlocal order = {}\nfor index = 1, #state.phases do\n    order[index] = index\nend\ntable.sort(order, function(a, b)\n    if delta > 0 then\n        return state.phases[a].startTime > state.phases[b].startTime\n    end\n    return state.phases[a].startTime < state.phases[b].startTime\nend)\n\nlocal removed = {}\nfor _, index in ipairs(order) do\n    local phase = state.phases[index]\n    local changed = false\n    if phase.startTime >= expectedTime - 0.0001 then\n        phase.startTime = phase.startTime + delta\n        changed = true\n    end\n    if phase.endTime >= expectedTime - 0.0001 then\n        phase.endTime = phase.endTime + delta\n        changed = true\n    end\n    if changed then\n        if phase.endTime <= phase.startTime then\n            -- An early boundary left no time for a phase that ends at it.\n            acr.removeAutoSimPhase(phase.id)\n            removed[index] = true\n        else\n            local phaseID = acr.setAutoSimPhase(\n                phase.id,\n                phase.startTime,\n                phase.endTime,\n                phase.value\n            )\n            if phaseID then\n                phase.id = phaseID\n            else\n                removed[index] = true\n            end\n        end\n    end\nend\nfor index = #state.phases, 1, -1 do\n    if removed[index] then\n        table.remove(state.phases, index)\n    end\nend\n\nif not lockShrinks then\n    closePhaseThreeLock()\nend\n\nfor index = matchedIndex, #state.boundaries do\n    state.boundaries[index].time = state.boundaries[index].time + delta\nend\n\nstate.uncertaintyID = acr.addAutoSimUncertainty(now, 0)\nstate.nextBoundary = matchedIndex + 1\n\nlocal nextBoundary = state.boundaries[state.nextBoundary]\nif nextBoundary then\n    local uncertaintyTime = nextBoundary.time - nextBoundary.lead\n    if uncertaintyTime <= now then\n        uncertaintyTime = now + 0.001\n    end\n    state.uncertaintyID = acr.addAutoSimUncertainty(\n        uncertaintyTime,\n        nextBoundary.uncertainty\n    )\nend\n\nself.used = true",
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
				uuid = "6cf7cb68-993e-0577-962f-649367a7a32a",
				version = 2,
			},
			inheritedIndex = 20,
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "AutoSim v2",
				uuid = "37791854-97cd-2ff6-854a-4df5e80724e2",
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
							actionLua = "local acr = TensorCore.API.TensorACR\n\nacr.setAutoSimKillTime(1102.669)\n--acr.setAutoSimUnexpectedMovementPct(0)\n--acr.setAutoSimUnexpectedMeleeDowntimePct(0)\nacr.clearAutoSimPhases(\"FullDowntime\")\nacr.clearAutoSimPhases(\"CasterDowntime\")\nacr.clearAutoSimPhases(\"MeleeDowntime\")\nacr.clearAutoSimPhases(\"RaidBuff\")\nacr.clearAutoSimPhases(\"BossModifier\")\nacr.clearAutoSimUncertainty()\nacr.clearAutoSimPhases(\"Stun\")\nacr.clearAutoSimPhases(\"SelfCircle5Yd\")\nacr.clearAutoSimPhases(\"SelfCircle8Yd\")\nacr.clearAutoSimPhases(\"Cone8Yd\")\nacr.clearAutoSimPhases(\"Line10Yd\")\nacr.clearAutoSimPhases(\"Line15Yd\")\nacr.clearAutoSimPhases(\"TargetCircle5YdRange3Yd\")\nacr.clearAutoSimPhases(\"TargetCircle5YdRange5Yd\")\nacr.clearAutoSimPhases(\"TargetCircle5YdRange20Yd\")\nacr.clearAutoSimPhases(\"TargetCircle5YdRange25Yd\")\nacr.clearAutoSimPhases(\"Positional\")\nacr.clearAutoSimPhases(\"TargetLifetime\", 0)\nacr.clearAutoSimPhases(\"DotAvailability\", 0)\nacr.clearAutoSimPhases(\"TargetLifetime\", 1)\nacr.clearAutoSimPhases(\"DotAvailability\", 1)\nacr.clearAutoSimTarget(1)\n\nlocal state = {\n    killTime = 1102.669,\n    nextBoundary = 1,\n    phases = {},\n    boundaries = {\n        { kind = \"down\", time = 197.52, uncertainty = 0, lead = 0, boss = \"kefka\", early = 10, late = 10 },\n        { kind = \"up\", time = 207.88, uncertainty = 0, lead = 0, boss = \"kefka\", early = 10, late = 10 },\n        { kind = \"down\", time = 381.481, uncertainty = 10, lead = 10, boss = \"kefka\", early = 10, late = 10 },\n        { kind = \"up\", time = 427.46, uncertainty = 0, lead = 0, boss = \"duo\", early = 10, late = 10 },\n        { kind = \"down\", time = 720.490, uncertainty = 10, lead = 30.490, boss = \"duo\", early = 30.49, late = 10 },\n        { kind = \"up\", time = 724.930, uncertainty = 10, lead = 10, boss = \"kefka\", early = 10, late = 10 },\n        { kind = \"down\", time = 856.953, uncertainty = 10, lead = 10, boss = \"kefka\", early = 10, late = 10 },\n        { kind = \"up\", time = 887.943, uncertainty = 10, lead = 10, boss = \"kefka\", early = 10, late = 10 },\n    },\n    bossContentIDs = {\n        [7131] = true, -- Kefka\n        [7691] = true, -- Chaos\n        [6052] = true, -- Exdeath\n    },\n    duoTargetable = { [7691] = true, [6052] = true },\n}\n\nlocal phaseSpecs = {\n    Stun = {\n        { startTime = 174.37, endTime = 180 },\n        { startTime = 387.876, endTime = 420 },\n    },\n    SelfCircle5Yd = {\n        { startTime = 462.395, endTime = 544.89, value = 2 },\n    },\n    SelfCircle8Yd = {\n        { startTime = 462.395, endTime = 544.89, value = 2 },\n    },\n    Cone8Yd = {\n        { startTime = 427.46, endTime = 430.62, value = 2 },\n        { startTime = 462.395, endTime = 544.89, value = 2 },\n    },\n    Line10Yd = {\n        { startTime = 427.46, endTime = 430.62, value = 2 },\n        { startTime = 462.395, endTime = 544.89, value = 2 },\n    },\n    Line15Yd = { -- same timings as Line10Yd\n        { startTime = 427.46, endTime = 430.62, value = 2 },\n        { startTime = 462.395, endTime = 544.89, value = 2 },\n    },\n    TargetCircle5YdRange3Yd = { -- same timings as SelfCircle5Yd\n        { startTime = 462.395, endTime = 544.89, value = 2 },\n    },\n    TargetCircle5YdRange5Yd = { -- same timings as SelfCircle5Yd\n        { startTime = 462.395, endTime = 544.89, value = 2 },\n    },\n    TargetCircle5YdRange20Yd = { -- same timings as SelfCircle5Yd\n        { startTime = 462.395, endTime = 544.89, value = 2 },\n    },\n    TargetCircle5YdRange25Yd = { -- same timings as SelfCircle5Yd\n        { startTime = 462.395, endTime = 544.89, value = 2 },\n    },\n    Positional = {\n        -- P1\n        { startTime = 42.2, endTime = 49.5, value = 1 }, -- Wave Cannon spread + towers. Rear Blocked.\n        { startTime = 86.3, endTime = 91.3, value = 3 }, -- Gravitas stack at A. Both Blocked.\n        { startTime = 104.8, endTime = 109.8, value = 3 }, -- Gravitas stack at C. Both Blocked.\n    },\n    TargetLifetime = {\n        { startTime = 0, endTime = 197.52, value = 1, targetSlot = 0 },\n        { startTime = 207.88, endTime = 381.481, value = 1, targetSlot = 0 },\n        { startTime = 427.46, endTime = 720.490, value = 1, targetSlot = 0 },\n        { startTime = 724.930, endTime = 856.953, value = 1, targetSlot = 0 },\n        { startTime = 887.943, endTime = 1102.669, value = 1, targetSlot = 0 },\n        { startTime = 427.46, endTime = 720.490, value = 1, targetSlot = 1 },\n    },\n    DotAvailability = {\n        { startTime = 0, endTime = 197.52, targetSlot = 0 },\n        { startTime = 207.88, endTime = 381.481, targetSlot = 0 },\n        { startTime = 427.46, endTime = 720.490, targetSlot = 0 },\n        { startTime = 724.930, endTime = 856.953, targetSlot = 0 },\n        { startTime = 887.943, endTime = 1102.669, targetSlot = 0 },\n        { startTime = 427.46, endTime = 430.62, targetSlot = 1 },\n        { startTime = 462.395, endTime = 544.89, targetSlot = 1 },\n    },\n    FullDowntime = {\n    { startTime = 197.52, endTime = 207.88 },\n    { startTime = 381.481, endTime = 427.46 },\n    { startTime = 720.490, endTime = 724.930 },\n    { startTime = 856.953, endTime = 887.943 },\n    },\n    RaidBuff = {\n    { startTime = 1.560, endTime = 21.115, value = 1.1025 },\n    { startTime = 122.595, endTime = 142.506, value = 1.1025 },\n    { startTime = 243.152, endTime = 262.214, value = 1.1025 },\n    { startTime = 363.497, endTime = 382.736, value = 1.1025 },\n    { startTime = 484.703, endTime = 502.520, value = 1.1025 },\n    { startTime = 604.734, endTime = 623.706, value = 1.1025 },\n    { startTime = 725.768, endTime = 745.411, value = 1.1025 },\n    { startTime = 845.888, endTime = 865.798, value = 1.1025 },\n    { startTime = 968.340, endTime = 987.002, value = 1.1025 },\n    { startTime = 1088.214, endTime = 1102.669, value = 1.1025 },\n    },\n}\n\nfor phaseType, specs in pairs(phaseSpecs) do\n    for _, spec in ipairs(specs) do\n        local value = spec.value or 1\n        local phaseID = acr.addAutoSimPhase(\n            phaseType,\n            spec.startTime,\n            spec.endTime,\n            value,\n            spec.targetSlot or 0\n        )\n        if phaseID then\n            state.phases[#state.phases + 1] = {\n                id = phaseID,\n                phaseType = phaseType,\n                startTime = spec.startTime,\n                endTime = spec.endTime,\n                value = value,\n            }\n        end\n    end\nend\n\n-- Potion guidance via BossModifier phases.\n-- Pot (846) cooldown is 270s: ~122 -> ~427 -> ~725 -> ~1073 fits.\n-- Phases go into state.phases so Targetability and Resync shifts them.\nlocal p3Start = state.boundaries[4].time\nlocal p3End = state.boundaries[5].time\nlocal p4Start = state.boundaries[6].time\nlocal potWindows = {\n    -- Late P3 until the 1 HP lock: a pot after ~455 is still on cooldown at P4 start (725),\n    -- so make the 604.7 raid buff window worth less than the P4 window.\n    { startTime = 600, endTime = p3End, value = 0.65 }, -- Late P3: keep pot/burst for P4\n    { startTime = p4Start + 0.1, endTime = p4Start + 30.1, value = 1.3 }, -- P4 start, raid buffs at 725.8\n}\n\nfor _, window in ipairs(potWindows) do\n    local phaseID = acr.addAutoSimPhase(\n        \"BossModifier\",\n        window.startTime,\n        window.endTime,\n        window.value\n    )\n    if phaseID then\n        state.phases[#state.phases + 1] = {\n            id = phaseID,\n            phaseType = \"BossModifier\",\n            startTime = window.startTime,\n            endTime = window.endTime,\n            value = window.value,\n        }\n    end\nend\n\n-- Called by the P2/P3 zero-damage locks before they add their phase,\n-- because BossModifier phases cannot overlap.\nstate.trimBossModifiers = function(fromTime, toTime)\n    for index = #state.phases, 1, -1 do\n        local phase = state.phases[index]\n        if phase.phaseType == \"BossModifier\"\n            and phase.startTime < toTime and phase.endTime > fromTime then\n            local phaseID\n            if phase.startTime < fromTime then\n                phase.endTime = fromTime\n                phaseID = acr.setAutoSimPhase(\n                    phase.id,\n                    phase.startTime,\n                    phase.endTime,\n                    phase.value\n                )\n            else\n                acr.removeAutoSimPhase(phase.id)\n            end\n            if phaseID then\n                phase.id = phaseID\n            else\n                table.remove(state.phases, index)\n            end\n        end\n    end\nend\n\nstate.uncertaintyID = acr.addAutoSimUncertainty(188.311, 10)\n-- The kill time is uncertain by +/-5s from 10s before it; Resync moves this with the kill time.\nstate.killUncertaintyID = acr.addAutoSimUncertainty(state.killTime - 10, 5)\ndata.ljAutoSimDmu = state\nself.used = true",
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
				uuid = "51c1ee4d-6f67-1d2d-a148-1ea692356f8c",
				version = 2,
			},
			inheritedIndex = 21,
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
							actionLua = "local acr = TensorCore.API.TensorACR\nlocal state = data.ljAutoSimDmu\nlocal contentID = eventArgs.entityContentID\n\nif not state or not state.bossContentIDs[contentID] then\n    self.used = true\n    return\nend\n\n-- End phase 2's zero-damage period on the exact filtered Kefka.\nlocal damageLock = state.phaseTwoDamageLock\nif damageLock and not damageLock.closed\n    and eventArgs.entityID == damageLock.entityID\n    and not eventArgs.isTargetable then\n    local endedAt = acr.getAutoSimTime()\n    if endedAt > damageLock.startTime then\n        acr.setAutoSimPhase(damageLock.id, damageLock.startTime, endedAt, 0)\n    else\n        acr.removeAutoSimPhase(damageLock.id)\n    end\n    damageLock.closed = true\nend\n\nlocal phaseThreeLock = state.phaseThreeDamageLock\n\n-- Target assignment is independent of resync acceptance.\nif contentID == 6052 then\n    acr.setAutoSimTarget(1, eventArgs.entityID)\nelseif eventArgs.isTargetable then\n    acr.setAutoSimTarget(0, eventArgs.entityID)\nend\n\nlocal isDuo = contentID == 7691 or contentID == 6052\nif isDuo then\n    state.duoTargetable[contentID] = eventArgs.isTargetable\nend\n\nlocal now = acr.getAutoSimTime()\nlocal transitionKind = eventArgs.isTargetable and \"up\" or \"down\"\nlocal matchedIndex\nlocal boundary\nlocal bestDistance\n\n-- Match only unconsumed boundaries near their current predicted pull time.\n-- A later matching boundary can recover from an earlier missed event.\nfor index = state.nextBoundary, #state.boundaries do\n    local candidate = state.boundaries[index]\n    local delta = now - candidate.time\n    local bossMatches = (candidate.boss == \"duo\" and isDuo)\n        or (candidate.boss == \"kefka\" and contentID == 7131)\n    if bossMatches and candidate.kind == transitionKind\n        and delta >= -candidate.early and delta <= candidate.late then\n        local distance = math.abs(delta)\n        if not bestDistance or distance < bestDistance then\n            matchedIndex = index\n            boundary = candidate\n            bestDistance = distance\n        end\n    end\nend\n\nif not boundary then\n    self.used = true\n    return\nend\n\n-- Start the P4 transition only after both duo bosses are untargetable.\nif boundary.boss == \"duo\" and transitionKind == \"down\"\n    and (state.duoTargetable[7691] or state.duoTargetable[6052]) then\n    self.used = true\n    return\nend\n\nlocal expectedTime = boundary.time\nlocal delta = now - expectedTime\n\nstate.killTime = state.killTime + delta\nacr.setAutoSimKillTime(state.killTime)\nif state.killUncertaintyID then\n    acr.setAutoSimUncertainty(state.killUncertaintyID, state.killTime - 10, 5)\nend\n\n-- Damage stops being relevant once both duo bosses are untargetable.\n-- FullDowntime covers the remaining transition into Kefka.\n-- Shrinking closes before phases shift; extending closes after, so the lock\n-- never overlaps a BossModifier phase that has not moved yet.\nlocal function closePhaseThreeLock()\n    if not (phaseThreeLock and not phaseThreeLock.closed and matchedIndex == 5) then\n        return\n    end\n    if now > phaseThreeLock.startTime then\n        acr.setAutoSimPhase(\n            phaseThreeLock.id,\n            phaseThreeLock.startTime,\n            now,\n            0\n        )\n    else\n        acr.removeAutoSimPhase(phaseThreeLock.id)\n    end\n    phaseThreeLock.endTime = now\n    phaseThreeLock.closed = true\nend\n\nlocal lockShrinks = phaseThreeLock and now <= phaseThreeLock.endTime\nif lockShrinks then\n    closePhaseThreeLock()\nend\n\n-- At boundary 5 this moves FullDowntime's start to the exact duo-down time.\n-- At boundary 6 it moves FullDowntime's end to Kefka's exact targetable time.\n-- Move later phases first when shifting right and earlier phases first when\n-- shifting left, so a phase never overlaps a same-type phase that has not moved yet.\nlocal order = {}\nfor index = 1, #state.phases do\n    order[index] = index\nend\ntable.sort(order, function(a, b)\n    if delta > 0 then\n        return state.phases[a].startTime > state.phases[b].startTime\n    end\n    return state.phases[a].startTime < state.phases[b].startTime\nend)\n\nlocal removed = {}\nfor _, index in ipairs(order) do\n    local phase = state.phases[index]\n    local changed = false\n    if phase.startTime >= expectedTime - 0.0001 then\n        phase.startTime = phase.startTime + delta\n        changed = true\n    end\n    if phase.endTime >= expectedTime - 0.0001 then\n        phase.endTime = phase.endTime + delta\n        changed = true\n    end\n    if changed then\n        if phase.endTime <= phase.startTime then\n            -- An early boundary left no time for a phase that ends at it.\n            acr.removeAutoSimPhase(phase.id)\n            removed[index] = true\n        else\n            local phaseID = acr.setAutoSimPhase(\n                phase.id,\n                phase.startTime,\n                phase.endTime,\n                phase.value\n            )\n            if phaseID then\n                phase.id = phaseID\n            else\n                removed[index] = true\n            end\n        end\n    end\nend\nfor index = #state.phases, 1, -1 do\n    if removed[index] then\n        table.remove(state.phases, index)\n    end\nend\n\nif not lockShrinks then\n    closePhaseThreeLock()\nend\n\nfor index = matchedIndex, #state.boundaries do\n    state.boundaries[index].time = state.boundaries[index].time + delta\nend\n\nstate.uncertaintyID = acr.addAutoSimUncertainty(now, 0)\nstate.nextBoundary = matchedIndex + 1\n\nlocal nextBoundary = state.boundaries[state.nextBoundary]\nif nextBoundary then\n    local uncertaintyTime = nextBoundary.time - nextBoundary.lead\n    if uncertaintyTime <= now then\n        uncertaintyTime = now + 0.001\n    end\n    state.uncertaintyID = acr.addAutoSimUncertainty(\n        uncertaintyTime,\n        nextBoundary.uncertainty\n    )\nend\n\nself.used = true",
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
				uuid = "4ea4c64b-bd6e-4075-88ed-0739d32d8420",
				version = 2,
			},
			inheritedIndex = 22,
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "AutoSim v3",
				uuid = "b9af5a10-0e6b-a0c9-a159-8be888204716",
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
							actionLua = "local acr = TensorCore.API.TensorACR\n\nacr.setAutoSimKillTime(1106.098)\n--acr.setAutoSimUnexpectedMovementPct(0)\n--acr.setAutoSimUnexpectedMeleeDowntimePct(0)\nacr.clearAutoSimPhases(\"FullDowntime\")\nacr.clearAutoSimPhases(\"CasterDowntime\")\nacr.clearAutoSimPhases(\"MeleeDowntime\")\nacr.clearAutoSimPhases(\"RaidBuff\")\nacr.clearAutoSimPhases(\"BossModifier\")\nacr.clearAutoSimUncertainty()\nacr.clearAutoSimPhases(\"Stun\")\nacr.clearAutoSimPhases(\"SelfCircle5Yd\")\nacr.clearAutoSimPhases(\"SelfCircle8Yd\")\nacr.clearAutoSimPhases(\"Cone8Yd\")\nacr.clearAutoSimPhases(\"Line10Yd\")\nacr.clearAutoSimPhases(\"Line15Yd\")\nacr.clearAutoSimPhases(\"TargetCircle5YdRange3Yd\")\nacr.clearAutoSimPhases(\"TargetCircle5YdRange5Yd\")\nacr.clearAutoSimPhases(\"TargetCircle5YdRange20Yd\")\nacr.clearAutoSimPhases(\"TargetCircle5YdRange25Yd\")\nacr.clearAutoSimPhases(\"Positional\")\nacr.clearAutoSimPhases(\"TargetLifetime\", 0)\nacr.clearAutoSimPhases(\"DotAvailability\", 0)\nacr.clearAutoSimPhases(\"TargetLifetime\", 1)\nacr.clearAutoSimPhases(\"DotAvailability\", 1)\nacr.clearAutoSimTarget(1)\n\nlocal state = {\n    killTime = 1106.098,\n    nextBoundary = 1,\n    phases = {},\n    boundaries = {\n        { kind = \"down\", time = 197.52, uncertainty = 0, lead = 0, boss = \"kefka\", early = 10, late = 10 },\n        { kind = \"up\", time = 207.88, uncertainty = 0, lead = 0, boss = \"kefka\", early = 10, late = 10 },\n        { kind = \"down\", time = 381.481, uncertainty = 10, lead = 10, boss = \"kefka\", early = 10, late = 10 },\n        { kind = \"up\", time = 427.46, uncertainty = 0, lead = 0, boss = \"duo\", early = 10, late = 10 },\n        { kind = \"down\", time = 720.490, uncertainty = 10, lead = 30.490, boss = \"duo\", early = 30.49, late = 10 },\n        { kind = \"up\", time = 724.930, uncertainty = 10, lead = 10, boss = \"kefka\", early = 10, late = 10 },\n        { kind = \"down\", time = 856.953, uncertainty = 10, lead = 10, boss = \"kefka\", early = 10, late = 10 },\n        { kind = \"up\", time = 887.943, uncertainty = 10, lead = 10, boss = \"kefka\", early = 10, late = 10 },\n    },\n    bossContentIDs = {\n        [7131] = true, -- Kefka\n        [7691] = true, -- Chaos\n        [6052] = true, -- Exdeath\n    },\n    duoTargetable = { [7691] = true, [6052] = true },\n}\n\nlocal phaseSpecs = {\n    Stun = {\n        { startTime = 174.37, endTime = 180 },\n        { startTime = 387.876, endTime = 420 },\n    },\n    -- P3 duo target counts, tuned from 22 logged pulls (times are P3 start 427.46 + offset):\n    -- +85 to +92 Vacuum Wave knockback and limit cut: no two-boss hits.\n    -- +92 to +107 bosses 12-15y apart: self circles rarely reach both (6/21), other shapes do.\n    -- P3 start: bosses 16y apart; lines, cones and target circles hit both, self circles do not.\n    SelfCircle5Yd = {\n        { startTime = 462.395, endTime = 512.46, value = 2 }, -- P3 +35 to +85\n        { startTime = 534.46, endTime = 544.89, value = 2 }, -- P3 +107 to window end\n    },\n    SelfCircle8Yd = {\n        { startTime = 462.395, endTime = 512.46, value = 2 }, -- P3 +35 to +85\n        { startTime = 534.46, endTime = 544.89, value = 2 }, -- P3 +107 to window end\n    },\n    Cone8Yd = {\n        { startTime = 427.46, endTime = 430.62, value = 2 }, -- P3 start\n        { startTime = 462.395, endTime = 512.46, value = 2 }, -- P3 +35 to +85\n        { startTime = 519.46, endTime = 544.89, value = 2 }, -- P3 +92 to window end\n    },\n    Line10Yd = {\n        { startTime = 427.46, endTime = 430.62, value = 2 }, -- P3 start\n        { startTime = 462.395, endTime = 512.46, value = 2 }, -- P3 +35 to +85\n        { startTime = 519.46, endTime = 544.89, value = 2 }, -- P3 +92 to window end\n    },\n    Line15Yd = {\n        { startTime = 427.46, endTime = 430.62, value = 2 }, -- P3 start\n        { startTime = 462.395, endTime = 512.46, value = 2 }, -- P3 +35 to +85\n        { startTime = 519.46, endTime = 544.89, value = 2 }, -- P3 +92 to window end\n    },\n    TargetCircle5YdRange3Yd = {\n        { startTime = 427.46, endTime = 430.62, value = 2 }, -- P3 start\n        { startTime = 462.395, endTime = 512.46, value = 2 }, -- P3 +35 to +85\n        { startTime = 519.46, endTime = 544.89, value = 2 }, -- P3 +92 to window end\n    },\n    TargetCircle5YdRange5Yd = {\n        { startTime = 427.46, endTime = 430.62, value = 2 }, -- P3 start\n        { startTime = 462.395, endTime = 512.46, value = 2 }, -- P3 +35 to +85\n        { startTime = 519.46, endTime = 544.89, value = 2 }, -- P3 +92 to window end\n    },\n    TargetCircle5YdRange20Yd = {\n        { startTime = 427.46, endTime = 430.62, value = 2 }, -- P3 start\n        { startTime = 462.395, endTime = 512.46, value = 2 }, -- P3 +35 to +85\n        { startTime = 519.46, endTime = 544.89, value = 2 }, -- P3 +92 to window end\n    },\n    TargetCircle5YdRange25Yd = {\n        { startTime = 427.46, endTime = 430.62, value = 2 }, -- P3 start\n        { startTime = 462.395, endTime = 512.46, value = 2 }, -- P3 +35 to +85\n        { startTime = 519.46, endTime = 544.89, value = 2 }, -- P3 +92 to window end\n    },\n    Positional = {\n        -- P1\n        { startTime = 42.2, endTime = 49.5, value = 1 }, -- Wave Cannon spread + towers. Rear Blocked.\n        { startTime = 86.3, endTime = 91.3, value = 3 }, -- Gravitas stack at A. Both Blocked.\n        { startTime = 104.8, endTime = 109.8, value = 3 }, -- Gravitas stack at C. Both Blocked.\n    },\n    TargetLifetime = {\n        { startTime = 0, endTime = 197.52, value = 1, targetSlot = 0 },\n        { startTime = 207.88, endTime = 381.481, value = 1, targetSlot = 0 },\n        { startTime = 427.46, endTime = 720.490, value = 1, targetSlot = 0 },\n        { startTime = 724.930, endTime = 856.953, value = 1, targetSlot = 0 },\n        { startTime = 887.943, endTime = 1106.098, value = 1, targetSlot = 0 },\n        { startTime = 427.46, endTime = 720.490, value = 1, targetSlot = 1 },\n    },\n    DotAvailability = {\n        { startTime = 0, endTime = 197.52, targetSlot = 0 },\n        { startTime = 207.88, endTime = 381.481, targetSlot = 0 },\n        { startTime = 427.46, endTime = 720.490, targetSlot = 0 },\n        { startTime = 724.930, endTime = 856.953, targetSlot = 0 },\n        { startTime = 887.943, endTime = 1106.098, targetSlot = 0 },\n        { startTime = 427.46, endTime = 430.62, targetSlot = 1 },\n        { startTime = 462.395, endTime = 544.89, targetSlot = 1 },\n    },\n    FullDowntime = {\n    { startTime = 197.52, endTime = 207.88 },\n    { startTime = 381.481, endTime = 427.46 },\n    { startTime = 720.490, endTime = 724.930 },\n    { startTime = 856.953, endTime = 887.943 },\n    },\n    RaidBuff = {\n    { startTime = 1.560, endTime = 21.115, value = 1.1025 },\n    { startTime = 122.595, endTime = 142.506, value = 1.1025 },\n    { startTime = 243.152, endTime = 262.214, value = 1.1025 },\n    { startTime = 363.497, endTime = 382.736, value = 1.1025 },\n    { startTime = 484.703, endTime = 502.520, value = 1.1025 },\n    { startTime = 604.734, endTime = 623.706, value = 1.1025 },\n    { startTime = 725.768, endTime = 745.411, value = 1.1025 },\n    { startTime = 845.888, endTime = 865.798, value = 1.1025 },\n    { startTime = 968.340, endTime = 987.002, value = 1.1025 },\n    { startTime = 1088.214, endTime = 1106.098, value = 1.1025 },\n    },\n}\n\nfor phaseType, specs in pairs(phaseSpecs) do\n    for _, spec in ipairs(specs) do\n        local value = spec.value or 1\n        local phaseID = acr.addAutoSimPhase(\n            phaseType,\n            spec.startTime,\n            spec.endTime,\n            value,\n            spec.targetSlot or 0\n        )\n        if phaseID then\n            state.phases[#state.phases + 1] = {\n                id = phaseID,\n                phaseType = phaseType,\n                startTime = spec.startTime,\n                endTime = spec.endTime,\n                value = value,\n            }\n        end\n    end\nend\n\n-- Potion guidance via BossModifier phases.\n-- Pot (846) cooldown is 270s: ~122 -> ~427 -> ~725 -> ~1073 fits.\n-- Phases go into state.phases so Targetability and Resync shifts them.\nlocal p3Start = state.boundaries[4].time\nlocal p3End = state.boundaries[5].time\nlocal p4Start = state.boundaries[6].time\nlocal potWindows = {\n    -- Late P3 until the 1 HP lock: a pot after ~455 is still on cooldown at P4 start (725),\n    -- so make the 604.7 raid buff window worth less than the P4 window.\n    { startTime = 600, endTime = p3End, value = 0.8 }, -- Late P3: keep pot/burst for P4\n    { startTime = p4Start + 0.1, endTime = p4Start + 30.1, value = 1.15 }, -- P4 start, raid buffs at 725.8\n}\n\nfor _, window in ipairs(potWindows) do\n    local phaseID = acr.addAutoSimPhase(\n        \"BossModifier\",\n        window.startTime,\n        window.endTime,\n        window.value\n    )\n    if phaseID then\n        state.phases[#state.phases + 1] = {\n            id = phaseID,\n            phaseType = \"BossModifier\",\n            startTime = window.startTime,\n            endTime = window.endTime,\n            value = window.value,\n        }\n    end\nend\n\n-- Called by the P2/P3 zero-damage locks before they add their phase,\n-- because BossModifier phases cannot overlap.\nstate.trimBossModifiers = function(fromTime, toTime)\n    for index = #state.phases, 1, -1 do\n        local phase = state.phases[index]\n        if phase.phaseType == \"BossModifier\"\n            and phase.startTime < toTime and phase.endTime > fromTime then\n            local phaseID\n            if phase.startTime < fromTime then\n                phase.endTime = fromTime\n                phaseID = acr.setAutoSimPhase(\n                    phase.id,\n                    phase.startTime,\n                    phase.endTime,\n                    phase.value\n                )\n            else\n                acr.removeAutoSimPhase(phase.id)\n            end\n            if phaseID then\n                phase.id = phaseID\n            else\n                table.remove(state.phases, index)\n            end\n        end\n    end\nend\n\nstate.uncertaintyID = acr.addAutoSimUncertainty(188.311, 10)\n-- 20 logged kills land at P5 +214.2 to +222.1 (midpoint +218.2 = this kill time); enrage deaths\n-- at +224.6. +/-5s covers +213.2 to +223.2, starting 10s before the kill; Resync moves it.\nstate.killUncertaintyID = acr.addAutoSimUncertainty(state.killTime - 10, 5)\ndata.ljAutoSimDmu = state\nself.used = true",
							name = "Initialize AutoSim Schedule",
							uuid = "f6e68ea4-3fbd-7c7c-bed4-b8e588879cbf",
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
				uuid = "205d3194-1e5a-fc9a-9fbc-5aedc83a4dda",
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
							actionLua = "local acr = TensorCore.API.TensorACR\nlocal state = data.ljAutoSimDmu\nlocal contentID = eventArgs.entityContentID\n\nif not state or not state.bossContentIDs[contentID] then\n    self.used = true\n    return\nend\n\n-- End phase 2's zero-damage period on the exact filtered Kefka.\nlocal damageLock = state.phaseTwoDamageLock\nif damageLock and not damageLock.closed\n    and eventArgs.entityID == damageLock.entityID\n    and not eventArgs.isTargetable then\n    local endedAt = acr.getAutoSimTime()\n    if endedAt > damageLock.startTime then\n        acr.setAutoSimPhase(damageLock.id, damageLock.startTime, endedAt, 0)\n    else\n        acr.removeAutoSimPhase(damageLock.id)\n    end\n    damageLock.closed = true\nend\n\nlocal phaseThreeLock = state.phaseThreeDamageLock\n\n-- Target assignment is independent of resync acceptance.\nif contentID == 6052 then\n    acr.setAutoSimTarget(1, eventArgs.entityID)\nelseif eventArgs.isTargetable then\n    acr.setAutoSimTarget(0, eventArgs.entityID)\nend\n\nlocal isDuo = contentID == 7691 or contentID == 6052\nif isDuo then\n    state.duoTargetable[contentID] = eventArgs.isTargetable\nend\n\nlocal now = acr.getAutoSimTime()\nlocal transitionKind = eventArgs.isTargetable and \"up\" or \"down\"\nlocal matchedIndex\nlocal boundary\nlocal bestDistance\n\n-- Match only unconsumed boundaries near their current predicted pull time.\n-- A later matching boundary can recover from an earlier missed event.\nfor index = state.nextBoundary, #state.boundaries do\n    local candidate = state.boundaries[index]\n    local delta = now - candidate.time\n    local bossMatches = (candidate.boss == \"duo\" and isDuo)\n        or (candidate.boss == \"kefka\" and contentID == 7131)\n    if bossMatches and candidate.kind == transitionKind\n        and delta >= -candidate.early and delta <= candidate.late then\n        local distance = math.abs(delta)\n        if not bestDistance or distance < bestDistance then\n            matchedIndex = index\n            boundary = candidate\n            bestDistance = distance\n        end\n    end\nend\n\nif not boundary then\n    self.used = true\n    return\nend\n\n-- Start the P4 transition only after both duo bosses are untargetable.\nif boundary.boss == \"duo\" and transitionKind == \"down\"\n    and (state.duoTargetable[7691] or state.duoTargetable[6052]) then\n    self.used = true\n    return\nend\n\nlocal expectedTime = boundary.time\nlocal delta = now - expectedTime\n\nstate.killTime = state.killTime + delta\nacr.setAutoSimKillTime(state.killTime)\nif state.killUncertaintyID then\n    acr.setAutoSimUncertainty(state.killUncertaintyID, state.killTime - 10, 5)\nend\n\n-- Damage stops being relevant once both duo bosses are untargetable.\n-- FullDowntime covers the remaining transition into Kefka.\n-- Shrinking closes before phases shift; extending closes after, so the lock\n-- never overlaps a BossModifier phase that has not moved yet.\nlocal function closePhaseThreeLock()\n    if not (phaseThreeLock and not phaseThreeLock.closed and matchedIndex == 5) then\n        return\n    end\n    if now > phaseThreeLock.startTime then\n        acr.setAutoSimPhase(\n            phaseThreeLock.id,\n            phaseThreeLock.startTime,\n            now,\n            0\n        )\n    else\n        acr.removeAutoSimPhase(phaseThreeLock.id)\n    end\n    phaseThreeLock.endTime = now\n    phaseThreeLock.closed = true\nend\n\nlocal lockShrinks = phaseThreeLock and now <= phaseThreeLock.endTime\nif lockShrinks then\n    closePhaseThreeLock()\nend\n\n-- At boundary 5 this moves FullDowntime's start to the exact duo-down time.\n-- At boundary 6 it moves FullDowntime's end to Kefka's exact targetable time.\n-- Move later phases first when shifting right and earlier phases first when\n-- shifting left, so a phase never overlaps a same-type phase that has not moved yet.\nlocal order = {}\nfor index = 1, #state.phases do\n    order[index] = index\nend\ntable.sort(order, function(a, b)\n    if delta > 0 then\n        return state.phases[a].startTime > state.phases[b].startTime\n    end\n    return state.phases[a].startTime < state.phases[b].startTime\nend)\n\nlocal removed = {}\nfor _, index in ipairs(order) do\n    local phase = state.phases[index]\n    local changed = false\n    if phase.startTime >= expectedTime - 0.0001 then\n        phase.startTime = phase.startTime + delta\n        changed = true\n    end\n    if phase.endTime >= expectedTime - 0.0001 then\n        phase.endTime = phase.endTime + delta\n        changed = true\n    end\n    if changed then\n        if phase.endTime <= phase.startTime then\n            -- An early boundary left no time for a phase that ends at it.\n            acr.removeAutoSimPhase(phase.id)\n            removed[index] = true\n        else\n            local phaseID = acr.setAutoSimPhase(\n                phase.id,\n                phase.startTime,\n                phase.endTime,\n                phase.value\n            )\n            if phaseID then\n                phase.id = phaseID\n            else\n                removed[index] = true\n            end\n        end\n    end\nend\nfor index = #state.phases, 1, -1 do\n    if removed[index] then\n        table.remove(state.phases, index)\n    end\nend\n\nif not lockShrinks then\n    closePhaseThreeLock()\nend\n\nfor index = matchedIndex, #state.boundaries do\n    state.boundaries[index].time = state.boundaries[index].time + delta\nend\n\nstate.uncertaintyID = acr.addAutoSimUncertainty(now, 0)\nstate.nextBoundary = matchedIndex + 1\n\nlocal nextBoundary = state.boundaries[state.nextBoundary]\nif nextBoundary then\n    local uncertaintyTime = nextBoundary.time - nextBoundary.lead\n    if uncertaintyTime <= now then\n        uncertaintyTime = now + 0.001\n    end\n    state.uncertaintyID = acr.addAutoSimUncertainty(\n        uncertaintyTime,\n        nextBoundary.uncertainty\n    )\nend\n\nself.used = true",
							name = "Track Boss State and Resync",
							uuid = "44bcdddb-b505-1669-a0f1-f958579f9604",
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
				uuid = "094970c6-d68b-2556-bad8-ca3347b8ff36",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "Autosim v4",
				uuid = "4f641a35-7482-6280-a25a-67b9253f4c2d",
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
							actionLua = "local acr = TensorCore.API.TensorACR\n\nacr.setAutoSimKillTime(1106.098)\n--acr.setAutoSimUnexpectedMovementPct(0)\n--acr.setAutoSimUnexpectedMeleeDowntimePct(0)\nacr.clearAutoSimPhases(\"FullDowntime\")\nacr.clearAutoSimPhases(\"CasterDowntime\")\nacr.clearAutoSimPhases(\"MeleeDowntime\")\nacr.clearAutoSimPhases(\"RaidBuff\")\nacr.clearAutoSimPhases(\"BossModifier\")\nacr.clearAutoSimUncertainty()\nacr.clearAutoSimPhases(\"Stun\")\nacr.clearAutoSimPhases(\"SelfCircle5Yd\")\nacr.clearAutoSimPhases(\"SelfCircle8Yd\")\nacr.clearAutoSimPhases(\"Cone8Yd\")\nacr.clearAutoSimPhases(\"Line10Yd\")\nacr.clearAutoSimPhases(\"Line15Yd\")\nacr.clearAutoSimPhases(\"TargetCircle5YdRange3Yd\")\nacr.clearAutoSimPhases(\"TargetCircle5YdRange5Yd\")\nacr.clearAutoSimPhases(\"TargetCircle5YdRange20Yd\")\nacr.clearAutoSimPhases(\"TargetCircle5YdRange25Yd\")\nacr.clearAutoSimPhases(\"Positional\")\nacr.clearAutoSimPhases(\"TargetLifetime\", 0)\nacr.clearAutoSimPhases(\"DotAvailability\", 0)\nacr.clearAutoSimPhases(\"TargetLifetime\", 1)\nacr.clearAutoSimPhases(\"DotAvailability\", 1)\nacr.clearAutoSimTarget(1)\n\nlocal state = {\n    killTime = 1106.098,\n    nextBoundary = 1,\n    phases = {},\n    boundaries = {\n        { kind = \"down\", time = 197.52, uncertainty = 0, lead = 0, boss = \"kefka\", early = 10, late = 10 },\n        { kind = \"up\", time = 207.88, uncertainty = 0, lead = 0, boss = \"kefka\", early = 10, late = 10 },\n        { kind = \"down\", time = 381.481, uncertainty = 10, lead = 10, boss = \"kefka\", early = 10, late = 10 },\n        { kind = \"up\", time = 427.46, uncertainty = 0, lead = 0, boss = \"duo\", early = 10, late = 10 },\n        { kind = \"down\", time = 720.490, uncertainty = 10, lead = 30.490, boss = \"duo\", early = 30.49, late = 10 },\n        { kind = \"up\", time = 724.930, uncertainty = 10, lead = 10, boss = \"kefka\", early = 10, late = 10 },\n        { kind = \"down\", time = 856.953, uncertainty = 10, lead = 10, boss = \"kefka\", early = 10, late = 10 },\n        { kind = \"up\", time = 887.943, uncertainty = 10, lead = 10, boss = \"kefka\", early = 10, late = 10 },\n    },\n    bossContentIDs = {\n        [7131] = true, -- Kefka\n        [7691] = true, -- Chaos\n        [6052] = true, -- Exdeath\n    },\n    duoTargetable = { [7691] = true, [6052] = true },\n}\n\nlocal phaseSpecs = {\n    Stun = {\n        { startTime = 174.37, endTime = 180 },\n        { startTime = 387.876, endTime = 420 },\n    },\n    -- P3 duo target counts, tuned from 22 logged pulls (times are P3 start 427.46 + offset):\n    -- +85 to +92 Vacuum Wave knockback and limit cut: no two-boss hits.\n    -- +92 to +107 bosses 12-15y apart: self circles rarely reach both (6/21), other shapes do.\n    -- P3 start: bosses 16y apart; lines, cones and target circles hit both, self circles do not.\n    SelfCircle5Yd = {\n        { startTime = 462.395, endTime = 512.46, value = 2 }, -- P3 +35 to +85\n        { startTime = 534.46, endTime = 544.89, value = 2 }, -- P3 +107 to window end\n    },\n    TargetCircle5YdRange25Yd = {\n        { startTime = 427.46, endTime = 430.62, value = 2 }, -- P3 start\n        { startTime = 462.395, endTime = 512.46, value = 2 }, -- P3 +35 to +85\n        { startTime = 519.46, endTime = 544.89, value = 2 }, -- P3 +92 to window end\n    },\n    Positional = {\n        -- P1\n        { startTime = 42.2, endTime = 49.5, value = 1 }, -- Wave Cannon spread + towers. Rear Blocked.\n        { startTime = 86.3, endTime = 91.3, value = 3 }, -- Gravitas stack at A. Both Blocked.\n        { startTime = 104.8, endTime = 109.8, value = 3 }, -- Gravitas stack at C. Both Blocked.\n    },\n    TargetLifetime = {\n        { startTime = 0, endTime = 197.52, value = 1, targetSlot = 0 },\n        { startTime = 207.88, endTime = 381.481, value = 1, targetSlot = 0 },\n        { startTime = 427.46, endTime = 720.490, value = 1, targetSlot = 0 },\n        { startTime = 724.930, endTime = 856.953, value = 1, targetSlot = 0 },\n        { startTime = 887.943, endTime = 1106.098, value = 1, targetSlot = 0 },\n        { startTime = 427.46, endTime = 720.490, value = 1, targetSlot = 1 },\n    },\n    DotAvailability = {\n        { startTime = 0, endTime = 197.52, targetSlot = 0 },\n        { startTime = 207.88, endTime = 381.481, targetSlot = 0 },\n        { startTime = 427.46, endTime = 720.490, targetSlot = 0 },\n        { startTime = 724.930, endTime = 856.953, targetSlot = 0 },\n        { startTime = 887.943, endTime = 1106.098, targetSlot = 0 },\n        { startTime = 427.46, endTime = 430.62, targetSlot = 1 },\n        { startTime = 462.395, endTime = 544.89, targetSlot = 1 },\n    },\n    MeleeDowntime = {\n        -- P2 Trine run-out to Wings of Destruction: 18 logged pulls are out of melee\n        -- from P2 end -13.5s to -9.0s (distance > 6-8y, matching the GCD gap).\n        { startTime = 367.981, endTime = 372.481 },\n    },\n    FullDowntime = {\n    { startTime = 197.52, endTime = 207.88 },\n    { startTime = 381.481, endTime = 427.46 },\n    { startTime = 720.490, endTime = 724.930 },\n    { startTime = 856.953, endTime = 887.943 },\n    },\n    RaidBuff = {\n    { startTime = 1.560, endTime = 21.115, value = 1.1025 },\n    { startTime = 122.595, endTime = 142.506, value = 1.1025 },\n    { startTime = 243.152, endTime = 262.214, value = 1.1025 },\n    { startTime = 363.497, endTime = 382.736, value = 1.1025 },\n    { startTime = 484.703, endTime = 502.520, value = 1.1025 },\n    { startTime = 604.734, endTime = 623.706, value = 1.1025 },\n    { startTime = 725.768, endTime = 745.411, value = 1.1025 },\n    { startTime = 845.888, endTime = 865.798, value = 1.1025 },\n    { startTime = 968.340, endTime = 987.002, value = 1.1025 },\n    { startTime = 1088.214, endTime = 1106.098, value = 1.1025 },\n    },\n}\n\nfor phaseType, specs in pairs(phaseSpecs) do\n    for _, spec in ipairs(specs) do\n        local value = spec.value or 1\n        local phaseID = acr.addAutoSimPhase(\n            phaseType,\n            spec.startTime,\n            spec.endTime,\n            value,\n            spec.targetSlot or 0\n        )\n        if phaseID then\n            state.phases[#state.phases + 1] = {\n                id = phaseID,\n                phaseType = phaseType,\n                startTime = spec.startTime,\n                endTime = spec.endTime,\n                value = value,\n            }\n        end\n    end\nend\n\n-- Potion guidance via BossModifier phases.\n-- Pot (846) cooldown is 270s: ~122 -> ~427 -> ~725 -> ~1073 fits.\n-- Phases go into state.phases so Targetability and Resync shifts them.\nlocal p3Start = state.boundaries[4].time\nlocal p3End = state.boundaries[5].time\nlocal p4Start = state.boundaries[6].time\nlocal potWindows = {\n    -- Late P3 until the 1 HP lock: a pot after ~455 is still on cooldown at P4 start (725),\n    -- so make the 604.7 raid buff window worth less than the P4 window.\n    { startTime = 600, endTime = p3End, value = 0.65 }, -- Late P3: keep pot/burst for P4\n    { startTime = p4Start + 0.1, endTime = p4Start + 30.1, value = 1.3 }, -- P4 start, raid buffs at 725.8\n}\n\nfor _, window in ipairs(potWindows) do\n    local phaseID = acr.addAutoSimPhase(\n        \"BossModifier\",\n        window.startTime,\n        window.endTime,\n        window.value\n    )\n    if phaseID then\n        state.phases[#state.phases + 1] = {\n            id = phaseID,\n            phaseType = \"BossModifier\",\n            startTime = window.startTime,\n            endTime = window.endTime,\n            value = window.value,\n        }\n    end\nend\n\n-- Called by the P2/P3 zero-damage locks before they add their phase,\n-- because BossModifier phases cannot overlap.\nstate.trimBossModifiers = function(fromTime, toTime)\n    for index = #state.phases, 1, -1 do\n        local phase = state.phases[index]\n        if phase.phaseType == \"BossModifier\"\n            and phase.startTime < toTime and phase.endTime > fromTime then\n            local phaseID\n            if phase.startTime < fromTime then\n                phase.endTime = fromTime\n                phaseID = acr.setAutoSimPhase(\n                    phase.id,\n                    phase.startTime,\n                    phase.endTime,\n                    phase.value\n                )\n            else\n                acr.removeAutoSimPhase(phase.id)\n            end\n            if phaseID then\n                phase.id = phaseID\n            else\n                table.remove(state.phases, index)\n            end\n        end\n    end\nend\n\nstate.uncertaintyID = acr.addAutoSimUncertainty(188.311, 10)\n-- 20 logged kills land at P5 +214.2 to +222.1 (midpoint +218.2 = this kill time); enrage deaths\n-- at +224.6. +/-5s covers +213.2 to +223.2, starting 10s before the kill; Resync moves it.\nstate.killUncertaintyID = acr.addAutoSimUncertainty(state.killTime - 10, 5)\ndata.ljAutoSimDmu = state\nself.used = true",
							name = "Initialize AutoSim Schedule",
							uuid = "f6e68ea4-3fbd-7c7c-bed4-b8e588879cbf",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				displayPath = "Autosim v4",
				enabled = false,
				eventType = 16,
				mechanicTime = 15.261765625,
				name = "[AutoSim] Initialize DMU",
				timeRange = true,
				timelineIndex = 1,
				timerStartOffset = -16,
				uuid = "66226c27-2c18-9e81-986f-837936723c53",
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
							aType = "Lua",
							actionLua = "local acr = TensorCore.API.TensorACR\nlocal state = data.ljAutoSimDmu\nlocal contentID = eventArgs.entityContentID\n\nif not state or not state.bossContentIDs[contentID] then\n    self.used = true\n    return\nend\n\n-- End phase 2's zero-damage period on the exact filtered Kefka.\nlocal damageLock = state.phaseTwoDamageLock\nif damageLock and not damageLock.closed\n    and eventArgs.entityID == damageLock.entityID\n    and not eventArgs.isTargetable then\n    local endedAt = acr.getAutoSimTime()\n    if endedAt > damageLock.startTime then\n        acr.setAutoSimPhase(damageLock.id, damageLock.startTime, endedAt, 0)\n    else\n        acr.removeAutoSimPhase(damageLock.id)\n    end\n    damageLock.closed = true\nend\n\nlocal phaseThreeLock = state.phaseThreeDamageLock\n\n-- Target assignment is independent of resync acceptance.\nif contentID == 6052 then\n    acr.setAutoSimTarget(1, eventArgs.entityID)\nelseif eventArgs.isTargetable then\n    acr.setAutoSimTarget(0, eventArgs.entityID)\nend\n\nlocal isDuo = contentID == 7691 or contentID == 6052\nif isDuo then\n    state.duoTargetable[contentID] = eventArgs.isTargetable\nend\n\nlocal now = acr.getAutoSimTime()\nlocal transitionKind = eventArgs.isTargetable and \"up\" or \"down\"\nlocal matchedIndex\nlocal boundary\nlocal bestDistance\n\n-- Match only unconsumed boundaries near their current predicted pull time.\n-- A later matching boundary can recover from an earlier missed event.\nfor index = state.nextBoundary, #state.boundaries do\n    local candidate = state.boundaries[index]\n    local delta = now - candidate.time\n    local bossMatches = (candidate.boss == \"duo\" and isDuo)\n        or (candidate.boss == \"kefka\" and contentID == 7131)\n    if bossMatches and candidate.kind == transitionKind\n        and delta >= -candidate.early and delta <= candidate.late then\n        local distance = math.abs(delta)\n        if not bestDistance or distance < bestDistance then\n            matchedIndex = index\n            boundary = candidate\n            bestDistance = distance\n        end\n    end\nend\n\nif not boundary then\n    self.used = true\n    return\nend\n\n-- Start the P4 transition only after both duo bosses are untargetable.\nif boundary.boss == \"duo\" and transitionKind == \"down\"\n    and (state.duoTargetable[7691] or state.duoTargetable[6052]) then\n    self.used = true\n    return\nend\n\nlocal expectedTime = boundary.time\nlocal delta = now - expectedTime\n\nstate.killTime = state.killTime + delta\nacr.setAutoSimKillTime(state.killTime)\nif state.killUncertaintyID then\n    acr.setAutoSimUncertainty(state.killUncertaintyID, state.killTime - 10, 5)\nend\n\n-- Damage stops being relevant once both duo bosses are untargetable.\n-- FullDowntime covers the remaining transition into Kefka.\n-- Shrinking closes before phases shift; extending closes after, so the lock\n-- never overlaps a BossModifier phase that has not moved yet.\nlocal function closePhaseThreeLock()\n    if not (phaseThreeLock and not phaseThreeLock.closed and matchedIndex == 5) then\n        return\n    end\n    if now > phaseThreeLock.startTime then\n        acr.setAutoSimPhase(\n            phaseThreeLock.id,\n            phaseThreeLock.startTime,\n            now,\n            0\n        )\n    else\n        acr.removeAutoSimPhase(phaseThreeLock.id)\n    end\n    phaseThreeLock.endTime = now\n    phaseThreeLock.closed = true\nend\n\nlocal lockShrinks = phaseThreeLock and now <= phaseThreeLock.endTime\nif lockShrinks then\n    closePhaseThreeLock()\nend\n\n-- At boundary 5 this moves FullDowntime's start to the exact duo-down time.\n-- At boundary 6 it moves FullDowntime's end to Kefka's exact targetable time.\n-- Move later phases first when shifting right and earlier phases first when\n-- shifting left, so a phase never overlaps a same-type phase that has not moved yet.\nlocal order = {}\nfor index = 1, #state.phases do\n    order[index] = index\nend\ntable.sort(order, function(a, b)\n    if delta > 0 then\n        return state.phases[a].startTime > state.phases[b].startTime\n    end\n    return state.phases[a].startTime < state.phases[b].startTime\nend)\n\nlocal removed = {}\nfor _, index in ipairs(order) do\n    local phase = state.phases[index]\n    local changed = false\n    if phase.startTime >= expectedTime - 0.0001 then\n        phase.startTime = phase.startTime + delta\n        changed = true\n    end\n    if phase.endTime >= expectedTime - 0.0001 then\n        phase.endTime = phase.endTime + delta\n        changed = true\n    end\n    if changed then\n        if phase.endTime <= phase.startTime then\n            -- An early boundary left no time for a phase that ends at it.\n            acr.removeAutoSimPhase(phase.id)\n            removed[index] = true\n        else\n            local phaseID = acr.setAutoSimPhase(\n                phase.id,\n                phase.startTime,\n                phase.endTime,\n                phase.value\n            )\n            if phaseID then\n                phase.id = phaseID\n            else\n                removed[index] = true\n            end\n        end\n    end\nend\nfor index = #state.phases, 1, -1 do\n    if removed[index] then\n        table.remove(state.phases, index)\n    end\nend\n\nif not lockShrinks then\n    closePhaseThreeLock()\nend\n\nfor index = matchedIndex, #state.boundaries do\n    state.boundaries[index].time = state.boundaries[index].time + delta\nend\n\nstate.uncertaintyID = acr.addAutoSimUncertainty(now, 0)\nstate.nextBoundary = matchedIndex + 1\n\nlocal nextBoundary = state.boundaries[state.nextBoundary]\nif nextBoundary then\n    local uncertaintyTime = nextBoundary.time - nextBoundary.lead\n    if uncertaintyTime <= now then\n        uncertaintyTime = now + 0.001\n    end\n    state.uncertaintyID = acr.addAutoSimUncertainty(\n        uncertaintyTime,\n        nextBoundary.uncertainty\n    )\nend\n\nself.used = true",
							name = "Track Boss State and Resync",
							uuid = "44bcdddb-b505-1669-a0f1-f958579f9604",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				displayPath = "Autosim v4",
				enabled = false,
				eventType = 26,
				loop = true,
				mechanicTime = 15.261765625,
				name = "[AutoSim] Targetability and Resync",
				timeRange = true,
				timelineIndex = 1,
				timerEndOffset = 1200,
				timerStartOffset = -16,
				uuid = "ee5a1e95-39f2-489c-b18e-6e1059e0a232",
				version = 2,
			},
			inheritedIndex = 24,
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "Autosim v5",
				uuid = "97c49073-e037-4f49-81f2-2323a7a9c1e1",
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
							actionLua = "local acr = TensorCore.API.TensorACR\n\nacr.setAutoSimKillTime(1106.098)\n--acr.setAutoSimUnexpectedMovementPct(0)\n--acr.setAutoSimUnexpectedMeleeDowntimePct(0)\nacr.clearAutoSimPhases(\"FullDowntime\")\nacr.clearAutoSimPhases(\"CasterDowntime\")\nacr.clearAutoSimPhases(\"MeleeDowntime\")\nacr.clearAutoSimPhases(\"RaidBuff\")\nacr.clearAutoSimPhases(\"BossModifier\")\nacr.clearAutoSimUncertainty()\nacr.clearAutoSimPhases(\"Stun\")\nacr.clearAutoSimPhases(\"SelfCircle5Yd\")\nacr.clearAutoSimPhases(\"SelfCircle8Yd\")\nacr.clearAutoSimPhases(\"Cone8Yd\")\nacr.clearAutoSimPhases(\"Line10Yd\")\nacr.clearAutoSimPhases(\"Line15Yd\")\nacr.clearAutoSimPhases(\"TargetCircle5YdRange3Yd\")\nacr.clearAutoSimPhases(\"TargetCircle5YdRange5Yd\")\nacr.clearAutoSimPhases(\"TargetCircle5YdRange20Yd\")\nacr.clearAutoSimPhases(\"TargetCircle5YdRange25Yd\")\nacr.clearAutoSimPhases(\"Positional\")\nacr.clearAutoSimPhases(\"TargetLifetime\", 0)\nacr.clearAutoSimPhases(\"DotAvailability\", 0)\nacr.clearAutoSimPhases(\"TargetLifetime\", 1)\nacr.clearAutoSimPhases(\"DotAvailability\", 1)\nacr.clearAutoSimTarget(1)\n\nlocal state = {\n    killTime = 1106.098,\n    nextBoundary = 1,\n    phases = {},\n    boundaries = {\n        { kind = \"down\", time = 197.52, uncertainty = 0, lead = 0, boss = \"kefka\", early = 10, late = 10 },\n        { kind = \"up\", time = 207.88, uncertainty = 0, lead = 0, boss = \"kefka\", early = 10, late = 10 },\n        { kind = \"down\", time = 381.481, uncertainty = 10, lead = 10, boss = \"kefka\", early = 10, late = 10 },\n        { kind = \"up\", time = 427.46, uncertainty = 0, lead = 0, boss = \"duo\", early = 10, late = 10 },\n        { kind = \"down\", time = 720.490, uncertainty = 10, lead = 30.490, boss = \"duo\", early = 30.49, late = 10 },\n        { kind = \"up\", time = 724.930, uncertainty = 10, lead = 10, boss = \"kefka\", early = 10, late = 10 },\n        { kind = \"down\", time = 856.953, uncertainty = 10, lead = 10, boss = \"kefka\", early = 10, late = 10 },\n        { kind = \"up\", time = 887.943, uncertainty = 10, lead = 10, boss = \"kefka\", early = 10, late = 10 },\n    },\n    bossContentIDs = {\n        [7131] = true, -- Kefka\n        [7691] = true, -- Chaos\n        [6052] = true, -- Exdeath\n    },\n    duoTargetable = { [7691] = true, [6052] = true },\n}\n\nlocal phaseSpecs = {\n    Stun = {\n        { startTime = 174.37, endTime = 180 },\n        { startTime = 387.876, endTime = 420 },\n    },\n    -- P3 duo target counts, tuned from 22 logged pulls (times are P3 start 427.46 + offset):\n    -- +85 to +92 Vacuum Wave knockback and limit cut: no two-boss hits.\n    -- +92 to +107 bosses 12-15y apart: self circles rarely reach both (6/21), other shapes do.\n    -- P3 start: bosses 16y apart; lines, cones and target circles hit both, self circles do not.\n    SelfCircle5Yd = {\n        { startTime = 462.395, endTime = 512.46, value = 2 }, -- P3 +35 to +85\n        { startTime = 534.46, endTime = 544.89, value = 2 }, -- P3 +107 to window end\n    },\n    TargetCircle5YdRange20Yd = {\n        { startTime = 427.46, endTime = 430.62, value = 2 }, -- P3 start\n        { startTime = 462.395, endTime = 512.46, value = 2 }, -- P3 +35 to +85\n        { startTime = 519.46, endTime = 544.89, value = 2 }, -- P3 +92 to window end\n    },\n    Positional = {\n        -- P1\n        { startTime = 42.2, endTime = 49.5, value = 1 }, -- Wave Cannon spread + towers. Rear Blocked.\n        { startTime = 86.3, endTime = 91.3, value = 3 }, -- Gravitas stack at A. Both Blocked.\n        { startTime = 104.8, endTime = 109.8, value = 3 }, -- Gravitas stack at C. Both Blocked.\n    },\n    TargetLifetime = {\n        { startTime = 0, endTime = 197.52, value = 1, targetSlot = 0 },\n        { startTime = 207.88, endTime = 381.481, value = 1, targetSlot = 0 },\n        { startTime = 427.46, endTime = 720.490, value = 1, targetSlot = 0 },\n        { startTime = 724.930, endTime = 856.953, value = 1, targetSlot = 0 },\n        { startTime = 887.943, endTime = 1106.098, value = 1, targetSlot = 0 },\n        { startTime = 427.46, endTime = 720.490, value = 1, targetSlot = 1 },\n    },\n    DotAvailability = {\n        { startTime = 0, endTime = 197.52, targetSlot = 0 },\n        { startTime = 207.88, endTime = 381.481, targetSlot = 0 },\n        { startTime = 427.46, endTime = 720.490, targetSlot = 0 },\n        { startTime = 724.930, endTime = 856.953, targetSlot = 0 },\n        { startTime = 887.943, endTime = 1106.098, targetSlot = 0 },\n        { startTime = 427.46, endTime = 430.62, targetSlot = 1 },\n        { startTime = 462.395, endTime = 544.89, targetSlot = 1 },\n    },\n    MeleeDowntime = {\n        -- P2 Trine run-out to Wings of Destruction\n        { startTime = 367.981, endTime = 372.481 },\n    },\n    FullDowntime = {\n    { startTime = 197.52, endTime = 207.88 },\n    { startTime = 381.481, endTime = 427.46 },\n    { startTime = 720.490, endTime = 724.930 },\n    { startTime = 856.953, endTime = 887.943 },\n    },\n    RaidBuff = {\n    { startTime = 1.560, endTime = 21.115, value = 1.1025 },\n    { startTime = 122.595, endTime = 142.506, value = 1.1025 },\n    { startTime = 243.152, endTime = 262.214, value = 1.1025 },\n    { startTime = 363.497, endTime = 382.736, value = 1.1025 },\n    { startTime = 484.703, endTime = 502.520, value = 1.1025 },\n    { startTime = 604.734, endTime = 623.706, value = 1.1025 },\n    { startTime = 725.768, endTime = 745.411, value = 1.1025 },\n    { startTime = 845.888, endTime = 865.798, value = 1.1025 },\n    { startTime = 968.340, endTime = 987.002, value = 1.1025 },\n    { startTime = 1088.214, endTime = 1106.098, value = 1.1025 },\n    },\n}\n\nfor phaseType, specs in pairs(phaseSpecs) do\n    for _, spec in ipairs(specs) do\n        local value = spec.value or 1\n        local phaseID = acr.addAutoSimPhase(\n            phaseType,\n            spec.startTime,\n            spec.endTime,\n            value,\n            spec.targetSlot or 0\n        )\n        if phaseID then\n            state.phases[#state.phases + 1] = {\n                id = phaseID,\n                phaseType = phaseType,\n                startTime = spec.startTime,\n                endTime = spec.endTime,\n                value = value,\n            }\n        end\n    end\nend\n\n-- Potion guidance via BossModifier phases.\n-- Pot (846) cooldown is 270s: ~122 -> ~427 -> ~725 -> ~1073 fits.\n-- Phases go into state.phases so Targetability and Resync shifts them.\nlocal p3Start = state.boundaries[4].time\nlocal p3End = state.boundaries[5].time\nlocal p4Start = state.boundaries[6].time\nlocal potWindows = {\n    -- Late P3 until the 1 HP lock: a pot after ~455 is still on cooldown at P4 start (725),\n    -- so make the 604.7 raid buff window worth less than the P4 window.\n    { startTime = 600, endTime = p3End, value = 0.65 }, -- Late P3: keep pot/burst for P4\n    { startTime = p4Start + 0.1, endTime = p4Start + 30.1, value = 1.3 }, -- P4 start, raid buffs at 725.8\n}\n\nfor _, window in ipairs(potWindows) do\n    local phaseID = acr.addAutoSimPhase(\n        \"BossModifier\",\n        window.startTime,\n        window.endTime,\n        window.value\n    )\n    if phaseID then\n        state.phases[#state.phases + 1] = {\n            id = phaseID,\n            phaseType = \"BossModifier\",\n            startTime = window.startTime,\n            endTime = window.endTime,\n            value = window.value,\n        }\n    end\nend\n\n-- Called by the P2/P3 zero-damage locks before they add their phase,\n-- because BossModifier phases cannot overlap.\nstate.trimBossModifiers = function(fromTime, toTime)\n    for index = #state.phases, 1, -1 do\n        local phase = state.phases[index]\n        if phase.phaseType == \"BossModifier\"\n            and phase.startTime < toTime and phase.endTime > fromTime then\n            local phaseID\n            if phase.startTime < fromTime then\n                phase.endTime = fromTime\n                phaseID = acr.setAutoSimPhase(\n                    phase.id,\n                    phase.startTime,\n                    phase.endTime,\n                    phase.value\n                )\n            else\n                acr.removeAutoSimPhase(phase.id)\n            end\n            if phaseID then\n                phase.id = phaseID\n            else\n                table.remove(state.phases, index)\n            end\n        end\n    end\nend\n\nstate.uncertaintyID = acr.addAutoSimUncertainty(188.311, 10)\n-- 20 logged kills land at P5 +214.2 to +222.1 (midpoint +218.2 = this kill time); enrage deaths\n-- at +224.6. +/-5s covers +213.2 to +223.2, starting 10s before the kill; Resync moves it.\nstate.killUncertaintyID = acr.addAutoSimUncertainty(state.killTime - 10, 5)\ndata.ljAutoSimDmu = state\nself.used = true",
							name = "Initialize AutoSim Schedule",
							uuid = "1c55accc-e786-47ad-a189-bd57eb20c12a",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				displayPath = "Autosim v5",
				enabled = false,
				eventType = 16,
				mechanicTime = 15.261765625,
				name = "[AutoSim] Initialize DMU",
				timeRange = true,
				timelineIndex = 1,
				timerStartOffset = -16,
				uuid = "b566945a-992a-4361-9aef-3d73cf0dd99b",
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
							actionLua = "local acr = TensorCore.API.TensorACR\nlocal state = data.ljAutoSimDmu\nlocal contentID = eventArgs.entityContentID\n\nif not state or not state.bossContentIDs[contentID] then\n    self.used = true\n    return\nend\n\n-- End phase 2's zero-damage period on the exact filtered Kefka.\nlocal damageLock = state.phaseTwoDamageLock\nif damageLock and not damageLock.closed\n    and eventArgs.entityID == damageLock.entityID\n    and not eventArgs.isTargetable then\n    local endedAt = acr.getAutoSimTime()\n    if endedAt > damageLock.startTime then\n        acr.setAutoSimPhase(damageLock.id, damageLock.startTime, endedAt, 0)\n    else\n        acr.removeAutoSimPhase(damageLock.id)\n    end\n    damageLock.closed = true\nend\n\nlocal phaseThreeLock = state.phaseThreeDamageLock\n\n-- Target assignment is independent of resync acceptance.\nif contentID == 6052 then\n    acr.setAutoSimTarget(1, eventArgs.entityID)\nelseif eventArgs.isTargetable then\n    acr.setAutoSimTarget(0, eventArgs.entityID)\nend\n\nlocal isDuo = contentID == 7691 or contentID == 6052\nif isDuo then\n    state.duoTargetable[contentID] = eventArgs.isTargetable\nend\n\nlocal now = acr.getAutoSimTime()\nlocal transitionKind = eventArgs.isTargetable and \"up\" or \"down\"\nlocal matchedIndex\nlocal boundary\nlocal bestDistance\n\n-- Match only unconsumed boundaries near their current predicted pull time.\n-- A later matching boundary can recover from an earlier missed event.\nfor index = state.nextBoundary, #state.boundaries do\n    local candidate = state.boundaries[index]\n    local delta = now - candidate.time\n    local bossMatches = (candidate.boss == \"duo\" and isDuo)\n        or (candidate.boss == \"kefka\" and contentID == 7131)\n    if bossMatches and candidate.kind == transitionKind\n        and delta >= -candidate.early and delta <= candidate.late then\n        local distance = math.abs(delta)\n        if not bestDistance or distance < bestDistance then\n            matchedIndex = index\n            boundary = candidate\n            bestDistance = distance\n        end\n    end\nend\n\nif not boundary then\n    self.used = true\n    return\nend\n\n-- Start the P4 transition only after both duo bosses are untargetable.\nif boundary.boss == \"duo\" and transitionKind == \"down\"\n    and (state.duoTargetable[7691] or state.duoTargetable[6052]) then\n    self.used = true\n    return\nend\n\nlocal expectedTime = boundary.time\nlocal delta = now - expectedTime\n\nstate.killTime = state.killTime + delta\nacr.setAutoSimKillTime(state.killTime)\nif state.killUncertaintyID then\n    acr.setAutoSimUncertainty(state.killUncertaintyID, state.killTime - 10, 5)\nend\n\n-- Damage stops being relevant once both duo bosses are untargetable.\n-- FullDowntime covers the remaining transition into Kefka.\n-- Shrinking closes before phases shift; extending closes after, so the lock\n-- never overlaps a BossModifier phase that has not moved yet.\nlocal function closePhaseThreeLock()\n    if not (phaseThreeLock and not phaseThreeLock.closed and matchedIndex == 5) then\n        return\n    end\n    if now > phaseThreeLock.startTime then\n        acr.setAutoSimPhase(\n            phaseThreeLock.id,\n            phaseThreeLock.startTime,\n            now,\n            0\n        )\n    else\n        acr.removeAutoSimPhase(phaseThreeLock.id)\n    end\n    phaseThreeLock.endTime = now\n    phaseThreeLock.closed = true\nend\n\nlocal lockShrinks = phaseThreeLock and now <= phaseThreeLock.endTime\nif lockShrinks then\n    closePhaseThreeLock()\nend\n\n-- At boundary 5 this moves FullDowntime's start to the exact duo-down time.\n-- At boundary 6 it moves FullDowntime's end to Kefka's exact targetable time.\n-- Move later phases first when shifting right and earlier phases first when\n-- shifting left, so a phase never overlaps a same-type phase that has not moved yet.\nlocal order = {}\nfor index = 1, #state.phases do\n    order[index] = index\nend\ntable.sort(order, function(a, b)\n    if delta > 0 then\n        return state.phases[a].startTime > state.phases[b].startTime\n    end\n    return state.phases[a].startTime < state.phases[b].startTime\nend)\n\nlocal removed = {}\nfor _, index in ipairs(order) do\n    local phase = state.phases[index]\n    local changed = false\n    if phase.startTime >= expectedTime - 0.0001 then\n        phase.startTime = phase.startTime + delta\n        changed = true\n    end\n    if phase.endTime >= expectedTime - 0.0001 then\n        phase.endTime = phase.endTime + delta\n        changed = true\n    end\n    if changed then\n        if phase.endTime <= phase.startTime then\n            -- An early boundary left no time for a phase that ends at it.\n            acr.removeAutoSimPhase(phase.id)\n            removed[index] = true\n        else\n            local phaseID = acr.setAutoSimPhase(\n                phase.id,\n                phase.startTime,\n                phase.endTime,\n                phase.value\n            )\n            if phaseID then\n                phase.id = phaseID\n            else\n                removed[index] = true\n            end\n        end\n    end\nend\nfor index = #state.phases, 1, -1 do\n    if removed[index] then\n        table.remove(state.phases, index)\n    end\nend\n\nif not lockShrinks then\n    closePhaseThreeLock()\nend\n\nfor index = matchedIndex, #state.boundaries do\n    state.boundaries[index].time = state.boundaries[index].time + delta\nend\n\nstate.uncertaintyID = acr.addAutoSimUncertainty(now, 0)\nstate.nextBoundary = matchedIndex + 1\n\nlocal nextBoundary = state.boundaries[state.nextBoundary]\nif nextBoundary then\n    local uncertaintyTime = nextBoundary.time - nextBoundary.lead\n    if uncertaintyTime <= now then\n        uncertaintyTime = now + 0.001\n    end\n    state.uncertaintyID = acr.addAutoSimUncertainty(\n        uncertaintyTime,\n        nextBoundary.uncertainty\n    )\nend\n\nself.used = true",
							name = "Track Boss State and Resync",
							uuid = "5469a3e8-8239-42f9-8de1-7f4f2d6ae55b",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				displayPath = "Autosim v5",
				enabled = false,
				eventType = 26,
				loop = true,
				mechanicTime = 15.261765625,
				name = "[AutoSim] Targetability and Resync",
				timeRange = true,
				timelineIndex = 1,
				timerEndOffset = 1200,
				timerStartOffset = -16,
				uuid = "e66b3a92-b6ca-40ea-9ec5-a38a49cb2ccc",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "Autosim v6",
				uuid = "a5a33730-39ae-edf8-8e3b-dbaaeddf95d4",
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
							actionLua = "local acr = TensorCore.API.TensorACR\n\nacr.setAutoSimKillTime(1106.098)\n--acr.setAutoSimUnexpectedMovementPct(0)\n--acr.setAutoSimUnexpectedMeleeDowntimePct(0)\nacr.clearAutoSimPhases(\"FullDowntime\")\nacr.clearAutoSimPhases(\"CasterDowntime\")\nacr.clearAutoSimPhases(\"MeleeDowntime\")\nacr.clearAutoSimPhases(\"RaidBuff\")\nacr.clearAutoSimPhases(\"BossModifier\")\nacr.clearAutoSimUncertainty()\nacr.clearAutoSimPhases(\"Stun\")\nacr.clearAutoSimPhases(\"SelfCircle5Yd\")\nacr.clearAutoSimPhases(\"SelfCircle8Yd\")\nacr.clearAutoSimPhases(\"Cone8Yd\")\nacr.clearAutoSimPhases(\"Line10Yd\")\nacr.clearAutoSimPhases(\"Line15Yd\")\nacr.clearAutoSimPhases(\"TargetCircle5YdRange3Yd\")\nacr.clearAutoSimPhases(\"TargetCircle5YdRange5Yd\")\nacr.clearAutoSimPhases(\"TargetCircle5YdRange20Yd\")\nacr.clearAutoSimPhases(\"TargetCircle5YdRange25Yd\")\nacr.clearAutoSimPhases(\"Positional\")\nacr.clearAutoSimPhases(\"TargetLifetime\", 0)\nacr.clearAutoSimPhases(\"DotAvailability\", 0)\nacr.clearAutoSimPhases(\"TargetLifetime\", 1)\nacr.clearAutoSimPhases(\"DotAvailability\", 1)\nacr.clearAutoSimTarget(1)\n\nlocal state = {\n    killTime = 1106.098,\n    nextBoundary = 1,\n    phases = {},\n    boundaries = {\n        { kind = \"down\", time = 197.52, uncertainty = 0, lead = 0, boss = \"kefka\", early = 10, late = 10 },\n        { kind = \"up\", time = 207.88, uncertainty = 0, lead = 0, boss = \"kefka\", early = 10, late = 10 },\n        { kind = \"down\", time = 381.481, uncertainty = 10, lead = 10, boss = \"kefka\", early = 10, late = 10 },\n        { kind = \"up\", time = 427.46, uncertainty = 0, lead = 0, boss = \"duo\", early = 10, late = 10 },\n        { kind = \"down\", time = 720.490, uncertainty = 10, lead = 30.490, boss = \"duo\", early = 30.49, late = 10 },\n        { kind = \"up\", time = 724.930, uncertainty = 10, lead = 10, boss = \"kefka\", early = 10, late = 10 },\n        { kind = \"down\", time = 856.953, uncertainty = 10, lead = 10, boss = \"kefka\", early = 10, late = 10 },\n        { kind = \"up\", time = 887.943, uncertainty = 10, lead = 10, boss = \"kefka\", early = 10, late = 10 },\n    },\n    bossContentIDs = {\n        [7131] = true, -- Kefka\n        [7691] = true, -- Chaos\n        [6052] = true, -- Exdeath\n    },\n    duoTargetable = { [7691] = true, [6052] = true },\n}\n\nlocal phaseSpecs = {\n    Stun = {\n        { startTime = 174.37, endTime = 180 },\n        { startTime = 387.876, endTime = 420 },\n    },\n    -- P3 duo: two targets from P3 +35 to +85, before the Vacuum Wave knockback separates the bosses.\n    SelfCircle5Yd = {\n        { startTime = 482.395, endTime = 511.46, value = 2 },\n    },\n    TargetCircle5YdRange20Yd = {\n        { startTime = 472.395, endTime = 511.46, value = 2 },\n    },\n    TargetLifetime = {\n        { startTime = 0, endTime = 197.52, value = 1, targetSlot = 0 },\n        { startTime = 207.88, endTime = 381.481, value = 1, targetSlot = 0 },\n        { startTime = 427.46, endTime = 720.490, value = 1, targetSlot = 0 },\n        { startTime = 724.930, endTime = 856.953, value = 1, targetSlot = 0 },\n        { startTime = 887.943, endTime = 1106.098, value = 1, targetSlot = 0 },\n        { startTime = 427.46, endTime = 720.490, value = 1, targetSlot = 1 },\n    },\n    DotAvailability = {\n        { startTime = 0, endTime = 197.52, targetSlot = 0 },\n        { startTime = 207.88, endTime = 381.481, targetSlot = 0 },\n        { startTime = 427.46, endTime = 720.490, targetSlot = 0 },\n        { startTime = 724.930, endTime = 856.953, targetSlot = 0 },\n        { startTime = 887.943, endTime = 1106.098, targetSlot = 0 },\n        { startTime = 427.46, endTime = 430.62, targetSlot = 1 },\n        { startTime = 462.395, endTime = 544.89, targetSlot = 1 },\n    },\n    MeleeDowntime = {\n        -- P2 Trine run-out to Wings of Destruction\n        { startTime = 367.981, endTime = 372.481 },\n    },\n    FullDowntime = {\n    { startTime = 197.52, endTime = 207.88 },\n    { startTime = 381.481, endTime = 427.46 },\n    { startTime = 720.490, endTime = 724.930 },\n    { startTime = 856.953, endTime = 887.943 },\n    },\n    RaidBuff = {\n    { startTime = 1.560, endTime = 21.115, value = 1.1025 },\n    { startTime = 122.595, endTime = 142.506, value = 1.1025 },\n    { startTime = 243.152, endTime = 262.214, value = 1.1025 },\n    { startTime = 363.497, endTime = 382.736, value = 1.1025 },\n    { startTime = 484.703, endTime = 502.520, value = 1.1025 },\n    { startTime = 604.734, endTime = 623.706, value = 1.1025 },\n    { startTime = 725.768, endTime = 745.411, value = 1.1025 },\n    { startTime = 845.888, endTime = 865.798, value = 1.1025 },\n    { startTime = 968.340, endTime = 987.002, value = 1.1025 },\n    { startTime = 1088.214, endTime = 1106.098, value = 1.1025 },\n    },\n}\n\nfor phaseType, specs in pairs(phaseSpecs) do\n    for _, spec in ipairs(specs) do\n        local value = spec.value or 1\n        local phaseID = acr.addAutoSimPhase(\n            phaseType,\n            spec.startTime,\n            spec.endTime,\n            value,\n            spec.targetSlot or 0\n        )\n        if phaseID then\n            state.phases[#state.phases + 1] = {\n                id = phaseID,\n                phaseType = phaseType,\n                startTime = spec.startTime,\n                endTime = spec.endTime,\n                value = value,\n            }\n        end\n    end\nend\n\nstate.uncertaintyID = acr.addAutoSimUncertainty(188.311, 10)\n-- 20 logged kills land at P5 +214.2 to +222.1 (midpoint +218.2 = this kill time); enrage deaths\n-- at +224.6. +/-5s covers +213.2 to +223.2, starting 10s before the kill; Resync moves it.\nstate.killUncertaintyID = acr.addAutoSimUncertainty(state.killTime - 10, 5)\ndata.ljAutoSimDmu = state\nself.used = true",
							name = "Initialize AutoSim Schedule",
							uuid = "142c7dee-6499-6e92-9b60-5a4da777a6d5",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				displayPath = "Autosim v6",
				eventType = 16,
				mechanicTime = 15.261765625,
				name = "[AutoSim] Initialize DMU",
				timeRange = true,
				timelineIndex = 1,
				timerStartOffset = -16,
				uuid = "e06ddcc2-dc8f-db96-b2da-c59b0300ade2",
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
							actionLua = "local acr = TensorCore.API.TensorACR\nlocal state = data.ljAutoSimDmu\nlocal contentID = eventArgs.entityContentID\n\nif not state or not state.bossContentIDs[contentID] then\n    self.used = true\n    return\nend\n\n-- End phase 2's zero-damage period on the exact filtered Kefka.\nlocal damageLock = state.phaseTwoDamageLock\nif damageLock and not damageLock.closed\n    and eventArgs.entityID == damageLock.entityID\n    and not eventArgs.isTargetable then\n    local endedAt = acr.getAutoSimTime()\n    if endedAt > damageLock.startTime then\n        acr.setAutoSimPhase(damageLock.id, damageLock.startTime, endedAt, 0)\n    else\n        acr.removeAutoSimPhase(damageLock.id)\n    end\n    damageLock.closed = true\nend\n\nlocal phaseThreeLock = state.phaseThreeDamageLock\n\n-- Target assignment is independent of resync acceptance.\nif contentID == 6052 then\n    acr.setAutoSimTarget(1, eventArgs.entityID)\nelseif eventArgs.isTargetable then\n    acr.setAutoSimTarget(0, eventArgs.entityID)\nend\n\nlocal isDuo = contentID == 7691 or contentID == 6052\nif isDuo then\n    state.duoTargetable[contentID] = eventArgs.isTargetable\nend\n\nlocal now = acr.getAutoSimTime()\nlocal transitionKind = eventArgs.isTargetable and \"up\" or \"down\"\nlocal matchedIndex\nlocal boundary\nlocal bestDistance\n\n-- Match only unconsumed boundaries near their current predicted pull time.\n-- A later matching boundary can recover from an earlier missed event.\nfor index = state.nextBoundary, #state.boundaries do\n    local candidate = state.boundaries[index]\n    local delta = now - candidate.time\n    local bossMatches = (candidate.boss == \"duo\" and isDuo)\n        or (candidate.boss == \"kefka\" and contentID == 7131)\n    if bossMatches and candidate.kind == transitionKind\n        and delta >= -candidate.early and delta <= candidate.late then\n        local distance = math.abs(delta)\n        if not bestDistance or distance < bestDistance then\n            matchedIndex = index\n            boundary = candidate\n            bestDistance = distance\n        end\n    end\nend\n\nif not boundary then\n    self.used = true\n    return\nend\n\n-- Start the P4 transition only after both duo bosses are untargetable.\nif boundary.boss == \"duo\" and transitionKind == \"down\"\n    and (state.duoTargetable[7691] or state.duoTargetable[6052]) then\n    self.used = true\n    return\nend\n\nlocal expectedTime = boundary.time\nlocal delta = now - expectedTime\n\nstate.killTime = state.killTime + delta\nacr.setAutoSimKillTime(state.killTime)\nif state.killUncertaintyID then\n    acr.setAutoSimUncertainty(state.killUncertaintyID, state.killTime - 10, 5)\nend\n\n-- Damage stops being relevant once both duo bosses are untargetable.\n-- FullDowntime covers the remaining transition into Kefka.\n-- Shrinking closes before phases shift; extending closes after, so the lock\n-- never overlaps a BossModifier phase that has not moved yet.\nlocal function closePhaseThreeLock()\n    if not (phaseThreeLock and not phaseThreeLock.closed and matchedIndex == 5) then\n        return\n    end\n    if now > phaseThreeLock.startTime then\n        acr.setAutoSimPhase(\n            phaseThreeLock.id,\n            phaseThreeLock.startTime,\n            now,\n            0\n        )\n    else\n        acr.removeAutoSimPhase(phaseThreeLock.id)\n    end\n    phaseThreeLock.endTime = now\n    phaseThreeLock.closed = true\nend\n\nlocal lockShrinks = phaseThreeLock and now <= phaseThreeLock.endTime\nif lockShrinks then\n    closePhaseThreeLock()\nend\n\n-- At boundary 5 this moves FullDowntime's start to the exact duo-down time.\n-- At boundary 6 it moves FullDowntime's end to Kefka's exact targetable time.\n-- Move later phases first when shifting right and earlier phases first when\n-- shifting left, so a phase never overlaps a same-type phase that has not moved yet.\nlocal order = {}\nfor index = 1, #state.phases do\n    order[index] = index\nend\ntable.sort(order, function(a, b)\n    if delta > 0 then\n        return state.phases[a].startTime > state.phases[b].startTime\n    end\n    return state.phases[a].startTime < state.phases[b].startTime\nend)\n\nlocal removed = {}\nfor _, index in ipairs(order) do\n    local phase = state.phases[index]\n    local changed = false\n    if phase.startTime >= expectedTime - 0.0001 then\n        phase.startTime = phase.startTime + delta\n        changed = true\n    end\n    if phase.endTime >= expectedTime - 0.0001 then\n        phase.endTime = phase.endTime + delta\n        changed = true\n    end\n    if changed then\n        if phase.endTime <= phase.startTime then\n            -- An early boundary left no time for a phase that ends at it.\n            acr.removeAutoSimPhase(phase.id)\n            removed[index] = true\n        else\n            local phaseID = acr.setAutoSimPhase(\n                phase.id,\n                phase.startTime,\n                phase.endTime,\n                phase.value\n            )\n            if phaseID then\n                phase.id = phaseID\n            else\n                removed[index] = true\n            end\n        end\n    end\nend\nfor index = #state.phases, 1, -1 do\n    if removed[index] then\n        table.remove(state.phases, index)\n    end\nend\n\nif not lockShrinks then\n    closePhaseThreeLock()\nend\n\nfor index = matchedIndex, #state.boundaries do\n    state.boundaries[index].time = state.boundaries[index].time + delta\nend\n\nstate.uncertaintyID = acr.addAutoSimUncertainty(now, 0)\nstate.nextBoundary = matchedIndex + 1\n\nlocal nextBoundary = state.boundaries[state.nextBoundary]\nif nextBoundary then\n    local uncertaintyTime = nextBoundary.time - nextBoundary.lead\n    if uncertaintyTime <= now then\n        uncertaintyTime = now + 0.001\n    end\n    state.uncertaintyID = acr.addAutoSimUncertainty(\n        uncertaintyTime,\n        nextBoundary.uncertainty\n    )\nend\n\nself.used = true",
							name = "Track Boss State and Resync",
							uuid = "a56fafa7-a884-16c5-8be4-4a3c0c6df40e",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				displayPath = "Autosim v6",
				eventType = 26,
				loop = true,
				mechanicTime = 15.261765625,
				name = "[AutoSim] Targetability and Resync",
				timeRange = true,
				timelineIndex = 1,
				timerEndOffset = 1200,
				timerStartOffset = -16,
				uuid = "b19fff9b-0d84-07b1-9cfa-9bc14aa90d03",
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
							actionLua = "ACR_TensorWeeb4_TargetHitRadiusAdjust = 3\nACR_TensorWeeb4_ActionRangeAdjust = 3\nself.used = true",
							name = "Range Hack +3",
							uuid = "fc43c4db-6db0-f2fe-83bd-083d5498e468",
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
							gVar = "ACR_TensorViper4_Hotbar_TrueNorth",
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
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "AnyoneCore.Settings.PrepullHelper.enabled = ljAnyoneCorePrepullHelper\nself.used = true",
							conditions = 
							{
								
								{
									"daaca7e8-89e2-4f6b-bdc3-369f8e902d23",
									true,
								},
								
								{
									"d2d2b625-f88a-41e1-a3ee-3676b8cbcdfa",
									true,
								},
							},
							endIfUsed = true,
							gVar = "ACR_RikuWHM3_CD",
							name = "Didn't Pull",
							uuid = "da7fc50b-2c49-79c7-af2d-b1f016b26602",
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
							uuid = "daaca7e8-89e2-4f6b-bdc3-369f8e902d23",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 7,
							dequeueIfLuaFalse = true,
							inCombatType = 2,
							name = "Not in Combat",
							uuid = "d2d2b625-f88a-41e1-a3ee-3676b8cbcdfa",
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
				uuid = "722c3310-932c-c1de-bad1-3be45a0350ec",
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
				uuid = "6a569e59-0b93-a6d5-8818-68ad6509dab6",
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
							aType = "ACR",
							gVar = "ACR_TensorViper4_CD",
							uuid = "49f643e0-e835-0feb-959a-5ad49d1a03b8",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "ACR",
							gVar = "ACR_TensorViper4_AOE",
							uuid = "8a3eee51-66a8-ff2c-95cd-d4d289790ec0",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "ACR",
							gVar = "ACR_TensorViper4_SmartAOE",
							uuid = "09a65249-bdca-94eb-8815-2f864e00f063",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "ACR",
							gVar = "ACR_TensorViper4_SafeJump",
							uuid = "cbede249-c167-7452-bce6-af35ba12a805",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "ACR",
							gVar = "ACR_TensorViper4_TrueNorth",
							uuid = "1f4c9c37-bcad-a9cc-80fb-3f07f249c0ea",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "ACR",
							gVar = "ACR_TensorViper4_Reawaken",
							uuid = "178f9722-d37a-13ac-af45-b92ca29a1c54",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "ACR",
							gVar = "ACR_TensorViper4_Vicewinder",
							uuid = "ebafd38b-b8af-b7a1-b8f6-8cb05523f48b",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "ACR",
							gVar = "ACR_TensorViper4_WrithingSnap",
							uuid = "7424496e-521f-eb2c-9590-f113a3a05961",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "ACR",
							gVar = "ACR_TensorViper4_UncoiledFury",
							uuid = "1c7a3f60-62f0-3385-9768-8a8223496d9d",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "ACR",
							gVar = "ACR_TensorViper4_SerpentsIre",
							uuid = "ce105aff-9589-458d-8397-d86bbb38862c",
							version = 2.1,
						},
						inheritedIndex = 10,
					},
					
					{
						data = 
						{
							aType = "ACR",
							gVar = "ACR_TensorViper4_KBCancel",
							gVarValue = 2,
							uuid = "b2a82871-f699-cf69-ab38-bb9772da0a56",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "ACR",
							gVar = "ACR_TensorViper4_Potion",
							uuid = "de23fff8-72d9-19a4-bcbd-209d4aac3957",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "ACR",
							gVar = "ACR_TensorViper4_Burn",
							gVarValue = 2,
							uuid = "6849070c-d470-a9dd-abd0-691077e5b78b",
							version = 2.1,
						},
						inheritedIndex = 13,
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
				uuid = "56fe1f91-7f68-d056-b3f6-b7ae16f0d753",
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
							actionLua = "gStartCombat = false\nTensorDrift_SlidecastForceHold = false\nTensorCore.API.TensorACR.setHardLockFace(false)\nTensorCore.API.TensorACR.toggleLockFace(false)\nTensorCore.mGetPlayer():ClearTarget()\nACR_TensorACR_HotbarCancel = true\nAnyoneCore.Settings.PrepullHelper.enabled = ljAnyoneCorePrepullHelper\n\nself.used = true",
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
				uuid = "bb712fe4-a5e5-5026-84ea-113e374438c4",
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
							aType = "ACR",
							conditions = 
							{
								
								{
									"4797f134-a91a-8707-bf70-b62edede8dfa",
									true,
								},
							},
							gVar = "ACR_TensorViper4_Hotbar_SlitherMouse",
							targetType = "Enemy",
							uuid = "ffab71d4-efae-37e4-b274-fe4ec495a868",
							variableIsHover = true,
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
				name = "Slither",
				timelineIndex = 9,
				timerOffset = 0.10000000149012,
				uuid = "3c1fbce3-cd4b-40b7-af13-f6869472ee87",
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
							aType = "ACR",
							gVar = "ACR_TensorViper4_KBCancel",
							gVarValue = 2,
							uuid = "200067b5-4e06-1810-973e-0f771bfd5b41",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				mechanicTime = 53.460753490642,
				name = "KB Cancel",
				timelineIndex = 11,
				uuid = "8c6f2285-71ca-1c93-bc41-5d44bf49de01",
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
							aType = "ACR",
							gVar = "ACR_TensorViper4_Hotbar_SlitherMouse",
							targetType = "Enemy",
							uuid = "ffab71d4-efae-37e4-b274-fe4ec495a868",
							variableIsHover = true,
							variableTogglesType = 2,
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				enabled = false,
				mechanicTime = 162.3021905977,
				name = "Slither",
				timelineIndex = 32,
				timerOffset = 0.10000000149012,
				uuid = "853e6344-e7be-21c8-a2e4-c2b7e131966c",
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
							aType = "ACR",
							gVar = "ACR_TensorViper4_KBCancel",
							uuid = "200067b5-4e06-1810-973e-0f771bfd5b41",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				enabled = false,
				mechanicTime = 163.54778319029,
				name = "KB Cancel",
				timelineIndex = 33,
				uuid = "df0530fc-03d5-d3ed-a31c-09945154d6c3",
				version = 2,
			},
		},
	},
	[38] = 
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
							gVar = "ACR_TensorViper4_KBCancel",
							gVarValue = 2,
							uuid = "200067b5-4e06-1810-973e-0f771bfd5b41",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				mechanicTime = 197.52218784626,
				name = "KB Cancel",
				timelineIndex = 38,
				uuid = "fee317f0-67c3-51e3-856c-85a58ea7c524",
				version = 2,
			},
		},
	},
	[39] = 
	{
		
		{
			data = 
			{
				name = "[VPR] Hold Vicewinder 1",
				uuid = "c1c94507-91cf-2fcd-ac6e-528a03b13ae1",
				version = 2,
			},
			inheritedObjectUUID = "06a02f4a-2fbc-cd04-b77b-af7d9e904cf1",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
		
		{
			data = 
			{
				name = "[VPR] Hold Vicewinder 2",
				uuid = "e38e693d-3535-9788-a25f-e5fd3b5ac118",
				version = 2,
			},
			inheritedObjectUUID = "fcb3535c-271b-1782-ab20-abc6af30e223",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
		
		{
			data = 
			{
				name = "[VPR] Hold Reawaken",
				uuid = "c523560d-da6e-b7dc-95ba-7bb5ce15bd7b",
				version = 2,
			},
			inheritedObjectUUID = "6929710b-5db9-3d83-9949-5ec28e5b9795",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
	},
	[72] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "AutoSim",
				uuid = "c0786db3-0674-2f26-9969-e1836285b090",
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
				timerEndOffset = 12,
				timerStartOffset = -5,
				uuid = "b23e2a05-6a02-8d50-a607-315d833f84e4",
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
							gVar = "ACR_TensorViper4_Hotbar_SlitherMouse",
							targetType = "Enemy",
							uuid = "8328a9c1-bde4-5c58-8188-26005bddf4f7",
							variableIsHover = true,
							variableTogglesType = 2,
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				enabled = false,
				mechanicTime = 370.25754620621,
				name = "Slither",
				timelineIndex = 72,
				timerOffset = 0.10000000149012,
				uuid = "b4e1ae4f-8096-b609-a722-a1eb26ab198d",
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
							aType = "ACR",
							gVar = "ACR_TensorViper4_KBCancel",
							uuid = "200067b5-4e06-1810-973e-0f771bfd5b41",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				mechanicTime = 427.45958272918,
				name = "KB Cancel",
				timelineIndex = 77,
				uuid = "03399b69-0199-fe97-b2ad-5596a725f981",
				version = 2,
			},
		},
	},
	[78] = 
	{
		
		{
			data = 
			{
				name = "[Opti] Disable AOE",
				uuid = "621a8af4-c7b3-482d-9c78-38e45aa30f62",
				version = 2,
			},
			inheritedObjectUUID = "755f1357-19b6-3376-8b24-3b53ff573fb6",
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
								aType = "ACR",
								gVar = "ACR_TensorViper4_SmartAOE",
								gVarValue = 2,
								uuid = "07193cf9-9e20-ca82-b309-a276f5a93df6",
								version = 2.1,
							},
						},
					},
				},
			},
		},
	},
	[80] = 
	{
		
		{
			data = 
			{
				name = "[Opti] Enable AOE",
				uuid = "1018fd3b-7430-6856-aba7-e046a0f39d8e",
				version = 2,
			},
			inheritedObjectUUID = "36ffa0fb-4c48-6652-ab76-003261e22000",
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
								aType = "ACR",
								gVar = "ACR_TensorViper4_SmartAOE",
								uuid = "d562d590-8e3d-c05d-982c-1d8403c39eb6",
								version = 2.1,
							},
						},
					},
				},
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
				uuid = "448898c6-44a7-fb38-a534-75fdecb4fece",
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
				uuid = "5c53ca49-b182-9ffa-8c86-28ebca0139c9",
				version = 2,
			},
		},
	},
	[102] = 
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
							gVar = "ACR_TensorViper4_Hotbar_SlitherMouse",
							targetType = "Enemy",
							uuid = "ffab71d4-efae-37e4-b274-fe4ec495a868",
							variableIsHover = true,
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
				enabled = false,
				mechanicTime = 536.97932260272,
				name = "Slither",
				timelineIndex = 102,
				timerOffset = -6,
				uuid = "cd4d7b7c-99ca-c9cf-9de0-93cfedebdea9",
				version = 2,
			},
		},
	},
	[104] = 
	{
		
		{
			data = 
			{
				name = "[Opti] Disable AOE",
				uuid = "442dab3a-365f-3049-ad2a-a450c3bc4f4a",
				version = 2,
			},
			inheritedObjectUUID = "ca333b23-ef2e-d878-aa73-daa8a8bc4a22",
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
								aType = "ACR",
								gVar = "ACR_TensorViper4_SmartAOE",
								gVarValue = 2,
								uuid = "5c6d1ef5-0de5-b2a4-9b70-1a87e5ecca8f",
								version = 2.1,
							},
						},
					},
				},
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
				uuid = "3cf41391-e7e9-3fa9-8944-d824229df66e",
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
							uuid = "daf17fdf-84cf-e46c-a837-8cb78c057e89",
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
							uuid = "fee81c66-a681-0ed9-a34b-b5b4030b9715",
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
								
								{
									"292450ca-81e9-ecef-acfb-2e2d142109e7",
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
				uuid = "8ab03acc-1126-5f97-a9d7-431c7a4a8876",
				version = 2,
			},
		},
	},
	[151] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Autosim",
				uuid = "ac81f13b-3014-86c8-a148-1f9cd20ea687",
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
							actionLua = "data.ljAutoSimExdeathAura = \"Lie\"\nself.used = true",
							conditions = 
							{
								
								{
									"64a06ddf-ae03-2c97-bf48-7e4040059d66",
									true,
								},
							},
							name = "Exdeath Lie",
							uuid = "4b51dd7b-2065-de5a-8b92-a8a75269a3ac",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "data.ljAutoSimExdeathAura = \"Truth\"\nself.used = true",
							conditions = 
							{
								
								{
									"fba24456-c679-6cc9-b040-8a18d3bf2da2",
									true,
								},
							},
							name = "Exdeath Truth",
							uuid = "6d4fd32d-9cc5-c1c4-b239-70ae3af6d678",
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
							eventIntValue = 2915,
							name = "Event: Exdeath Lie",
							uuid = "64a06ddf-ae03-2c97-bf48-7e4040059d66",
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
							uuid = "fba24456-c679-6cc9-b040-8a18d3bf2da2",
							version = 3,
						},
					},
				},
				displayPath = "Autosim",
				eventType = 25,
				loop = true,
				mechanicTime = 812.05085714286,
				name = "[AutoSim] Track Exdeath Truth",
				timeRange = true,
				timelineIndex = 151,
				timerEndOffset = 58,
				timerStartOffset = 4,
				uuid = "1cfb3b00-ad82-c3be-a8e2-a1983324da45",
				version = 2,
			},
		},
	},
	[153] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Autosim",
				uuid = "88c1d5ba-7132-6f97-bfcc-5fe8019269a0",
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
							actionLua = "-- Real Acceleration Bomb: Exdeath showed Truth when the bomb was applied.\n-- Players stop acting 2s before it goes off.\nlocal state = data.ljAutoSimDmu\nlocal aura = data.ljAutoSimExdeathAura\nif not state or not aura then\n    return\nend\nif aura == \"Truth\" then\n    local acr = TensorCore.API.TensorACR\n    local expiry = acr.getAutoSimTime() + TensorCore.getBuff(TensorCore.mGetPlayer(), 5546).duration\n    local phaseID = acr.addAutoSimPhase(\"Stun\", expiry - 2, expiry)\n    if phaseID then\n        -- Registered in state.phases so Targetability and Resync shifts it.\n        state.phases[#state.phases + 1] = { id = phaseID, phaseType = \"Stun\", startTime = expiry - 2, endTime = expiry, value = 1 }\n    end\nend\nself.used = true",
							conditions = 
							{
								
								{
									"d011f56d-b82d-d39c-98c4-dc9bb6700581",
									true,
								},
							},
							name = "Add Stun For Real Bomb",
							uuid = "2fb5199e-e644-251c-9851-c39a75292982",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							buffID = 5546,
							category = "Self",
							name = "Self: Acceleration Bomb",
							uuid = "d011f56d-b82d-d39c-98c4-dc9bb6700581",
							version = 3,
						},
					},
				},
				displayPath = "Autosim",
				mechanicTime = 826.02524789261,
				name = "[AutoSim] Accel Bomb Stun",
				timeRange = true,
				timelineIndex = 153,
				timerEndOffset = 22,
				timerStartOffset = -2,
				uuid = "0fd832de-4d6b-2e1b-8185-993a34159bfc",
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
				name = "AutoSim LB",
				uuid = "56b08791-d936-20a2-b2ee-90ccb4e4b40a",
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
							conditions = 
							{
								
								{
									"ad99c3a9-54eb-d1ea-9e0e-748645bcd9b8",
									true,
								},
							},
							gVar = "ACR_TensorViper4_Hotbar_LimitBreak",
							uuid = "c0abdeef-6311-301b-91fe-bb760443cae1",
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
							conditionLua = "return ljAutoSimLbModes.p4 == \"Automatic\"",
							dequeueIfLuaFalse = true,
							name = "LB P4 Automatic",
							uuid = "ad99c3a9-54eb-d1ea-9e0e-748645bcd9b8",
							version = 3,
						},
					},
				},
				displayPath = "AutoSim LB",
				mechanicTime = 846.19462329432,
				name = "[AutoSim LB] Use Limit Break P4",
				timelineIndex = 157,
				timerOffset = 3.2000000476837,
				uuid = "1ae44921-e3bf-5ab9-9224-c32a3eab5e65",
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
				name = "AutoSim LB",
				uuid = "9b184cac-b711-5687-8de6-367914858b46",
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
							conditions = 
							{
								
								{
									"e8e0ae1e-895f-7f86-bb7e-223ee260b4cb",
									true,
								},
							},
							gVar = "ACR_TensorViper4_Hotbar_LimitBreak",
							uuid = "fe4b7efc-fb1e-3963-912a-8f304a780df7",
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
							conditionLua = "return ljAutoSimLbModes.p5 == \"Automatic\"",
							dequeueIfLuaFalse = true,
							name = "LB P5 Automatic",
							uuid = "e8e0ae1e-895f-7f86-bb7e-223ee260b4cb",
							version = 3,
						},
					},
				},
				displayPath = "AutoSim LB",
				mechanicTime = 1154.7445474604,
				name = "[AutoSim LB] Use Limit Break P5",
				timelineIndex = 226,
				timerOffset = -1.1000000238419,
				uuid = "7f03f5e7-871c-b87f-abdf-95cfaf32a6ee",
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