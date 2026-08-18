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
							actionLua = "AnyoneCore.Settings.Reactions.dmu.mitigation = false\nself.used = true",
							conditions = 
							{
								
								{
									"3d0ed565-6e2c-516d-9524-53ee0305c071",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_CD",
							uuid = "27be69c5-9b18-a361-a1eb-6c2cca5692fe",
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
							conditionLua = "return AnyoneCore.Settings.Reactions.dmu.mitigation == true",
							dequeueIfLuaFalse = true,
							name = "Mitigation Enabled",
							uuid = "3d0ed565-6e2c-516d-9524-53ee0305c071",
							version = 3,
						},
					},
				},
				mechanicTime = 15.261765625,
				name = "[Lj Mit] Disable Anyone's Mit",
				timelineIndex = 1,
				timerOffset = -15.300000190735,
				uuid = "cdfa2499-428a-3dad-86b3-598b48f79e31",
				version = 2,
			},
			inheritedIndex = 1,
		},
	}, 
	[5] = 
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
									"d03827ca-3f9f-5461-92f2-9b9b2dfbbde2",
									true,
								},
								
								{
									"5682de85-25a7-9458-ad2b-ca2fbd43370e",
									true,
								},
							},
							gVar = "ACR_TensorViper3_Hotbar_Feint",
							uuid = "ae1a8597-0aed-56a6-979d-b5088f6665a8",
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
							category = "Self",
							conditionType = 9,
							dequeueIfLuaFalse = true,
							name = "Self: Melee",
							partyTargetType = "Melee DPS",
							uuid = "d03827ca-3f9f-5461-92f2-9b9b2dfbbde2",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return AnyoneCore.Settings.Reactions.dmu.primaryMitigation == true",
							dequeueIfLuaFalse = true,
							name = "Primary Mitigation",
							uuid = "5682de85-25a7-9458-ad2b-ca2fbd43370e",
							version = 3,
						},
					},
				},
				mechanicTime = 37.212891227673,
				name = "[Lj Mit] Feint - Primary",
				timeRange = true,
				timelineIndex = 5,
				timerEndOffset = -1,
				timerStartOffset = -14.5,
				uuid = "c5a4be4a-b2d0-aed2-9182-1bee3c8f92b9",
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
									"ca350657-f317-777f-b858-236691700b8f",
									true,
								},
								
								{
									"b66ec498-4c15-8190-adfb-18b116ad2c9b",
									true,
								},
							},
							gVar = "ACR_RikuRDM3_Hotbar_Addle",
							uuid = "8e2ac998-993d-d6a7-be0d-ce9a0f9eef04",
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
							category = "Self",
							conditionType = 9,
							dequeueIfLuaFalse = true,
							name = "Self: Caster",
							partyTargetType = "Ranged Caster DPS",
							uuid = "ca350657-f317-777f-b858-236691700b8f",
							version = 3,
						},
						inheritedIndex = 1,
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return AnyoneCore.Settings.Reactions.dmu.primaryMitigation == true",
							dequeueIfLuaFalse = true,
							name = "Primary Mitigation",
							uuid = "b66ec498-4c15-8190-adfb-18b116ad2c9b",
							version = 3,
						},
					},
				},
				mechanicTime = 37.212891227673,
				name = "[Lj Mit] Addle - Primary",
				timeRange = true,
				timelineIndex = 5,
				timerEndOffset = -1,
				timerStartOffset = -14.5,
				uuid = "d848801a-d500-e619-add4-4d3d1c8d939d",
				version = 2,
			},
			inheritedIndex = 2,
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
									"7c259250-e60f-cf60-ac51-224d92e3db21",
									true,
								},
								
								{
									"c8990f81-73d9-bf7b-942e-ad6db29e6623",
									true,
								},
							},
							gVar = "ACR_TensorRequiem3_Hotbar_Troubadour",
							uuid = "fd2d982d-2e90-2b4e-865b-e4db2bfa6923",
							variableTogglesType = 2,
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
									"83d0ea0a-4934-2421-a692-59d0959b18f9",
									true,
								},
								
								{
									"c8990f81-73d9-bf7b-942e-ad6db29e6623",
									true,
								},
							},
							gVar = "ACR_RikuDNC3_Hotbar_ShieldSamba",
							uuid = "5409201a-e210-3d52-bd0a-5785a0062108",
							variableTogglesType = 2,
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
									"9b510f14-672a-9890-b474-d7ab095f17f6",
									true,
								},
								
								{
									"c8990f81-73d9-bf7b-942e-ad6db29e6623",
									true,
								},
							},
							gVar = "ACR_TensorMagnum3_Hotbar_Tactician",
							uuid = "55ef0f53-d927-aef8-8a4b-086a6f3246da",
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
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "BARD",
							name = "Self: BRD",
							uuid = "7c259250-e60f-cf60-ac51-224d92e3db21",
							version = 3,
						},
						inheritedIndex = 1,
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "DANCER",
							name = "Self: DNC",
							uuid = "83d0ea0a-4934-2421-a692-59d0959b18f9",
							version = 3,
						},
						inheritedIndex = 1,
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "MACHINIST",
							name = "Self: MCH",
							uuid = "9b510f14-672a-9890-b474-d7ab095f17f6",
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
							inRangeValue = 30,
							minTargetPercent = true,
							name = "Party Range: <= 30y",
							partyTargetNumber = 100,
							partyTargetSubType = "Number",
							uuid = "c8990f81-73d9-bf7b-942e-ad6db29e6623",
							version = 3,
						},
					},
				},
				mechanicTime = 37.212891227673,
				name = "[Lj Mit] Phys Ranged - Primary",
				randomTimeout = 10,
				timeRange = true,
				timelineIndex = 5,
				timerEndOffset = -1,
				timerStartOffset = -14.5,
				uuid = "e31a9c57-3fe6-cbdb-bb4e-62fb4af1a8e3",
				version = 2,
			},
			inheritedIndex = 4,
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
							conditions = 
							{
								
								{
									"d03827ca-3f9f-5461-92f2-9b9b2dfbbde2",
									true,
								},
								
								{
									"5682de85-25a7-9458-ad2b-ca2fbd43370e",
									false,
								},
							},
							gVar = "ACR_TensorViper3_Hotbar_Feint",
							uuid = "ae1a8597-0aed-56a6-979d-b5088f6665a8",
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
							category = "Self",
							conditionType = 9,
							dequeueIfLuaFalse = true,
							name = "Self: Melee",
							partyTargetType = "Melee DPS",
							uuid = "d03827ca-3f9f-5461-92f2-9b9b2dfbbde2",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return AnyoneCore.Settings.Reactions.dmu.primaryMitigation == true",
							name = "Primary Mitigation",
							uuid = "5682de85-25a7-9458-ad2b-ca2fbd43370e",
							version = 3,
						},
					},
				},
				mechanicTime = 62.553324919213,
				name = "[Lj Mit] Feint - Secondary",
				timeRange = true,
				timelineIndex = 12,
				timerEndOffset = -1,
				timerStartOffset = -14.5,
				uuid = "ae8b43bf-cd54-fa2e-97bb-32acd33e780a",
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
									"ca350657-f317-777f-b858-236691700b8f",
									true,
								},
								
								{
									"b66ec498-4c15-8190-adfb-18b116ad2c9b",
									false,
								},
							},
							gVar = "ACR_RikuRDM3_Hotbar_Addle",
							uuid = "8e2ac998-993d-d6a7-be0d-ce9a0f9eef04",
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
							category = "Self",
							conditionType = 9,
							dequeueIfLuaFalse = true,
							name = "Self: Caster",
							partyTargetType = "Ranged Caster DPS",
							uuid = "ca350657-f317-777f-b858-236691700b8f",
							version = 3,
						},
						inheritedIndex = 1,
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return AnyoneCore.Settings.Reactions.dmu.primaryMitigation == true",
							name = "Primary Mitigation",
							uuid = "b66ec498-4c15-8190-adfb-18b116ad2c9b",
							version = 3,
						},
					},
				},
				mechanicTime = 62.553324919213,
				name = "[Lj Mit] Addle - Secondary",
				timeRange = true,
				timelineIndex = 12,
				timerEndOffset = -1,
				timerStartOffset = -14.5,
				uuid = "c34444d2-1165-b3c8-be8c-5b9f06b44349",
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
									"7c259250-e60f-cf60-ac51-224d92e3db21",
									true,
								},
								
								{
									"d635aad7-4ec4-7ab5-81cc-3aca65d2336e",
									false,
								},
								
								{
									"c8990f81-73d9-bf7b-942e-ad6db29e6623",
									true,
								},
							},
							gVar = "ACR_TensorRequiem3_Hotbar_Troubadour",
							uuid = "fd2d982d-2e90-2b4e-865b-e4db2bfa6923",
							variableTogglesType = 2,
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
									"83d0ea0a-4934-2421-a692-59d0959b18f9",
									true,
								},
								
								{
									"d635aad7-4ec4-7ab5-81cc-3aca65d2336e",
									false,
								},
								
								{
									"c8990f81-73d9-bf7b-942e-ad6db29e6623",
									true,
								},
							},
							gVar = "ACR_RikuDNC3_Hotbar_ShieldSamba",
							uuid = "5409201a-e210-3d52-bd0a-5785a0062108",
							variableTogglesType = 2,
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
									"9b510f14-672a-9890-b474-d7ab095f17f6",
									true,
								},
								
								{
									"d635aad7-4ec4-7ab5-81cc-3aca65d2336e",
									false,
								},
								
								{
									"c8990f81-73d9-bf7b-942e-ad6db29e6623",
									true,
								},
							},
							gVar = "ACR_TensorMagnum3_Hotbar_Tactician",
							uuid = "55ef0f53-d927-aef8-8a4b-086a6f3246da",
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
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "BARD",
							name = "Self: BRD",
							uuid = "7c259250-e60f-cf60-ac51-224d92e3db21",
							version = 3,
						},
						inheritedIndex = 1,
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "DANCER",
							name = "Self: DNC",
							uuid = "83d0ea0a-4934-2421-a692-59d0959b18f9",
							version = 3,
						},
						inheritedIndex = 1,
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "MACHINIST",
							name = "Self: MCH",
							uuid = "9b510f14-672a-9890-b474-d7ab095f17f6",
							version = 3,
						},
						inheritedIndex = 3,
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return AnyoneCore.Settings.Reactions.dmu.primaryMitigation == true",
							name = "Primary Mitigation",
							uuid = "d635aad7-4ec4-7ab5-81cc-3aca65d2336e",
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
							inRangeValue = 30,
							minTargetPercent = true,
							name = "Party Range: <= 30y",
							partyTargetNumber = 100,
							partyTargetSubType = "Number",
							uuid = "c8990f81-73d9-bf7b-942e-ad6db29e6623",
							version = 3,
						},
					},
				},
				mechanicTime = 62.553324919213,
				name = "[Lj Mit] Phys Ranged - Secondary",
				randomTimeout = 10,
				timeRange = true,
				timelineIndex = 12,
				timerEndOffset = -1,
				timerStartOffset = -14.5,
				uuid = "6dee9ab6-abb7-ec98-9399-3e3756ed8844",
				version = 2,
			},
			inheritedIndex = 3,
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
									"c3fcfda9-bfd8-1d9b-b7b4-1154d8d77c9c",
									true,
								},
							},
							gVar = "ACR_TensorMagnum3_Hotbar_Dismantle",
							uuid = "ae6912a5-fb91-3542-8411-f786fa2a3106",
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
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "MACHINIST",
							name = "Self: MCH",
							uuid = "c3fcfda9-bfd8-1d9b-b7b4-1154d8d77c9c",
							version = 3,
						},
						inheritedIndex = 3,
					},
				},
				mechanicTime = 62.553324919213,
				name = "[Lj Mit] Dismantle",
				timeRange = true,
				timelineIndex = 12,
				timerEndOffset = -1,
				timerStartOffset = -9.5,
				uuid = "e6e6b722-6dc7-acfd-a41a-11d9df2fab01",
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
									"83c6a17b-723e-3cbd-9155-9e9c69e2d26b",
									true,
								},
								
								{
									"da63e6cf-f2cc-e5fa-bcad-5cd7d5cc7662",
									true,
								},
							},
							gVar = "ACR_RikuRDM3_Hotbar_MagickBarrier",
							uuid = "b72c4571-63c3-36a1-acc2-b9e6d3e1960d",
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
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "REDMAGE",
							name = "Self: RDM",
							uuid = "83c6a17b-723e-3cbd-9155-9e9c69e2d26b",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Party",
							comparator = 2,
							conditionType = 4,
							inRangeValue = 30,
							minTargetPercent = true,
							name = "Party Range: <= 30y",
							partyTargetNumber = 100,
							partyTargetSubType = "Number",
							uuid = "da63e6cf-f2cc-e5fa-bcad-5cd7d5cc7662",
							version = 3,
						},
					},
				},
				mechanicTime = 62.553324919213,
				name = "[Lj Mit] Magick Barrier",
				timeRange = true,
				timelineIndex = 12,
				timerEndOffset = -1,
				timerStartOffset = -9.5,
				uuid = "02f22d65-f3a3-1964-bd28-2909f9264df4",
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
							aType = "ACR",
							conditions = 
							{
								
								{
									"d03827ca-3f9f-5461-92f2-9b9b2dfbbde2",
									true,
								},
								
								{
									"5682de85-25a7-9458-ad2b-ca2fbd43370e",
									true,
								},
							},
							gVar = "ACR_TensorViper3_Hotbar_Feint",
							uuid = "ae1a8597-0aed-56a6-979d-b5088f6665a8",
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
							category = "Self",
							conditionType = 9,
							dequeueIfLuaFalse = true,
							name = "Self: Melee",
							partyTargetType = "Melee DPS",
							uuid = "d03827ca-3f9f-5461-92f2-9b9b2dfbbde2",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return AnyoneCore.Settings.Reactions.dmu.primaryMitigation == true",
							dequeueIfLuaFalse = true,
							name = "Primary Mitigation",
							uuid = "5682de85-25a7-9458-ad2b-ca2fbd43370e",
							version = 3,
						},
					},
				},
				mechanicTime = 118.07975730716,
				name = "[Lj Mit] Feint - Primary",
				timeRange = true,
				timelineIndex = 25,
				timerEndOffset = -1,
				timerStartOffset = -14.5,
				uuid = "32c4fc52-d09f-454a-b61b-2a2c091aa2d6",
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
									"ca350657-f317-777f-b858-236691700b8f",
									true,
								},
								
								{
									"b66ec498-4c15-8190-adfb-18b116ad2c9b",
									true,
								},
							},
							gVar = "ACR_RikuRDM3_Hotbar_Addle",
							uuid = "8e2ac998-993d-d6a7-be0d-ce9a0f9eef04",
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
							category = "Self",
							conditionType = 9,
							dequeueIfLuaFalse = true,
							name = "Self: Caster",
							partyTargetType = "Ranged Caster DPS",
							uuid = "ca350657-f317-777f-b858-236691700b8f",
							version = 3,
						},
						inheritedIndex = 1,
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return AnyoneCore.Settings.Reactions.dmu.primaryMitigation == true",
							dequeueIfLuaFalse = true,
							name = "Primary Mitigation",
							uuid = "b66ec498-4c15-8190-adfb-18b116ad2c9b",
							version = 3,
						},
					},
				},
				mechanicTime = 118.07975730716,
				name = "[Lj Mit] Addle - Primary",
				timeRange = true,
				timelineIndex = 25,
				timerEndOffset = -1,
				timerStartOffset = -14.5,
				uuid = "fc5630d6-40cd-fff7-a243-d639ac8cbfb7",
				version = 2,
			},
			inheritedIndex = 2,
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
									"7c259250-e60f-cf60-ac51-224d92e3db21",
									true,
								},
								
								{
									"c8990f81-73d9-bf7b-942e-ad6db29e6623",
									true,
								},
							},
							gVar = "ACR_TensorRequiem3_Hotbar_Troubadour",
							uuid = "fd2d982d-2e90-2b4e-865b-e4db2bfa6923",
							variableTogglesType = 2,
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
									"83d0ea0a-4934-2421-a692-59d0959b18f9",
									true,
								},
								
								{
									"c8990f81-73d9-bf7b-942e-ad6db29e6623",
									true,
								},
							},
							gVar = "ACR_RikuDNC3_Hotbar_ShieldSamba",
							uuid = "5409201a-e210-3d52-bd0a-5785a0062108",
							variableTogglesType = 2,
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
									"9b510f14-672a-9890-b474-d7ab095f17f6",
									true,
								},
								
								{
									"c8990f81-73d9-bf7b-942e-ad6db29e6623",
									true,
								},
							},
							gVar = "ACR_TensorMagnum3_Hotbar_Tactician",
							uuid = "55ef0f53-d927-aef8-8a4b-086a6f3246da",
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
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "BARD",
							name = "Self: BRD",
							uuid = "7c259250-e60f-cf60-ac51-224d92e3db21",
							version = 3,
						},
						inheritedIndex = 1,
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "DANCER",
							name = "Self: DNC",
							uuid = "83d0ea0a-4934-2421-a692-59d0959b18f9",
							version = 3,
						},
						inheritedIndex = 1,
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "MACHINIST",
							name = "Self: MCH",
							uuid = "9b510f14-672a-9890-b474-d7ab095f17f6",
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
							inRangeValue = 30,
							minTargetPercent = true,
							name = "Party Range: <= 30y",
							partyTargetNumber = 100,
							partyTargetSubType = "Number",
							uuid = "c8990f81-73d9-bf7b-942e-ad6db29e6623",
							version = 3,
						},
					},
				},
				mechanicTime = 118.07975730716,
				name = "[Lj Mit] Phys Ranged - Primary",
				randomTimeout = 10,
				timeRange = true,
				timelineIndex = 25,
				timerEndOffset = -1,
				timerStartOffset = -14.5,
				uuid = "0e35a86e-df18-299f-9430-12b0b952b5ae",
				version = 2,
			},
			inheritedIndex = 4,
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
							conditions = 
							{
								
								{
									"d03827ca-3f9f-5461-92f2-9b9b2dfbbde2",
									true,
								},
								
								{
									"5682de85-25a7-9458-ad2b-ca2fbd43370e",
									false,
								},
							},
							gVar = "ACR_TensorViper3_Hotbar_Feint",
							uuid = "ae1a8597-0aed-56a6-979d-b5088f6665a8",
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
							category = "Self",
							conditionType = 9,
							dequeueIfLuaFalse = true,
							name = "Self: Melee",
							partyTargetType = "Melee DPS",
							uuid = "d03827ca-3f9f-5461-92f2-9b9b2dfbbde2",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return AnyoneCore.Settings.Reactions.dmu.primaryMitigation == true",
							name = "Primary Mitigation",
							uuid = "5682de85-25a7-9458-ad2b-ca2fbd43370e",
							version = 3,
						},
					},
				},
				mechanicTime = 167.71168967762,
				name = "[Lj Mit] Feint - Secondary",
				timeRange = true,
				timelineIndex = 34,
				timerEndOffset = -1,
				timerStartOffset = -14.5,
				uuid = "76a8e7e6-3907-8030-9e5a-999eb4f398c2",
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
									"ca350657-f317-777f-b858-236691700b8f",
									true,
								},
								
								{
									"b66ec498-4c15-8190-adfb-18b116ad2c9b",
									false,
								},
							},
							gVar = "ACR_RikuRDM3_Hotbar_Addle",
							uuid = "8e2ac998-993d-d6a7-be0d-ce9a0f9eef04",
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
							category = "Self",
							conditionType = 9,
							dequeueIfLuaFalse = true,
							name = "Self: Caster",
							partyTargetType = "Ranged Caster DPS",
							uuid = "ca350657-f317-777f-b858-236691700b8f",
							version = 3,
						},
						inheritedIndex = 1,
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return AnyoneCore.Settings.Reactions.dmu.primaryMitigation == true",
							name = "Primary Mitigation",
							uuid = "b66ec498-4c15-8190-adfb-18b116ad2c9b",
							version = 3,
						},
					},
				},
				mechanicTime = 167.71168967762,
				name = "[Lj Mit] Addle - Secondary",
				timeRange = true,
				timelineIndex = 34,
				timerEndOffset = -1,
				timerStartOffset = -14.5,
				uuid = "a2088c97-a9d0-f36e-8110-653b7f972cc0",
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
									"7c259250-e60f-cf60-ac51-224d92e3db21",
									true,
								},
								
								{
									"d635aad7-4ec4-7ab5-81cc-3aca65d2336e",
									false,
								},
								
								{
									"c8990f81-73d9-bf7b-942e-ad6db29e6623",
									true,
								},
							},
							gVar = "ACR_TensorRequiem3_Hotbar_Troubadour",
							uuid = "fd2d982d-2e90-2b4e-865b-e4db2bfa6923",
							variableTogglesType = 2,
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
									"83d0ea0a-4934-2421-a692-59d0959b18f9",
									true,
								},
								
								{
									"d635aad7-4ec4-7ab5-81cc-3aca65d2336e",
									false,
								},
								
								{
									"c8990f81-73d9-bf7b-942e-ad6db29e6623",
									true,
								},
							},
							gVar = "ACR_RikuDNC3_Hotbar_ShieldSamba",
							uuid = "5409201a-e210-3d52-bd0a-5785a0062108",
							variableTogglesType = 2,
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
									"9b510f14-672a-9890-b474-d7ab095f17f6",
									true,
								},
								
								{
									"d635aad7-4ec4-7ab5-81cc-3aca65d2336e",
									false,
								},
								
								{
									"c8990f81-73d9-bf7b-942e-ad6db29e6623",
									true,
								},
							},
							gVar = "ACR_TensorMagnum3_Hotbar_Tactician",
							uuid = "55ef0f53-d927-aef8-8a4b-086a6f3246da",
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
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "BARD",
							name = "Self: BRD",
							uuid = "7c259250-e60f-cf60-ac51-224d92e3db21",
							version = 3,
						},
						inheritedIndex = 1,
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "DANCER",
							name = "Self: DNC",
							uuid = "83d0ea0a-4934-2421-a692-59d0959b18f9",
							version = 3,
						},
						inheritedIndex = 1,
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "MACHINIST",
							name = "Self: MCH",
							uuid = "9b510f14-672a-9890-b474-d7ab095f17f6",
							version = 3,
						},
						inheritedIndex = 3,
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return AnyoneCore.Settings.Reactions.dmu.primaryMitigation == true",
							name = "Primary Mitigation",
							uuid = "d635aad7-4ec4-7ab5-81cc-3aca65d2336e",
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
							inRangeValue = 30,
							minTargetPercent = true,
							name = "Party Range: <= 30y",
							partyTargetNumber = 100,
							partyTargetSubType = "Number",
							uuid = "c8990f81-73d9-bf7b-942e-ad6db29e6623",
							version = 3,
						},
					},
				},
				mechanicTime = 167.71168967762,
				name = "[Lj Mit] Phys Ranged - Secondary",
				randomTimeout = 10,
				timeRange = true,
				timelineIndex = 34,
				timerEndOffset = -1,
				timerStartOffset = -14.5,
				uuid = "4786f5de-22f7-da4d-a787-7468a3242ba0",
				version = 2,
			},
			inheritedIndex = 3,
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
							aType = "ACR",
							conditions = 
							{
								
								{
									"d03827ca-3f9f-5461-92f2-9b9b2dfbbde2",
									true,
								},
								
								{
									"5682de85-25a7-9458-ad2b-ca2fbd43370e",
									true,
								},
							},
							gVar = "ACR_TensorViper3_Hotbar_Feint",
							uuid = "ae1a8597-0aed-56a6-979d-b5088f6665a8",
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
							category = "Self",
							conditionType = 9,
							dequeueIfLuaFalse = true,
							name = "Self: Melee",
							partyTargetType = "Melee DPS",
							uuid = "d03827ca-3f9f-5461-92f2-9b9b2dfbbde2",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return AnyoneCore.Settings.Reactions.dmu.primaryMitigation == true",
							dequeueIfLuaFalse = true,
							name = "Primary Mitigation",
							uuid = "5682de85-25a7-9458-ad2b-ca2fbd43370e",
							version = 3,
						},
					},
				},
				mechanicTime = 235.34477128997,
				name = "[Lj Mit] Feint - Primary",
				timeRange = true,
				timelineIndex = 41,
				timerEndOffset = -1,
				timerStartOffset = -14.5,
				uuid = "c3511d19-658a-ddaf-824b-0148d297ca5a",
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
									"ca350657-f317-777f-b858-236691700b8f",
									true,
								},
								
								{
									"b66ec498-4c15-8190-adfb-18b116ad2c9b",
									true,
								},
							},
							gVar = "ACR_RikuRDM3_Hotbar_Addle",
							uuid = "8e2ac998-993d-d6a7-be0d-ce9a0f9eef04",
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
							category = "Self",
							conditionType = 9,
							dequeueIfLuaFalse = true,
							name = "Self: Caster",
							partyTargetType = "Ranged Caster DPS",
							uuid = "ca350657-f317-777f-b858-236691700b8f",
							version = 3,
						},
						inheritedIndex = 1,
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return AnyoneCore.Settings.Reactions.dmu.primaryMitigation == true",
							dequeueIfLuaFalse = true,
							name = "Primary Mitigation",
							uuid = "b66ec498-4c15-8190-adfb-18b116ad2c9b",
							version = 3,
						},
					},
				},
				mechanicTime = 235.34477128997,
				name = "[Lj Mit] Addle - Primary",
				timeRange = true,
				timelineIndex = 41,
				timerEndOffset = -1,
				timerStartOffset = -14.5,
				uuid = "60f35661-d0c6-ba66-a7a8-c01278f98667",
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
									"7c259250-e60f-cf60-ac51-224d92e3db21",
									true,
								},
								
								{
									"d635aad7-4ec4-7ab5-81cc-3aca65d2336e",
									true,
								},
								
								{
									"c8990f81-73d9-bf7b-942e-ad6db29e6623",
									true,
								},
							},
							gVar = "ACR_TensorRequiem3_Hotbar_Troubadour",
							uuid = "fd2d982d-2e90-2b4e-865b-e4db2bfa6923",
							variableTogglesType = 2,
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
									"83d0ea0a-4934-2421-a692-59d0959b18f9",
									true,
								},
								
								{
									"d635aad7-4ec4-7ab5-81cc-3aca65d2336e",
									true,
								},
								
								{
									"c8990f81-73d9-bf7b-942e-ad6db29e6623",
									true,
								},
							},
							gVar = "ACR_RikuDNC3_Hotbar_ShieldSamba",
							uuid = "5409201a-e210-3d52-bd0a-5785a0062108",
							variableTogglesType = 2,
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
									"9b510f14-672a-9890-b474-d7ab095f17f6",
									true,
								},
								
								{
									"d635aad7-4ec4-7ab5-81cc-3aca65d2336e",
									true,
								},
								
								{
									"c8990f81-73d9-bf7b-942e-ad6db29e6623",
									true,
								},
							},
							gVar = "ACR_TensorMagnum3_Hotbar_Tactician",
							uuid = "55ef0f53-d927-aef8-8a4b-086a6f3246da",
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
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "BARD",
							name = "Self: BRD",
							uuid = "7c259250-e60f-cf60-ac51-224d92e3db21",
							version = 3,
						},
						inheritedIndex = 1,
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "DANCER",
							name = "Self: DNC",
							uuid = "83d0ea0a-4934-2421-a692-59d0959b18f9",
							version = 3,
						},
						inheritedIndex = 1,
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "MACHINIST",
							name = "Self: MCH",
							uuid = "9b510f14-672a-9890-b474-d7ab095f17f6",
							version = 3,
						},
						inheritedIndex = 3,
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return AnyoneCore.Settings.Reactions.dmu.primaryMitigation == true",
							dequeueIfLuaFalse = true,
							name = "Primary Mitigation",
							uuid = "d635aad7-4ec4-7ab5-81cc-3aca65d2336e",
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
							inRangeValue = 30,
							minTargetPercent = true,
							name = "Party Range: <= 30y",
							partyTargetNumber = 100,
							partyTargetSubType = "Number",
							uuid = "c8990f81-73d9-bf7b-942e-ad6db29e6623",
							version = 3,
						},
					},
				},
				mechanicTime = 235.34477128997,
				name = "[Lj Mit] Phys Ranged - Primary",
				randomTimeout = 10,
				timeRange = true,
				timelineIndex = 41,
				timerEndOffset = -1,
				timerStartOffset = -14.5,
				uuid = "71f3d171-0890-7a5f-9a7e-6afb288a4125",
				version = 2,
			},
			inheritedIndex = 3,
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
									"c3fcfda9-bfd8-1d9b-b7b4-1154d8d77c9c",
									true,
								},
							},
							gVar = "ACR_TensorMagnum3_Hotbar_Dismantle",
							uuid = "ae6912a5-fb91-3542-8411-f786fa2a3106",
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
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "MACHINIST",
							name = "Self: MCH",
							uuid = "c3fcfda9-bfd8-1d9b-b7b4-1154d8d77c9c",
							version = 3,
						},
						inheritedIndex = 3,
					},
				},
				mechanicTime = 235.34477128997,
				name = "[Lj Mit] Dismantle",
				timeRange = true,
				timelineIndex = 41,
				timerEndOffset = -1,
				timerStartOffset = -9.5,
				uuid = "93fc564f-620e-d095-a90f-b170bcfd07db",
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
									"83c6a17b-723e-3cbd-9155-9e9c69e2d26b",
									true,
								},
								
								{
									"da63e6cf-f2cc-e5fa-bcad-5cd7d5cc7662",
									true,
								},
							},
							gVar = "ACR_RikuRDM3_Hotbar_MagickBarrier",
							uuid = "b72c4571-63c3-36a1-acc2-b9e6d3e1960d",
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
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "REDMAGE",
							name = "Self: RDM",
							uuid = "83c6a17b-723e-3cbd-9155-9e9c69e2d26b",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Party",
							comparator = 2,
							conditionType = 4,
							inRangeValue = 30,
							minTargetPercent = true,
							name = "Party Range: <= 30y",
							partyTargetNumber = 100,
							partyTargetSubType = "Number",
							uuid = "da63e6cf-f2cc-e5fa-bcad-5cd7d5cc7662",
							version = 3,
						},
					},
				},
				mechanicTime = 235.34477128997,
				name = "[Lj Mit] Magick Barrier",
				timeRange = true,
				timelineIndex = 41,
				timerEndOffset = -1,
				timerStartOffset = -9.5,
				uuid = "9c9e6319-3951-b879-a0b0-2fc6429fd6f3",
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
							conditions = 
							{
								
								{
									"d03827ca-3f9f-5461-92f2-9b9b2dfbbde2",
									true,
								},
								
								{
									"5682de85-25a7-9458-ad2b-ca2fbd43370e",
									false,
								},
							},
							gVar = "ACR_TensorViper3_Hotbar_Feint",
							uuid = "ae1a8597-0aed-56a6-979d-b5088f6665a8",
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
							category = "Self",
							conditionType = 9,
							dequeueIfLuaFalse = true,
							name = "Self: Melee",
							partyTargetType = "Melee DPS",
							uuid = "d03827ca-3f9f-5461-92f2-9b9b2dfbbde2",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return AnyoneCore.Settings.Reactions.dmu.primaryMitigation == true",
							name = "Primary Mitigation",
							uuid = "5682de85-25a7-9458-ad2b-ca2fbd43370e",
							version = 3,
						},
					},
				},
				mechanicTime = 270.25091459497,
				name = "[Lj Mit] Feint - Secondary",
				timeRange = true,
				timelineIndex = 49,
				timerEndOffset = -1,
				timerStartOffset = -14.5,
				uuid = "d8cdebb0-18fd-9017-a094-6c30aca0857b",
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
									"ca350657-f317-777f-b858-236691700b8f",
									true,
								},
								
								{
									"b66ec498-4c15-8190-adfb-18b116ad2c9b",
									false,
								},
							},
							gVar = "ACR_RikuRDM3_Hotbar_Addle",
							uuid = "8e2ac998-993d-d6a7-be0d-ce9a0f9eef04",
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
							category = "Self",
							conditionType = 9,
							dequeueIfLuaFalse = true,
							name = "Self: Caster",
							partyTargetType = "Ranged Caster DPS",
							uuid = "ca350657-f317-777f-b858-236691700b8f",
							version = 3,
						},
						inheritedIndex = 1,
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return AnyoneCore.Settings.Reactions.dmu.primaryMitigation == true",
							name = "Primary Mitigation",
							uuid = "b66ec498-4c15-8190-adfb-18b116ad2c9b",
							version = 3,
						},
					},
				},
				mechanicTime = 270.25091459497,
				name = "[Lj Mit] Addle - Secondary",
				timeRange = true,
				timelineIndex = 49,
				timerEndOffset = -1,
				timerStartOffset = -14.5,
				uuid = "e8d1b523-7096-b284-9d6b-3d126292b87f",
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
									"7c259250-e60f-cf60-ac51-224d92e3db21",
									true,
								},
								
								{
									"d635aad7-4ec4-7ab5-81cc-3aca65d2336e",
									false,
								},
								
								{
									"c8990f81-73d9-bf7b-942e-ad6db29e6623",
									true,
								},
							},
							gVar = "ACR_TensorRequiem3_Hotbar_Troubadour",
							uuid = "fd2d982d-2e90-2b4e-865b-e4db2bfa6923",
							variableTogglesType = 2,
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
									"83d0ea0a-4934-2421-a692-59d0959b18f9",
									true,
								},
								
								{
									"d635aad7-4ec4-7ab5-81cc-3aca65d2336e",
									false,
								},
								
								{
									"c8990f81-73d9-bf7b-942e-ad6db29e6623",
									true,
								},
							},
							gVar = "ACR_RikuDNC3_Hotbar_ShieldSamba",
							uuid = "5409201a-e210-3d52-bd0a-5785a0062108",
							variableTogglesType = 2,
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
									"9b510f14-672a-9890-b474-d7ab095f17f6",
									true,
								},
								
								{
									"d635aad7-4ec4-7ab5-81cc-3aca65d2336e",
									false,
								},
								
								{
									"c8990f81-73d9-bf7b-942e-ad6db29e6623",
									true,
								},
							},
							gVar = "ACR_TensorMagnum3_Hotbar_Tactician",
							uuid = "55ef0f53-d927-aef8-8a4b-086a6f3246da",
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
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "BARD",
							name = "Self: BRD",
							uuid = "7c259250-e60f-cf60-ac51-224d92e3db21",
							version = 3,
						},
						inheritedIndex = 1,
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "DANCER",
							name = "Self: DNC",
							uuid = "83d0ea0a-4934-2421-a692-59d0959b18f9",
							version = 3,
						},
						inheritedIndex = 1,
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "MACHINIST",
							name = "Self: MCH",
							uuid = "9b510f14-672a-9890-b474-d7ab095f17f6",
							version = 3,
						},
						inheritedIndex = 3,
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return AnyoneCore.Settings.Reactions.dmu.primaryMitigation == true",
							name = "Primary Mitigation",
							uuid = "d635aad7-4ec4-7ab5-81cc-3aca65d2336e",
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
							inRangeValue = 30,
							minTargetPercent = true,
							name = "Party Range: <= 30y",
							partyTargetNumber = 100,
							partyTargetSubType = "Number",
							uuid = "c8990f81-73d9-bf7b-942e-ad6db29e6623",
							version = 3,
						},
					},
				},
				mechanicTime = 270.25091459497,
				name = "[Lj Mit] Phys Ranged - Secondary",
				randomTimeout = 10,
				timeRange = true,
				timelineIndex = 49,
				timerEndOffset = -1,
				timerStartOffset = -14.5,
				uuid = "c99cdf2c-9373-22ae-8758-e7320ee78646",
				version = 2,
			},
			inheritedIndex = 7,
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
							conditions = 
							{
								
								{
									"d03827ca-3f9f-5461-92f2-9b9b2dfbbde2",
									true,
								},
								
								{
									"5682de85-25a7-9458-ad2b-ca2fbd43370e",
									true,
								},
							},
							gVar = "ACR_TensorViper3_Hotbar_Feint",
							uuid = "ae1a8597-0aed-56a6-979d-b5088f6665a8",
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
							category = "Self",
							conditionType = 9,
							dequeueIfLuaFalse = true,
							name = "Self: Melee",
							partyTargetType = "Melee DPS",
							uuid = "d03827ca-3f9f-5461-92f2-9b9b2dfbbde2",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return AnyoneCore.Settings.Reactions.dmu.primaryMitigation == true",
							dequeueIfLuaFalse = true,
							name = "Primary Mitigation",
							uuid = "5682de85-25a7-9458-ad2b-ca2fbd43370e",
							version = 3,
						},
					},
				},
				mechanicTime = 341.70452758191,
				name = "[Lj Mit] Feint - Primary",
				timeRange = true,
				timelineIndex = 66,
				timerEndOffset = -1,
				timerStartOffset = -14.5,
				uuid = "6df8cffe-bbef-593c-9ab9-e8d9e95725c5",
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
									"ca350657-f317-777f-b858-236691700b8f",
									true,
								},
								
								{
									"b66ec498-4c15-8190-adfb-18b116ad2c9b",
									true,
								},
							},
							gVar = "ACR_RikuRDM3_Hotbar_Addle",
							uuid = "8e2ac998-993d-d6a7-be0d-ce9a0f9eef04",
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
							category = "Self",
							conditionType = 9,
							dequeueIfLuaFalse = true,
							name = "Self: Caster",
							partyTargetType = "Ranged Caster DPS",
							uuid = "ca350657-f317-777f-b858-236691700b8f",
							version = 3,
						},
						inheritedIndex = 1,
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return AnyoneCore.Settings.Reactions.dmu.primaryMitigation == true",
							dequeueIfLuaFalse = true,
							name = "Primary Mitigation",
							uuid = "b66ec498-4c15-8190-adfb-18b116ad2c9b",
							version = 3,
						},
					},
				},
				mechanicTime = 341.70452758191,
				name = "[Lj Mit] Addle - Primary",
				timeRange = true,
				timelineIndex = 66,
				timerEndOffset = -1,
				timerStartOffset = -14.5,
				uuid = "a93a496e-99c8-f204-b81f-4a54500df735",
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
									"7c259250-e60f-cf60-ac51-224d92e3db21",
									true,
								},
								
								{
									"d635aad7-4ec4-7ab5-81cc-3aca65d2336e",
									true,
								},
								
								{
									"c8990f81-73d9-bf7b-942e-ad6db29e6623",
									true,
								},
							},
							gVar = "ACR_TensorRequiem3_Hotbar_Troubadour",
							uuid = "fd2d982d-2e90-2b4e-865b-e4db2bfa6923",
							variableTogglesType = 2,
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
									"83d0ea0a-4934-2421-a692-59d0959b18f9",
									true,
								},
								
								{
									"d635aad7-4ec4-7ab5-81cc-3aca65d2336e",
									true,
								},
								
								{
									"c8990f81-73d9-bf7b-942e-ad6db29e6623",
									true,
								},
							},
							gVar = "ACR_RikuDNC3_Hotbar_ShieldSamba",
							uuid = "5409201a-e210-3d52-bd0a-5785a0062108",
							variableTogglesType = 2,
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
									"9b510f14-672a-9890-b474-d7ab095f17f6",
									true,
								},
								
								{
									"d635aad7-4ec4-7ab5-81cc-3aca65d2336e",
									true,
								},
								
								{
									"c8990f81-73d9-bf7b-942e-ad6db29e6623",
									true,
								},
							},
							gVar = "ACR_TensorMagnum3_Hotbar_Tactician",
							uuid = "55ef0f53-d927-aef8-8a4b-086a6f3246da",
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
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "BARD",
							name = "Self: BRD",
							uuid = "7c259250-e60f-cf60-ac51-224d92e3db21",
							version = 3,
						},
						inheritedIndex = 1,
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "DANCER",
							name = "Self: DNC",
							uuid = "83d0ea0a-4934-2421-a692-59d0959b18f9",
							version = 3,
						},
						inheritedIndex = 1,
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "MACHINIST",
							name = "Self: MCH",
							uuid = "9b510f14-672a-9890-b474-d7ab095f17f6",
							version = 3,
						},
						inheritedIndex = 3,
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return AnyoneCore.Settings.Reactions.dmu.primaryMitigation == true",
							dequeueIfLuaFalse = true,
							name = "Primary Mitigation",
							uuid = "d635aad7-4ec4-7ab5-81cc-3aca65d2336e",
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
							inRangeValue = 30,
							minTargetPercent = true,
							name = "Party Range: <= 30y",
							partyTargetNumber = 100,
							partyTargetSubType = "Number",
							uuid = "c8990f81-73d9-bf7b-942e-ad6db29e6623",
							version = 3,
						},
					},
				},
				mechanicTime = 341.70452758191,
				name = "[Lj Mit] Phys Ranged - Primary",
				randomTimeout = 10,
				timeRange = true,
				timelineIndex = 66,
				timerEndOffset = -1,
				timerStartOffset = -14.5,
				uuid = "10fd6cc7-7ef4-bcd5-a650-54982d5fe4ad",
				version = 2,
			},
			inheritedIndex = 3,
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
							conditions = 
							{
								
								{
									"d03827ca-3f9f-5461-92f2-9b9b2dfbbde2",
									true,
								},
								
								{
									"5682de85-25a7-9458-ad2b-ca2fbd43370e",
									false,
								},
							},
							gVar = "ACR_TensorViper3_Hotbar_Feint",
							uuid = "ae1a8597-0aed-56a6-979d-b5088f6665a8",
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
							category = "Self",
							conditionType = 9,
							dequeueIfLuaFalse = true,
							name = "Self: Melee",
							partyTargetType = "Melee DPS",
							uuid = "d03827ca-3f9f-5461-92f2-9b9b2dfbbde2",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return AnyoneCore.Settings.Reactions.dmu.primaryMitigation == true",
							name = "Primary Mitigation",
							uuid = "5682de85-25a7-9458-ad2b-ca2fbd43370e",
							version = 3,
						},
					},
				},
				mechanicTime = 370.25754620621,
				name = "[Lj Mit] Feint - Secondary",
				timeRange = true,
				timelineIndex = 72,
				timerEndOffset = -1,
				timerStartOffset = -14.5,
				uuid = "03542396-b4aa-d541-83eb-209f31c1913a",
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
									"ca350657-f317-777f-b858-236691700b8f",
									true,
								},
								
								{
									"b66ec498-4c15-8190-adfb-18b116ad2c9b",
									false,
								},
							},
							gVar = "ACR_RikuRDM3_Hotbar_Addle",
							uuid = "8e2ac998-993d-d6a7-be0d-ce9a0f9eef04",
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
							category = "Self",
							conditionType = 9,
							dequeueIfLuaFalse = true,
							name = "Self: Caster",
							partyTargetType = "Ranged Caster DPS",
							uuid = "ca350657-f317-777f-b858-236691700b8f",
							version = 3,
						},
						inheritedIndex = 1,
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return AnyoneCore.Settings.Reactions.dmu.primaryMitigation == true",
							name = "Primary Mitigation",
							uuid = "b66ec498-4c15-8190-adfb-18b116ad2c9b",
							version = 3,
						},
					},
				},
				mechanicTime = 370.25754620621,
				name = "[Lj Mit] Addle - Secondary",
				timeRange = true,
				timelineIndex = 72,
				timerEndOffset = -1,
				timerStartOffset = -14.5,
				uuid = "fec387ae-eef3-dcd6-bfa6-299d102a2e7c",
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
									"7c259250-e60f-cf60-ac51-224d92e3db21",
									true,
								},
								
								{
									"d635aad7-4ec4-7ab5-81cc-3aca65d2336e",
									false,
								},
								
								{
									"c8990f81-73d9-bf7b-942e-ad6db29e6623",
									true,
								},
							},
							gVar = "ACR_TensorRequiem3_Hotbar_Troubadour",
							uuid = "fd2d982d-2e90-2b4e-865b-e4db2bfa6923",
							variableTogglesType = 2,
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
									"83d0ea0a-4934-2421-a692-59d0959b18f9",
									true,
								},
								
								{
									"d635aad7-4ec4-7ab5-81cc-3aca65d2336e",
									false,
								},
								
								{
									"c8990f81-73d9-bf7b-942e-ad6db29e6623",
									true,
								},
							},
							gVar = "ACR_RikuDNC3_Hotbar_ShieldSamba",
							uuid = "5409201a-e210-3d52-bd0a-5785a0062108",
							variableTogglesType = 2,
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
									"9b510f14-672a-9890-b474-d7ab095f17f6",
									true,
								},
								
								{
									"d635aad7-4ec4-7ab5-81cc-3aca65d2336e",
									false,
								},
								
								{
									"c8990f81-73d9-bf7b-942e-ad6db29e6623",
									true,
								},
							},
							gVar = "ACR_TensorMagnum3_Hotbar_Tactician",
							uuid = "55ef0f53-d927-aef8-8a4b-086a6f3246da",
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
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "BARD",
							name = "Self: BRD",
							uuid = "7c259250-e60f-cf60-ac51-224d92e3db21",
							version = 3,
						},
						inheritedIndex = 1,
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "DANCER",
							name = "Self: DNC",
							uuid = "83d0ea0a-4934-2421-a692-59d0959b18f9",
							version = 3,
						},
						inheritedIndex = 1,
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "MACHINIST",
							name = "Self: MCH",
							uuid = "9b510f14-672a-9890-b474-d7ab095f17f6",
							version = 3,
						},
						inheritedIndex = 3,
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return AnyoneCore.Settings.Reactions.dmu.primaryMitigation == true",
							name = "Primary Mitigation",
							uuid = "d635aad7-4ec4-7ab5-81cc-3aca65d2336e",
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
							inRangeValue = 30,
							minTargetPercent = true,
							name = "Party Range: <= 30y",
							partyTargetNumber = 100,
							partyTargetSubType = "Number",
							uuid = "c8990f81-73d9-bf7b-942e-ad6db29e6623",
							version = 3,
						},
					},
				},
				mechanicTime = 370.25754620621,
				name = "[Lj Mit] Phys Ranged - Secondary",
				randomTimeout = 10,
				timeRange = true,
				timelineIndex = 72,
				timerEndOffset = -1,
				timerStartOffset = -14.5,
				uuid = "af24e527-0b5f-4aaa-99fb-651dc41cd31b",
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
							aType = "ACR",
							conditions = 
							{
								
								{
									"c3fcfda9-bfd8-1d9b-b7b4-1154d8d77c9c",
									true,
								},
							},
							gVar = "ACR_TensorMagnum3_Hotbar_Dismantle",
							uuid = "ae6912a5-fb91-3542-8411-f786fa2a3106",
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
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "MACHINIST",
							name = "Self: MCH",
							uuid = "c3fcfda9-bfd8-1d9b-b7b4-1154d8d77c9c",
							version = 3,
						},
						inheritedIndex = 3,
					},
				},
				mechanicTime = 370.25754620621,
				name = "[Lj Mit] Dismantle",
				timeRange = true,
				timelineIndex = 72,
				timerEndOffset = -1,
				timerStartOffset = -9.5,
				uuid = "0e0ace5d-4b68-5f45-a075-474f01b0a0b8",
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
									"83c6a17b-723e-3cbd-9155-9e9c69e2d26b",
									true,
								},
								
								{
									"da63e6cf-f2cc-e5fa-bcad-5cd7d5cc7662",
									true,
								},
							},
							gVar = "ACR_RikuRDM3_Hotbar_MagickBarrier",
							uuid = "b72c4571-63c3-36a1-acc2-b9e6d3e1960d",
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
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "REDMAGE",
							name = "Self: RDM",
							uuid = "83c6a17b-723e-3cbd-9155-9e9c69e2d26b",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Party",
							comparator = 2,
							conditionType = 4,
							inRangeValue = 30,
							minTargetPercent = true,
							name = "Party Range: <= 30y",
							partyTargetNumber = 100,
							partyTargetSubType = "Number",
							uuid = "da63e6cf-f2cc-e5fa-bcad-5cd7d5cc7662",
							version = 3,
						},
					},
				},
				mechanicTime = 370.25754620621,
				name = "[Lj Mit] Magick Barrier",
				timeRange = true,
				timelineIndex = 72,
				timerEndOffset = -1,
				timerStartOffset = -9.5,
				uuid = "28c47436-964d-4eb9-961b-4c5c028a2893",
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
							conditions = 
							{
								
								{
									"d03827ca-3f9f-5461-92f2-9b9b2dfbbde2",
									true,
								},
								
								{
									"5682de85-25a7-9458-ad2b-ca2fbd43370e",
									true,
								},
							},
							gVar = "ACR_TensorViper3_Hotbar_Feint",
							uuid = "ae1a8597-0aed-56a6-979d-b5088f6665a8",
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
							category = "Self",
							conditionType = 9,
							dequeueIfLuaFalse = true,
							name = "Self: Melee",
							partyTargetType = "Melee DPS",
							uuid = "d03827ca-3f9f-5461-92f2-9b9b2dfbbde2",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return AnyoneCore.Settings.Reactions.dmu.primaryMitigation == true",
							dequeueIfLuaFalse = true,
							name = "Primary Mitigation",
							uuid = "5682de85-25a7-9458-ad2b-ca2fbd43370e",
							version = 3,
						},
					},
				},
				mechanicTime = 450.00390950196,
				name = "[Lj Mit] Feint - Primary",
				timeRange = true,
				timelineIndex = 79,
				timerEndOffset = -1,
				timerStartOffset = -14.5,
				uuid = "0720269a-0914-0c48-b44a-e326bd30e8bf",
				version = 2,
			},
		},
	},
	[81] = 
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
									"d03827ca-3f9f-5461-92f2-9b9b2dfbbde2",
									true,
								},
								
								{
									"5682de85-25a7-9458-ad2b-ca2fbd43370e",
									false,
								},
							},
							gVar = "ACR_TensorViper3_Hotbar_Feint",
							uuid = "ae1a8597-0aed-56a6-979d-b5088f6665a8",
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
							category = "Self",
							conditionType = 9,
							dequeueIfLuaFalse = true,
							name = "Self: Melee",
							partyTargetType = "Melee DPS",
							uuid = "d03827ca-3f9f-5461-92f2-9b9b2dfbbde2",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return AnyoneCore.Settings.Reactions.dmu.primaryMitigation == true",
							name = "Primary Mitigation",
							uuid = "5682de85-25a7-9458-ad2b-ca2fbd43370e",
							version = 3,
						},
					},
				},
				mechanicTime = 470.18264616806,
				name = "[Lj Mit] Feint - Secondary",
				timeRange = true,
				timelineIndex = 81,
				timerEndOffset = -1,
				timerStartOffset = -14.5,
				uuid = "14360e5b-048a-d298-95fd-f4a4cc38c29f",
				version = 2,
			},
		},
	},
	[84] = 
	{
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							actionID = 7560,
							conditions = 
							{
								
								{
									"ca350657-f317-777f-b858-236691700b8f",
									true,
								},
								
								{
									"b66ec498-4c15-8190-adfb-18b116ad2c9b",
									true,
								},
							},
							gVar = "ACR_RikuRDM3_Hotbar_Addle",
							targetContentID = 6052,
							targetType = "ContentID",
							uuid = "8e2ac998-993d-d6a7-be0d-ce9a0f9eef04",
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
							category = "Self",
							conditionType = 9,
							dequeueIfLuaFalse = true,
							name = "Self: Caster",
							partyTargetType = "Ranged Caster DPS",
							uuid = "ca350657-f317-777f-b858-236691700b8f",
							version = 3,
						},
						inheritedIndex = 1,
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return AnyoneCore.Settings.Reactions.dmu.primaryMitigation == true",
							dequeueIfLuaFalse = true,
							name = "Primary Mitigation",
							uuid = "b66ec498-4c15-8190-adfb-18b116ad2c9b",
							version = 3,
						},
					},
				},
				mechanicTime = 481.45392399289,
				name = "[Lj Mit] Addle - Primary",
				timeRange = true,
				timelineIndex = 84,
				timerEndOffset = -1,
				timerStartOffset = -14.5,
				uuid = "878a7c85-8984-c23c-a2de-dbbd48435eea",
				version = 2,
			},
		},
	},
	[89] = 
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
									"ca350657-f317-777f-b858-236691700b8f",
									true,
								},
								
								{
									"b66ec498-4c15-8190-adfb-18b116ad2c9b",
									false,
								},
							},
							gVar = "ACR_RikuRDM3_Hotbar_Addle",
							uuid = "8e2ac998-993d-d6a7-be0d-ce9a0f9eef04",
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
							category = "Self",
							conditionType = 9,
							dequeueIfLuaFalse = true,
							name = "Self: Caster",
							partyTargetType = "Ranged Caster DPS",
							uuid = "ca350657-f317-777f-b858-236691700b8f",
							version = 3,
						},
						inheritedIndex = 1,
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return AnyoneCore.Settings.Reactions.dmu.primaryMitigation == true",
							name = "Primary Mitigation",
							uuid = "b66ec498-4c15-8190-adfb-18b116ad2c9b",
							version = 3,
						},
					},
				},
				mechanicTime = 497.15528394761,
				name = "[Lj Mit] Addle - Secondary",
				timeRange = true,
				timelineIndex = 89,
				timerEndOffset = -1,
				timerStartOffset = -14.5,
				uuid = "a048e524-0bbd-6ee1-b04b-4d8648a8dee2",
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
									"7c259250-e60f-cf60-ac51-224d92e3db21",
									true,
								},
								
								{
									"d635aad7-4ec4-7ab5-81cc-3aca65d2336e",
									false,
								},
								
								{
									"c8990f81-73d9-bf7b-942e-ad6db29e6623",
									true,
								},
							},
							gVar = "ACR_TensorRequiem3_Hotbar_Troubadour",
							uuid = "fd2d982d-2e90-2b4e-865b-e4db2bfa6923",
							variableTogglesType = 2,
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
									"83d0ea0a-4934-2421-a692-59d0959b18f9",
									true,
								},
								
								{
									"d635aad7-4ec4-7ab5-81cc-3aca65d2336e",
									false,
								},
								
								{
									"c8990f81-73d9-bf7b-942e-ad6db29e6623",
									true,
								},
							},
							gVar = "ACR_RikuDNC3_Hotbar_ShieldSamba",
							uuid = "5409201a-e210-3d52-bd0a-5785a0062108",
							variableTogglesType = 2,
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
									"9b510f14-672a-9890-b474-d7ab095f17f6",
									true,
								},
								
								{
									"d635aad7-4ec4-7ab5-81cc-3aca65d2336e",
									false,
								},
								
								{
									"c8990f81-73d9-bf7b-942e-ad6db29e6623",
									true,
								},
							},
							gVar = "ACR_TensorMagnum3_Hotbar_Tactician",
							uuid = "55ef0f53-d927-aef8-8a4b-086a6f3246da",
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
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "BARD",
							name = "Self: BRD",
							uuid = "7c259250-e60f-cf60-ac51-224d92e3db21",
							version = 3,
						},
						inheritedIndex = 1,
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "DANCER",
							name = "Self: DNC",
							uuid = "83d0ea0a-4934-2421-a692-59d0959b18f9",
							version = 3,
						},
						inheritedIndex = 1,
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "MACHINIST",
							name = "Self: MCH",
							uuid = "9b510f14-672a-9890-b474-d7ab095f17f6",
							version = 3,
						},
						inheritedIndex = 3,
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return AnyoneCore.Settings.Reactions.dmu.primaryMitigation == true",
							name = "Primary Mitigation",
							uuid = "d635aad7-4ec4-7ab5-81cc-3aca65d2336e",
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
							inRangeValue = 30,
							minTargetPercent = true,
							name = "Party Range: <= 30y",
							partyTargetNumber = 100,
							partyTargetSubType = "Number",
							uuid = "c8990f81-73d9-bf7b-942e-ad6db29e6623",
							version = 3,
						},
					},
				},
				mechanicTime = 497.15528394761,
				name = "[Lj Mit] Phys Ranged - Secondary",
				randomTimeout = 10,
				timeRange = true,
				timelineIndex = 89,
				timerEndOffset = -1,
				timerStartOffset = -14.5,
				uuid = "02cb87b6-3f30-a16e-91dc-968cc4a01385",
				version = 2,
			},
			inheritedIndex = 7,
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
							conditions = 
							{
								
								{
									"7c259250-e60f-cf60-ac51-224d92e3db21",
									true,
								},
								
								{
									"d635aad7-4ec4-7ab5-81cc-3aca65d2336e",
									true,
								},
								
								{
									"c8990f81-73d9-bf7b-942e-ad6db29e6623",
									true,
								},
							},
							gVar = "ACR_TensorRequiem3_Hotbar_Troubadour",
							uuid = "fd2d982d-2e90-2b4e-865b-e4db2bfa6923",
							variableTogglesType = 2,
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
									"83d0ea0a-4934-2421-a692-59d0959b18f9",
									true,
								},
								
								{
									"d635aad7-4ec4-7ab5-81cc-3aca65d2336e",
									true,
								},
								
								{
									"c8990f81-73d9-bf7b-942e-ad6db29e6623",
									true,
								},
							},
							gVar = "ACR_RikuDNC3_Hotbar_ShieldSamba",
							uuid = "5409201a-e210-3d52-bd0a-5785a0062108",
							variableTogglesType = 2,
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
									"9b510f14-672a-9890-b474-d7ab095f17f6",
									true,
								},
								
								{
									"d635aad7-4ec4-7ab5-81cc-3aca65d2336e",
									true,
								},
								
								{
									"c8990f81-73d9-bf7b-942e-ad6db29e6623",
									true,
								},
							},
							gVar = "ACR_TensorMagnum3_Hotbar_Tactician",
							uuid = "55ef0f53-d927-aef8-8a4b-086a6f3246da",
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
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "BARD",
							name = "Self: BRD",
							uuid = "7c259250-e60f-cf60-ac51-224d92e3db21",
							version = 3,
						},
						inheritedIndex = 1,
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "DANCER",
							name = "Self: DNC",
							uuid = "83d0ea0a-4934-2421-a692-59d0959b18f9",
							version = 3,
						},
						inheritedIndex = 1,
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "MACHINIST",
							name = "Self: MCH",
							uuid = "9b510f14-672a-9890-b474-d7ab095f17f6",
							version = 3,
						},
						inheritedIndex = 3,
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return AnyoneCore.Settings.Reactions.dmu.primaryMitigation == true",
							dequeueIfLuaFalse = true,
							name = "Primary Mitigation",
							uuid = "d635aad7-4ec4-7ab5-81cc-3aca65d2336e",
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
							inRangeValue = 30,
							minTargetPercent = true,
							name = "Party Range: <= 30y",
							partyTargetNumber = 100,
							partyTargetSubType = "Number",
							uuid = "c8990f81-73d9-bf7b-942e-ad6db29e6623",
							version = 3,
						},
					},
				},
				mechanicTime = 517.34363332111,
				name = "[Lj Mit] Phys Ranged - Primary",
				randomTimeout = 10,
				timeRange = true,
				timelineIndex = 97,
				timerEndOffset = -1,
				timerStartOffset = -14.5,
				uuid = "c536c7aa-3920-e8f7-a402-30405c2c19bd",
				version = 2,
			},
			inheritedIndex = 3,
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
							aType = "ACR",
							conditions = 
							{
								
								{
									"c3fcfda9-bfd8-1d9b-b7b4-1154d8d77c9c",
									true,
								},
							},
							gVar = "ACR_TensorMagnum3_Hotbar_Dismantle",
							uuid = "ae6912a5-fb91-3542-8411-f786fa2a3106",
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
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "MACHINIST",
							name = "Self: MCH",
							uuid = "c3fcfda9-bfd8-1d9b-b7b4-1154d8d77c9c",
							version = 3,
						},
						inheritedIndex = 3,
					},
				},
				mechanicTime = 557.21788210262,
				name = "[Lj Mit] Dismantle",
				timeRange = true,
				timelineIndex = 107,
				timerEndOffset = -1,
				timerStartOffset = -9.5,
				uuid = "7dbcc0d1-63ec-3b25-b4d5-3039a688dc4e",
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
									"83c6a17b-723e-3cbd-9155-9e9c69e2d26b",
									true,
								},
								
								{
									"da63e6cf-f2cc-e5fa-bcad-5cd7d5cc7662",
									true,
								},
							},
							gVar = "ACR_RikuRDM3_Hotbar_MagickBarrier",
							uuid = "b72c4571-63c3-36a1-acc2-b9e6d3e1960d",
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
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "REDMAGE",
							name = "Self: RDM",
							uuid = "83c6a17b-723e-3cbd-9155-9e9c69e2d26b",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Party",
							comparator = 2,
							conditionType = 4,
							inRangeValue = 30,
							minTargetPercent = true,
							name = "Party Range: <= 30y",
							partyTargetNumber = 100,
							partyTargetSubType = "Number",
							uuid = "da63e6cf-f2cc-e5fa-bcad-5cd7d5cc7662",
							version = 3,
						},
					},
				},
				mechanicTime = 557.21788210262,
				name = "[Lj Mit] Magick Barrier",
				timeRange = true,
				timelineIndex = 107,
				timerEndOffset = -1,
				timerStartOffset = -9.5,
				uuid = "007f7f36-483f-99df-abde-48b3b2a8ddd4",
				version = 2,
			},
		},
	},
	[108] = 
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
									"d03827ca-3f9f-5461-92f2-9b9b2dfbbde2",
									true,
								},
								
								{
									"5682de85-25a7-9458-ad2b-ca2fbd43370e",
									true,
								},
							},
							gVar = "ACR_TensorViper3_Hotbar_Feint",
							uuid = "ae1a8597-0aed-56a6-979d-b5088f6665a8",
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
							category = "Self",
							conditionType = 9,
							dequeueIfLuaFalse = true,
							name = "Self: Melee",
							partyTargetType = "Melee DPS",
							uuid = "d03827ca-3f9f-5461-92f2-9b9b2dfbbde2",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return AnyoneCore.Settings.Reactions.dmu.primaryMitigation == true",
							dequeueIfLuaFalse = true,
							name = "Primary Mitigation",
							uuid = "5682de85-25a7-9458-ad2b-ca2fbd43370e",
							version = 3,
						},
					},
				},
				mechanicTime = 574.57649748723,
				name = "[Lj Mit] Feint - Primary",
				timeRange = true,
				timelineIndex = 108,
				timerEndOffset = -1,
				timerStartOffset = -14.5,
				uuid = "2a6e78f3-b7f9-8125-a147-7fcd57836700",
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
							conditions = 
							{
								
								{
									"ca350657-f317-777f-b858-236691700b8f",
									true,
								},
								
								{
									"b66ec498-4c15-8190-adfb-18b116ad2c9b",
									false,
								},
							},
							gVar = "ACR_RikuRDM3_Hotbar_Addle",
							uuid = "8e2ac998-993d-d6a7-be0d-ce9a0f9eef04",
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
							category = "Self",
							conditionType = 9,
							dequeueIfLuaFalse = true,
							name = "Self: Caster",
							partyTargetType = "Ranged Caster DPS",
							uuid = "ca350657-f317-777f-b858-236691700b8f",
							version = 3,
						},
						inheritedIndex = 1,
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return AnyoneCore.Settings.Reactions.dmu.primaryMitigation == true",
							name = "Primary Mitigation",
							uuid = "b66ec498-4c15-8190-adfb-18b116ad2c9b",
							version = 3,
						},
					},
				},
				mechanicTime = 578.01131609381,
				name = "[Lj Mit] Addle - Secondary",
				timeRange = true,
				timelineIndex = 112,
				timerEndOffset = -1,
				timerStartOffset = -14.5,
				uuid = "d5fe547e-8ff2-ccc5-9525-3f73ec9f6fe3",
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
									"7c259250-e60f-cf60-ac51-224d92e3db21",
									true,
								},
								
								{
									"d635aad7-4ec4-7ab5-81cc-3aca65d2336e",
									false,
								},
								
								{
									"c8990f81-73d9-bf7b-942e-ad6db29e6623",
									true,
								},
							},
							gVar = "ACR_TensorRequiem3_Hotbar_Troubadour",
							uuid = "fd2d982d-2e90-2b4e-865b-e4db2bfa6923",
							variableTogglesType = 2,
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
									"83d0ea0a-4934-2421-a692-59d0959b18f9",
									true,
								},
								
								{
									"d635aad7-4ec4-7ab5-81cc-3aca65d2336e",
									false,
								},
								
								{
									"c8990f81-73d9-bf7b-942e-ad6db29e6623",
									true,
								},
							},
							gVar = "ACR_RikuDNC3_Hotbar_ShieldSamba",
							uuid = "5409201a-e210-3d52-bd0a-5785a0062108",
							variableTogglesType = 2,
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
									"9b510f14-672a-9890-b474-d7ab095f17f6",
									true,
								},
								
								{
									"d635aad7-4ec4-7ab5-81cc-3aca65d2336e",
									false,
								},
								
								{
									"c8990f81-73d9-bf7b-942e-ad6db29e6623",
									true,
								},
							},
							gVar = "ACR_TensorMagnum3_Hotbar_Tactician",
							uuid = "55ef0f53-d927-aef8-8a4b-086a6f3246da",
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
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "BARD",
							name = "Self: BRD",
							uuid = "7c259250-e60f-cf60-ac51-224d92e3db21",
							version = 3,
						},
						inheritedIndex = 1,
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "DANCER",
							name = "Self: DNC",
							uuid = "83d0ea0a-4934-2421-a692-59d0959b18f9",
							version = 3,
						},
						inheritedIndex = 1,
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "MACHINIST",
							name = "Self: MCH",
							uuid = "9b510f14-672a-9890-b474-d7ab095f17f6",
							version = 3,
						},
						inheritedIndex = 3,
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return AnyoneCore.Settings.Reactions.dmu.primaryMitigation == true",
							name = "Primary Mitigation",
							uuid = "d635aad7-4ec4-7ab5-81cc-3aca65d2336e",
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
							inRangeValue = 30,
							minTargetPercent = true,
							name = "Party Range: <= 30y",
							partyTargetNumber = 100,
							partyTargetSubType = "Number",
							uuid = "c8990f81-73d9-bf7b-942e-ad6db29e6623",
							version = 3,
						},
					},
				},
				mechanicTime = 578.01131609381,
				name = "[Lj Mit] Phys Ranged - Secondary",
				randomTimeout = 10,
				timeRange = true,
				timelineIndex = 112,
				timerEndOffset = -1,
				timerStartOffset = -14.5,
				uuid = "0b486997-d4d1-d381-bedb-820ed9f98ade",
				version = 2,
			},
			inheritedIndex = 7,
		},
	},
	[115] = 
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
									"d03827ca-3f9f-5461-92f2-9b9b2dfbbde2",
									true,
								},
								
								{
									"5682de85-25a7-9458-ad2b-ca2fbd43370e",
									false,
								},
							},
							gVar = "ACR_TensorViper3_Hotbar_Feint",
							uuid = "ae1a8597-0aed-56a6-979d-b5088f6665a8",
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
							category = "Self",
							conditionType = 9,
							dequeueIfLuaFalse = true,
							name = "Self: Melee",
							partyTargetType = "Melee DPS",
							uuid = "d03827ca-3f9f-5461-92f2-9b9b2dfbbde2",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return AnyoneCore.Settings.Reactions.dmu.primaryMitigation == true",
							name = "Primary Mitigation",
							uuid = "5682de85-25a7-9458-ad2b-ca2fbd43370e",
							version = 3,
						},
					},
				},
				mechanicTime = 595.71497259653,
				name = "[Lj Mit] Feint - Secondary",
				timeRange = true,
				timelineIndex = 115,
				timerEndOffset = -1,
				timerStartOffset = -14.5,
				uuid = "13db03f7-325c-b918-8b9d-c8e44e13056e",
				version = 2,
			},
		},
	},
	[127] = 
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
									"ca350657-f317-777f-b858-236691700b8f",
									true,
								},
								
								{
									"b66ec498-4c15-8190-adfb-18b116ad2c9b",
									false,
								},
							},
							gVar = "ACR_RikuRDM3_Hotbar_Addle",
							uuid = "8e2ac998-993d-d6a7-be0d-ce9a0f9eef04",
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
							category = "Self",
							conditionType = 9,
							dequeueIfLuaFalse = true,
							name = "Self: Caster",
							partyTargetType = "Ranged Caster DPS",
							uuid = "ca350657-f317-777f-b858-236691700b8f",
							version = 3,
						},
						inheritedIndex = 1,
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return AnyoneCore.Settings.Reactions.dmu.primaryMitigation == true",
							name = "Primary Mitigation",
							uuid = "b66ec498-4c15-8190-adfb-18b116ad2c9b",
							version = 3,
						},
					},
				},
				mechanicTime = 639.97108310281,
				name = "[Lj Mit] Addle - Secondary",
				timeRange = true,
				timelineIndex = 127,
				timerEndOffset = -1,
				timerStartOffset = -14.5,
				uuid = "95cb9e90-f1da-11e0-b696-41507338b74f",
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
							conditions = 
							{
								
								{
									"d03827ca-3f9f-5461-92f2-9b9b2dfbbde2",
									true,
								},
								
								{
									"5682de85-25a7-9458-ad2b-ca2fbd43370e",
									true,
								},
							},
							gVar = "ACR_TensorViper3_Hotbar_Feint",
							uuid = "ae1a8597-0aed-56a6-979d-b5088f6665a8",
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
							category = "Self",
							conditionType = 9,
							dequeueIfLuaFalse = true,
							name = "Self: Melee",
							partyTargetType = "Melee DPS",
							uuid = "d03827ca-3f9f-5461-92f2-9b9b2dfbbde2",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return AnyoneCore.Settings.Reactions.dmu.primaryMitigation == true",
							dequeueIfLuaFalse = true,
							name = "Primary Mitigation",
							uuid = "5682de85-25a7-9458-ad2b-ca2fbd43370e",
							version = 3,
						},
					},
				},
				mechanicTime = 676.34203400282,
				name = "[Lj Mit] Feint - Primary",
				timeRange = true,
				timelineIndex = 135,
				timerEndOffset = -1,
				timerStartOffset = -14.5,
				uuid = "30e5d725-8cc5-0836-8071-09f6ccb48901",
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
									"7c259250-e60f-cf60-ac51-224d92e3db21",
									true,
								},
								
								{
									"d635aad7-4ec4-7ab5-81cc-3aca65d2336e",
									true,
								},
								
								{
									"c8990f81-73d9-bf7b-942e-ad6db29e6623",
									true,
								},
							},
							gVar = "ACR_TensorRequiem3_Hotbar_Troubadour",
							uuid = "fd2d982d-2e90-2b4e-865b-e4db2bfa6923",
							variableTogglesType = 2,
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
									"83d0ea0a-4934-2421-a692-59d0959b18f9",
									true,
								},
								
								{
									"d635aad7-4ec4-7ab5-81cc-3aca65d2336e",
									true,
								},
								
								{
									"c8990f81-73d9-bf7b-942e-ad6db29e6623",
									true,
								},
							},
							gVar = "ACR_RikuDNC3_Hotbar_ShieldSamba",
							uuid = "5409201a-e210-3d52-bd0a-5785a0062108",
							variableTogglesType = 2,
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
									"9b510f14-672a-9890-b474-d7ab095f17f6",
									true,
								},
								
								{
									"d635aad7-4ec4-7ab5-81cc-3aca65d2336e",
									true,
								},
								
								{
									"c8990f81-73d9-bf7b-942e-ad6db29e6623",
									true,
								},
							},
							gVar = "ACR_TensorMagnum3_Hotbar_Tactician",
							uuid = "55ef0f53-d927-aef8-8a4b-086a6f3246da",
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
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "BARD",
							name = "Self: BRD",
							uuid = "7c259250-e60f-cf60-ac51-224d92e3db21",
							version = 3,
						},
						inheritedIndex = 1,
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "DANCER",
							name = "Self: DNC",
							uuid = "83d0ea0a-4934-2421-a692-59d0959b18f9",
							version = 3,
						},
						inheritedIndex = 1,
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "MACHINIST",
							name = "Self: MCH",
							uuid = "9b510f14-672a-9890-b474-d7ab095f17f6",
							version = 3,
						},
						inheritedIndex = 3,
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return AnyoneCore.Settings.Reactions.dmu.primaryMitigation == true",
							dequeueIfLuaFalse = true,
							name = "Primary Mitigation",
							uuid = "d635aad7-4ec4-7ab5-81cc-3aca65d2336e",
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
							inRangeValue = 30,
							minTargetPercent = true,
							name = "Party Range: <= 30y",
							partyTargetNumber = 100,
							partyTargetSubType = "Number",
							uuid = "c8990f81-73d9-bf7b-942e-ad6db29e6623",
							version = 3,
						},
					},
				},
				mechanicTime = 676.34203400282,
				name = "[Lj Mit] Phys Ranged - Primary",
				randomTimeout = 10,
				timeRange = true,
				timelineIndex = 135,
				timerEndOffset = -1,
				timerStartOffset = -14.5,
				uuid = "83f55317-a2fa-31fb-8409-dcd91a05770e",
				version = 2,
			},
			inheritedIndex = 3,
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
							aType = "ACR",
							conditions = 
							{
								
								{
									"c3fcfda9-bfd8-1d9b-b7b4-1154d8d77c9c",
									true,
								},
							},
							gVar = "ACR_TensorMagnum3_Hotbar_Dismantle",
							uuid = "ae6912a5-fb91-3542-8411-f786fa2a3106",
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
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "MACHINIST",
							name = "Self: MCH",
							uuid = "c3fcfda9-bfd8-1d9b-b7b4-1154d8d77c9c",
							version = 3,
						},
						inheritedIndex = 3,
					},
				},
				mechanicTime = 690.41578400282,
				name = "[Lj Mit] Dismantle",
				timeRange = true,
				timelineIndex = 137,
				timerEndOffset = -1,
				timerStartOffset = -9.5,
				uuid = "fde3e12d-677e-ca2e-a6f3-9366f39d5cbd",
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
							aType = "ACR",
							conditions = 
							{
								
								{
									"d03827ca-3f9f-5461-92f2-9b9b2dfbbde2",
									true,
								},
								
								{
									"5682de85-25a7-9458-ad2b-ca2fbd43370e",
									false,
								},
							},
							gVar = "ACR_TensorViper3_Hotbar_Feint",
							uuid = "ae1a8597-0aed-56a6-979d-b5088f6665a8",
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
							category = "Self",
							conditionType = 9,
							dequeueIfLuaFalse = true,
							name = "Self: Melee",
							partyTargetType = "Melee DPS",
							uuid = "d03827ca-3f9f-5461-92f2-9b9b2dfbbde2",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return AnyoneCore.Settings.Reactions.dmu.primaryMitigation == true",
							name = "Primary Mitigation",
							uuid = "5682de85-25a7-9458-ad2b-ca2fbd43370e",
							version = 3,
						},
					},
				},
				mechanicTime = 705.28176295466,
				name = "[Lj Mit] Feint - Secondary",
				timeRange = true,
				timelineIndex = 141,
				timerEndOffset = -1,
				timerStartOffset = -14.5,
				uuid = "28cb7b35-da2a-ed1c-b9f4-a9a8fffeb910",
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
									"ca350657-f317-777f-b858-236691700b8f",
									true,
								},
								
								{
									"b66ec498-4c15-8190-adfb-18b116ad2c9b",
									false,
								},
							},
							gVar = "ACR_RikuRDM3_Hotbar_Addle",
							uuid = "8e2ac998-993d-d6a7-be0d-ce9a0f9eef04",
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
							category = "Self",
							conditionType = 9,
							dequeueIfLuaFalse = true,
							name = "Self: Caster",
							partyTargetType = "Ranged Caster DPS",
							uuid = "ca350657-f317-777f-b858-236691700b8f",
							version = 3,
						},
						inheritedIndex = 1,
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return AnyoneCore.Settings.Reactions.dmu.primaryMitigation == true",
							name = "Primary Mitigation",
							uuid = "b66ec498-4c15-8190-adfb-18b116ad2c9b",
							version = 3,
						},
					},
				},
				mechanicTime = 705.28176295466,
				name = "[Lj Mit] Addle - Secondary",
				timeRange = true,
				timelineIndex = 141,
				timerEndOffset = -1,
				timerStartOffset = -14.5,
				uuid = "77b0350b-7f89-162a-a84e-cf37028b9040",
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
									"7c259250-e60f-cf60-ac51-224d92e3db21",
									true,
								},
								
								{
									"d635aad7-4ec4-7ab5-81cc-3aca65d2336e",
									false,
								},
								
								{
									"c8990f81-73d9-bf7b-942e-ad6db29e6623",
									true,
								},
							},
							gVar = "ACR_TensorRequiem3_Hotbar_Troubadour",
							uuid = "fd2d982d-2e90-2b4e-865b-e4db2bfa6923",
							variableTogglesType = 2,
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
									"83d0ea0a-4934-2421-a692-59d0959b18f9",
									true,
								},
								
								{
									"d635aad7-4ec4-7ab5-81cc-3aca65d2336e",
									false,
								},
								
								{
									"c8990f81-73d9-bf7b-942e-ad6db29e6623",
									true,
								},
							},
							gVar = "ACR_RikuDNC3_Hotbar_ShieldSamba",
							uuid = "5409201a-e210-3d52-bd0a-5785a0062108",
							variableTogglesType = 2,
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
									"9b510f14-672a-9890-b474-d7ab095f17f6",
									true,
								},
								
								{
									"d635aad7-4ec4-7ab5-81cc-3aca65d2336e",
									false,
								},
								
								{
									"c8990f81-73d9-bf7b-942e-ad6db29e6623",
									true,
								},
							},
							gVar = "ACR_TensorMagnum3_Hotbar_Tactician",
							uuid = "55ef0f53-d927-aef8-8a4b-086a6f3246da",
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
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "BARD",
							name = "Self: BRD",
							uuid = "7c259250-e60f-cf60-ac51-224d92e3db21",
							version = 3,
						},
						inheritedIndex = 1,
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "DANCER",
							name = "Self: DNC",
							uuid = "83d0ea0a-4934-2421-a692-59d0959b18f9",
							version = 3,
						},
						inheritedIndex = 1,
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "MACHINIST",
							name = "Self: MCH",
							uuid = "9b510f14-672a-9890-b474-d7ab095f17f6",
							version = 3,
						},
						inheritedIndex = 3,
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return AnyoneCore.Settings.Reactions.dmu.primaryMitigation == true",
							name = "Primary Mitigation",
							uuid = "d635aad7-4ec4-7ab5-81cc-3aca65d2336e",
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
							inRangeValue = 30,
							minTargetPercent = true,
							name = "Party Range: <= 30y",
							partyTargetNumber = 100,
							partyTargetSubType = "Number",
							uuid = "c8990f81-73d9-bf7b-942e-ad6db29e6623",
							version = 3,
						},
					},
				},
				mechanicTime = 705.28176295466,
				name = "[Lj Mit] Phys Ranged - Secondary",
				randomTimeout = 10,
				timeRange = true,
				timelineIndex = 141,
				timerEndOffset = -1,
				timerStartOffset = -14.5,
				uuid = "0c023618-de9a-e26b-b103-c56b342d9886",
				version = 2,
			},
			inheritedIndex = 7,
		},
	},
	[157] = 
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
									"7c259250-e60f-cf60-ac51-224d92e3db21",
									true,
								},
								
								{
									"d635aad7-4ec4-7ab5-81cc-3aca65d2336e",
									true,
								},
								
								{
									"c8990f81-73d9-bf7b-942e-ad6db29e6623",
									true,
								},
							},
							gVar = "ACR_TensorRequiem3_Hotbar_Troubadour",
							uuid = "fd2d982d-2e90-2b4e-865b-e4db2bfa6923",
							variableTogglesType = 2,
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
									"83d0ea0a-4934-2421-a692-59d0959b18f9",
									true,
								},
								
								{
									"d635aad7-4ec4-7ab5-81cc-3aca65d2336e",
									true,
								},
								
								{
									"c8990f81-73d9-bf7b-942e-ad6db29e6623",
									true,
								},
							},
							gVar = "ACR_RikuDNC3_Hotbar_ShieldSamba",
							uuid = "5409201a-e210-3d52-bd0a-5785a0062108",
							variableTogglesType = 2,
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
									"9b510f14-672a-9890-b474-d7ab095f17f6",
									true,
								},
								
								{
									"d635aad7-4ec4-7ab5-81cc-3aca65d2336e",
									true,
								},
								
								{
									"c8990f81-73d9-bf7b-942e-ad6db29e6623",
									true,
								},
							},
							gVar = "ACR_TensorMagnum3_Hotbar_Tactician",
							uuid = "55ef0f53-d927-aef8-8a4b-086a6f3246da",
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
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "BARD",
							name = "Self: BRD",
							uuid = "7c259250-e60f-cf60-ac51-224d92e3db21",
							version = 3,
						},
						inheritedIndex = 1,
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "DANCER",
							name = "Self: DNC",
							uuid = "83d0ea0a-4934-2421-a692-59d0959b18f9",
							version = 3,
						},
						inheritedIndex = 1,
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "MACHINIST",
							name = "Self: MCH",
							uuid = "9b510f14-672a-9890-b474-d7ab095f17f6",
							version = 3,
						},
						inheritedIndex = 3,
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return AnyoneCore.Settings.Reactions.dmu.primaryMitigation == true",
							dequeueIfLuaFalse = true,
							name = "Primary Mitigation",
							uuid = "d635aad7-4ec4-7ab5-81cc-3aca65d2336e",
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
							inRangeValue = 30,
							minTargetPercent = true,
							name = "Party Range: <= 30y",
							partyTargetNumber = 100,
							partyTargetSubType = "Number",
							uuid = "c8990f81-73d9-bf7b-942e-ad6db29e6623",
							version = 3,
						},
					},
				},
				mechanicTime = 846.19462329432,
				name = "[Lj Mit] Phys Ranged - Primary",
				randomTimeout = 10,
				timeRange = true,
				timelineIndex = 157,
				timerEndOffset = -1,
				timerStartOffset = -14.5,
				uuid = "ebb3eb8c-21af-e0f8-a831-82911b0d6726",
				version = 2,
			},
			inheritedIndex = 3,
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
									"83c6a17b-723e-3cbd-9155-9e9c69e2d26b",
									true,
								},
								
								{
									"da63e6cf-f2cc-e5fa-bcad-5cd7d5cc7662",
									true,
								},
							},
							gVar = "ACR_RikuRDM3_Hotbar_MagickBarrier",
							uuid = "b72c4571-63c3-36a1-acc2-b9e6d3e1960d",
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
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "REDMAGE",
							name = "Self: RDM",
							uuid = "83c6a17b-723e-3cbd-9155-9e9c69e2d26b",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Party",
							comparator = 2,
							conditionType = 4,
							inRangeValue = 30,
							minTargetPercent = true,
							name = "Party Range: <= 30y",
							partyTargetNumber = 100,
							partyTargetSubType = "Number",
							uuid = "da63e6cf-f2cc-e5fa-bcad-5cd7d5cc7662",
							version = 3,
						},
					},
				},
				mechanicTime = 846.19462329432,
				name = "[Lj Mit] Magick Barrier",
				timeRange = true,
				timelineIndex = 157,
				timerEndOffset = -1,
				timerStartOffset = -9.5,
				uuid = "14fd5314-91ca-9569-8b89-af1227ba94b6",
				version = 2,
			},
		},
	},
	[160] = 
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
									"7c259250-e60f-cf60-ac51-224d92e3db21",
									true,
								},
								
								{
									"d635aad7-4ec4-7ab5-81cc-3aca65d2336e",
									false,
								},
								
								{
									"c8990f81-73d9-bf7b-942e-ad6db29e6623",
									true,
								},
							},
							gVar = "ACR_TensorRequiem3_Hotbar_Troubadour",
							uuid = "fd2d982d-2e90-2b4e-865b-e4db2bfa6923",
							variableTogglesType = 2,
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
									"83d0ea0a-4934-2421-a692-59d0959b18f9",
									true,
								},
								
								{
									"d635aad7-4ec4-7ab5-81cc-3aca65d2336e",
									false,
								},
								
								{
									"c8990f81-73d9-bf7b-942e-ad6db29e6623",
									true,
								},
							},
							gVar = "ACR_RikuDNC3_Hotbar_ShieldSamba",
							uuid = "5409201a-e210-3d52-bd0a-5785a0062108",
							variableTogglesType = 2,
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
									"9b510f14-672a-9890-b474-d7ab095f17f6",
									true,
								},
								
								{
									"d635aad7-4ec4-7ab5-81cc-3aca65d2336e",
									false,
								},
								
								{
									"c8990f81-73d9-bf7b-942e-ad6db29e6623",
									true,
								},
							},
							gVar = "ACR_TensorMagnum3_Hotbar_Tactician",
							uuid = "55ef0f53-d927-aef8-8a4b-086a6f3246da",
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
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "BARD",
							name = "Self: BRD",
							uuid = "7c259250-e60f-cf60-ac51-224d92e3db21",
							version = 3,
						},
						inheritedIndex = 1,
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "DANCER",
							name = "Self: DNC",
							uuid = "83d0ea0a-4934-2421-a692-59d0959b18f9",
							version = 3,
						},
						inheritedIndex = 1,
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "MACHINIST",
							name = "Self: MCH",
							uuid = "9b510f14-672a-9890-b474-d7ab095f17f6",
							version = 3,
						},
						inheritedIndex = 3,
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return AnyoneCore.Settings.Reactions.dmu.primaryMitigation == true",
							name = "Primary Mitigation",
							uuid = "d635aad7-4ec4-7ab5-81cc-3aca65d2336e",
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
							inRangeValue = 30,
							minTargetPercent = true,
							name = "Party Range: <= 30y",
							partyTargetNumber = 100,
							partyTargetSubType = "Number",
							uuid = "c8990f81-73d9-bf7b-942e-ad6db29e6623",
							version = 3,
						},
					},
				},
				mechanicTime = 868.13803801671,
				name = "[Lj Mit] Phys Ranged - Secondary",
				randomTimeout = 10,
				timeRange = true,
				timelineIndex = 160,
				timerEndOffset = -1,
				timerStartOffset = -14.5,
				uuid = "9178e8d6-7585-d509-a92b-8cd11725e965",
				version = 2,
			},
			inheritedIndex = 7,
		},
	},
	[165] = 
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
									"d03827ca-3f9f-5461-92f2-9b9b2dfbbde2",
									true,
								},
								
								{
									"5682de85-25a7-9458-ad2b-ca2fbd43370e",
									true,
								},
							},
							gVar = "ACR_TensorViper3_Hotbar_Feint",
							uuid = "ae1a8597-0aed-56a6-979d-b5088f6665a8",
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
							category = "Self",
							conditionType = 9,
							dequeueIfLuaFalse = true,
							name = "Self: Melee",
							partyTargetType = "Melee DPS",
							uuid = "d03827ca-3f9f-5461-92f2-9b9b2dfbbde2",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return AnyoneCore.Settings.Reactions.dmu.primaryMitigation == true",
							dequeueIfLuaFalse = true,
							name = "Primary Mitigation",
							uuid = "5682de85-25a7-9458-ad2b-ca2fbd43370e",
							version = 3,
						},
					},
				},
				mechanicTime = 895.49672653853,
				name = "[Lj Mit] Feint - Primary",
				timeRange = true,
				timelineIndex = 165,
				timerEndOffset = -1,
				timerStartOffset = -14.5,
				uuid = "f884578c-4b86-07fa-9f2b-dbb280df68ab",
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
									"ca350657-f317-777f-b858-236691700b8f",
									true,
								},
								
								{
									"b66ec498-4c15-8190-adfb-18b116ad2c9b",
									true,
								},
							},
							gVar = "ACR_RikuRDM3_Hotbar_Addle",
							uuid = "8e2ac998-993d-d6a7-be0d-ce9a0f9eef04",
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
							category = "Self",
							conditionType = 9,
							dequeueIfLuaFalse = true,
							name = "Self: Caster",
							partyTargetType = "Ranged Caster DPS",
							uuid = "ca350657-f317-777f-b858-236691700b8f",
							version = 3,
						},
						inheritedIndex = 1,
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return AnyoneCore.Settings.Reactions.dmu.primaryMitigation == true",
							dequeueIfLuaFalse = true,
							name = "Primary Mitigation",
							uuid = "b66ec498-4c15-8190-adfb-18b116ad2c9b",
							version = 3,
						},
					},
				},
				mechanicTime = 895.49672653853,
				name = "[Lj Mit] Addle - Primary",
				timeRange = true,
				timelineIndex = 165,
				timerEndOffset = -1,
				timerStartOffset = -14.5,
				uuid = "4b1f0b9d-c831-bb9a-a1b8-6646f3a998aa",
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
									"c3fcfda9-bfd8-1d9b-b7b4-1154d8d77c9c",
									true,
								},
							},
							gVar = "ACR_TensorMagnum3_Hotbar_Dismantle",
							uuid = "ae6912a5-fb91-3542-8411-f786fa2a3106",
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
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "MACHINIST",
							name = "Self: MCH",
							uuid = "c3fcfda9-bfd8-1d9b-b7b4-1154d8d77c9c",
							version = 3,
						},
						inheritedIndex = 3,
					},
				},
				mechanicTime = 895.49672653853,
				name = "[Lj Mit] Dismantle",
				timeRange = true,
				timelineIndex = 165,
				timerEndOffset = -1,
				timerStartOffset = -9.5,
				uuid = "d1d2bb57-3946-a137-8358-e12cb2bab604",
				version = 2,
			},
		},
	},
	[169] = 
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
									"d03827ca-3f9f-5461-92f2-9b9b2dfbbde2",
									true,
								},
								
								{
									"5682de85-25a7-9458-ad2b-ca2fbd43370e",
									false,
								},
							},
							gVar = "ACR_TensorViper3_Hotbar_Feint",
							uuid = "ae1a8597-0aed-56a6-979d-b5088f6665a8",
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
							category = "Self",
							conditionType = 9,
							dequeueIfLuaFalse = true,
							name = "Self: Melee",
							partyTargetType = "Melee DPS",
							uuid = "d03827ca-3f9f-5461-92f2-9b9b2dfbbde2",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return AnyoneCore.Settings.Reactions.dmu.primaryMitigation == true",
							name = "Primary Mitigation",
							uuid = "5682de85-25a7-9458-ad2b-ca2fbd43370e",
							version = 3,
						},
					},
				},
				mechanicTime = 934.65048710577,
				name = "[Lj Mit] Feint - Secondary",
				timeRange = true,
				timelineIndex = 169,
				timerEndOffset = -1,
				timerStartOffset = -14.5,
				uuid = "634426d8-8ef5-0f48-a761-88dad9f6661c",
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
									"ca350657-f317-777f-b858-236691700b8f",
									true,
								},
								
								{
									"b66ec498-4c15-8190-adfb-18b116ad2c9b",
									false,
								},
							},
							gVar = "ACR_RikuRDM3_Hotbar_Addle",
							uuid = "8e2ac998-993d-d6a7-be0d-ce9a0f9eef04",
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
							category = "Self",
							conditionType = 9,
							dequeueIfLuaFalse = true,
							name = "Self: Caster",
							partyTargetType = "Ranged Caster DPS",
							uuid = "ca350657-f317-777f-b858-236691700b8f",
							version = 3,
						},
						inheritedIndex = 1,
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return AnyoneCore.Settings.Reactions.dmu.primaryMitigation == true",
							name = "Primary Mitigation",
							uuid = "b66ec498-4c15-8190-adfb-18b116ad2c9b",
							version = 3,
						},
					},
				},
				mechanicTime = 934.65048710577,
				name = "[Lj Mit] Addle - Secondary",
				timeRange = true,
				timelineIndex = 169,
				timerEndOffset = -1,
				timerStartOffset = -14.5,
				uuid = "85539e1e-163f-ef7a-a50d-ceabb4e74c09",
				version = 2,
			},
		},
	},
	[176] = 
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
									"7c259250-e60f-cf60-ac51-224d92e3db21",
									true,
								},
								
								{
									"d635aad7-4ec4-7ab5-81cc-3aca65d2336e",
									true,
								},
								
								{
									"c8990f81-73d9-bf7b-942e-ad6db29e6623",
									true,
								},
							},
							gVar = "ACR_TensorRequiem3_Hotbar_Troubadour",
							uuid = "fd2d982d-2e90-2b4e-865b-e4db2bfa6923",
							variableTogglesType = 2,
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
									"83d0ea0a-4934-2421-a692-59d0959b18f9",
									true,
								},
								
								{
									"d635aad7-4ec4-7ab5-81cc-3aca65d2336e",
									true,
								},
								
								{
									"c8990f81-73d9-bf7b-942e-ad6db29e6623",
									true,
								},
							},
							gVar = "ACR_RikuDNC3_Hotbar_ShieldSamba",
							uuid = "5409201a-e210-3d52-bd0a-5785a0062108",
							variableTogglesType = 2,
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
									"9b510f14-672a-9890-b474-d7ab095f17f6",
									true,
								},
								
								{
									"d635aad7-4ec4-7ab5-81cc-3aca65d2336e",
									true,
								},
								
								{
									"c8990f81-73d9-bf7b-942e-ad6db29e6623",
									true,
								},
							},
							gVar = "ACR_TensorMagnum3_Hotbar_Tactician",
							uuid = "55ef0f53-d927-aef8-8a4b-086a6f3246da",
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
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "BARD",
							name = "Self: BRD",
							uuid = "7c259250-e60f-cf60-ac51-224d92e3db21",
							version = 3,
						},
						inheritedIndex = 1,
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "DANCER",
							name = "Self: DNC",
							uuid = "83d0ea0a-4934-2421-a692-59d0959b18f9",
							version = 3,
						},
						inheritedIndex = 1,
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "MACHINIST",
							name = "Self: MCH",
							uuid = "9b510f14-672a-9890-b474-d7ab095f17f6",
							version = 3,
						},
						inheritedIndex = 3,
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return AnyoneCore.Settings.Reactions.dmu.primaryMitigation == true",
							dequeueIfLuaFalse = true,
							name = "Primary Mitigation",
							uuid = "d635aad7-4ec4-7ab5-81cc-3aca65d2336e",
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
							inRangeValue = 30,
							minTargetPercent = true,
							name = "Party Range: <= 30y",
							partyTargetNumber = 100,
							partyTargetSubType = "Number",
							uuid = "c8990f81-73d9-bf7b-942e-ad6db29e6623",
							version = 3,
						},
					},
				},
				mechanicTime = 975.94101651753,
				name = "[Lj Mit] Phys Ranged - Primary",
				randomTimeout = 10,
				timeRange = true,
				timelineIndex = 176,
				timerEndOffset = -1,
				timerStartOffset = -14.5,
				uuid = "46000d17-9f6a-975e-9944-ac112c9c90c8",
				version = 2,
			},
			inheritedIndex = 3,
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
									"83c6a17b-723e-3cbd-9155-9e9c69e2d26b",
									true,
								},
								
								{
									"da63e6cf-f2cc-e5fa-bcad-5cd7d5cc7662",
									true,
								},
							},
							gVar = "ACR_RikuRDM3_Hotbar_MagickBarrier",
							uuid = "b72c4571-63c3-36a1-acc2-b9e6d3e1960d",
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
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "REDMAGE",
							name = "Self: RDM",
							uuid = "83c6a17b-723e-3cbd-9155-9e9c69e2d26b",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Party",
							comparator = 2,
							conditionType = 4,
							inRangeValue = 30,
							minTargetPercent = true,
							name = "Party Range: <= 30y",
							partyTargetNumber = 100,
							partyTargetSubType = "Number",
							uuid = "da63e6cf-f2cc-e5fa-bcad-5cd7d5cc7662",
							version = 3,
						},
					},
				},
				mechanicTime = 975.94101651753,
				name = "[Lj Mit] Magick Barrier",
				timeRange = true,
				timelineIndex = 176,
				timerEndOffset = -1,
				timerStartOffset = -9.5,
				uuid = "b17984d6-d430-8385-b56e-c2acac6b767e",
				version = 2,
			},
		},
	},
	[189] = 
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
									"d03827ca-3f9f-5461-92f2-9b9b2dfbbde2",
									true,
								},
								
								{
									"5682de85-25a7-9458-ad2b-ca2fbd43370e",
									true,
								},
							},
							gVar = "ACR_TensorViper3_Hotbar_Feint",
							uuid = "ae1a8597-0aed-56a6-979d-b5088f6665a8",
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
							category = "Self",
							conditionType = 9,
							dequeueIfLuaFalse = true,
							name = "Self: Melee",
							partyTargetType = "Melee DPS",
							uuid = "d03827ca-3f9f-5461-92f2-9b9b2dfbbde2",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return AnyoneCore.Settings.Reactions.dmu.primaryMitigation == true",
							dequeueIfLuaFalse = true,
							name = "Primary Mitigation",
							uuid = "5682de85-25a7-9458-ad2b-ca2fbd43370e",
							version = 3,
						},
					},
				},
				mechanicTime = 1007.4434123588,
				name = "[Lj Mit] Feint - Primary",
				timeRange = true,
				timelineIndex = 189,
				timerEndOffset = -1,
				timerStartOffset = -14.5,
				uuid = "ac6ad341-a922-b04c-bb5e-578a293463be",
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
									"7c259250-e60f-cf60-ac51-224d92e3db21",
									true,
								},
								
								{
									"d635aad7-4ec4-7ab5-81cc-3aca65d2336e",
									false,
								},
								
								{
									"c8990f81-73d9-bf7b-942e-ad6db29e6623",
									true,
								},
							},
							gVar = "ACR_TensorRequiem3_Hotbar_Troubadour",
							uuid = "fd2d982d-2e90-2b4e-865b-e4db2bfa6923",
							variableTogglesType = 2,
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
									"83d0ea0a-4934-2421-a692-59d0959b18f9",
									true,
								},
								
								{
									"d635aad7-4ec4-7ab5-81cc-3aca65d2336e",
									false,
								},
								
								{
									"c8990f81-73d9-bf7b-942e-ad6db29e6623",
									true,
								},
							},
							gVar = "ACR_RikuDNC3_Hotbar_ShieldSamba",
							uuid = "5409201a-e210-3d52-bd0a-5785a0062108",
							variableTogglesType = 2,
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
									"9b510f14-672a-9890-b474-d7ab095f17f6",
									true,
								},
								
								{
									"d635aad7-4ec4-7ab5-81cc-3aca65d2336e",
									false,
								},
								
								{
									"c8990f81-73d9-bf7b-942e-ad6db29e6623",
									true,
								},
							},
							gVar = "ACR_TensorMagnum3_Hotbar_Tactician",
							uuid = "55ef0f53-d927-aef8-8a4b-086a6f3246da",
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
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "BARD",
							name = "Self: BRD",
							uuid = "7c259250-e60f-cf60-ac51-224d92e3db21",
							version = 3,
						},
						inheritedIndex = 1,
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "DANCER",
							name = "Self: DNC",
							uuid = "83d0ea0a-4934-2421-a692-59d0959b18f9",
							version = 3,
						},
						inheritedIndex = 1,
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "MACHINIST",
							name = "Self: MCH",
							uuid = "9b510f14-672a-9890-b474-d7ab095f17f6",
							version = 3,
						},
						inheritedIndex = 3,
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return AnyoneCore.Settings.Reactions.dmu.primaryMitigation == true",
							name = "Primary Mitigation",
							uuid = "d635aad7-4ec4-7ab5-81cc-3aca65d2336e",
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
							inRangeValue = 30,
							minTargetPercent = true,
							name = "Party Range: <= 30y",
							partyTargetNumber = 100,
							partyTargetSubType = "Number",
							uuid = "c8990f81-73d9-bf7b-942e-ad6db29e6623",
							version = 3,
						},
					},
				},
				mechanicTime = 1007.4434123588,
				name = "[Lj Mit] Phys Ranged - Secondary",
				randomTimeout = 10,
				timeRange = true,
				timelineIndex = 189,
				timerEndOffset = -1,
				timerStartOffset = -14.5,
				uuid = "39bddaa4-4f95-4558-aeb6-3281d9062a96",
				version = 2,
			},
			inheritedIndex = 7,
		},
	},
	[195] = 
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
									"ca350657-f317-777f-b858-236691700b8f",
									true,
								},
								
								{
									"b66ec498-4c15-8190-adfb-18b116ad2c9b",
									false,
								},
							},
							gVar = "ACR_RikuRDM3_Hotbar_Addle",
							uuid = "8e2ac998-993d-d6a7-be0d-ce9a0f9eef04",
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
							category = "Self",
							conditionType = 9,
							dequeueIfLuaFalse = true,
							name = "Self: Caster",
							partyTargetType = "Ranged Caster DPS",
							uuid = "ca350657-f317-777f-b858-236691700b8f",
							version = 3,
						},
						inheritedIndex = 1,
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return AnyoneCore.Settings.Reactions.dmu.primaryMitigation == true",
							name = "Primary Mitigation",
							uuid = "b66ec498-4c15-8190-adfb-18b116ad2c9b",
							version = 3,
						},
					},
				},
				mechanicTime = 1034.3163569005,
				name = "[Lj Mit] Addle - Secondary",
				timeRange = true,
				timelineIndex = 195,
				timerEndOffset = -1,
				timerStartOffset = -14.5,
				uuid = "e155a542-5c0d-1475-9dc8-c1f2695a8114",
				version = 2,
			},
		},
	},
	[207] = 
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
									"d03827ca-3f9f-5461-92f2-9b9b2dfbbde2",
									true,
								},
								
								{
									"5682de85-25a7-9458-ad2b-ca2fbd43370e",
									false,
								},
							},
							gVar = "ACR_TensorViper3_Hotbar_Feint",
							uuid = "ae1a8597-0aed-56a6-979d-b5088f6665a8",
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
							category = "Self",
							conditionType = 9,
							dequeueIfLuaFalse = true,
							name = "Self: Melee",
							partyTargetType = "Melee DPS",
							uuid = "d03827ca-3f9f-5461-92f2-9b9b2dfbbde2",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return AnyoneCore.Settings.Reactions.dmu.primaryMitigation == true",
							name = "Primary Mitigation",
							uuid = "5682de85-25a7-9458-ad2b-ca2fbd43370e",
							version = 3,
						},
					},
				},
				mechanicTime = 1057.7456791682,
				name = "[Lj Mit] Feint - Secondary",
				timeRange = true,
				timelineIndex = 207,
				timerEndOffset = -1,
				timerStartOffset = -14.5,
				uuid = "203f7a73-cc01-8cf9-bbfd-888e038fe0f0",
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
									"ca350657-f317-777f-b858-236691700b8f",
									true,
								},
								
								{
									"b66ec498-4c15-8190-adfb-18b116ad2c9b",
									true,
								},
							},
							gVar = "ACR_RikuRDM3_Hotbar_Addle",
							uuid = "8e2ac998-993d-d6a7-be0d-ce9a0f9eef04",
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
							category = "Self",
							conditionType = 9,
							dequeueIfLuaFalse = true,
							name = "Self: Caster",
							partyTargetType = "Ranged Caster DPS",
							uuid = "ca350657-f317-777f-b858-236691700b8f",
							version = 3,
						},
						inheritedIndex = 1,
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return AnyoneCore.Settings.Reactions.dmu.primaryMitigation == true",
							dequeueIfLuaFalse = true,
							name = "Primary Mitigation",
							uuid = "b66ec498-4c15-8190-adfb-18b116ad2c9b",
							version = 3,
						},
					},
				},
				mechanicTime = 1057.7456791682,
				name = "[Lj Mit] Addle - Primary",
				timeRange = true,
				timelineIndex = 207,
				timerEndOffset = -1,
				timerStartOffset = -14.5,
				uuid = "eb95e5c9-d884-ddca-b673-786b0b01ed9c",
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
									"7c259250-e60f-cf60-ac51-224d92e3db21",
									true,
								},
								
								{
									"d635aad7-4ec4-7ab5-81cc-3aca65d2336e",
									true,
								},
								
								{
									"c8990f81-73d9-bf7b-942e-ad6db29e6623",
									true,
								},
							},
							gVar = "ACR_TensorRequiem3_Hotbar_Troubadour",
							uuid = "fd2d982d-2e90-2b4e-865b-e4db2bfa6923",
							variableTogglesType = 2,
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
									"83d0ea0a-4934-2421-a692-59d0959b18f9",
									true,
								},
								
								{
									"d635aad7-4ec4-7ab5-81cc-3aca65d2336e",
									true,
								},
								
								{
									"c8990f81-73d9-bf7b-942e-ad6db29e6623",
									true,
								},
							},
							gVar = "ACR_RikuDNC3_Hotbar_ShieldSamba",
							uuid = "5409201a-e210-3d52-bd0a-5785a0062108",
							variableTogglesType = 2,
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
									"9b510f14-672a-9890-b474-d7ab095f17f6",
									true,
								},
								
								{
									"d635aad7-4ec4-7ab5-81cc-3aca65d2336e",
									true,
								},
								
								{
									"c8990f81-73d9-bf7b-942e-ad6db29e6623",
									true,
								},
							},
							gVar = "ACR_TensorMagnum3_Hotbar_Tactician",
							uuid = "55ef0f53-d927-aef8-8a4b-086a6f3246da",
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
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "BARD",
							name = "Self: BRD",
							uuid = "7c259250-e60f-cf60-ac51-224d92e3db21",
							version = 3,
						},
						inheritedIndex = 1,
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "DANCER",
							name = "Self: DNC",
							uuid = "83d0ea0a-4934-2421-a692-59d0959b18f9",
							version = 3,
						},
						inheritedIndex = 1,
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "MACHINIST",
							name = "Self: MCH",
							uuid = "9b510f14-672a-9890-b474-d7ab095f17f6",
							version = 3,
						},
						inheritedIndex = 3,
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return AnyoneCore.Settings.Reactions.dmu.primaryMitigation == true",
							dequeueIfLuaFalse = true,
							name = "Primary Mitigation",
							uuid = "d635aad7-4ec4-7ab5-81cc-3aca65d2336e",
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
							inRangeValue = 30,
							minTargetPercent = true,
							name = "Party Range: <= 30y",
							partyTargetNumber = 100,
							partyTargetSubType = "Number",
							uuid = "c8990f81-73d9-bf7b-942e-ad6db29e6623",
							version = 3,
						},
					},
				},
				mechanicTime = 1057.7456791682,
				name = "[Lj Mit] Phys Ranged - Primary",
				randomTimeout = 10,
				timeRange = true,
				timelineIndex = 207,
				timerEndOffset = -1,
				timerStartOffset = -14.5,
				uuid = "e1f0d224-9c82-2b72-bb82-a52e890d3b4f",
				version = 2,
			},
			inheritedIndex = 3,
		},
	},
	[219] = 
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
									"d03827ca-3f9f-5461-92f2-9b9b2dfbbde2",
									true,
								},
								
								{
									"5682de85-25a7-9458-ad2b-ca2fbd43370e",
									true,
								},
							},
							gVar = "ACR_TensorViper3_Hotbar_Feint",
							uuid = "ae1a8597-0aed-56a6-979d-b5088f6665a8",
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
							category = "Self",
							conditionType = 9,
							dequeueIfLuaFalse = true,
							name = "Self: Melee",
							partyTargetType = "Melee DPS",
							uuid = "d03827ca-3f9f-5461-92f2-9b9b2dfbbde2",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return AnyoneCore.Settings.Reactions.dmu.primaryMitigation == true",
							dequeueIfLuaFalse = true,
							name = "Primary Mitigation",
							uuid = "5682de85-25a7-9458-ad2b-ca2fbd43370e",
							version = 3,
						},
					},
				},
				mechanicTime = 1125.2071474604,
				name = "[Lj Mit] Feint - Primary",
				timeRange = true,
				timelineIndex = 219,
				timerEndOffset = -1,
				timerStartOffset = -14.5,
				uuid = "9bf3cb22-829d-ef78-8a32-c51b05f2d58b",
				version = 2,
			},
		},
	},
	[222] = 
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
									"ca350657-f317-777f-b858-236691700b8f",
									true,
								},
								
								{
									"b66ec498-4c15-8190-adfb-18b116ad2c9b",
									false,
								},
							},
							gVar = "ACR_RikuRDM3_Hotbar_Addle",
							uuid = "8e2ac998-993d-d6a7-be0d-ce9a0f9eef04",
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
							category = "Self",
							conditionType = 9,
							dequeueIfLuaFalse = true,
							name = "Self: Caster",
							partyTargetType = "Ranged Caster DPS",
							uuid = "ca350657-f317-777f-b858-236691700b8f",
							version = 3,
						},
						inheritedIndex = 1,
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return AnyoneCore.Settings.Reactions.dmu.primaryMitigation == true",
							name = "Primary Mitigation",
							uuid = "b66ec498-4c15-8190-adfb-18b116ad2c9b",
							version = 3,
						},
					},
				},
				mechanicTime = 1138.4497474604,
				name = "[Lj Mit] Addle - Secondary",
				timeRange = true,
				timelineIndex = 222,
				timerEndOffset = -1,
				timerStartOffset = -14.5,
				uuid = "5a525b94-30ed-2f62-8d6e-390bce0e0b16",
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
									"7c259250-e60f-cf60-ac51-224d92e3db21",
									true,
								},
								
								{
									"d635aad7-4ec4-7ab5-81cc-3aca65d2336e",
									false,
								},
								
								{
									"c8990f81-73d9-bf7b-942e-ad6db29e6623",
									true,
								},
							},
							gVar = "ACR_TensorRequiem3_Hotbar_Troubadour",
							uuid = "fd2d982d-2e90-2b4e-865b-e4db2bfa6923",
							variableTogglesType = 2,
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
									"83d0ea0a-4934-2421-a692-59d0959b18f9",
									true,
								},
								
								{
									"d635aad7-4ec4-7ab5-81cc-3aca65d2336e",
									false,
								},
								
								{
									"c8990f81-73d9-bf7b-942e-ad6db29e6623",
									true,
								},
							},
							gVar = "ACR_RikuDNC3_Hotbar_ShieldSamba",
							uuid = "5409201a-e210-3d52-bd0a-5785a0062108",
							variableTogglesType = 2,
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
									"9b510f14-672a-9890-b474-d7ab095f17f6",
									true,
								},
								
								{
									"d635aad7-4ec4-7ab5-81cc-3aca65d2336e",
									false,
								},
								
								{
									"c8990f81-73d9-bf7b-942e-ad6db29e6623",
									true,
								},
							},
							gVar = "ACR_TensorMagnum3_Hotbar_Tactician",
							uuid = "55ef0f53-d927-aef8-8a4b-086a6f3246da",
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
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "BARD",
							name = "Self: BRD",
							uuid = "7c259250-e60f-cf60-ac51-224d92e3db21",
							version = 3,
						},
						inheritedIndex = 1,
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "DANCER",
							name = "Self: DNC",
							uuid = "83d0ea0a-4934-2421-a692-59d0959b18f9",
							version = 3,
						},
						inheritedIndex = 1,
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "MACHINIST",
							name = "Self: MCH",
							uuid = "9b510f14-672a-9890-b474-d7ab095f17f6",
							version = 3,
						},
						inheritedIndex = 3,
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return AnyoneCore.Settings.Reactions.dmu.primaryMitigation == true",
							name = "Primary Mitigation",
							uuid = "d635aad7-4ec4-7ab5-81cc-3aca65d2336e",
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
							inRangeValue = 30,
							minTargetPercent = true,
							name = "Party Range: <= 30y",
							partyTargetNumber = 100,
							partyTargetSubType = "Number",
							uuid = "c8990f81-73d9-bf7b-942e-ad6db29e6623",
							version = 3,
						},
					},
				},
				mechanicTime = 1138.4497474604,
				name = "[Lj Mit] Phys Ranged - Secondary",
				randomTimeout = 10,
				timeRange = true,
				timelineIndex = 222,
				timerEndOffset = -1,
				timerStartOffset = -14.5,
				uuid = "39d69864-32a4-6238-ab43-9c74ed2465b8",
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
							aType = "ACR",
							conditions = 
							{
								
								{
									"c3fcfda9-bfd8-1d9b-b7b4-1154d8d77c9c",
									true,
								},
							},
							gVar = "ACR_TensorMagnum3_Hotbar_Dismantle",
							uuid = "ae6912a5-fb91-3542-8411-f786fa2a3106",
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
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "MACHINIST",
							name = "Self: MCH",
							uuid = "c3fcfda9-bfd8-1d9b-b7b4-1154d8d77c9c",
							version = 3,
						},
						inheritedIndex = 3,
					},
				},
				mechanicTime = 1138.4497474604,
				name = "[Lj Mit] Dismantle",
				timeRange = true,
				timelineIndex = 222,
				timerEndOffset = -1,
				timerStartOffset = -9.5,
				uuid = "d183ef9d-e70a-82b9-ada2-ab02aacdf43a",
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
									"83c6a17b-723e-3cbd-9155-9e9c69e2d26b",
									true,
								},
								
								{
									"da63e6cf-f2cc-e5fa-bcad-5cd7d5cc7662",
									true,
								},
							},
							gVar = "ACR_RikuRDM3_Hotbar_MagickBarrier",
							uuid = "b72c4571-63c3-36a1-acc2-b9e6d3e1960d",
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
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "REDMAGE",
							name = "Self: RDM",
							uuid = "83c6a17b-723e-3cbd-9155-9e9c69e2d26b",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Party",
							comparator = 2,
							conditionType = 4,
							inRangeValue = 30,
							minTargetPercent = true,
							name = "Party Range: <= 30y",
							partyTargetNumber = 100,
							partyTargetSubType = "Number",
							uuid = "da63e6cf-f2cc-e5fa-bcad-5cd7d5cc7662",
							version = 3,
						},
					},
				},
				mechanicTime = 1138.4497474604,
				name = "[Lj Mit] Magick Barrier",
				timeRange = true,
				timelineIndex = 222,
				timerEndOffset = -1,
				timerStartOffset = -9.5,
				uuid = "6b329e0c-af8e-6128-9b2f-3e999f0ddc00",
				version = 2,
			},
		},
	},
	[223] = 
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
									"d03827ca-3f9f-5461-92f2-9b9b2dfbbde2",
									true,
								},
								
								{
									"5682de85-25a7-9458-ad2b-ca2fbd43370e",
									false,
								},
							},
							gVar = "ACR_TensorViper3_Hotbar_Feint",
							uuid = "ae1a8597-0aed-56a6-979d-b5088f6665a8",
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
							category = "Self",
							conditionType = 9,
							dequeueIfLuaFalse = true,
							name = "Self: Melee",
							partyTargetType = "Melee DPS",
							uuid = "d03827ca-3f9f-5461-92f2-9b9b2dfbbde2",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return AnyoneCore.Settings.Reactions.dmu.primaryMitigation == true",
							name = "Primary Mitigation",
							uuid = "5682de85-25a7-9458-ad2b-ca2fbd43370e",
							version = 3,
						},
					},
				},
				mechanicTime = 1141.5122474604,
				name = "[Lj Mit] Feint - Secondary",
				timeRange = true,
				timelineIndex = 223,
				timerEndOffset = -1,
				timerStartOffset = -14.5,
				uuid = "80b2f434-a9d2-ddf1-a5cc-0c410fa84257",
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
									"ca350657-f317-777f-b858-236691700b8f",
									true,
								},
								
								{
									"b66ec498-4c15-8190-adfb-18b116ad2c9b",
									true,
								},
							},
							gVar = "ACR_RikuRDM3_Hotbar_Addle",
							uuid = "8e2ac998-993d-d6a7-be0d-ce9a0f9eef04",
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
							category = "Self",
							conditionType = 9,
							dequeueIfLuaFalse = true,
							name = "Self: Caster",
							partyTargetType = "Ranged Caster DPS",
							uuid = "ca350657-f317-777f-b858-236691700b8f",
							version = 3,
						},
						inheritedIndex = 1,
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return AnyoneCore.Settings.Reactions.dmu.primaryMitigation == true",
							dequeueIfLuaFalse = true,
							name = "Primary Mitigation",
							uuid = "b66ec498-4c15-8190-adfb-18b116ad2c9b",
							version = 3,
						},
					},
				},
				mechanicTime = 1141.5122474604,
				name = "[Lj Mit] Addle - Primary",
				timeRange = true,
				timelineIndex = 223,
				timerEndOffset = -1,
				timerStartOffset = -14.5,
				uuid = "39128a74-71fb-d542-b4bc-6f445f6e4b9f",
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
									"7c259250-e60f-cf60-ac51-224d92e3db21",
									true,
								},
								
								{
									"d635aad7-4ec4-7ab5-81cc-3aca65d2336e",
									true,
								},
								
								{
									"c8990f81-73d9-bf7b-942e-ad6db29e6623",
									true,
								},
							},
							gVar = "ACR_TensorRequiem3_Hotbar_Troubadour",
							uuid = "fd2d982d-2e90-2b4e-865b-e4db2bfa6923",
							variableTogglesType = 2,
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
									"83d0ea0a-4934-2421-a692-59d0959b18f9",
									true,
								},
								
								{
									"d635aad7-4ec4-7ab5-81cc-3aca65d2336e",
									true,
								},
								
								{
									"c8990f81-73d9-bf7b-942e-ad6db29e6623",
									true,
								},
							},
							gVar = "ACR_RikuDNC3_Hotbar_ShieldSamba",
							uuid = "5409201a-e210-3d52-bd0a-5785a0062108",
							variableTogglesType = 2,
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
									"9b510f14-672a-9890-b474-d7ab095f17f6",
									true,
								},
								
								{
									"d635aad7-4ec4-7ab5-81cc-3aca65d2336e",
									true,
								},
								
								{
									"c8990f81-73d9-bf7b-942e-ad6db29e6623",
									true,
								},
							},
							gVar = "ACR_TensorMagnum3_Hotbar_Tactician",
							uuid = "55ef0f53-d927-aef8-8a4b-086a6f3246da",
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
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "BARD",
							name = "Self: BRD",
							uuid = "7c259250-e60f-cf60-ac51-224d92e3db21",
							version = 3,
						},
						inheritedIndex = 1,
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "DANCER",
							name = "Self: DNC",
							uuid = "83d0ea0a-4934-2421-a692-59d0959b18f9",
							version = 3,
						},
						inheritedIndex = 1,
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "MACHINIST",
							name = "Self: MCH",
							uuid = "9b510f14-672a-9890-b474-d7ab095f17f6",
							version = 3,
						},
						inheritedIndex = 3,
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return AnyoneCore.Settings.Reactions.dmu.primaryMitigation == true",
							dequeueIfLuaFalse = true,
							name = "Primary Mitigation",
							uuid = "d635aad7-4ec4-7ab5-81cc-3aca65d2336e",
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
							inRangeValue = 30,
							minTargetPercent = true,
							name = "Party Range: <= 30y",
							partyTargetNumber = 100,
							partyTargetSubType = "Number",
							uuid = "c8990f81-73d9-bf7b-942e-ad6db29e6623",
							version = 3,
						},
					},
				},
				mechanicTime = 1141.5122474604,
				name = "[Lj Mit] Phys Ranged - Primary",
				randomTimeout = 10,
				timeRange = true,
				timelineIndex = 223,
				timerEndOffset = -1,
				timerStartOffset = -14.5,
				uuid = "62ac84c5-085b-3ca7-8f11-fd5e29db0c55",
				version = 2,
			},
			inheritedIndex = 3,
		},
	},
	inheritedProfiles = 
	{
	},
	timelineName = "dmu",
	version = "1.5.5",
}



return tbl