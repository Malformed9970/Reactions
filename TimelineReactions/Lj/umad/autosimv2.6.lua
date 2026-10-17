local tbl = 
{
	
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "AutoSim Settings",
				uuid = "dd76ab39-1554-2d9a-bd28-152a2c29358d",
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
							actionLua = "-- Shared AutoSim settings for every job, kept separate from the VPR/SAM profiles' AutoSim LB window.\n-- Primary P3 boss: saved per role; melee (tanks included) default to Chaos, everyone else to Exdeath.\n-- A P3 Boss change also applies mid-pull, like the Limit Break modes.\n-- Per-phase Limit Break mode (melee only). Manual and Automatic both add the stun phase;\n-- only Automatic lets the Use Limit Break reactions press the Hotbar.\n-- Constants are built once per session (bump version to rebuild after editing them),\n-- so each frame only draws the GUI and does a few cheap checks.\nif ljAutoSimShared == nil or ljAutoSimShared.version ~= 2 then\n    local folder = GetLuaModsPath() .. \"ffxivminion\\\\Lj\\\\\"\n    ljAutoSimShared = {\n        version = 2,\n        folder = folder,\n        path = folder .. \"AutoSimSharedSettings.lua\",\n        flags = GUI.WindowFlags_NoTitleBar + GUI.WindowFlags_NoCollapse + GUI.WindowFlags_AlwaysAutoResize,\n        modes = { \"Disabled\", \"Manual\", \"Automatic\" },\n        -- GUI:Combo uses 1-based indices.\n        modeIndex = { Disabled = 1, Manual = 2, Automatic = 3 },\n        keys = { \"p4\", \"p5\" },\n        labels = { p4 = \"P4 LB\", p5 = \"P5 LB\" },\n        comboIDs = { p4 = \"##LjAutoSimShared_p4\", p5 = \"##LjAutoSimShared_p5\" },\n        bosses = { \"Chaos\", \"Exdeath\" },\n        bossIndex = { Chaos = 1, Exdeath = 2 },\n        bossDefaults = { p3BossMelee = \"Chaos\", p3BossRanged = \"Exdeath\" },\n        bossComboID = \"##LjAutoSimShared_p3Boss\",\n        -- World-swallower (09-29 logs): channel starts at P4 +47.4 and P5 +188.2;\n        -- ~4s channel, next GCD ~8.2s after the channel starts.\n        specs = {\n            p4 = { boundary = 6, offset = 47.36 },\n            p5 = { boundary = 8, offset = 188.17 },\n        },\n        stunDuration = 8.2,\n    }\n    -- Load saved settings; missing or unknown values fall back to their defaults.\n    local shared = ljAutoSimShared\n    ljAutoSimSharedModes = FileExists(shared.path) and FileLoad(shared.path) or {}\n    local changed = false\n    for _, key in ipairs(shared.keys) do\n        if not shared.modeIndex[ljAutoSimSharedModes[key]] then\n            ljAutoSimSharedModes[key] = \"Disabled\"\n            changed = true\n        end\n    end\n    for key, default in pairs(shared.bossDefaults) do\n        if not shared.bossIndex[ljAutoSimSharedModes[key]] then\n            ljAutoSimSharedModes[key] = default\n            changed = true\n        end\n    end\n    if changed then\n        if not FolderExists(shared.folder) then\n            FolderCreate(shared.folder)\n        end\n        FileSave(shared.path, ljAutoSimSharedModes)\n    end\nend\n\nlocal shared = ljAutoSimShared\nlocal modes = ljAutoSimSharedModes\n\n-- The role is re-read only when the job changes.\nlocal player = TensorCore.mGetPlayer()\nif shared.roleJob ~= player.job then\n    shared.roleJob = player.job\n    shared.isMelee = TensorCore.isMelee(player) == true\n    shared.isMeleeDps = TensorCore.isMelee(player, true) == true\n    shared.bossKey = shared.isMelee and \"p3BossMelee\" or \"p3BossRanged\"\nend\nLj_AutoSimShared_P3Boss = modes[shared.bossKey]\n\n-- Limit Break modes are for melee DPS only. On any other job (tanks included) both are forced to\n-- Disabled and saved, so no LB stun phase is planned and the Use Limit Break reactions stay off.\nif not shared.isMeleeDps and (modes.p4 ~= \"Disabled\" or modes.p5 ~= \"Disabled\") then\n    modes.p4 = \"Disabled\"\n    modes.p5 = \"Disabled\"\n    FileSave(shared.path, modes)\nend\n\n-- No title bar, so the window has no close button.\nlocal visible = GUI:Begin(\"AutoSim Settings###LjAutoSimShared\", true, shared.flags)\nif visible then\n    GUI:Text(\"Lj AutoSim Settings\")\n    GUI:Text(\"P3 Boss\")\n    GUI:SameLine(60)\n    GUI:PushItemWidth(110)\n    local selected, changed = GUI:Combo(shared.bossComboID, shared.bossIndex[Lj_AutoSimShared_P3Boss], shared.bosses)\n    GUI:PopItemWidth()\n    if changed then\n        modes[shared.bossKey] = shared.bosses[selected]\n        Lj_AutoSimShared_P3Boss = modes[shared.bossKey]\n        FileSave(shared.path, modes)\n    end\n    if shared.isMeleeDps then\n        for i = 1, 2 do\n            local key = shared.keys[i]\n            GUI:Text(shared.labels[key])\n            GUI:SameLine(60)\n            GUI:PushItemWidth(110)\n            local mode, modeChanged = GUI:Combo(shared.comboIDs[key], shared.modeIndex[modes[key]], shared.modes)\n            GUI:PopItemWidth()\n            if modeChanged then\n                modes[key] = shared.modes[mode]\n                FileSave(shared.path, modes)\n            end\n        end\n    end\nend\nGUI:End()\n\nlocal state = data.ljAutoSimDmu\n\n-- Keep the running schedule's P3 DoT windows and slots in step with the P3 Boss pick.\n-- Per frame this is one comparison; Initialize DMU's state.applyP3Boss runs only on a change.\nif state and state.p3Boss ~= Lj_AutoSimShared_P3Boss and state.applyP3Boss then\n    state.applyP3Boss(Lj_AutoSimShared_P3Boss)\nend\n\n-- Keep each Limit Break stun phase in the AutoSim schedule in step with its mode. Off melee DPS\n-- none is wanted, so a stun phase left from a melee job is removed too.\n-- Per frame this is two lookups; phases are only added or removed when a mode changes.\nif state then\n    local stuns = state.lbStunsByPhase\n    if stuns == nil then\n        stuns = {}\n        state.lbStunsByPhase = stuns\n    end\n    for i = 1, 2 do\n        local key = shared.keys[i]\n        local wanted = shared.isMeleeDps and modes[key] ~= \"Disabled\"\n        local stun = stuns[key]\n        if wanted and stun == nil then\n            local spec = shared.specs[key]\n            local startTime = state.boundaries[spec.boundary].time + spec.offset\n            local endTime = startTime + shared.stunDuration\n            local phaseID = TensorCore.API.TensorACR.addAutoSimPhase(\"Stun\", startTime, endTime)\n            if phaseID then\n                -- Registered in state.phases so Targetability and Resync shifts it.\n                stun = { id = phaseID, phaseType = \"Stun\", startTime = startTime, endTime = endTime, value = 1 }\n                state.phases[#state.phases + 1] = stun\n            end\n            -- false marks a phase AutoSim clipped away, so it is not retried every frame.\n            stuns[key] = stun or false\n        elseif not wanted and stun ~= nil then\n            if stun then\n                for index = #state.phases, 1, -1 do\n                    if state.phases[index] == stun then\n                        TensorCore.API.TensorACR.removeAutoSimPhase(stun.id)\n                        table.remove(state.phases, index)\n                    end\n                end\n            end\n            stuns[key] = nil\n        end\n    end\nend\nself.used = true",
							uuid = "0ad37128-553b-59ab-b044-36b3fdc21fd8",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				displayPath = "AutoSim Settings",
				eventType = 13,
				mechanicTime = 15.261765625,
				name = "[AutoSim] Settings",
				timeRange = true,
				timelineIndex = 1,
				timerEndOffset = 1200,
				timerStartOffset = -16,
				uuid = "43349180-06b6-6581-9a43-b0dfdfe6362d",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "AutoSim",
				uuid = "7a4cb009-5abf-9602-9cae-05e5764936fb",
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
							actionLua = "local acr = TensorCore.API.TensorACR\n\nacr.setAutoSimKillTime(1106.098)\n--acr.setAutoSimUnexpectedMovementPct(0)\n--acr.setAutoSimUnexpectedMeleeDowntimePct(0)\nacr.clearAutoSimPhases(\"FullDowntime\")\nacr.clearAutoSimPhases(\"CasterDowntime\")\nacr.clearAutoSimPhases(\"MeleeDowntime\")\nacr.clearAutoSimPhases(\"RaidBuff\")\nacr.clearAutoSimPhases(\"BossModifier\")\nacr.clearAutoSimUncertainty()\nacr.clearAutoSimPhases(\"Stun\")\nacr.clearAutoSimPhases(\"SelfCircle5Yd\")\nacr.clearAutoSimPhases(\"SelfCircle8Yd\")\nacr.clearAutoSimPhases(\"Cone8Yd\")\nacr.clearAutoSimPhases(\"Line10Yd\")\nacr.clearAutoSimPhases(\"Line15Yd\")\nacr.clearAutoSimPhases(\"TargetCircle5YdRange3Yd\")\nacr.clearAutoSimPhases(\"TargetCircle5YdRange5Yd\")\nacr.clearAutoSimPhases(\"TargetCircle5YdRange20Yd\")\nacr.clearAutoSimPhases(\"TargetCircle5YdRange25Yd\")\nacr.clearAutoSimPhases(\"Positional\")\nacr.clearAutoSimPhases(\"TargetLifetime\", 0)\nacr.clearAutoSimPhases(\"DotAvailability\", 0)\nacr.clearAutoSimPhases(\"TargetLifetime\", 1)\nacr.clearAutoSimPhases(\"DotAvailability\", 1)\nacr.clearAutoSimTarget(1)\n\nlocal state = {\n    killTime = 1106.098,\n    nextBoundary = 1,\n    phases = {},\n    boundaries = {\n        { kind = \"down\", time = 197.52, uncertainty = 0, lead = 0, boss = \"kefka\", early = 10, late = 10 },\n        { kind = \"up\", time = 207.88, uncertainty = 0, lead = 0, boss = \"kefka\", early = 10, late = 10 },\n        { kind = \"down\", time = 381.481, uncertainty = 1, lead = 10, boss = \"kefka\", early = 10, late = 10 },\n        { kind = \"up\", time = 427.46, uncertainty = 0, lead = 0, boss = \"duo\", early = 10, late = 10 },\n        { kind = \"down\", time = 720.490, uncertainty = 10, lead = 30.490, boss = \"duo\", early = 30.49, late = 10 },\n        { kind = \"up\", time = 724.930, uncertainty = 0, lead = 10, boss = \"kefka\", early = 10, late = 10 },\n        { kind = \"down\", time = 856.953, uncertainty = 1, lead = 10, boss = \"kefka\", early = 10, late = 10 },\n        { kind = \"up\", time = 887.943, uncertainty = 0, lead = 10, boss = \"kefka\", early = 10, late = 10 },\n    },\n    bossContentIDs = {\n        [7131] = true, -- Kefka\n        [7691] = true, -- Chaos\n        [6052] = true, -- Exdeath\n    },\n    duoTargetable = { [7691] = true, [6052] = true },\n    keyed = {},\n}\n\nlocal phaseSpecs = {\n    Stun = {\n        { startTime = 174.37, endTime = 180 },\n        { startTime = 387.876, endTime = 420 },\n    },\n    -- P3 duo AoE: two targets wherever the second boss takes damage (427.46-430.62, 462.395-544.89),\n    -- except where 503 logged pulls show the bosses reliably apart (< 10% of hits on both, Num Targets):\n    -- all shapes 512.5-523 after Limit Cut, target circles at P3 start, self circles and lines 526-532.\n    -- Self circles also skip P3 start: only tanks between the bosses hit both there.\n    -- Mixed periods stay at two targets; the ACR handles uncertain AoE windows.\n    SelfCircle5Yd = {\n        { startTime = 462.395, endTime = 512.5, value = 2 },\n        { startTime = 523, endTime = 526, value = 2 },\n        { startTime = 532, endTime = 544.89, value = 2 },\n    },\n    SelfCircle8Yd = {\n        { startTime = 462.395, endTime = 512.5, value = 2 },\n        { startTime = 523, endTime = 526, value = 2 },\n        { startTime = 532, endTime = 544.89, value = 2 },\n    },\n    Cone8Yd = {\n        { startTime = 427.46, endTime = 430.62, value = 2 },\n        { startTime = 462.395, endTime = 512.5, value = 2 },\n        { startTime = 523, endTime = 544.89, value = 2 },\n    },\n    Line10Yd = {\n        { startTime = 427.46, endTime = 430.62, value = 2 },\n        { startTime = 462.395, endTime = 512.5, value = 2 },\n        { startTime = 523, endTime = 526, value = 2 },\n        { startTime = 532, endTime = 544.89, value = 2 },\n    },\n    Line15Yd = {\n        { startTime = 427.46, endTime = 430.62, value = 2 },\n        { startTime = 462.395, endTime = 512.5, value = 2 },\n        { startTime = 523, endTime = 526, value = 2 },\n        { startTime = 532, endTime = 544.89, value = 2 },\n    },\n    TargetCircle5YdRange3Yd = {\n        { startTime = 462.395, endTime = 512.5, value = 2 },\n        { startTime = 523, endTime = 544.89, value = 2 },\n    },\n    TargetCircle5YdRange5Yd = {\n        { startTime = 462.395, endTime = 512.5, value = 2 },\n        { startTime = 523, endTime = 544.89, value = 2 },\n    },\n    TargetCircle5YdRange20Yd = {\n        { startTime = 462.395, endTime = 512.5, value = 2 },\n        { startTime = 523, endTime = 544.89, value = 2 },\n    },\n    TargetCircle5YdRange25Yd = {\n        { startTime = 462.395, endTime = 512.5, value = 2 },\n        { startTime = 523, endTime = 544.89, value = 2 },\n    },\n    Positional = {\n        -- P1\n        { startTime = 42.2, endTime = 49.5, value = 1 }, -- Wave Cannon spread + towers. Rear Blocked.\n        { startTime = 86.3, endTime = 91.3, value = 3 }, -- Gravitas stack at A. Both Blocked.\n        { startTime = 104.8, endTime = 109.8, value = 3 }, -- Gravitas stack at C. Both Blocked.\n    },\n    CasterDowntime = {\n        -- P1 TensorDrift force-slidecast holds (Samurai profile): casts cannot be started.\n        -- The keyed Confetti windows are removed by [AutoSim] Confetti 1/2 Remove Caster Downtime.\n        { startTime = 32.92, endTime = 35.92 }, -- Pulse Wave\n        { startTime = 47.57, endTime = 50.57, key = \"confetti1\" }, -- Confetti check at 44.767; removed with Confetti\n        { startTime = 58.46, endTime = 62.46 }, -- Blizzard III Blowout\n        { startTime = 86.3, endTime = 90.3 }, -- Gravitas (A)\n        { startTime = 104.79, endTime = 108.79 }, -- Gravitas (C)\n        { startTime = 112.08, endTime = 118.58 }, -- Double-Trouble Trap\n        { startTime = 165.017, endTime = 168.017, key = \"confetti2\" }, -- Tele-trouncing, Confetti check at 119.08; removed with Confetti\n        { startTime = 184.42, endTime = 187.42 }, -- Ave Mariad\n        -- P3 end, from movement in 367 pulls (Blizzard III at 699.7 is 272.3s after P3 start).\n        { startTime = 700.5, endTime = 709.0 }, -- Three dodges; the stops between them are under 1s\n        { startTime = 712.37, endTime = 715.37 }, -- 3s, so no cast up to 2.5s is still running at 715.37\n        -- P5 Flood: synced 990-995 (the Flood cast to its last follow-up hit), P5 start +24.4 to +29.4.\n        { startTime = 912.340, endTime = 917.340 }, -- Flood\n        -- P5 Forsaken casts (40 kills: within +/-0.2s of P5 start + 159.6/167.8/176.0/184.1).\n        { startTime = 1047.550, endTime = 1049.828 }, -- Forsaken\n        { startTime = 1055.690, endTime = 1058.990 }, -- Forsaken\n        { startTime = 1063.850, endTime = 1067.039 }, -- Forsaken\n        { startTime = 1072.000, endTime = 1075.061 }, -- Forsaken\n    },\n    TargetLifetime = {\n        { startTime = 0, endTime = 197.52, value = 1, targetSlot = 0 },\n        { startTime = 207.88, endTime = 381.481, value = 1, targetSlot = 0 },\n        { startTime = 427.46, endTime = 720.490, value = 1, targetSlot = 0 },\n        { startTime = 724.930, endTime = 856.953, value = 1, targetSlot = 0 },\n        { startTime = 887.943, endTime = 1106.098, value = 1, targetSlot = 0 },\n        { startTime = 427.46, endTime = 720.490, value = 1, targetSlot = 1 },\n    },\n    -- P3 windows are added below from the P3 boss pick and role.\n    DotAvailability = {\n        { startTime = 0, endTime = 197.52, targetSlot = 0 },\n        { startTime = 207.88, endTime = 381.481, targetSlot = 0 },\n        { startTime = 724.930, endTime = 856.953, targetSlot = 0 },\n        { startTime = 887.943, endTime = 1106.098, targetSlot = 0 },\n    },\n    MeleeDowntime = {\n        -- P2 Trine run-out to Wings of Destruction\n        { startTime = 367.981, endTime = 372.481 },\n    },\n    FullDowntime = {\n    { startTime = 197.52, endTime = 207.88 },\n    { startTime = 381.481, endTime = 427.46 },\n    { startTime = 720.490, endTime = 724.930 },\n    { startTime = 856.953, endTime = 887.943 },\n    },\n    -- RaidBuff windows are added by this reaction's Raid Buffs action.\n}\n\nfor phaseType, specs in pairs(phaseSpecs) do\n    for _, spec in ipairs(specs) do\n        local value = spec.value or 1\n        local phaseID = acr.addAutoSimPhase(\n            phaseType,\n            spec.startTime,\n            spec.endTime,\n            value,\n            spec.targetSlot or 0\n        )\n        if phaseID then\n            local phase = {\n                id = phaseID,\n                phaseType = phaseType,\n                startTime = spec.startTime,\n                endTime = spec.endTime,\n                value = value,\n            }\n            state.phases[#state.phases + 1] = phase\n            if spec.key then\n                state.keyed[spec.key] = phase\n            end\n        end\n    end\nend\n\n-- P3 primary boss: the AutoSim Settings pick, else Chaos for melee and Exdeath for others.\n-- Targetability and Resync pins it to DoT slot 0 and the other duo boss to slot 1.\n-- [AutoSim] Settings calls state.applyP3Boss again when the pick changes, also mid-pull.\n-- P3 DoT windows, slot 0 the primary boss and slot 1 the other. The second boss takes damage\n-- only 427.46-430.62 and 462.395-544.89. Ranged reach both bosses there. Melee reach both only\n-- where the self circles count two, and the windows match those so Whorl of Death DoTs both;\n-- elsewhere their two windows don't overlap. From 522 logged pulls, melee on Chaos reach Exdeath\n-- at P3 start only with lines and ranged oGCDs, are on Exdeath 512.5-523 while the bosses are\n-- apart, and are back on Chaos 526-532. Melee on Exdeath stay on it.\nlocal isMelee = TensorCore.isMelee(TensorCore.mGetPlayer()) == true\nlocal p3Start, p3End = state.boundaries[4].time, state.boundaries[5].time\nlocal p3DotSpecs = {\n    ranged = {\n        { startTime = 427.46, endTime = p3End, targetSlot = 0 },\n        { startTime = 427.46, endTime = 430.62, targetSlot = 1 },\n        { startTime = 462.395, endTime = 544.89, targetSlot = 1 },\n    },\n    Chaos = {\n        { startTime = 427.46, endTime = 512.5, targetSlot = 0 },\n        { startTime = 523, endTime = p3End, targetSlot = 0 },\n        { startTime = 462.395, endTime = 526, targetSlot = 1 },\n        { startTime = 532, endTime = 544.89, targetSlot = 1 },\n    },\n    Exdeath = {\n        { startTime = 427.46, endTime = p3End, targetSlot = 0 },\n        { startTime = 462.395, endTime = 512.5, targetSlot = 1 },\n        { startTime = 523, endTime = 526, targetSlot = 1 },\n        { startTime = 532, endTime = 544.89, targetSlot = 1 },\n    },\n}\nstate.p3DotPhases = {}\nstate.duoEntityIDs = {}\n\nfunction state.applyP3Boss(pick)\n    local p3Boss = pick or (isMelee and \"Chaos\" or \"Exdeath\")\n    state.p3Boss = p3Boss\n    state.primaryContentID = p3Boss == \"Exdeath\" and 6052 or 7691\n    -- After P3 the windows no longer matter.\n    if state.nextBoundary > 5 then\n        return\n    end\n    -- Replace the current P3 windows with the picked ones at this pull's P3 times.\n    -- A window a resync already removed is no longer in state.phases.\n    for _, phase in ipairs(state.p3DotPhases) do\n        for index = #state.phases, 1, -1 do\n            if state.phases[index] == phase then\n                acr.removeAutoSimPhase(phase.id)\n                table.remove(state.phases, index)\n            end\n        end\n    end\n    state.p3DotPhases = {}\n    local shift = state.boundaries[4].time - p3Start\n    for _, spec in ipairs(p3DotSpecs[isMelee and p3Boss or \"ranged\"]) do\n        local startTime = spec.startTime + shift\n        local endTime = spec.endTime == p3End and state.boundaries[5].time or spec.endTime + shift\n        local phaseID = acr.addAutoSimPhase(\"DotAvailability\", startTime, endTime, 1, spec.targetSlot)\n        if phaseID then\n            -- Registered in state.phases so Targetability and Resync shifts it.\n            local phase = {\n                id = phaseID,\n                phaseType = \"DotAvailability\",\n                startTime = startTime,\n                endTime = endTime,\n                value = 1,\n            }\n            state.phases[#state.phases + 1] = phase\n            state.p3DotPhases[#state.p3DotPhases + 1] = phase\n        end\n    end\n    -- Mid-P3 the slot pins swap too; before P3, Resync pins the bosses as they appear.\n    local chaosID, exdeathID = state.duoEntityIDs[7691], state.duoEntityIDs[6052]\n    if state.nextBoundary == 5 and chaosID and exdeathID then\n        local primaryID = p3Boss == \"Exdeath\" and exdeathID or chaosID\n        acr.clearAutoSimTarget(1)\n        acr.setAutoSimTarget(0, primaryID)\n        acr.setAutoSimTarget(1, primaryID == chaosID and exdeathID or chaosID)\n    end\nend\nstate.applyP3Boss(Lj_AutoSimShared_P3Boss)\n\n-- Raid buffs are on a 120s cooldown: a window never starts before the previous window + 120.\n-- The Raid Buffs action applies it after adding its windows, and Resync after every shift;\n-- a window ending at the kill keeps that end, and a window pushed past the kill is removed.\nfunction state.applyRaidBuffFloor()\n    local buffs = {}\n    for _, phase in ipairs(state.phases) do\n        if phase.phaseType == \"RaidBuff\" then\n            buffs[#buffs + 1] = phase\n        end\n    end\n    table.sort(buffs, function(a, b)\n        return a.startTime < b.startTime\n    end)\n    local removedAny = false\n    for index = 2, #buffs do\n        local phase = buffs[index]\n        local earliest = buffs[index - 1].startTime + 120\n        if phase.startTime < earliest then\n            local shift = earliest - phase.startTime\n            phase.startTime = earliest\n            if phase.endTime < state.killTime then\n                phase.endTime = math.min(phase.endTime + shift, state.killTime)\n            end\n            if phase.endTime <= phase.startTime then\n                acr.removeAutoSimPhase(phase.id)\n                phase.removed = true\n                removedAny = true\n            else\n                phase.id = acr.setAutoSimPhase(phase.id, phase.startTime, phase.endTime, phase.value) or phase.id\n            end\n        end\n    end\n    if removedAny then\n        for index = #state.phases, 1, -1 do\n            if state.phases[index].removed then\n                table.remove(state.phases, index)\n            end\n        end\n    end\nend\n\n-- P2 Kefka 1 HP lock: by 378 in 90% of 38 logged pulls and 80 FFLogs kills (median 375.6);\n-- P2 ends ~381.5. [AutoSim] P2 Kefka 1 HP moves the start earlier when Kefka locks sooner,\n-- and Targetability and Resync closes it when Kefka goes untargetable.\nlocal p2LockStart = 378\nlocal p2LockID = acr.addAutoSimPhase(\"BossModifier\", p2LockStart, state.boundaries[4].time, 0)\nif p2LockID then\n    local lock = {\n        id = p2LockID,\n        phaseType = \"BossModifier\",\n        startTime = p2LockStart,\n        endTime = state.boundaries[4].time,\n        value = 0,\n    }\n    -- Registered in state.phases so P1/P2 resyncs shift it.\n    state.phases[#state.phases + 1] = lock\n    state.phaseTwoDamageLock = lock\nend\n\n-- Boundary uncertainties from 507 logged pulls (p10-p90): P1 end 197.31-197.97, P2 end 381.03-382.20,\n-- P4 start 4.41-4.52s after P3 end, P4 end 132.06-132.38s after P4 start (101 pulls reaching P5),\n-- P5 start 30.94-31.05s after P4 end. P3 end keeps +/-10.\n-- P1 end: +/-5 for melee (tanks included, the same check as the P3 boss default), +/-1 otherwise.\nstate.uncertaintyID = acr.addAutoSimUncertainty(188.311, isMelee and 5 or 1)\n-- 20 logged kills land at P5 +214.2 to +222.1 (midpoint +218.2 = this kill time); enrage deaths\n-- at +224.6. +/-5s covers +213.2 to +223.2, starting 10s before the kill; Resync moves it.\nstate.killUncertaintyID = acr.addAutoSimUncertainty(state.killTime - 10, 5)\ndata.ljAutoSimDmu = state\nself.used = true",
							name = "Initialize AutoSim Schedule",
							uuid = "eef923e4-1a0d-9d0d-bc76-f57510b45daf",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "-- Raid buff windows for the AutoSim schedule: edit the value and times here.\n-- value is the damage multiplier in every window (1.3 = 30% more damage). A window can set\n-- its own, e.g. { startTime = 1.560, endTime = 21.115, value = 1.2 }.\n-- Times are seconds since pull. Targetability and Resync moves the windows with each pull's\n-- phase timings and keeps each at least 120s after the previous one (the raid buff cooldown).\n-- Runs after Initialize AutoSim Schedule, which creates data.ljAutoSimDmu.\nlocal value = 1.3\nlocal windows = {\n    { startTime = 1.560, endTime = 21.115 }, -- P1\n    { startTime = 122.595, endTime = 142.506 }, -- P1\n    { startTime = 243.152, endTime = 262.214 }, -- P2\n    { startTime = 363.497, endTime = 382.736 }, -- P2\n    { startTime = 484.703, endTime = 502.520 }, -- P3\n    { startTime = 604.734, endTime = 623.706 }, -- P3\n    { startTime = 725.768, endTime = 745.411 }, -- P4\n    { startTime = 845.888, endTime = 865.798 }, -- P4\n    { startTime = 968.340, endTime = 987.002 }, -- P5\n    { startTime = 1088.214, endTime = 1106.098 }, -- P5, to the kill\n}\n\nlocal acr = TensorCore.API.TensorACR\nlocal state = data.ljAutoSimDmu\nfor _, window in ipairs(windows) do\n    local windowValue = window.value or value\n    local phaseID = acr.addAutoSimPhase(\"RaidBuff\", window.startTime, window.endTime, windowValue)\n    if phaseID then\n        -- Registered in state.phases so Targetability and Resync shifts it.\n        state.phases[#state.phases + 1] = {\n            id = phaseID,\n            phaseType = \"RaidBuff\",\n            startTime = window.startTime,\n            endTime = window.endTime,\n            value = windowValue,\n        }\n    end\nend\nstate.applyRaidBuffFloor()\nself.used = true",
							name = "Raid Buffs",
							uuid = "f8c3e1e2-54a6-0ad6-ad72-d5a73d90a536",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				displayPath = "AutoSim",
				eventType = 16,
				mechanicTime = 15.261765625,
				name = "[AutoSim] Initialize DMU",
				timeRange = true,
				timelineIndex = 1,
				timerStartOffset = -16,
				uuid = "694542e1-ae1e-876e-8e1c-280acead1235",
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
							actionLua = "local acr = TensorCore.API.TensorACR\nlocal state = data.ljAutoSimDmu\nlocal contentID = eventArgs.entityContentID\n\nif not state or not state.bossContentIDs[contentID] then\n    self.used = true\n    return\nend\n\n-- End phase 2's zero-damage period on the exact filtered Kefka.\nlocal damageLock = state.phaseTwoDamageLock\n-- The Init preset has no entity until Kefka reaches 1 HP, so it closes on Kefka's P2-end event.\nif damageLock and not damageLock.closed\n    and not eventArgs.isTargetable\n    and (eventArgs.entityID == damageLock.entityID\n        or (damageLock.entityID == nil and contentID == 7131 and state.nextBoundary == 3)) then\n    local endedAt = acr.getAutoSimTime()\n    if endedAt > damageLock.startTime then\n        acr.setAutoSimPhase(damageLock.id, damageLock.startTime, endedAt, 0)\n    else\n        acr.removeAutoSimPhase(damageLock.id)\n    end\n    damageLock.closed = true\n    -- Closed at the real time, so the resync shift below must not move it again.\n    for index = #state.phases, 1, -1 do\n        if state.phases[index] == damageLock then\n            table.remove(state.phases, index)\n        end\n    end\nend\n\nlocal phaseThreeLock = state.phaseThreeDamageLock\n\n-- Target assignment is independent of resync acceptance.\n-- In P3 the primary boss (the AutoSim Settings pick, see state.applyP3Boss) takes slot 0\n-- and the other duo boss slot 1; outside P3 Exdeath stays in slot 1 and Kefka takes slot 0.\nif contentID == 7691 or contentID == 6052 then\n    if eventArgs.isTargetable then\n        state.duoEntityIDs[contentID] = eventArgs.entityID\n    end\n    if contentID == state.primaryContentID and state.nextBoundary <= 5 then\n        if eventArgs.isTargetable then\n            acr.setAutoSimTarget(0, eventArgs.entityID)\n        end\n    else\n        acr.setAutoSimTarget(1, eventArgs.entityID)\n    end\nelseif eventArgs.isTargetable then\n    acr.setAutoSimTarget(0, eventArgs.entityID)\nend\n\nlocal isDuo = contentID == 7691 or contentID == 6052\nif isDuo then\n    state.duoTargetable[contentID] = eventArgs.isTargetable\nend\n\nlocal now = acr.getAutoSimTime()\nlocal transitionKind = eventArgs.isTargetable and \"up\" or \"down\"\nlocal matchedIndex\nlocal boundary\nlocal bestDistance\n\n-- Match only unconsumed boundaries near their current predicted pull time.\n-- A later matching boundary can recover from an earlier missed event.\nfor index = state.nextBoundary, #state.boundaries do\n    local candidate = state.boundaries[index]\n    local delta = now - candidate.time\n    local bossMatches = (candidate.boss == \"duo\" and isDuo)\n        or (candidate.boss == \"kefka\" and contentID == 7131)\n    if bossMatches and candidate.kind == transitionKind\n        and delta >= -candidate.early and delta <= candidate.late then\n        local distance = math.abs(delta)\n        if not bestDistance or distance < bestDistance then\n            matchedIndex = index\n            boundary = candidate\n            bestDistance = distance\n        end\n    end\nend\n\nif not boundary then\n    self.used = true\n    return\nend\n\n-- Start the P4 transition only after both duo bosses are untargetable.\nif boundary.boss == \"duo\" and transitionKind == \"down\"\n    and (state.duoTargetable[7691] or state.duoTargetable[6052]) then\n    self.used = true\n    return\nend\n\nlocal expectedTime = boundary.time\nlocal delta = now - expectedTime\n\nstate.killTime = state.killTime + delta\nacr.setAutoSimKillTime(state.killTime)\nif state.killUncertaintyID then\n    acr.setAutoSimUncertainty(state.killUncertaintyID, state.killTime - 10, 5)\nend\n\n-- Damage stops being relevant once both duo bosses are untargetable.\n-- FullDowntime covers the remaining transition into Kefka.\n-- The lock ends at the P3 floor. A P3 end before it shrinks the lock before phases shift;\n-- a later P3 end leaves it, since damage after the floor is what ends P3.\nlocal function closePhaseThreeLock()\n    if not (phaseThreeLock and not phaseThreeLock.closed and matchedIndex == 5) then\n        return\n    end\n    if now > phaseThreeLock.startTime then\n        acr.setAutoSimPhase(\n            phaseThreeLock.id,\n            phaseThreeLock.startTime,\n            now,\n            0\n        )\n    else\n        acr.removeAutoSimPhase(phaseThreeLock.id)\n    end\n    phaseThreeLock.endTime = now\n    phaseThreeLock.closed = true\nend\n\nlocal lockShrinks = phaseThreeLock and now <= phaseThreeLock.endTime\nif lockShrinks then\n    closePhaseThreeLock()\nend\n\n-- At boundary 5 this moves FullDowntime's start to the exact duo-down time.\n-- At boundary 6 it moves FullDowntime's end to Kefka's exact targetable time.\n-- Move later phases first when shifting right and earlier phases first when\n-- shifting left, so a phase never overlaps a same-type phase that has not moved yet.\nlocal order = {}\nfor index = 1, #state.phases do\n    order[index] = index\nend\ntable.sort(order, function(a, b)\n    if delta > 0 then\n        return state.phases[a].startTime > state.phases[b].startTime\n    end\n    return state.phases[a].startTime < state.phases[b].startTime\nend)\n\nlocal removed = {}\nfor _, index in ipairs(order) do\n    local phase = state.phases[index]\n    local changed = false\n    if phase.startTime >= expectedTime - 0.0001 then\n        phase.startTime = phase.startTime + delta\n        changed = true\n    end\n    if phase.endTime >= expectedTime - 0.0001 then\n        phase.endTime = phase.endTime + delta\n        changed = true\n    end\n    if changed then\n        if phase.endTime <= phase.startTime then\n            -- An early boundary left no time for a phase that ends at it.\n            acr.removeAutoSimPhase(phase.id)\n            removed[index] = true\n        else\n            local phaseID = acr.setAutoSimPhase(\n                phase.id,\n                phase.startTime,\n                phase.endTime,\n                phase.value\n            )\n            if phaseID then\n                phase.id = phaseID\n            else\n                removed[index] = true\n            end\n        end\n    end\nend\nfor index = #state.phases, 1, -1 do\n    if removed[index] then\n        table.remove(state.phases, index)\n    end\nend\nstate.applyRaidBuffFloor()\n\nif not lockShrinks and phaseThreeLock and matchedIndex == 5 then\n    phaseThreeLock.closed = true\nend\n\nfor index = matchedIndex, #state.boundaries do\n    state.boundaries[index].time = state.boundaries[index].time + delta\nend\n\nstate.uncertaintyID = acr.addAutoSimUncertainty(now, 0)\nstate.nextBoundary = matchedIndex + 1\n\nlocal nextBoundary = state.boundaries[state.nextBoundary]\nif nextBoundary then\n    local uncertaintyTime = nextBoundary.time - nextBoundary.lead\n    if uncertaintyTime <= now then\n        uncertaintyTime = now + 0.001\n    end\n    state.uncertaintyID = acr.addAutoSimUncertainty(\n        uncertaintyTime,\n        nextBoundary.uncertainty\n    )\nend\n\nself.used = true",
							name = "Track Boss State and Resync",
							uuid = "00f9dabe-dc3d-af3a-a411-8f3297f24930",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				displayPath = "AutoSim",
				eventType = 26,
				loop = true,
				mechanicTime = 15.261765625,
				name = "[AutoSim] Targetability and Resync",
				timeRange = true,
				timelineIndex = 1,
				timerEndOffset = 1200,
				timerStartOffset = -16,
				uuid = "4f69e1d3-60cb-85a7-b16c-fc005fe0e39d",
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
				name = "AutoSim",
				uuid = "51b6173d-8253-0b04-9fd8-73d7b69c5012",
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
							actionLua = "local state = data.ljAutoSimDmu\nlocal phase = state and state.keyed.confetti1\nif phase and not phase.removed then\n    TensorCore.API.TensorACR.removeAutoSimPhase(phase.id)\n    phase.removed = true\n    for index = #state.phases, 1, -1 do\n        if state.phases[index] == phase then\n            table.remove(state.phases, index)\n            break\n        end\n    end\nend\nself.used = true",
							conditions = 
							{
								
								{
									"e8601c9b-d4be-0b78-aa4e-369c91689912",
									true,
								},
							},
							name = "Remove Confetti 1 Window",
							uuid = "4166af95-d848-43df-a514-02f9a6a18b46",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							buffID = 5078,
							category = "Self",
							name = "Self: Has Confetti",
							uuid = "e8601c9b-d4be-0b78-aa4e-369c91689912",
							version = 3,
						},
					},
				},
				displayPath = "AutoSim",
				mechanicTime = 44.392149263472,
				name = "[AutoSim] Confetti 1 Remove Caster Downtime",
				timeRange = true,
				timelineIndex = 8,
				timerEndOffset = 2.875,
				timerStartOffset = 0.375,
				uuid = "f8ca5b46-ddeb-e913-9d47-c490c39b8460",
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
				name = "AutoSim",
				uuid = "825b9e05-5297-b627-9ebc-e67286cb09d1",
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
							actionLua = "local state = data.ljAutoSimDmu\nlocal phase = state and state.keyed.confetti2\nif phase and not phase.removed then\n    TensorCore.API.TensorACR.removeAutoSimPhase(phase.id)\n    phase.removed = true\n    for index = #state.phases, 1, -1 do\n        if state.phases[index] == phase then\n            table.remove(state.phases, index)\n            break\n        end\n    end\nend\nself.used = true",
							conditions = 
							{
								
								{
									"a48a4105-93d2-a979-b125-26ea3cc9e048",
									true,
								},
							},
							name = "Remove Confetti 2 Window",
							uuid = "1ab0200a-931a-ce38-8769-ad493522886d",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							buffID = 5078,
							category = "Self",
							name = "Self: Has Confetti",
							uuid = "a48a4105-93d2-a979-b125-26ea3cc9e048",
							version = 3,
						},
					},
				},
				displayPath = "AutoSim",
				mechanicTime = 118.07975730716,
				name = "[AutoSim] Confetti 2 Remove Caster Downtime",
				timeRange = true,
				timelineIndex = 25,
				timerEndOffset = 5,
				timerStartOffset = 1,
				uuid = "166d373c-da0a-49f6-83b8-e4b33dcebae6",
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
				name = "AutoSim",
				uuid = "ecaaf845-4b11-1e60-a61f-a336b8022283",
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
							actionLua = "-- Mirrors the Samurai TensorDrift Force Slidecast at Tele-trouncing: no slidecast when Confetti has <= 5s left.\nlocal state = data.ljAutoSimDmu\nif not state then\n    return\nend\nlocal acr = TensorCore.API.TensorACR\nlocal startTime = acr.getAutoSimTime()\nlocal phaseID = acr.addAutoSimPhase(\"CasterDowntime\", startTime, startTime + 3)\nif phaseID then\n    -- Registered in state.phases so Targetability and Resync shifts it.\n    state.phases[#state.phases + 1] = { id = phaseID, phaseType = \"CasterDowntime\", startTime = startTime, endTime = startTime + 3, value = 1 }\nend\nself.used = true",
							conditions = 
							{
								
								{
									"6ba0d658-fafa-53a8-8c4a-0079c4680754",
									false,
								},
							},
							name = "Add Caster Downtime",
							uuid = "5dcb5839-f8aa-1f51-ade2-f88be669c665",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							buffCheckType = 3,
							buffDuration = 5,
							buffID = 5078,
							category = "Self",
							comparator = 2,
							name = "Self: Confetti Buff <= 5s",
							uuid = "6ba0d658-fafa-53a8-8c4a-0079c4680754",
							version = 3,
						},
					},
				},
				displayPath = "AutoSim",
				enabled = false,
				mechanicTime = 167.71168967762,
				name = "[AutoSim] Tele-trouncing Caster Downtime",
				timeRange = true,
				timelineIndex = 34,
				timerEndOffset = 2,
				timerStartOffset = -2,
				uuid = "40565ea4-a8ae-c348-8a33-bdc6bda71736",
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
				name = "AutoSim",
				uuid = "d7be03b5-202e-147f-9fca-9795735121b8",
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
							actionLua = "local state = data.ljAutoSimDmu\nif not state then return end\nif state.nextBoundary > 3 then\n    self.used = true\n    return\nend\n\nlocal acr = TensorCore.API.TensorACR\nlocal now = acr.getAutoSimTime()\nlocal lock = state.phaseTwoDamageLock\nif lock then\n    -- The Init preset: start it now when Kefka locked before the preset start.\n    if not lock.entityID then\n        lock.entityID = eventArgs.detectionTargetID\n        if not lock.closed and now < lock.startTime then\n            local phaseID = acr.setAutoSimPhase(lock.id, now, lock.endTime, 0)\n            if phaseID then\n                lock.id = phaseID\n                lock.startTime = now\n            end\n        end\n    end\n    self.used = true\n    return\nend\n-- Cover the remaining attackable time and transition downtime.\n-- The tracked entity's untargetable event closes this at the actual time.\nlocal endTime = state.boundaries[4].time\nif now >= endTime then\n    self.used = true\n    return\nend\n-- Remove overlapping AutoSim v5 BossModifier windows before locking.\nif state.trimBossModifiers then\n    state.trimBossModifiers(now, endTime)\nend\nlocal id = acr.addAutoSimPhase(\"BossModifier\", now, endTime, 0)\nif id then\n    state.phaseTwoDamageLock = {\n        id = id,\n        startTime = now,\n        entityID = eventArgs.detectionTargetID,\n    }\nend\nself.used = true",
							conditions = 
							{
								
								{
									"21f8ccac-a95f-2b85-9100-3146fef41ddc",
									true,
								},
							},
							name = "Begin P2 zero damage",
							uuid = "9f5041f0-96c6-857f-834f-e807ab678bc6",
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
							uuid = "f9adf699-21e6-56ef-9efd-0c4aa35b8515",
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
									"f9adf699-21e6-56ef-9efd-0c4aa35b8515",
									true,
								},
							},
							filterTargetType = "ContentID",
							name = "Kefka at 1 HP",
							partyTargetContentID = 7131,
							uuid = "21f8ccac-a95f-2b85-9100-3146fef41ddc",
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
				uuid = "8d08e09f-952b-94d4-ac02-0a65a2740aac",
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
				uuid = "33318410-6bb9-d0b9-aa77-b44f680a8cf4",
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
							actionLua = "local state = data.ljAutoSimDmu\nif not state then return end\nif state.phaseThreeDamageLock then\n    self.used = true\n    return\nend\n\nif state.nextBoundary ~= 5 then return end\n\nlocal acr = TensorCore.API.TensorACR\nlocal now = acr.getAutoSimTime()\n-- Chaos and Exdeath are held at 1 HP until P3 start + 290.8 (229 logged pulls reaching P4)\n-- and die on reaching 0 after it, so only the time before that floor is dead time.\n-- Past the floor, damage on the other boss still ends P3.\nlocal endTime = state.boundaries[4].time + 290.8\nif now >= endTime then\n    self.used = true\n    return\nend\n\n-- Remove overlapping AutoSim v5 BossModifier windows before locking.\nif state.trimBossModifiers then\n    state.trimBossModifiers(now, endTime)\nend\nlocal id = acr.addAutoSimPhase(\"BossModifier\", now, endTime, 0)\nif id then\n    state.phaseThreeDamageLock = {\n        id = id,\n        startTime = now,\n        endTime = endTime,\n    }\nend\nself.used = true",
							conditions = 
							{
								
								{
									"15b33571-d69a-384d-ab87-5bfb44a23a00",
									true,
								},
							},
							name = "Begin P3 zero damage",
							uuid = "411d1282-ae6c-a172-9508-6f43f6fddd1a",
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
							hpValue = 1.5,
							name = "DT: HP <= 1.5% HP",
							partyTargetType = "Detection Target",
							uuid = "cd523053-646a-4abc-8cbc-7e9865b98205",
							version = 3,
						},
					},
					
					{
						data = 
						{
							displayPath = "",
							name = "Chaos",
							uuid = "08ae734d-4128-002c-b3bd-ae6db5f75406",
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
							uuid = "e3ec820a-cd82-4abd-a07b-26e9c0c1e7de",
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
									"cd523053-646a-4abc-8cbc-7e9865b98205",
									true,
								},
								
								{
									"e3ec820a-cd82-4abd-a07b-26e9c0c1e7de",
									true,
								},
							},
							displayPath = "Chaos",
							filterTargetType = "ContentID",
							name = "F - Chaos",
							partyTargetContentID = 7691,
							uuid = "af88b645-6c1a-405a-8426-637e887dd751",
							version = 3,
						},
					},
					
					{
						data = 
						{
							displayPath = "",
							name = "Exdeath",
							uuid = "832c164a-c854-f19e-954a-8a9836f0cd5d",
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
							uuid = "6ab2e8c9-04d4-912a-92d1-e7f04cfb22e6",
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
									"cd523053-646a-4abc-8cbc-7e9865b98205",
									true,
								},
								
								{
									"6ab2e8c9-04d4-912a-92d1-e7f04cfb22e6",
									true,
								},
							},
							displayPath = "Exdeath",
							filterTargetType = "ContentID",
							name = "F - Exdeath",
							partyTargetContentID = 6052,
							uuid = "f7b40e0e-bef6-5020-8820-443c3ce5553c",
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
									"af88b645-6c1a-405a-8426-637e887dd751",
									true,
								},
								
								{
									"f7b40e0e-bef6-5020-8820-443c3ce5553c",
									true,
								},
							},
							matchAnyBuff = true,
							name = "OR Gate: Boss Dying",
							partyTargetNumber = 0,
							uuid = "15b33571-d69a-384d-ab87-5bfb44a23a00",
							version = 3,
						},
					},
				},
				displayPath = "AutoSim",
				mechanicTime = 715.37264047081,
				name = "[AutoSim] P3 Boss Dying",
				timeRange = true,
				timelineIndex = 148,
				timerEndOffset = 5.1173596382141,
				timerStartOffset = -35.372638702393,
				uuid = "de6b998f-cd15-f018-a589-0b4d717cd523",
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
				name = "AutoSim",
				uuid = "32ce9b39-f709-298b-9883-f9dff5110641",
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
									"40e06aab-2faf-2423-9581-a086d0c35455",
									true,
								},
							},
							name = "Exdeath Lie",
							uuid = "ad8cfb13-a331-2f81-be7f-911d71b02352",
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
									"37e52613-7123-d1a8-897f-e7e7e629b7df",
									true,
								},
							},
							name = "Exdeath Truth",
							uuid = "b541be58-d281-3216-9363-944663b1ad41",
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
							uuid = "40e06aab-2faf-2423-9581-a086d0c35455",
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
							uuid = "37e52613-7123-d1a8-897f-e7e7e629b7df",
							version = 3,
						},
					},
				},
				displayPath = "AutoSim",
				eventType = 25,
				loop = true,
				mechanicTime = 812.05085714286,
				name = "[AutoSim] Track Exdeath Truth",
				timeRange = true,
				timelineIndex = 151,
				timerEndOffset = 58,
				timerStartOffset = 4,
				uuid = "77f5ccc7-2374-4639-a0b8-8617b28ccff8",
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
				name = "AutoSim",
				uuid = "bd7f1730-963c-6aee-ae4e-6de468fde28f",
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
									"63c58604-0ee9-0eee-8aba-efeec5c4d1a1",
									true,
								},
							},
							name = "Add Stun For Real Bomb",
							uuid = "cd3d6f1b-4118-b4d4-838f-fad500cfbb0e",
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
							uuid = "63c58604-0ee9-0eee-8aba-efeec5c4d1a1",
							version = 3,
						},
					},
				},
				displayPath = "AutoSim",
				mechanicTime = 826.02524789261,
				name = "[AutoSim] Accel Bomb Stun",
				timeRange = true,
				timelineIndex = 153,
				timerEndOffset = 22,
				timerStartOffset = -2,
				uuid = "610b1f6e-d35b-6e13-b6c2-9e3466f501c3",
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
				uuid = "64c9bafa-2f68-b82c-96ef-401826c67e71",
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
									"ec6da4fc-700a-84ee-897d-157f869b91e8",
									true,
								},
								
								{
									"af02dfe4-4c0e-d0c5-b0be-e839c43f4fba",
									true,
								},
							},
							gVar = "ACR_TensorWeeb4_Hotbar_LimitBreak",
							uuid = "607acb10-ba35-26d3-8ca5-707f587797f6",
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
							conditionLua = "local modes = ljAutoSimSharedModes\nreturn modes ~= nil and modes.p4 == \"Automatic\"",
							dequeueIfLuaFalse = true,
							name = "LB P4 Automatic",
							uuid = "ec6da4fc-700a-84ee-897d-157f869b91e8",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 9,
							dequeueIfLuaFalse = true,
							jobIDList = 
							{
								20,
								22,
								30,
								34,
								39,
								41,
							},
							name = "Melee DPS",
							partyTargetType = "Melee DPS",
							uuid = "af02dfe4-4c0e-d0c5-b0be-e839c43f4fba",
							version = 3,
						},
					},
				},
				displayPath = "AutoSim LB",
				mechanicTime = 846.19462329432,
				name = "[AutoSim LB] Use Limit Break P4",
				timelineIndex = 157,
				timerOffset = 3.2000000476837,
				uuid = "d20d31aa-27a7-df84-bc9f-e551e2cddbda",
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
				name = "AutoSim",
				uuid = "d5557835-6078-f427-8487-dbcd64044a20",
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
									"dcffe261-ea14-e46a-98be-616ffbce66fd",
									true,
								},
							},
							gVar = "ACR_TensorReaper4_Burn",
							uuid = "4a8539c2-9a19-6873-ac5f-8e5040a5e2e4",
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
							conditionLua = "local state = data.ljAutoSimDmu\nreturn state ~= nil and TensorCore.API.TensorACR.getAutoSimTime() >= state.killTime",
							name = "Past AutoSim Kill Time",
							uuid = "dcffe261-ea14-e46a-98be-616ffbce66fd",
							version = 3,
						},
					},
				},
				displayPath = "AutoSim",
				mechanicTime = 965.64810213372,
				name = "[AutoSim] Burn Past Kill Time",
				timeRange = true,
				timelineIndex = 171,
				timerEndOffset = 400,
				timerStartOffset = 150,
				uuid = "13386e57-f63e-2b3b-a9cd-c01975d8f612",
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
				uuid = "b7a8e007-c830-a3de-b35e-dfb008b2c896",
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
									"98b933e4-d880-b57f-ba04-cbec34f131e0",
									true,
								},
								
								{
									"6a4afaa8-663e-0100-9cb2-a46ba9cbd885",
									true,
								},
							},
							gVar = "ACR_TensorWeeb4_Hotbar_LimitBreak",
							uuid = "71ffade9-4ae0-f39d-b196-fd0bd2b1bb83",
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
							conditionLua = "local modes = ljAutoSimSharedModes\nreturn modes ~= nil and modes.p5 == \"Automatic\"",
							dequeueIfLuaFalse = true,
							name = "LB P5 Automatic",
							uuid = "98b933e4-d880-b57f-ba04-cbec34f131e0",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 9,
							dequeueIfLuaFalse = true,
							jobIDList = 
							{
								20,
								22,
								30,
								34,
								39,
								41,
							},
							name = "Melee DPS",
							partyTargetType = "Melee DPS",
							uuid = "6a4afaa8-663e-0100-9cb2-a46ba9cbd885",
							version = 3,
						},
					},
				},
				displayPath = "AutoSim LB",
				mechanicTime = 1154.7445474604,
				name = "[AutoSim LB] Use Limit Break P5",
				timelineIndex = 226,
				timerOffset = -1.1000000238419,
				uuid = "a4246cb8-cb5e-7e76-b3d4-bb60ab67113b",
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