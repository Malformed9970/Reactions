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
							actionLua = "gStartCombat = false\ndata.ljTimelineOpener = true\nself.used = true",
							gVar = "ACR_RikuMNK3_CD",
							name = "Start Combat",
							uuid = "2964ffe6-bc9b-60ec-801f-7ac41f171b54",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "ACR",
							actionLua = "gStartCombat = false\nself.used = true",
							conditions = 
							{
								
								{
									"4a7db5d9-954b-bac7-9064-bbd7166b5052",
									true,
								},
								
								{
									"e8de0f77-e6e5-93fb-9d52-61c81a36ac84",
									true,
								},
								
								{
									"ba1d03dc-ad3c-7c87-a19b-17f015014c33",
									true,
								},
								
								{
									"dba4af31-be33-516a-9099-e406053bc05f",
									true,
								},
								
								{
									"de7d078f-d3ad-7b91-8f56-2780e2a467b7",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_Healbar_Kardia",
							targetSubType = "Topmost Partylist",
							targetType = "Detection Target",
							uuid = "4dba2fb4-08c6-1615-9b55-7e0006374a0c",
							variableIsHover = true,
							variableTogglesType = 3,
							version = 2.1,
						},
						inheritedIndex = 3,
					},
					
					{
						data = 
						{
							actionID = 24290,
							conditions = 
							{
								
								{
									"4a7db5d9-954b-bac7-9064-bbd7166b5052",
									true,
								},
								
								{
									"e8de0f77-e6e5-93fb-9d52-61c81a36ac84",
									true,
								},
								
								{
									"de7d078f-d3ad-7b91-8f56-2780e2a467b7",
									true,
								},
								
								{
									"ed0ad1b9-b308-f320-bea8-cae427644ba0",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_CD",
							uuid = "0953ef99-4d8a-a014-aa6a-4d5a5daece19",
							version = 2.1,
						},
						inheritedIndex = 3,
					},
					
					{
						data = 
						{
							aType = "Misc",
							conditions = 
							{
								
								{
									"4a7db5d9-954b-bac7-9064-bbd7166b5052",
									true,
								},
								
								{
									"e8de0f77-e6e5-93fb-9d52-61c81a36ac84",
									true,
								},
								
								{
									"de7d078f-d3ad-7b91-8f56-2780e2a467b7",
									true,
								},
								
								{
									"96453faa-8a47-3d88-b953-094c87acbe27",
									true,
								},
							},
							gVar = "ACR_RikuWHM3_CD",
							name = "Target Nearest",
							setTarget = true,
							targetType = "Enemy",
							uuid = "ad3c6f9c-68b3-dd49-844f-28b4f9aca282",
							version = 2.1,
						},
						inheritedIndex = 7,
					},
					
					{
						data = 
						{
							actionID = 24316,
							conditions = 
							{
								
								{
									"4a7db5d9-954b-bac7-9064-bbd7166b5052",
									true,
								},
								
								{
									"e8de0f77-e6e5-93fb-9d52-61c81a36ac84",
									true,
								},
								
								{
									"de7d078f-d3ad-7b91-8f56-2780e2a467b7",
									true,
								},
								
								{
									"39155299-8053-3800-bd92-35be5b6856b8",
									false,
								},
								
								{
									"4d99bb4c-c4e3-ffa8-8ef9-3986149fe367",
									true,
								},
							},
							gVar = "ACR_RikuWHM3_CD",
							targetType = "Enemy",
							uuid = "c57036ed-3b36-a78b-898e-32119d4b1446",
							version = 2.1,
						},
						inheritedIndex = 6,
					},
					
					{
						data = 
						{
							actionID = 24318,
							conditions = 
							{
								
								{
									"4a7db5d9-954b-bac7-9064-bbd7166b5052",
									true,
								},
								
								{
									"e8de0f77-e6e5-93fb-9d52-61c81a36ac84",
									true,
								},
								
								{
									"de7d078f-d3ad-7b91-8f56-2780e2a467b7",
									true,
								},
								
								{
									"39155299-8053-3800-bd92-35be5b6856b8",
									true,
								},
								
								{
									"4d99bb4c-c4e3-ffa8-8ef9-3986149fe367",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_Healbar_Pneuma",
							targetType = "Enemy",
							uuid = "26566f0a-9e68-73e0-bf03-2b41ef0ab79b",
							variableTogglesType = 3,
							version = 2.1,
						},
						inheritedIndex = 7,
					},
					
					{
						data = 
						{
							actionID = 37033,
							conditions = 
							{
								
								{
									"4a7db5d9-954b-bac7-9064-bbd7166b5052",
									true,
								},
								
								{
									"e8de0f77-e6e5-93fb-9d52-61c81a36ac84",
									true,
								},
								
								{
									"2f437ac7-311d-435a-b532-904df1742af8",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_CD",
							targetType = "Enemy",
							uuid = "91ec36d7-8313-4ca7-992b-d9696dfdbb48",
							version = 2.1,
						},
						inheritedIndex = 9,
					},
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "self.used = true",
							conditions = 
							{
								
								{
									"e8de0f77-e6e5-93fb-9d52-61c81a36ac84",
									true,
								},
								
								{
									"5baaedca-0f6e-4f72-9800-ecabaed4da14",
									true,
								},
								
								{
									"0f89b93d-336a-5ea3-9642-4fc9eed99079",
									true,
								},
							},
							endIfUsed = true,
							gVar = "ACR_RikuWHM3_CD",
							name = "Didn't Pull",
							uuid = "fbe94e52-94ad-9493-99b7-c86c9df0b3c0",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"4a7db5d9-954b-bac7-9064-bbd7166b5052",
									true,
								},
								
								{
									"e8de0f77-e6e5-93fb-9d52-61c81a36ac84",
									true,
								},
								
								{
									"2f437ac7-311d-435a-b532-904df1742af8",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_Burn",
							name = "Toggle Burn On",
							uuid = "2204849a-a263-3a18-b203-8054cb841596",
							version = 2.1,
						},
						inheritedIndex = 9,
					},
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"4a7db5d9-954b-bac7-9064-bbd7166b5052",
									true,
								},
								
								{
									"e8de0f77-e6e5-93fb-9d52-61c81a36ac84",
									true,
								},
								
								{
									"54b22683-11b9-04ba-8d2e-ef181342d066",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_Burn",
							gVarValue = 2,
							name = "Toggle Burn Off",
							uuid = "d11c2c34-feb2-3dc1-9704-ba679641e440",
							version = 2.1,
						},
						inheritedIndex = 10,
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return FFXIV_Common_BotRunning and AnyoneCore.Settings.PrepullHelper.enabled",
							name = "Assist Enabled",
							uuid = "4a7db5d9-954b-bac7-9064-bbd7166b5052",
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
							jobValue = "SAGE",
							name = "SGE",
							uuid = "e8de0f77-e6e5-93fb-9d52-61c81a36ac84",
							version = 3,
						},
						inheritedIndex = 1,
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local t1 = AnyoneCore.Roster and AnyoneCore.Roster.entOf(\"T1\")\n\nif not t1 then\n    return false\nend\n\neventArgs.detectionTargetID = t1.id\nreturn true",
							dequeueIfLuaFalse = true,
							name = "AnyoneCore Roster: T1",
							uuid = "ba1d03dc-ad3c-7c87-a19b-17f015014c33",
							version = 3,
						},
						inheritedIndex = 4,
					},
					
					{
						data = 
						{
							buffCheckType = 2,
							buffID = 2605,
							category = "Party",
							dequeueIfLuaFalse = true,
							name = "DT: Kardion Missing",
							partyTargetSubType = "Topmost Partylist",
							partyTargetType = "Detection Target",
							uuid = "dba4af31-be33-516a-9099-e406053bc05f",
							version = 3,
						},
						inheritedIndex = 4,
					},
					
					{
						data = 
						{
							category = "Lua",
							comparator = 2,
							conditionLua = "return TimeSince(eventArgs.timeQueued) >= 2000",
							eventCountdownTime = 1.5,
							name = "TimeSince >= 2s",
							uuid = "de7d078f-d3ad-7b91-8f56-2780e2a467b7",
							version = 3,
						},
						inheritedIndex = 5,
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return true",
							name = "Pneuma Opener",
							uuid = "39155299-8053-3800-bd92-35be5b6856b8",
							version = 3,
						},
						inheritedIndex = 6,
					},
					
					{
						data = 
						{
							category = "Event",
							comparator = 2,
							eventCountdownTime = 5,
							name = "<= 5s",
							uuid = "56fa481a-db50-06c2-97ab-900b02425889",
							version = 3,
						},
						inheritedIndex = 7,
					},
					
					{
						data = 
						{
							category = "Event",
							comparator = 2,
							eventArgType = 3,
							eventCountdownRangeEnd = 2.5,
							eventCountdownRangeStart = 5,
							eventCountdownTime = 5,
							name = "Eukrasia Timer",
							uuid = "ed0ad1b9-b308-f320-bea8-cae427644ba0",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Event",
							comparator = 2,
							eventCountdownTime = 2,
							name = "Target Timer",
							uuid = "96453faa-8a47-3d88-b953-094c87acbe27",
							version = 3,
						},
						inheritedIndex = 14,
					},
					
					{
						data = 
						{
							category = "Event",
							comparator = 2,
							eventCountdownTime = 1.75,
							name = "Toxicon/Pneuma Timer",
							uuid = "4d99bb4c-c4e3-ffa8-8ef9-3986149fe367",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Event",
							comparator = 2,
							eventCountdownTime = 1.25,
							name = "<= -1.25s",
							uuid = "2f437ac7-311d-435a-b532-904df1742af8",
							version = 3,
						},
						inheritedIndex = 16,
					},
					
					{
						data = 
						{
							category = "Event",
							comparator = 2,
							eventCountdownTime = -5,
							name = "<= -5s",
							uuid = "0f89b93d-336a-5ea3-9642-4fc9eed99079",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Event",
							comparator = 2,
							eventCountdownTime = -10,
							name = "<= -10s",
							uuid = "54b22683-11b9-04ba-8d2e-ef181342d066",
							version = 3,
						},
						inheritedIndex = 12,
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 7,
							dequeueIfLuaFalse = true,
							inCombatType = 2,
							name = "Not in Combat",
							uuid = "5baaedca-0f6e-4f72-9800-ecabaed4da14",
							version = 3,
						},
					},
				},
				eventType = 16,
				mechanicTime = 15.261765625,
				name = "[SGE] Opener",
				timeRange = true,
				timelineIndex = 1,
				timeout = 30,
				timerStartOffset = -15.300000190735,
				uuid = "e4dfd30f-34bd-c288-8b39-14d3318b0983",
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
							aType = "ACR",
							conditions = 
							{
								
								{
									"a7ff75cf-1c65-b308-9b67-891e93f1c4f5",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_CD",
							uuid = "6398a557-95ba-8807-9883-92b9f5e68fdd",
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
									"a7ff75cf-1c65-b308-9b67-891e93f1c4f5",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_AOE",
							uuid = "a7f52f81-c123-9dfb-824d-fe64e4b92048",
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
									"a7ff75cf-1c65-b308-9b67-891e93f1c4f5",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_SmartAOE",
							uuid = "d76e033d-14a9-e16a-9174-b6204f2eb193",
							version = 2.1,
						},
						inheritedIndex = 3,
					},
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"a7ff75cf-1c65-b308-9b67-891e93f1c4f5",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_DoT",
							uuid = "c2970b67-cbcb-423e-950c-aa91d99e88dc",
							version = 2.1,
						},
						inheritedIndex = 4,
					},
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"a7ff75cf-1c65-b308-9b67-891e93f1c4f5",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_SmartDoT",
							uuid = "42f031cd-e4e5-248a-abba-47e5ac7276c8",
							version = 2.1,
						},
						inheritedIndex = 5,
					},
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"a7ff75cf-1c65-b308-9b67-891e93f1c4f5",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_Potion",
							gVarValue = 2,
							uuid = "26a7018e-18ba-e941-abc8-ca3179c95ed3",
							version = 2.1,
						},
						inheritedIndex = 6,
					},
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"a7ff75cf-1c65-b308-9b67-891e93f1c4f5",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_Lucid",
							uuid = "ce798ff5-de6b-669d-8158-d7cf784467cf",
							version = 2.1,
						},
						inheritedIndex = 7,
					},
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"a7ff75cf-1c65-b308-9b67-891e93f1c4f5",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_KardiaMT",
							gVarValue = 2,
							uuid = "3fe756f8-6f2b-240c-908d-4d6546a4e78d",
							version = 2.1,
						},
						inheritedIndex = 8,
					},
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"a7ff75cf-1c65-b308-9b67-891e93f1c4f5",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_Rhizomata",
							uuid = "bc0127b1-71bb-7334-ab29-0e52743e3c4c",
							version = 2.1,
						},
						inheritedIndex = 9,
					},
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"a7ff75cf-1c65-b308-9b67-891e93f1c4f5",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_Phlegma",
							uuid = "e5733fec-9079-ab57-baf3-6c82ef79bdbc",
							version = 2.1,
						},
						inheritedIndex = 10,
					},
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"a7ff75cf-1c65-b308-9b67-891e93f1c4f5",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_Burn",
							gVarValue = 2,
							uuid = "2ba17041-d5e6-d98d-be34-29683f75ffaa",
							version = 2.1,
						},
						inheritedIndex = 11,
					},
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"a7ff75cf-1c65-b308-9b67-891e93f1c4f5",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_Attacks",
							uuid = "34056070-e4b1-7432-9c32-4e594eb7068e",
							version = 2.1,
						},
						inheritedIndex = 12,
					},
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"a7ff75cf-1c65-b308-9b67-891e93f1c4f5",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_Psyche",
							uuid = "8cfce92d-63e9-0df4-b728-73b3f6bb5f4e",
							version = 2.1,
						},
						inheritedIndex = 13,
					},
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"a7ff75cf-1c65-b308-9b67-891e93f1c4f5",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_MovementSwiftcast",
							gVarValue = 2,
							uuid = "3cff111f-56ee-e7d1-85e2-f6eecba10921",
							version = 2.1,
						},
						inheritedIndex = 14,
					},
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"a7ff75cf-1c65-b308-9b67-891e93f1c4f5",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_ToxikonWeave",
							gVarValue = 2,
							uuid = "9f150df4-47fb-823d-a797-346087437cd2",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"a7ff75cf-1c65-b308-9b67-891e93f1c4f5",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_DyskrasiaWeave",
							gVarValue = 2,
							uuid = "c67dd5d1-86b5-6087-8395-29dc3a19627f",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"a7ff75cf-1c65-b308-9b67-891e93f1c4f5",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_KBCancel",
							gVarValue = 2,
							uuid = "1c56faa5-be4e-fe13-8370-3866eafde2a8",
							version = 2.1,
						},
						inheritedIndex = 17,
					},
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"a7ff75cf-1c65-b308-9b67-891e93f1c4f5",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_2Toxikon",
							gVarValue = 2,
							uuid = "89a2a281-ece0-b47d-ae01-2141d1630972",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "gStartCombat = false\nTensorDrift_SlidecastForceHold = false\nTensorCore.API.TensorACR.setHardLockFace(false)\nTensorCore.API.TensorACR.toggleLockFace(false)\nTensorCore.mGetPlayer():ClearTarget()\nACR_TensorACR_HotbarCancel = true\n\nself.used = true",
							conditions = 
							{
								
								{
									"a7ff75cf-1c65-b308-9b67-891e93f1c4f5",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_CD",
							uuid = "ddc4f041-3ee7-db4d-a02e-a182845de277",
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
							jobValue = "SAGE",
							name = "Self: SGE",
							uuid = "a7ff75cf-1c65-b308-9b67-891e93f1c4f5",
							version = 3,
						},
						inheritedIndex = 1,
					},
				},
				eventType = 9,
				mechanicTime = 15.261765625,
				name = "[SGE] Wipe",
				timeRange = true,
				timelineIndex = 1,
				timerEndOffset = 1170,
				timerOffset = -12.299999237061,
				timerStartOffset = -15.300000190735,
				uuid = "aec72e14-2095-a98c-a572-05e0f7a9bf54",
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
							aType = "Lua",
							actionLua = "Leta.settings.Toggles[\"Heal\"].bool = false\nself.used = true",
							conditions = 
							{
								
								{
									"b2f3afa8-1e0b-5809-9cc2-c0f3ca172ab8",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_CD",
							uuid = "3892fc66-70de-7b0e-af2b-4d4ab5e796da",
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
							conditionLua = "return Leta ~= nil",
							dequeueIfLuaFalse = true,
							name = "Leta Senpai",
							uuid = "b2f3afa8-1e0b-5809-9cc2-c0f3ca172ab8",
							version = 3,
						},
					},
				},
				mechanicTime = 15.261765625,
				name = "Disable Leta",
				timelineIndex = 1,
				timerOffset = -15.300000190735,
				uuid = "a467b997-33b3-ec34-9752-ce508186e22b",
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
							aType = "Misc",
							conditions = 
							{
								
								{
									"32419d45-9eca-26fc-8371-75b0e0fad1b9",
									true,
								},
								
								{
									"6354d8b6-092c-0b2a-b5d1-d873daf5031d",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_CD",
							setTarget = true,
							targetType = "Enemy",
							uuid = "12d5a81b-03af-8c5c-b190-a1647532b4aa",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							conditionType = 2,
							contentid = 0,
							uuid = "32419d45-9eca-26fc-8371-75b0e0fad1b9",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return FFXIV_Common_BotRunning",
							name = "Assist Enabled",
							uuid = "6354d8b6-092c-0b2a-b5d1-d873daf5031d",
							version = 3,
						},
					},
				},
				loop = true,
				mechanicTime = 15.261765625,
				name = "Target Enemy",
				timeRange = true,
				timelineIndex = 1,
				timerEndOffset = 1170,
				timerStartOffset = -15.300000190735,
				uuid = "af37f79a-ea4a-ee84-8934-3ea9c32cf424",
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
							aType = "ACR",
							conditions = 
							{
								
								{
									"a7ff75cf-1c65-b308-9b67-891e93f1c4f5",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_CD",
							uuid = "6398a557-95ba-8807-9883-92b9f5e68fdd",
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
									"a7ff75cf-1c65-b308-9b67-891e93f1c4f5",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_AOE",
							uuid = "a7f52f81-c123-9dfb-824d-fe64e4b92048",
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
									"a7ff75cf-1c65-b308-9b67-891e93f1c4f5",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_SmartAOE",
							uuid = "d76e033d-14a9-e16a-9174-b6204f2eb193",
							version = 2.1,
						},
						inheritedIndex = 3,
					},
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"a7ff75cf-1c65-b308-9b67-891e93f1c4f5",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_DoT",
							uuid = "c2970b67-cbcb-423e-950c-aa91d99e88dc",
							version = 2.1,
						},
						inheritedIndex = 4,
					},
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"a7ff75cf-1c65-b308-9b67-891e93f1c4f5",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_SmartDoT",
							uuid = "42f031cd-e4e5-248a-abba-47e5ac7276c8",
							version = 2.1,
						},
						inheritedIndex = 5,
					},
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"a7ff75cf-1c65-b308-9b67-891e93f1c4f5",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_Potion",
							gVarValue = 2,
							uuid = "26a7018e-18ba-e941-abc8-ca3179c95ed3",
							version = 2.1,
						},
						inheritedIndex = 6,
					},
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"a7ff75cf-1c65-b308-9b67-891e93f1c4f5",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_Lucid",
							uuid = "ce798ff5-de6b-669d-8158-d7cf784467cf",
							version = 2.1,
						},
						inheritedIndex = 7,
					},
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"a7ff75cf-1c65-b308-9b67-891e93f1c4f5",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_KardiaMT",
							gVarValue = 2,
							uuid = "3fe756f8-6f2b-240c-908d-4d6546a4e78d",
							version = 2.1,
						},
						inheritedIndex = 8,
					},
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"a7ff75cf-1c65-b308-9b67-891e93f1c4f5",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_Rhizomata",
							uuid = "bc0127b1-71bb-7334-ab29-0e52743e3c4c",
							version = 2.1,
						},
						inheritedIndex = 9,
					},
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"a7ff75cf-1c65-b308-9b67-891e93f1c4f5",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_Phlegma",
							uuid = "e5733fec-9079-ab57-baf3-6c82ef79bdbc",
							version = 2.1,
						},
						inheritedIndex = 10,
					},
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"a7ff75cf-1c65-b308-9b67-891e93f1c4f5",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_Attacks",
							uuid = "34056070-e4b1-7432-9c32-4e594eb7068e",
							version = 2.1,
						},
						inheritedIndex = 12,
					},
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"a7ff75cf-1c65-b308-9b67-891e93f1c4f5",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_Psyche",
							uuid = "8cfce92d-63e9-0df4-b728-73b3f6bb5f4e",
							version = 2.1,
						},
						inheritedIndex = 13,
					},
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"a7ff75cf-1c65-b308-9b67-891e93f1c4f5",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_MovementSwiftcast",
							gVarValue = 2,
							uuid = "3cff111f-56ee-e7d1-85e2-f6eecba10921",
							version = 2.1,
						},
						inheritedIndex = 14,
					},
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"a7ff75cf-1c65-b308-9b67-891e93f1c4f5",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_ToxikonWeave",
							gVarValue = 2,
							uuid = "9f150df4-47fb-823d-a797-346087437cd2",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"a7ff75cf-1c65-b308-9b67-891e93f1c4f5",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_DyskrasiaWeave",
							gVarValue = 2,
							uuid = "c67dd5d1-86b5-6087-8395-29dc3a19627f",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"a7ff75cf-1c65-b308-9b67-891e93f1c4f5",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_KBCancel",
							gVarValue = 2,
							uuid = "1c56faa5-be4e-fe13-8370-3866eafde2a8",
							version = 2.1,
						},
						inheritedIndex = 17,
					},
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"a7ff75cf-1c65-b308-9b67-891e93f1c4f5",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_2Toxikon",
							gVarValue = 2,
							uuid = "89a2a281-ece0-b47d-ae01-2141d1630972",
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
							jobValue = "SAGE",
							name = "Self: SGE",
							uuid = "a7ff75cf-1c65-b308-9b67-891e93f1c4f5",
							version = 3,
						},
						inheritedIndex = 1,
					},
				},
				mechanicTime = 15.261765625,
				name = "[SGE] Toggles",
				timelineIndex = 1,
				timerEndOffset = 5,
				timerOffset = -12.299999237061,
				timerStartOffset = -5,
				uuid = "f9d04d43-ef85-2171-b3ba-67572612ca73",
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
							aType = "ACR",
							conditions = 
							{
								
								{
									"53d292a9-114e-4b73-ade9-8a05229e04b5",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_Healbar_Krasis",
							targetType = "Main Tank",
							uuid = "9f150df4-47fb-823d-a797-346087437cd2",
							variableIsHover = true,
							variableTogglesType = 3,
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
							jobValue = "SAGE",
							name = "Self: SGE",
							uuid = "53d292a9-114e-4b73-ade9-8a05229e04b5",
							version = 3,
						},
						inheritedIndex = 1,
					},
				},
				mechanicTime = 15.261765625,
				name = "[SGE] Krasis",
				timelineIndex = 1,
				timerEndOffset = 5,
				timerOffset = -5,
				timerStartOffset = -5,
				uuid = "cedcb153-1675-ea3b-b331-9d519402b84a",
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
							aType = "ACR",
							conditions = 
							{
								
								{
									"26fe8bf0-8e58-6157-9b67-e8a64a6b191a",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_Healbar_Haima",
							targetType = "Main Tank",
							uuid = "9f150df4-47fb-823d-a797-346087437cd2",
							variableIsHover = true,
							variableTogglesType = 3,
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
							jobValue = "SAGE",
							name = "Self: SGE",
							uuid = "26fe8bf0-8e58-6157-9b67-e8a64a6b191a",
							version = 3,
						},
						inheritedIndex = 1,
					},
				},
				mechanicTime = 15.261765625,
				name = "[SGE] Haima",
				timelineIndex = 1,
				timerEndOffset = 5,
				timerOffset = -3,
				timerStartOffset = -5,
				uuid = "b25567f0-8dbf-10ba-bce9-1b755e51d9c4",
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
							aType = "ACR",
							conditions = 
							{
								
								{
									"738f5cf2-ec60-616d-9a2c-f2dbd06647e8",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_Healbar_Kardia",
							targetType = "Main Tank",
							uuid = "c0a9c51e-79a0-c1be-b647-992fb1fced0e",
							variableIsHover = true,
							variableTogglesType = 3,
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							buffCheckType = 2,
							buffID = 2605,
							category = "Party",
							name = "MT Buff: Kardion Missing",
							partyTargetType = "Main Tank",
							uuid = "738f5cf2-ec60-616d-9a2c-f2dbd06647e8",
							version = 3,
						},
					},
				},
				mechanicTime = 15.261765625,
				name = "[SGE] Kardia MT",
				timelineIndex = 1,
				timerOffset = -1,
				uuid = "febf9fac-75a7-ab1f-8ca5-db6b496ca613",
				version = 2,
			},
			inheritedIndex = 23,
		},
		
		{
			data = 
			{
				actions = 
				{
				},
				conditions = 
				{
				},
				enabled = false,
				mechanicTime = 15.261765625,
				name = "======TEMPLATES======",
				timelineIndex = 1,
				uuid = "0e44798a-cf0d-5da5-98dc-c9638fc3aa0c",
				version = 2,
			},
			inheritedIndex = 24,
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
									"6eed371c-276e-0dc6-bfef-64a1ef96e29f",
									true,
								},
								
								{
									"6e5cce1c-e91c-060c-b26b-d9c804cb7b6e",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_Healbar_Kerachole",
							uuid = "1f6dfa69-9fa5-6422-bae0-e4c484120183",
							variableTogglesType = 3,
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
							jobValue = "SAGE",
							name = "Self: SGE",
							uuid = "6eed371c-276e-0dc6-bfef-64a1ef96e29f",
							version = 3,
						},
						inheritedIndex = 1,
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
							uuid = "6e5cce1c-e91c-060c-b26b-d9c804cb7b6e",
							version = 3,
						},
					},
				},
				enabled = false,
				mechanicTime = 15.261765625,
				name = "[SGE] Kerachole",
				timeRange = true,
				timelineIndex = 1,
				timerEndOffset = -1,
				timerStartOffset = -14.5,
				uuid = "d157bf51-1947-4b85-a282-b387445aeaba",
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
							aType = "ACR",
							conditions = 
							{
								
								{
									"26fe8bf0-8e58-6157-9b67-e8a64a6b191a",
									true,
								},
								
								{
									"0796f2c7-5782-7e71-8675-e259a5fdcac0",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_Healbar_Ixochole",
							uuid = "9f150df4-47fb-823d-a797-346087437cd2",
							variableTogglesType = 3,
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
							jobValue = "SAGE",
							name = "Self: SGE",
							uuid = "26fe8bf0-8e58-6157-9b67-e8a64a6b191a",
							version = 3,
						},
						inheritedIndex = 1,
					},
					
					{
						data = 
						{
							category = "Party",
							comparator = 2,
							conditionType = 4,
							inRangeValue = 20,
							minTargetPercent = true,
							name = "Party Range: <= 20y",
							partyTargetNumber = 100,
							partyTargetSubType = "Number",
							uuid = "0796f2c7-5782-7e71-8675-e259a5fdcac0",
							version = 3,
						},
					},
				},
				enabled = false,
				mechanicTime = 15.261765625,
				name = "[SGE] Ixochole",
				timeRange = true,
				timelineIndex = 1,
				timerEndOffset = 5,
				timerStartOffset = -5,
				uuid = "9eb6b0f6-bbcb-96be-89c5-62faee039dd9",
				version = 2,
			},
			inheritedIndex = 26,
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
									"2aede583-6334-5e6e-8897-d0185d2e479e",
									true,
								},
								
								{
									"2655f02b-090f-3366-8e9d-81bd1daab933",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_Healbar_Holos",
							uuid = "a63d60d1-0099-4678-9951-0dde4026e2a7",
							variableTogglesType = 3,
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
							jobValue = "SAGE",
							name = "Self: SGE",
							uuid = "2aede583-6334-5e6e-8897-d0185d2e479e",
							version = 3,
						},
						inheritedIndex = 1,
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
							uuid = "2655f02b-090f-3366-8e9d-81bd1daab933",
							version = 3,
						},
					},
				},
				enabled = false,
				mechanicTime = 15.261765625,
				name = "[SGE] Holos",
				timeRange = true,
				timelineIndex = 1,
				timerEndOffset = -1,
				timerStartOffset = -19.5,
				uuid = "0c66b7f8-9c53-609d-a647-4239ca592181",
				version = 2,
			},
			inheritedIndex = 27,
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
									"81ae31c5-9e92-6a56-ba07-ff21087cac48",
									true,
								},
								
								{
									"800486cc-705c-5caf-8fba-1dd95613f62d",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_Healbar_Panhaima",
							uuid = "3513de14-07f8-c935-80cb-36aa906944eb",
							variableTogglesType = 3,
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
							jobValue = "SAGE",
							name = "Self: SGE",
							uuid = "81ae31c5-9e92-6a56-ba07-ff21087cac48",
							version = 3,
						},
						inheritedIndex = 1,
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
							uuid = "800486cc-705c-5caf-8fba-1dd95613f62d",
							version = 3,
						},
					},
				},
				enabled = false,
				mechanicTime = 15.261765625,
				name = "[SGE] Panhaima",
				timeRange = true,
				timelineIndex = 1,
				timerEndOffset = -1,
				timerStartOffset = -19.5,
				uuid = "3685d17b-db88-0b0c-86d9-afc217c20573",
				version = 2,
			},
			inheritedIndex = 28,
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
									"42ace145-2b74-484f-8bf2-cebf11dccf7a",
									true,
								},
								
								{
									"6dc6db9a-b186-7ff6-a6b3-f82998575c8f",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_Healbar_Philosophia",
							uuid = "7af0e0f9-9796-f4ac-9c26-f2fb54bb3a0f",
							variableTogglesType = 3,
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
							jobValue = "SAGE",
							name = "Self: SGE",
							uuid = "6dc6db9a-b186-7ff6-a6b3-f82998575c8f",
							version = 3,
						},
						inheritedIndex = 1,
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
							uuid = "42ace145-2b74-484f-8bf2-cebf11dccf7a",
							version = 3,
						},
					},
				},
				enabled = false,
				mechanicTime = 15.261765625,
				name = "[SGE] Philosophia",
				timeRange = true,
				timelineIndex = 1,
				timerEndOffset = -1,
				timerStartOffset = -19.5,
				uuid = "bd32b382-6df9-26eb-91c3-729d5b0a9f90",
				version = 2,
			},
			inheritedIndex = 29,
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
									"ace000e6-5541-6a8d-b064-b432e620d43a",
									true,
								},
							},
							fallthrough = true,
							gVar = "ACR_RikuSGE3_Healbar_Zoe",
							uuid = "68f07163-b007-4f65-a949-55d21423260e",
							variableTogglesType = 3,
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
									"ace000e6-5541-6a8d-b064-b432e620d43a",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_Healbar_Pneuma",
							uuid = "9f150df4-47fb-823d-a797-346087437cd2",
							variableTogglesType = 3,
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
							jobValue = "SAGE",
							name = "Self: SGE",
							uuid = "ace000e6-5541-6a8d-b064-b432e620d43a",
							version = 3,
						},
						inheritedIndex = 1,
					},
				},
				enabled = false,
				mechanicTime = 15.261765625,
				name = "[SGE] Zoe Pneuma",
				timeRange = true,
				timelineIndex = 1,
				timerEndOffset = 5,
				timerStartOffset = -5,
				uuid = "04e89e4a-9787-f27d-aec7-e28fb9385f5b",
				version = 2,
			},
			inheritedIndex = 30,
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
									"26fe8bf0-8e58-6157-9b67-e8a64a6b191a",
									true,
								},
								
								{
									"0796f2c7-5782-7e71-8675-e259a5fdcac0",
									true,
								},
								
								{
									"303cfea5-c9de-3c82-8055-df4b83304e43",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_Healbar_EukrasianPrognosis",
							uuid = "9f150df4-47fb-823d-a797-346087437cd2",
							variableTogglesType = 3,
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
							jobValue = "SAGE",
							name = "Self: SGE",
							uuid = "26fe8bf0-8e58-6157-9b67-e8a64a6b191a",
							version = 3,
						},
						inheritedIndex = 1,
					},
					
					{
						data = 
						{
							category = "Party",
							comparator = 2,
							conditionType = 4,
							inRangeValue = 20,
							minTargetPercent = true,
							name = "Party Range: <= 20y",
							partyTargetNumber = 100,
							partyTargetSubType = "Number",
							uuid = "0796f2c7-5782-7e71-8675-e259a5fdcac0",
							version = 3,
						},
					},
					
					{
						data = 
						{
							buffCheckType = 2,
							buffID = 2609,
							category = "Party",
							name = "DT: Missing Eukrasian Prognosis",
							partyTargetSubType = "Number",
							partyTargetType = "Detection Target",
							uuid = "5b3830f2-93e2-9833-9894-680daafb64f5",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Party",
							conditionType = 10,
							inGroupTargetType = "Tank",
							name = "DT: Tank",
							partyTargetType = "Detection Target",
							uuid = "d00ae7a2-5b63-9ea0-8f6c-a76c339c4bee",
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
									"5b3830f2-93e2-9833-9894-680daafb64f5",
									true,
								},
								
								{
									"d00ae7a2-5b63-9ea0-8f6c-a76c339c4bee",
									false,
								},
							},
							filterTargetType = "Party",
							name = "F - Non Tank Missing Shield",
							uuid = "303cfea5-c9de-3c82-8055-df4b83304e43",
							version = 3,
						},
					},
				},
				enabled = false,
				mechanicTime = 15.261765625,
				name = "[SGE] Eukrasian Prognosis",
				timeRange = true,
				timelineIndex = 1,
				timerEndOffset = 5,
				timerStartOffset = -5,
				uuid = "6e91851c-5b9e-69d5-965a-2a793a396194",
				version = 2,
			},
			inheritedIndex = 31,
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
									"26fe8bf0-8e58-6157-9b67-e8a64a6b191a",
									true,
								},
								
								{
									"0796f2c7-5782-7e71-8675-e259a5fdcac0",
									true,
								},
							},
							fallthrough = true,
							gVar = "ACR_RikuSGE3_Healbar_Zoe",
							uuid = "e8241127-b7f4-8235-9f22-e126fbe1aa59",
							variableTogglesType = 3,
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
									"26fe8bf0-8e58-6157-9b67-e8a64a6b191a",
									true,
								},
								
								{
									"0796f2c7-5782-7e71-8675-e259a5fdcac0",
									true,
								},
								
								{
									"1554b03c-9db3-bf96-83aa-63611d654f25",
									false,
								},
							},
							gVar = "ACR_RikuSGE3_Healbar_EukrasianPrognosis",
							uuid = "9f150df4-47fb-823d-a797-346087437cd2",
							variableTogglesType = 3,
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
							jobValue = "SAGE",
							name = "Self: SGE",
							uuid = "26fe8bf0-8e58-6157-9b67-e8a64a6b191a",
							version = 3,
						},
						inheritedIndex = 1,
					},
					
					{
						data = 
						{
							category = "Party",
							comparator = 2,
							conditionType = 4,
							inRangeValue = 20,
							minTargetPercent = true,
							name = "Party Range: <= 20y",
							partyTargetNumber = 100,
							partyTargetSubType = "Number",
							uuid = "0796f2c7-5782-7e71-8675-e259a5fdcac0",
							version = 3,
						},
					},
					
					{
						data = 
						{
							buffID = 2609,
							category = "Self",
							name = "Self: Eukrasian Prognosis Buff",
							uuid = "1554b03c-9db3-bf96-83aa-63611d654f25",
							version = 3,
						},
					},
				},
				enabled = false,
				mechanicTime = 15.261765625,
				name = "[SGE] Zoe Eukrasian Prognosis",
				timeRange = true,
				timelineIndex = 1,
				timerEndOffset = 5,
				timerStartOffset = -5,
				uuid = "4703876f-65bc-091c-8c99-5913bd336bb4",
				version = 2,
			},
			inheritedIndex = 32,
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
									"26fe8bf0-8e58-6157-9b67-e8a64a6b191a",
									true,
								},
								
								{
									"381dce5b-3db3-8082-89b0-49db92f75dec",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_Healbar_EukrasianDiagnosis",
							targetSubType = "Lowest HP",
							targetType = "Detection Target",
							uuid = "9f150df4-47fb-823d-a797-346087437cd2",
							variableIsHover = true,
							variableTogglesType = 3,
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
							jobValue = "SAGE",
							name = "Self: SGE",
							uuid = "26fe8bf0-8e58-6157-9b67-e8a64a6b191a",
							version = 3,
						},
						inheritedIndex = 1,
					},
					
					{
						data = 
						{
							category = "Party",
							comparator = 2,
							conditionType = 4,
							inRangeValue = 30,
							minTargetPercent = true,
							name = "DT Range: <= 30y",
							partyTargetNumber = 100,
							partyTargetSubType = "Number",
							partyTargetType = "Detection Target",
							uuid = "0796f2c7-5782-7e71-8675-e259a5fdcac0",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Party",
							comparator = 2,
							conditionType = 2,
							hpType = 2,
							hpValue = 60,
							name = "DT HP: <= 60% HP",
							partyTargetType = "Detection Target",
							uuid = "4eda2bfd-8a78-35e9-9fb8-c4bfd00ad0d5",
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
									"0796f2c7-5782-7e71-8675-e259a5fdcac0",
									true,
								},
								
								{
									"4eda2bfd-8a78-35e9-9fb8-c4bfd00ad0d5",
									true,
								},
							},
							filterTargetSubtype = "Lowest HP",
							filterTargetType = "Party",
							uuid = "381dce5b-3db3-8082-89b0-49db92f75dec",
							version = 3,
						},
						inheritedIndex = 4,
					},
				},
				enabled = false,
				mechanicTime = 15.261765625,
				name = "[SGE] Eukrasian Diagnosis",
				timelineIndex = 1,
				timerEndOffset = 1,
				timerOffset = -1,
				timerStartOffset = -5,
				uuid = "42d5daec-f3ec-8225-ad1a-1dd6bf6caa8d",
				version = 2,
			},
			inheritedIndex = 33,
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
									"a7ff75cf-1c65-b308-9b67-891e93f1c4f5",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_Healbar_Soteria",
							uuid = "9f150df4-47fb-823d-a797-346087437cd2",
							variableTogglesType = 3,
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
							jobValue = "SAGE",
							name = "Self: SGE",
							uuid = "a7ff75cf-1c65-b308-9b67-891e93f1c4f5",
							version = 3,
						},
						inheritedIndex = 1,
					},
				},
				enabled = false,
				mechanicTime = 15.261765625,
				name = "[SGE] Soteria",
				timeRange = true,
				timelineIndex = 1,
				timerEndOffset = 5,
				timerStartOffset = -5,
				uuid = "0fe4d5b5-c648-f826-bbec-b218fa6d8e87",
				version = 2,
			},
			inheritedIndex = 35,
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
									"26fe8bf0-8e58-6157-9b67-e8a64a6b191a",
									true,
								},
								
								{
									"0796f2c7-5782-7e71-8675-e259a5fdcac0",
									true,
								},
								
								{
									"5b3830f2-93e2-9833-9894-680daafb64f5",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_Healbar_Pepsis",
							uuid = "9f150df4-47fb-823d-a797-346087437cd2",
							variableTogglesType = 3,
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
							jobValue = "SAGE",
							name = "Self: SGE",
							uuid = "26fe8bf0-8e58-6157-9b67-e8a64a6b191a",
							version = 3,
						},
						inheritedIndex = 1,
					},
					
					{
						data = 
						{
							category = "Party",
							comparator = 2,
							conditionType = 4,
							inRangeValue = 20,
							minTargetPercent = true,
							name = "Party Range: <= 20y",
							partyTargetNumber = 100,
							partyTargetSubType = "Number",
							uuid = "0796f2c7-5782-7e71-8675-e259a5fdcac0",
							version = 3,
						},
					},
					
					{
						data = 
						{
							buffCheckType = 5,
							buffID = 2609,
							buffIDList = 
							{
								2609,
								2607,
							},
							category = "Party",
							matchAnyBuff = true,
							name = "Party: E. Prognosis/Diagnosis Buff",
							partyTargetSubType = "Number",
							uuid = "5b3830f2-93e2-9833-9894-680daafb64f5",
							version = 3,
						},
					},
				},
				enabled = false,
				mechanicTime = 15.261765625,
				name = "[SGE] Pepsis",
				timeRange = true,
				timelineIndex = 1,
				timerEndOffset = 5,
				timerStartOffset = -5,
				uuid = "05c19294-4a12-43f9-8b36-c9392a4f5b55",
				version = 2,
			},
			inheritedIndex = 36,
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
									"26fe8bf0-8e58-6157-9b67-e8a64a6b191a",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_Healbar_Haima",
							targetType = "Main Tank",
							uuid = "9f150df4-47fb-823d-a797-346087437cd2",
							variableIsHover = true,
							variableTogglesType = 3,
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
							jobValue = "SAGE",
							name = "Self: SGE",
							uuid = "26fe8bf0-8e58-6157-9b67-e8a64a6b191a",
							version = 3,
						},
						inheritedIndex = 1,
					},
				},
				enabled = false,
				mechanicTime = 15.261765625,
				name = "[SGE] Haima",
				timeRange = true,
				timelineIndex = 1,
				timerEndOffset = 5,
				timerStartOffset = -5,
				uuid = "603eeb46-03d3-4fb3-9c83-39ba571ded80",
				version = 2,
			},
			inheritedIndex = 37,
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
									"299bb84c-9fa3-6837-9e30-b8c05eae3959",
									true,
								},
								
								{
									"db9e281c-6f91-3db5-8d6c-487c8eb46530",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_Healbar_Physis",
							uuid = "9f150df4-47fb-823d-a797-346087437cd2",
							variableTogglesType = 3,
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
							jobValue = "SAGE",
							name = "Self: SGE",
							uuid = "299bb84c-9fa3-6837-9e30-b8c05eae3959",
							version = 3,
						},
						inheritedIndex = 1,
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
							uuid = "db9e281c-6f91-3db5-8d6c-487c8eb46530",
							version = 3,
						},
					},
				},
				enabled = false,
				mechanicTime = 15.261765625,
				name = "[SGE] Physis",
				timeRange = true,
				timelineIndex = 1,
				timerEndOffset = 5,
				timerStartOffset = -5,
				uuid = "1c479603-d17c-55b8-abe2-071da6d8d2ce",
				version = 2,
			},
			inheritedIndex = 38,
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
									"26fe8bf0-8e58-6157-9b67-e8a64a6b191a",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_Healbar_Taurochole",
							targetType = "Main Tank",
							uuid = "9f150df4-47fb-823d-a797-346087437cd2",
							variableIsHover = true,
							variableTogglesType = 3,
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
							jobValue = "SAGE",
							name = "Self: SGE",
							uuid = "26fe8bf0-8e58-6157-9b67-e8a64a6b191a",
							version = 3,
						},
						inheritedIndex = 1,
					},
				},
				enabled = false,
				mechanicTime = 15.261765625,
				name = "[SGE] Taurochole",
				timeRange = true,
				timelineIndex = 1,
				timerEndOffset = 5,
				timerStartOffset = -5,
				uuid = "783f028d-927d-1ea8-afbb-ea4feac9fdad",
				version = 2,
			},
			inheritedIndex = 39,
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
									"53d292a9-114e-4b73-ade9-8a05229e04b5",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_Healbar_Krasis",
							targetType = "Main Tank",
							uuid = "9f150df4-47fb-823d-a797-346087437cd2",
							variableIsHover = true,
							variableTogglesType = 3,
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
							jobValue = "SAGE",
							name = "Self: SGE",
							uuid = "53d292a9-114e-4b73-ade9-8a05229e04b5",
							version = 3,
						},
						inheritedIndex = 1,
					},
				},
				enabled = false,
				mechanicTime = 15.261765625,
				name = "[SGE] Krasis",
				timeRange = true,
				timelineIndex = 1,
				timerEndOffset = 5,
				timerStartOffset = -5,
				uuid = "d92c91e8-17c3-aa0b-b415-620c2c356fd5",
				version = 2,
			},
			inheritedIndex = 40,
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
									"ace000e6-5541-6a8d-b064-b432e620d43a",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_Healbar_Zoe",
							uuid = "68f07163-b007-4f65-a949-55d21423260e",
							variableTogglesType = 3,
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
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "SAGE",
							name = "Self: SGE",
							uuid = "ace000e6-5541-6a8d-b064-b432e620d43a",
							version = 3,
						},
						inheritedIndex = 1,
					},
				},
				enabled = false,
				mechanicTime = 15.261765625,
				name = "[SGE] Zoe",
				timeRange = true,
				timelineIndex = 1,
				timerEndOffset = 5,
				timerStartOffset = -5,
				uuid = "6835f885-a4c4-4811-8f0c-877f7e22c60d",
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
									"ace000e6-5541-6a8d-b064-b432e620d43a",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_Healbar_Pneuma",
							uuid = "9f150df4-47fb-823d-a797-346087437cd2",
							variableTogglesType = 3,
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
							jobValue = "SAGE",
							name = "Self: SGE",
							uuid = "ace000e6-5541-6a8d-b064-b432e620d43a",
							version = 3,
						},
						inheritedIndex = 1,
					},
				},
				enabled = false,
				mechanicTime = 15.261765625,
				name = "[SGE] Pneuma",
				timeRange = true,
				timelineIndex = 1,
				timerEndOffset = 5,
				timerStartOffset = -5,
				uuid = "9fe4ff8b-9704-f0fa-912d-a1d241a6b65d",
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
									"26fe8bf0-8e58-6157-9b67-e8a64a6b191a",
									true,
								},
								
								{
									"0796f2c7-5782-7e71-8675-e259a5fdcac0",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_Healbar_Prognosis",
							uuid = "9f150df4-47fb-823d-a797-346087437cd2",
							variableTogglesType = 3,
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
							jobValue = "SAGE",
							name = "Self: SGE",
							uuid = "26fe8bf0-8e58-6157-9b67-e8a64a6b191a",
							version = 3,
						},
						inheritedIndex = 1,
					},
					
					{
						data = 
						{
							category = "Party",
							comparator = 2,
							conditionType = 4,
							inRangeValue = 20,
							minTargetPercent = true,
							name = "Party Range: <= 20y",
							partyTargetNumber = 100,
							partyTargetSubType = "Number",
							uuid = "0796f2c7-5782-7e71-8675-e259a5fdcac0",
							version = 3,
						},
					},
				},
				enabled = false,
				mechanicTime = 15.261765625,
				name = "[SGE] Prognosis",
				timeRange = true,
				timelineIndex = 1,
				timerEndOffset = 5,
				timerStartOffset = -5,
				uuid = "e2cabc61-c269-be46-8292-149eaa3f96aa",
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
									"26fe8bf0-8e58-6157-9b67-e8a64a6b191a",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_Healbar_Druochole",
							targetSubType = "Lowest HP",
							targetType = "Tank",
							uuid = "9f150df4-47fb-823d-a797-346087437cd2",
							variableIsHover = true,
							variableTogglesType = 3,
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
							jobValue = "SAGE",
							name = "Self: SGE",
							uuid = "26fe8bf0-8e58-6157-9b67-e8a64a6b191a",
							version = 3,
						},
						inheritedIndex = 1,
					},
				},
				enabled = false,
				mechanicTime = 15.261765625,
				name = "[SGE] Druochole",
				timeRange = true,
				timelineIndex = 1,
				timerEndOffset = 5,
				timerStartOffset = -5,
				uuid = "c431ad2a-bd1e-f439-885e-3220fbe389c7",
				version = 2,
			},
		},
	},
	
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
									"a7ff75cf-1c65-b308-9b67-891e93f1c4f5",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_Healbar_Soteria",
							uuid = "9f150df4-47fb-823d-a797-346087437cd2",
							variableTogglesType = 3,
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
							jobValue = "SAGE",
							name = "Self: SGE",
							uuid = "a7ff75cf-1c65-b308-9b67-891e93f1c4f5",
							version = 3,
						},
						inheritedIndex = 1,
					},
				},
				mechanicTime = 18.37640625,
				name = "[SGE] Soteria",
				timelineIndex = 2,
				timerEndOffset = 5,
				timerStartOffset = -5,
				uuid = "0502045f-7245-4053-97a9-bfbd4b1f2cab",
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
									"ace000e6-5541-6a8d-b064-b432e620d43a",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_Healbar_Zoe",
							uuid = "68f07163-b007-4f65-a949-55d21423260e",
							variableTogglesType = 3,
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
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "SAGE",
							name = "Self: SGE",
							uuid = "ace000e6-5541-6a8d-b064-b432e620d43a",
							version = 3,
						},
						inheritedIndex = 1,
					},
				},
				mechanicTime = 18.37640625,
				name = "[SGE] Zoe",
				timelineIndex = 2,
				timerEndOffset = 5,
				timerOffset = 1,
				timerStartOffset = -5,
				uuid = "9a2d2555-bdae-3d88-973c-a1830236543c",
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
							aType = "ACR",
							conditions = 
							{
								
								{
									"26fe8bf0-8e58-6157-9b67-e8a64a6b191a",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_Healbar_Druochole",
							targetSubType = "Lowest HP",
							targetType = "Tank",
							uuid = "9f150df4-47fb-823d-a797-346087437cd2",
							variableIsHover = true,
							variableTogglesType = 3,
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
							jobValue = "SAGE",
							name = "Self: SGE",
							uuid = "26fe8bf0-8e58-6157-9b67-e8a64a6b191a",
							version = 3,
						},
						inheritedIndex = 1,
					},
				},
				mechanicTime = 18.37640625,
				name = "[SGE] Druochole",
				timelineIndex = 2,
				timerEndOffset = 5,
				timerOffset = 5,
				timerStartOffset = -5,
				uuid = "cc647748-ada3-20b0-bd64-59fd1342b4c6",
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
									"26fe8bf0-8e58-6157-9b67-e8a64a6b191a",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_Healbar_Taurochole",
							targetType = "Main Tank",
							uuid = "9f150df4-47fb-823d-a797-346087437cd2",
							variableIsHover = true,
							variableTogglesType = 3,
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
							jobValue = "SAGE",
							name = "Self: SGE",
							uuid = "26fe8bf0-8e58-6157-9b67-e8a64a6b191a",
							version = 3,
						},
						inheritedIndex = 1,
					},
				},
				mechanicTime = 18.37640625,
				name = "[SGE] Taurochole",
				timeRange = true,
				timelineIndex = 2,
				timerEndOffset = -1,
				timerOffset = -1,
				timerStartOffset = -14,
				uuid = "db2b4626-a0c1-c5cc-bc85-723acde0fdeb",
				version = 2,
			},
			inheritedIndex = 13,
		},
	},
	
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
									"26fe8bf0-8e58-6157-9b67-e8a64a6b191a",
									true,
								},
								
								{
									"0796f2c7-5782-7e71-8675-e259a5fdcac0",
									true,
								},
								
								{
									"303cfea5-c9de-3c82-8055-df4b83304e43",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_Healbar_EukrasianPrognosis",
							uuid = "9f150df4-47fb-823d-a797-346087437cd2",
							variableTogglesType = 3,
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
							jobValue = "SAGE",
							name = "Self: SGE",
							uuid = "26fe8bf0-8e58-6157-9b67-e8a64a6b191a",
							version = 3,
						},
						inheritedIndex = 1,
					},
					
					{
						data = 
						{
							category = "Party",
							comparator = 2,
							conditionType = 4,
							inRangeValue = 20,
							minTargetPercent = true,
							name = "Party Range: <= 20y",
							partyTargetNumber = 100,
							partyTargetSubType = "Number",
							uuid = "0796f2c7-5782-7e71-8675-e259a5fdcac0",
							version = 3,
						},
					},
					
					{
						data = 
						{
							buffCheckType = 2,
							buffID = 2609,
							category = "Party",
							name = "DT: Missing Eukrasian Prognosis",
							partyTargetSubType = "Number",
							partyTargetType = "Detection Target",
							uuid = "5b3830f2-93e2-9833-9894-680daafb64f5",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Party",
							conditionType = 10,
							inGroupTargetType = "Tank",
							name = "DT: Tank",
							partyTargetType = "Detection Target",
							uuid = "d00ae7a2-5b63-9ea0-8f6c-a76c339c4bee",
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
									"5b3830f2-93e2-9833-9894-680daafb64f5",
									true,
								},
								
								{
									"d00ae7a2-5b63-9ea0-8f6c-a76c339c4bee",
									false,
								},
							},
							filterTargetType = "Party",
							name = "F - Non Tank Missing Shield",
							uuid = "303cfea5-c9de-3c82-8055-df4b83304e43",
							version = 3,
						},
					},
				},
				mechanicTime = 29.049328125,
				name = "[SGE] Eukrasian Prognosis",
				timelineIndex = 3,
				timerEndOffset = 5,
				timerOffset = -3,
				timerStartOffset = -5,
				uuid = "625451b4-c09d-094a-a8cb-5e1e98e7af5a",
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
							actionID = 24290,
							conditions = 
							{
								
								{
									"26fe8bf0-8e58-6157-9b67-e8a64a6b191a",
									true,
								},
								
								{
									"c71f8391-2567-6c74-9a0d-aafc71a7286d",
									true,
								},
								
								{
									"667149d9-c922-e4a0-a695-46eff0de1f65",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_Healbar_EukrasianPrognosis",
							uuid = "9f150df4-47fb-823d-a797-346087437cd2",
							variableTogglesType = 3,
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
							jobValue = "SAGE",
							name = "Self: SGE",
							uuid = "26fe8bf0-8e58-6157-9b67-e8a64a6b191a",
							version = 3,
						},
						inheritedIndex = 1,
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return FFXIV_Common_BotRunning",
							dequeueIfLuaFalse = true,
							name = "Assist Enabled",
							uuid = "c71f8391-2567-6c74-9a0d-aafc71a7286d",
							version = 3,
						},
						inheritedIndex = 2,
					},
					
					{
						data = 
						{
							buffCheckType = 2,
							buffID = 2606,
							category = "Self",
							name = "Self Buff: Eukrasia Missing",
							uuid = "667149d9-c922-e4a0-a695-46eff0de1f65",
							version = 3,
						},
					},
				},
				mechanicTime = 29.049328125,
				name = "[SGE] Eukrasia",
				randomTimeout = 10,
				timelineIndex = 3,
				timerEndOffset = -1,
				timerOffset = -1,
				timerStartOffset = -5,
				uuid = "ed109e9f-b073-5b20-b96a-71b713b9383a",
				version = 2,
			},
		},
	},
	
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
									"299bb84c-9fa3-6837-9e30-b8c05eae3959",
									true,
								},
								
								{
									"db9e281c-6f91-3db5-8d6c-487c8eb46530",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_Healbar_Physis",
							uuid = "9f150df4-47fb-823d-a797-346087437cd2",
							variableTogglesType = 3,
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
							jobValue = "SAGE",
							name = "Self: SGE",
							uuid = "299bb84c-9fa3-6837-9e30-b8c05eae3959",
							version = 3,
						},
						inheritedIndex = 1,
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
							uuid = "db9e281c-6f91-3db5-8d6c-487c8eb46530",
							version = 3,
						},
					},
				},
				mechanicTime = 34.922075823741,
				name = "[SGE] Physis",
				timelineIndex = 4,
				timerEndOffset = 5,
				timerStartOffset = 0.10000000149012,
				uuid = "450d1e52-75f9-00d7-a62b-cd578618d2ac",
				version = 2,
			},
			inheritedIndex = 4,
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
							actionLua = "TensorDrift_SlidecastForceHold = true\nself.used = true",
							gVar = "ACR_RikuSGE3_CD",
							name = "Force Slidecast",
							uuid = "26b75ba9-ffe2-5289-bbe4-7548e58817b5",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "TensorDrift_SlidecastForceHold = false\nself.used = true",
							gVar = "ACR_RikuSGE3_CD",
							name = "End Slide",
							uuid = "c9525cfd-c78c-8c38-b40b-09e5fe1fbe7b",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				mechanicTime = 34.922075823741,
				name = "Force Slidecast",
				throttleTime = 3000,
				timeRange = true,
				timelineIndex = 4,
				timerEndOffset = 2,
				timerStartOffset = -2,
				uuid = "008d23b5-d010-a9ab-b005-d9d15d4025a6",
				version = 2,
			},
		},
	}, 
	[7] = 
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
									"a7ff75cf-1c65-b308-9b67-891e93f1c4f5",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_2Toxikon",
							uuid = "89a2a281-ece0-b47d-ae01-2141d1630972",
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
							jobValue = "SAGE",
							name = "Self: SGE",
							uuid = "a7ff75cf-1c65-b308-9b67-891e93f1c4f5",
							version = 3,
						},
						inheritedIndex = 1,
					},
				},
				mechanicTime = 42.238586763472,
				name = "[SGE] Toggle 2 Toxikon",
				timelineIndex = 7,
				timerEndOffset = 5,
				timerStartOffset = -5,
				uuid = "82303b7a-c0b6-4a63-806d-098fe75c3251",
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
							aType = "ACR",
							conditions = 
							{
								
								{
									"26fe8bf0-8e58-6157-9b67-e8a64a6b191a",
									true,
								},
								
								{
									"0796f2c7-5782-7e71-8675-e259a5fdcac0",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_Healbar_Ixochole",
							uuid = "9f150df4-47fb-823d-a797-346087437cd2",
							variableTogglesType = 3,
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
							jobValue = "SAGE",
							name = "Self: SGE",
							uuid = "26fe8bf0-8e58-6157-9b67-e8a64a6b191a",
							version = 3,
						},
						inheritedIndex = 1,
					},
					
					{
						data = 
						{
							category = "Party",
							comparator = 2,
							conditionType = 4,
							inRangeValue = 20,
							minTargetPercent = true,
							name = "Party Range: <= 20y",
							partyTargetNumber = 100,
							partyTargetSubType = "Number",
							uuid = "0796f2c7-5782-7e71-8675-e259a5fdcac0",
							version = 3,
						},
					},
				},
				mechanicTime = 42.238586763472,
				name = "[SGE] Ixochole",
				randomOffset = 5,
				timeRange = true,
				timelineIndex = 7,
				timerEndOffset = 8,
				timerOffset = 1,
				timerStartOffset = 0.10000000149012,
				uuid = "f3279886-0a2a-280d-81b9-19bab4d44ae3",
				version = 2,
			},
		},
	},
	[10] = 
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
									"81ae31c5-9e92-6a56-ba07-ff21087cac48",
									true,
								},
								
								{
									"800486cc-705c-5caf-8fba-1dd95613f62d",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_Healbar_Panhaima",
							uuid = "3513de14-07f8-c935-80cb-36aa906944eb",
							variableTogglesType = 3,
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
							jobValue = "SAGE",
							name = "Self: SGE",
							uuid = "81ae31c5-9e92-6a56-ba07-ff21087cac48",
							version = 3,
						},
						inheritedIndex = 1,
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
							uuid = "800486cc-705c-5caf-8fba-1dd95613f62d",
							version = 3,
						},
					},
				},
				mechanicTime = 49.498257793546,
				name = "[SGE] Panhaima",
				timeRange = true,
				timelineIndex = 10,
				timerEndOffset = -1,
				timerStartOffset = -14.5,
				uuid = "b1f405a3-2905-aea8-9271-8b68b30a93bc",
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
									"26fe8bf0-8e58-6157-9b67-e8a64a6b191a",
									true,
								},
								
								{
									"0796f2c7-5782-7e71-8675-e259a5fdcac0",
									true,
								},
								
								{
									"303cfea5-c9de-3c82-8055-df4b83304e43",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_Healbar_EukrasianPrognosis",
							uuid = "9f150df4-47fb-823d-a797-346087437cd2",
							variableTogglesType = 3,
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
							jobValue = "SAGE",
							name = "Self: SGE",
							uuid = "26fe8bf0-8e58-6157-9b67-e8a64a6b191a",
							version = 3,
						},
						inheritedIndex = 1,
					},
					
					{
						data = 
						{
							category = "Party",
							comparator = 2,
							conditionType = 4,
							inRangeValue = 20,
							minTargetPercent = true,
							name = "Party Range: <= 20y",
							partyTargetNumber = 100,
							partyTargetSubType = "Number",
							uuid = "0796f2c7-5782-7e71-8675-e259a5fdcac0",
							version = 3,
						},
					},
					
					{
						data = 
						{
							buffCheckType = 2,
							buffID = 2609,
							category = "Party",
							name = "DT: Missing Eukrasian Prognosis",
							partyTargetSubType = "Number",
							partyTargetType = "Detection Target",
							uuid = "5b3830f2-93e2-9833-9894-680daafb64f5",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Party",
							conditionType = 10,
							inGroupTargetType = "Tank",
							name = "DT: Tank",
							partyTargetType = "Detection Target",
							uuid = "d00ae7a2-5b63-9ea0-8f6c-a76c339c4bee",
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
									"5b3830f2-93e2-9833-9894-680daafb64f5",
									true,
								},
								
								{
									"d00ae7a2-5b63-9ea0-8f6c-a76c339c4bee",
									false,
								},
							},
							filterTargetType = "Party",
							name = "F - Non Tank Missing Shield",
							uuid = "303cfea5-c9de-3c82-8055-df4b83304e43",
							version = 3,
						},
					},
				},
				mechanicTime = 49.498257793546,
				name = "[SGE] Eukrasian Prognosis",
				timelineIndex = 10,
				timerEndOffset = 5,
				timerOffset = -2,
				timerStartOffset = -5,
				uuid = "8cf5a657-19eb-cf51-a5de-c08bea779846",
				version = 2,
			},
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
									"6eed371c-276e-0dc6-bfef-64a1ef96e29f",
									true,
								},
								
								{
									"6e5cce1c-e91c-060c-b26b-d9c804cb7b6e",
									true,
								},
								
								{
									"73317a59-32cc-0ef3-8144-5d37b696cab3",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_Healbar_Kerachole",
							uuid = "1f6dfa69-9fa5-6422-bae0-e4c484120183",
							variableTogglesType = 3,
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
							jobValue = "SAGE",
							name = "Self: SGE",
							uuid = "6eed371c-276e-0dc6-bfef-64a1ef96e29f",
							version = 3,
						},
						inheritedIndex = 1,
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
							uuid = "6e5cce1c-e91c-060c-b26b-d9c804cb7b6e",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionCDValue = 1,
							actionID = 24298,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "Self: Kerachole CD <= 1s",
							uuid = "73317a59-32cc-0ef3-8144-5d37b696cab3",
							version = 3,
						},
					},
				},
				mechanicTime = 62.553324919213,
				name = "[SGE] Kerachole",
				timeRange = true,
				timelineIndex = 12,
				timerEndOffset = -1,
				timerStartOffset = -14.5,
				uuid = "ba8b2424-f89c-a617-af22-af8dab5c5cf6",
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
									"26fe8bf0-8e58-6157-9b67-e8a64a6b191a",
									true,
								},
								
								{
									"0796f2c7-5782-7e71-8675-e259a5fdcac0",
									true,
								},
								
								{
									"303cfea5-c9de-3c82-8055-df4b83304e43",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_Healbar_EukrasianPrognosis",
							uuid = "9f150df4-47fb-823d-a797-346087437cd2",
							variableTogglesType = 3,
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
							jobValue = "SAGE",
							name = "Self: SGE",
							uuid = "26fe8bf0-8e58-6157-9b67-e8a64a6b191a",
							version = 3,
						},
						inheritedIndex = 1,
					},
					
					{
						data = 
						{
							category = "Party",
							comparator = 2,
							conditionType = 4,
							inRangeValue = 20,
							minTargetPercent = true,
							name = "Party Range: <= 20y",
							partyTargetNumber = 100,
							partyTargetSubType = "Number",
							uuid = "0796f2c7-5782-7e71-8675-e259a5fdcac0",
							version = 3,
						},
					},
					
					{
						data = 
						{
							buffCheckType = 2,
							buffID = 2609,
							category = "Party",
							name = "DT: Missing Eukrasian Prognosis",
							partyTargetSubType = "Number",
							partyTargetType = "Detection Target",
							uuid = "5b3830f2-93e2-9833-9894-680daafb64f5",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Party",
							conditionType = 10,
							inGroupTargetType = "Tank",
							name = "DT: Tank",
							partyTargetType = "Detection Target",
							uuid = "d00ae7a2-5b63-9ea0-8f6c-a76c339c4bee",
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
									"5b3830f2-93e2-9833-9894-680daafb64f5",
									true,
								},
								
								{
									"d00ae7a2-5b63-9ea0-8f6c-a76c339c4bee",
									false,
								},
							},
							filterTargetType = "Party",
							name = "F - Non Tank Missing Shield",
							uuid = "303cfea5-c9de-3c82-8055-df4b83304e43",
							version = 3,
						},
					},
				},
				mechanicTime = 62.553324919213,
				name = "[SGE] Eukrasian Prognosis",
				timelineIndex = 12,
				timerEndOffset = 5,
				timerOffset = 1,
				timerStartOffset = -5,
				uuid = "df8a5b4b-208a-017f-9673-0b684cf5cf6b",
				version = 2,
			},
		},
	},
	[15] = 
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
									"26fe8bf0-8e58-6157-9b67-e8a64a6b191a",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_Healbar_Taurochole",
							targetType = "Main Tank",
							uuid = "9f150df4-47fb-823d-a797-346087437cd2",
							variableIsHover = true,
							variableTogglesType = 3,
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
							jobValue = "SAGE",
							name = "Self: SGE",
							uuid = "26fe8bf0-8e58-6157-9b67-e8a64a6b191a",
							version = 3,
						},
						inheritedIndex = 1,
					},
				},
				mechanicTime = 69.911881498834,
				name = "[SGE] Taurochole",
				timeRange = true,
				timelineIndex = 15,
				timerEndOffset = -1,
				timerStartOffset = -6,
				uuid = "0bd4139c-02d8-d37d-a8ed-1b5fb4b559a4",
				version = 2,
			},
			inheritedIndex = 37,
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
							aType = "ACR",
							acrOptionType = "Hold Action",
							actionID = 24316,
							conditions = 
							{
								
								{
									"2396dc77-b792-7e80-9887-f83101f21e56",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_CD",
							holdActionCharges = 2,
							holdActionDuration = 10,
							holdActionID = 24313,
							targetType = "Enemy",
							uuid = "870510d0-9a27-ffb0-877a-e19b2e0e5941",
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
							jobValue = "SAGE",
							name = "Self: SGE",
							uuid = "2396dc77-b792-7e80-9887-f83101f21e56",
							version = 3,
						},
						inheritedIndex = 1,
					},
				},
				mechanicTime = 80.121849240769,
				name = "[SGE] Hold Phlegma",
				timelineIndex = 16,
				timerOffset = 3,
				timerStartOffset = -2,
				uuid = "bfd2d970-015f-7a1d-860b-d3c7bdc58459",
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
							actionLua = "TensorDrift_SlidecastForceHold = true\nself.used = true",
							gVar = "ACR_RikuSGE3_CD",
							name = "Force Slidecast",
							uuid = "26b75ba9-ffe2-5289-bbe4-7548e58817b5",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "TensorDrift_SlidecastForceHold = false\nself.used = true",
							gVar = "ACR_RikuSGE3_CD",
							name = "End Slide",
							uuid = "c9525cfd-c78c-8c38-b40b-09e5fe1fbe7b",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				mechanicTime = 87.304550672705,
				name = "Force Slidecast",
				throttleTime = 4000,
				timeRange = true,
				timelineIndex = 17,
				timerEndOffset = 4,
				timerStartOffset = -1,
				uuid = "3b5d518f-7ef8-b20f-b5e3-48d8a4c75b11",
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
							aType = "ACR",
							conditions = 
							{
								
								{
									"6eed371c-276e-0dc6-bfef-64a1ef96e29f",
									true,
								},
								
								{
									"6e5cce1c-e91c-060c-b26b-d9c804cb7b6e",
									true,
								},
								
								{
									"73317a59-32cc-0ef3-8144-5d37b696cab3",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_Healbar_Kerachole",
							uuid = "1f6dfa69-9fa5-6422-bae0-e4c484120183",
							variableTogglesType = 3,
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
							jobValue = "SAGE",
							name = "Self: SGE",
							uuid = "6eed371c-276e-0dc6-bfef-64a1ef96e29f",
							version = 3,
						},
						inheritedIndex = 1,
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
							uuid = "6e5cce1c-e91c-060c-b26b-d9c804cb7b6e",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionCDValue = 1,
							actionID = 24298,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "Self: Kerachole CD <= 1s",
							uuid = "73317a59-32cc-0ef3-8144-5d37b696cab3",
							version = 3,
						},
					},
				},
				mechanicTime = 87.304550672705,
				name = "[SGE] Kerachole",
				timeRange = true,
				timelineIndex = 17,
				timerEndOffset = -1,
				timerStartOffset = -14.5,
				uuid = "95edea14-4478-5627-81e6-4cd14b7f12d9",
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
							aType = "ACR",
							conditions = 
							{
								
								{
									"26fe8bf0-8e58-6157-9b67-e8a64a6b191a",
									true,
								},
								
								{
									"0796f2c7-5782-7e71-8675-e259a5fdcac0",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_Healbar_Ixochole",
							uuid = "9f150df4-47fb-823d-a797-346087437cd2",
							variableTogglesType = 3,
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
							jobValue = "SAGE",
							name = "Self: SGE",
							uuid = "26fe8bf0-8e58-6157-9b67-e8a64a6b191a",
							version = 3,
						},
						inheritedIndex = 1,
					},
					
					{
						data = 
						{
							category = "Party",
							comparator = 2,
							conditionType = 4,
							inRangeValue = 20,
							minTargetPercent = true,
							name = "Party Range: <= 20y",
							partyTargetNumber = 100,
							partyTargetSubType = "Number",
							uuid = "0796f2c7-5782-7e71-8675-e259a5fdcac0",
							version = 3,
						},
					},
				},
				mechanicTime = 87.304550672705,
				name = "[SGE] Ixochole",
				timeRange = true,
				timelineIndex = 17,
				timerEndOffset = 8,
				timerStartOffset = 1.1000000238419,
				uuid = "f7bf796e-61e7-9f4a-8c00-776fff04c383",
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
									"a7ff75cf-1c65-b308-9b67-891e93f1c4f5",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_Healbar_Soteria",
							uuid = "9f150df4-47fb-823d-a797-346087437cd2",
							variableTogglesType = 3,
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
							jobValue = "SAGE",
							name = "Self: SGE",
							uuid = "a7ff75cf-1c65-b308-9b67-891e93f1c4f5",
							version = 3,
						},
						inheritedIndex = 1,
					},
				},
				mechanicTime = 87.304550672705,
				name = "[SGE] Soteria",
				timelineIndex = 17,
				timerEndOffset = 5,
				timerOffset = -5,
				timerStartOffset = -5,
				uuid = "dc258c63-f299-11ee-92b0-72d498f9f53e",
				version = 2,
			},
			inheritedIndex = 27,
		},
	},
	[19] = 
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
									"a7ff75cf-1c65-b308-9b67-891e93f1c4f5",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_2Toxikon",
							uuid = "89a2a281-ece0-b47d-ae01-2141d1630972",
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
							jobValue = "SAGE",
							name = "Self: SGE",
							uuid = "a7ff75cf-1c65-b308-9b67-891e93f1c4f5",
							version = 3,
						},
						inheritedIndex = 1,
					},
				},
				mechanicTime = 97.181065398234,
				name = "[SGE] Toggle 2 Toxikon",
				timelineIndex = 19,
				timerEndOffset = 5,
				timerOffset = -2,
				timerStartOffset = -5,
				uuid = "43df0ebb-13d6-fe4e-83ff-398cb84e282f",
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
							aType = "ACR",
							conditions = 
							{
								
								{
									"299bb84c-9fa3-6837-9e30-b8c05eae3959",
									true,
								},
								
								{
									"db9e281c-6f91-3db5-8d6c-487c8eb46530",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_Healbar_Physis",
							uuid = "9f150df4-47fb-823d-a797-346087437cd2",
							variableTogglesType = 3,
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
							jobValue = "SAGE",
							name = "Self: SGE",
							uuid = "299bb84c-9fa3-6837-9e30-b8c05eae3959",
							version = 3,
						},
						inheritedIndex = 1,
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
							uuid = "db9e281c-6f91-3db5-8d6c-487c8eb46530",
							version = 3,
						},
					},
				},
				mechanicTime = 97.181065398234,
				name = "[SGE] Physis",
				timelineIndex = 19,
				timerEndOffset = 5,
				timerStartOffset = -5,
				uuid = "e2276029-3ad1-1d22-a39c-073bd89cecc3",
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
							aType = "ACR",
							conditions = 
							{
								
								{
									"26fe8bf0-8e58-6157-9b67-e8a64a6b191a",
									true,
								},
								
								{
									"0796f2c7-5782-7e71-8675-e259a5fdcac0",
									true,
								},
								
								{
									"303cfea5-c9de-3c82-8055-df4b83304e43",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_Healbar_EukrasianPrognosis",
							uuid = "9f150df4-47fb-823d-a797-346087437cd2",
							variableTogglesType = 3,
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
							jobValue = "SAGE",
							name = "Self: SGE",
							uuid = "26fe8bf0-8e58-6157-9b67-e8a64a6b191a",
							version = 3,
						},
						inheritedIndex = 1,
					},
					
					{
						data = 
						{
							category = "Party",
							comparator = 2,
							conditionType = 4,
							inRangeValue = 20,
							minTargetPercent = true,
							name = "Party Range: <= 20y",
							partyTargetNumber = 100,
							partyTargetSubType = "Number",
							uuid = "0796f2c7-5782-7e71-8675-e259a5fdcac0",
							version = 3,
						},
					},
					
					{
						data = 
						{
							buffCheckType = 2,
							buffID = 2609,
							category = "Party",
							name = "DT: Missing Eukrasian Prognosis",
							partyTargetSubType = "Number",
							partyTargetType = "Detection Target",
							uuid = "5b3830f2-93e2-9833-9894-680daafb64f5",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Party",
							conditionType = 10,
							inGroupTargetType = "Tank",
							name = "DT: Tank",
							partyTargetType = "Detection Target",
							uuid = "d00ae7a2-5b63-9ea0-8f6c-a76c339c4bee",
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
									"5b3830f2-93e2-9833-9894-680daafb64f5",
									true,
								},
								
								{
									"d00ae7a2-5b63-9ea0-8f6c-a76c339c4bee",
									false,
								},
							},
							filterTargetType = "Party",
							name = "F - Non Tank Missing Shield",
							uuid = "303cfea5-c9de-3c82-8055-df4b83304e43",
							version = 3,
						},
					},
				},
				mechanicTime = 100.29172113594,
				name = "[SGE] Eukrasian Prognosis",
				timelineIndex = 20,
				timerEndOffset = 5,
				timerOffset = -3,
				timerStartOffset = -5,
				uuid = "7bbc4e05-865e-9140-bf63-cd73aab9da3f",
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
							aType = "ACR",
							gVar = "ACR_RikuSGE3_Healbar_Kardia",
							targetType = "Main Tank",
							uuid = "c0a9c51e-79a0-c1be-b647-992fb1fced0e",
							variableIsHover = true,
							variableTogglesType = 3,
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				mechanicTime = 100.29172113594,
				name = "[SGE] Kardia MT",
				timelineIndex = 20,
				timerOffset = 3,
				uuid = "2432b920-7372-9afa-be1b-cc7f57467636",
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
									"26fe8bf0-8e58-6157-9b67-e8a64a6b191a",
									true,
								},
								
								{
									"dc91d0d0-214b-8700-87af-ad797de9603c",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_Healbar_Druochole",
							targetSubType = "Lowest HP",
							targetType = "Detection Target",
							uuid = "9f150df4-47fb-823d-a797-346087437cd2",
							variableIsHover = true,
							variableTogglesType = 3,
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
							jobValue = "SAGE",
							name = "Self: SGE",
							uuid = "26fe8bf0-8e58-6157-9b67-e8a64a6b191a",
							version = 3,
						},
						inheritedIndex = 1,
					},
					
					{
						data = 
						{
							category = "Party",
							conditionType = 10,
							inGroupTargetType = "Tank",
							name = "DT: Tank",
							partyTargetType = "Detection Target",
							uuid = "2134b5cf-01e4-5a0a-865a-f7f6d8a0c47a",
							version = 3,
						},
						inheritedIndex = 2,
					},
					
					{
						data = 
						{
							category = "Filter",
							conditions = 
							{
								
								{
									"2134b5cf-01e4-5a0a-865a-f7f6d8a0c47a",
									false,
								},
							},
							filterTargetSubtype = "Lowest HP",
							filterTargetType = "Party",
							uuid = "dc91d0d0-214b-8700-87af-ad797de9603c",
							version = 3,
						},
					},
				},
				mechanicTime = 100.29172113594,
				name = "[SGE] Druochole",
				timelineIndex = 20,
				timerEndOffset = -1,
				timerOffset = 1,
				timerStartOffset = -6,
				uuid = "77fe541d-c1d9-a291-bb84-e07dc9f4fba8",
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
									"a7ff75cf-1c65-b308-9b67-891e93f1c4f5",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_2Toxikon",
							gVarValue = 2,
							uuid = "89a2a281-ece0-b47d-ae01-2141d1630972",
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
							jobValue = "SAGE",
							name = "Self: SGE",
							uuid = "a7ff75cf-1c65-b308-9b67-891e93f1c4f5",
							version = 3,
						},
						inheritedIndex = 1,
					},
				},
				mechanicTime = 100.29172113594,
				name = "[SGE] Toggle 2 Toxikon",
				timelineIndex = 20,
				timerEndOffset = 5,
				timerStartOffset = -5,
				uuid = "22562686-efb7-5833-8489-cc5c943899b4",
				version = 2,
			},
			inheritedIndex = 13,
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
							aType = "ACR",
							conditions = 
							{
								
								{
									"42ace145-2b74-484f-8bf2-cebf11dccf7a",
									true,
								},
								
								{
									"6dc6db9a-b186-7ff6-a6b3-f82998575c8f",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_Healbar_Philosophia",
							uuid = "7af0e0f9-9796-f4ac-9c26-f2fb54bb3a0f",
							variableTogglesType = 3,
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
							jobValue = "SAGE",
							name = "Self: SGE",
							uuid = "6dc6db9a-b186-7ff6-a6b3-f82998575c8f",
							version = 3,
						},
						inheritedIndex = 1,
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
							uuid = "42ace145-2b74-484f-8bf2-cebf11dccf7a",
							version = 3,
						},
					},
				},
				mechanicTime = 105.78798877162,
				name = "[SGE] Philosophia",
				timeRange = true,
				timelineIndex = 22,
				timerEndOffset = -1,
				timerStartOffset = -19.5,
				uuid = "e158913b-97bc-3fcb-8f0b-876481854df7",
				version = 2,
			},
			inheritedIndex = 4,
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
									"6eed371c-276e-0dc6-bfef-64a1ef96e29f",
									true,
								},
								
								{
									"6e5cce1c-e91c-060c-b26b-d9c804cb7b6e",
									true,
								},
								
								{
									"73317a59-32cc-0ef3-8144-5d37b696cab3",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_Healbar_Kerachole",
							uuid = "1f6dfa69-9fa5-6422-bae0-e4c484120183",
							variableTogglesType = 3,
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
							jobValue = "SAGE",
							name = "Self: SGE",
							uuid = "6eed371c-276e-0dc6-bfef-64a1ef96e29f",
							version = 3,
						},
						inheritedIndex = 1,
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
							uuid = "6e5cce1c-e91c-060c-b26b-d9c804cb7b6e",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionCDValue = 1,
							actionID = 24298,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "Self: Kerachole CD <= 1s",
							uuid = "73317a59-32cc-0ef3-8144-5d37b696cab3",
							version = 3,
						},
					},
				},
				mechanicTime = 105.78798877162,
				name = "[SGE] Kerachole",
				timeRange = true,
				timelineIndex = 22,
				timerEndOffset = -1,
				timerStartOffset = -14.5,
				uuid = "a669db51-b5e2-2e0c-91f0-da8372e2ac46",
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
							aType = "Lua",
							actionLua = "TensorDrift_SlidecastForceHold = true\nself.used = true",
							gVar = "ACR_RikuSGE3_CD",
							name = "Force Slidecast",
							uuid = "26b75ba9-ffe2-5289-bbe4-7548e58817b5",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "TensorDrift_SlidecastForceHold = false\nself.used = true",
							gVar = "ACR_RikuSGE3_CD",
							name = "End Slide",
							uuid = "c9525cfd-c78c-8c38-b40b-09e5fe1fbe7b",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				mechanicTime = 105.78798877162,
				name = "Force Slidecast",
				throttleTime = 4000,
				timeRange = true,
				timelineIndex = 22,
				timerEndOffset = 4,
				timerStartOffset = -1,
				uuid = "292f1809-0b3e-7791-b9e6-cccf3abe388f",
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
							aType = "ACR",
							conditions = 
							{
								
								{
									"ace000e6-5541-6a8d-b064-b432e620d43a",
									true,
								},
							},
							fallthrough = true,
							gVar = "ACR_RikuSGE3_Healbar_Zoe",
							uuid = "68f07163-b007-4f65-a949-55d21423260e",
							variableTogglesType = 3,
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
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "SAGE",
							name = "Self: SGE",
							uuid = "ace000e6-5541-6a8d-b064-b432e620d43a",
							version = 3,
						},
						inheritedIndex = 1,
					},
				},
				mechanicTime = 109.77404737751,
				name = "[SGE] Zoe",
				timelineIndex = 23,
				timerEndOffset = 5,
				timerOffset = 2,
				timerStartOffset = -5,
				uuid = "77bfeb27-a74f-7c75-bd81-eb810e6b1f69",
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
									"53d292a9-114e-4b73-ade9-8a05229e04b5",
									true,
								},
								
								{
									"a24923b3-697e-3d4e-ac74-1a032c4f58c6",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_Healbar_Krasis",
							targetSubType = "Lowest HP",
							targetType = "Detection Target",
							uuid = "9f150df4-47fb-823d-a797-346087437cd2",
							variableIsHover = true,
							variableTogglesType = 3,
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
							jobValue = "SAGE",
							name = "Self: SGE",
							uuid = "53d292a9-114e-4b73-ade9-8a05229e04b5",
							version = 3,
						},
						inheritedIndex = 1,
					},
					
					{
						data = 
						{
							buffCheckType = 2,
							buffDuration = 5,
							buffID = 5078,
							category = "Party",
							comparator = 2,
							filterTargetSubtype = "Lowest HP",
							filterTargetType = "Party",
							name = "DT: Missing Confetti Buff",
							partyTargetType = "Detection Target",
							uuid = "62ed5f55-1b23-220b-9dd6-bbc5d4d7d04e",
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
									"62ed5f55-1b23-220b-9dd6-bbc5d4d7d04e",
									true,
								},
							},
							filterTargetSubtype = "Lowest HP",
							filterTargetType = "Party",
							uuid = "a24923b3-697e-3d4e-ac74-1a032c4f58c6",
							version = 3,
						},
						inheritedIndex = 3,
					},
				},
				mechanicTime = 109.77404737751,
				name = "[SGE] Krasis",
				timelineIndex = 23,
				timerEndOffset = 5,
				timerOffset = -2,
				timerStartOffset = -5,
				uuid = "125db5bb-7822-768b-aab4-a81cf4d9157d",
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
							aType = "ACR",
							conditions = 
							{
								
								{
									"d218d3fb-b63f-d885-848f-a000ba9274e7",
									true,
								},
								
								{
									"f0621a59-ba03-0d62-b08c-7ad2b7e5ce17",
									true,
								},
								
								{
									"7ccdb2c9-a232-54b9-9e1c-36730bcf3b50",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_Hotbar_Icarus",
							targetSubType = "Furthest",
							targetType = "Tank",
							uuid = "f2f66a74-26d7-3fc8-9069-781173516aa3",
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
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "SAGE",
							name = "Self: SGE",
							uuid = "d218d3fb-b63f-d885-848f-a000ba9274e7",
							version = 3,
						},
						inheritedIndex = 1,
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return TensorCore.Avoidance.inAnyAOE(TensorCore.mGetPlayer().pos.x, TensorCore.mGetPlayer().pos.y, TensorCore.mGetPlayer().pos.z)",
							dequeueIfLuaFalse = true,
							name = "In AoE",
							uuid = "f0621a59-ba03-0d62-b08c-7ad2b7e5ce17",
							version = 3,
						},
					},
					
					{
						data = 
						{
							conditionType = 6,
							inRangeValue = 5,
							name = "Target Range: >= 5y",
							uuid = "7ccdb2c9-a232-54b9-9e1c-36730bcf3b50",
							version = 3,
						},
					},
				},
				mechanicTime = 109.77404737751,
				name = "[SGE] Icarus",
				timelineIndex = 23,
				timerOffset = 0.20000000298023,
				uuid = "5223cfd4-abf5-bb36-80f6-21b5ce582150",
				version = 2,
			},
		},
	},
	[24] = 
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
									"26fe8bf0-8e58-6157-9b67-e8a64a6b191a",
									true,
								},
								
								{
									"0796f2c7-5782-7e71-8675-e259a5fdcac0",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_Healbar_EukrasianPrognosis",
							uuid = "9f150df4-47fb-823d-a797-346087437cd2",
							variableTogglesType = 3,
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
							jobValue = "SAGE",
							name = "Self: SGE",
							uuid = "26fe8bf0-8e58-6157-9b67-e8a64a6b191a",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Party",
							comparator = 2,
							conditionType = 4,
							inRangeValue = 20,
							minTargetPercent = true,
							name = "Party Range: <= 20y",
							partyTargetNumber = 100,
							partyTargetSubType = "Number",
							uuid = "0796f2c7-5782-7e71-8675-e259a5fdcac0",
							version = 3,
						},
					},
					
					{
						data = 
						{
							buffID = 3898,
							category = "Self",
							name = "Self Buff: Philosophia",
							uuid = "0eec014e-67d8-1279-bc33-249d617a104b",
							version = 3,
						},
					},
				},
				mechanicTime = 114.28706589603,
				name = "[SGE] Eukrasian Prognosis",
				timelineIndex = 24,
				timerEndOffset = 5,
				timerOffset = -2,
				timerStartOffset = -5,
				uuid = "3cfc0b3f-cbfe-16fb-8615-ecb80a125dab",
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
									"2aede583-6334-5e6e-8897-d0185d2e479e",
									true,
								},
								
								{
									"2655f02b-090f-3366-8e9d-81bd1daab933",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_Healbar_Holos",
							uuid = "a63d60d1-0099-4678-9951-0dde4026e2a7",
							variableTogglesType = 3,
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
							jobValue = "SAGE",
							name = "Self: SGE",
							uuid = "2aede583-6334-5e6e-8897-d0185d2e479e",
							version = 3,
						},
						inheritedIndex = 1,
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
							uuid = "2655f02b-090f-3366-8e9d-81bd1daab933",
							version = 3,
						},
					},
				},
				mechanicTime = 118.07975730716,
				name = "[SGE] Holos",
				timeRange = true,
				timelineIndex = 25,
				timerEndOffset = -1,
				timerStartOffset = -14.5,
				uuid = "d80e34a4-2bdc-a487-bd9c-0dcf4b83e094",
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
							aType = "Lua",
							actionLua = "TensorDrift_SlidecastForceHold = true\nself.used = true",
							gVar = "ACR_RikuSGE3_CD",
							name = "Force Slidecast",
							uuid = "26b75ba9-ffe2-5289-bbe4-7548e58817b5",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "TensorDrift_SlidecastForceHold = false\nself.used = true",
							gVar = "ACR_RikuSGE3_CD",
							name = "End Slide",
							uuid = "c9525cfd-c78c-8c38-b40b-09e5fe1fbe7b",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				mechanicTime = 118.07975730716,
				name = "Force Slidecast",
				throttleTime = 9500,
				timeRange = true,
				timelineIndex = 25,
				timerEndOffset = 6,
				timerStartOffset = -6,
				uuid = "46f259ab-af10-dc7c-a363-919f4d62cc6d",
				version = 2,
			},
			inheritedIndex = 7,
		},
	},
	[26] = 
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
									"6eed371c-276e-0dc6-bfef-64a1ef96e29f",
									true,
								},
								
								{
									"6e5cce1c-e91c-060c-b26b-d9c804cb7b6e",
									true,
								},
								
								{
									"73317a59-32cc-0ef3-8144-5d37b696cab3",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_Healbar_Kerachole",
							uuid = "1f6dfa69-9fa5-6422-bae0-e4c484120183",
							variableTogglesType = 3,
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
							jobValue = "SAGE",
							name = "Self: SGE",
							uuid = "6eed371c-276e-0dc6-bfef-64a1ef96e29f",
							version = 3,
						},
						inheritedIndex = 1,
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
							uuid = "6e5cce1c-e91c-060c-b26b-d9c804cb7b6e",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionCDValue = 1,
							actionID = 24298,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "Self: Kerachole CD <= 1s",
							uuid = "73317a59-32cc-0ef3-8144-5d37b696cab3",
							version = 3,
						},
					},
				},
				mechanicTime = 132.26514619605,
				name = "[SGE] Kerachole",
				timeRange = true,
				timelineIndex = 26,
				timerEndOffset = -1,
				timerStartOffset = -14.5,
				uuid = "8a7b5dc4-530b-2bb1-bedb-1292cb5ee35e",
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
									"26fe8bf0-8e58-6157-9b67-e8a64a6b191a",
									true,
								},
								
								{
									"0796f2c7-5782-7e71-8675-e259a5fdcac0",
									true,
								},
								
								{
									"303cfea5-c9de-3c82-8055-df4b83304e43",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_Healbar_EukrasianPrognosis",
							uuid = "9f150df4-47fb-823d-a797-346087437cd2",
							variableTogglesType = 3,
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
							jobValue = "SAGE",
							name = "Self: SGE",
							uuid = "26fe8bf0-8e58-6157-9b67-e8a64a6b191a",
							version = 3,
						},
						inheritedIndex = 1,
					},
					
					{
						data = 
						{
							category = "Party",
							comparator = 2,
							conditionType = 4,
							inRangeValue = 20,
							minTargetPercent = true,
							name = "Party Range: <= 20y",
							partyTargetNumber = 100,
							partyTargetSubType = "Number",
							uuid = "0796f2c7-5782-7e71-8675-e259a5fdcac0",
							version = 3,
						},
					},
					
					{
						data = 
						{
							buffCheckType = 2,
							buffID = 2609,
							category = "Party",
							name = "DT: Missing Eukrasian Prognosis",
							partyTargetSubType = "Number",
							partyTargetType = "Detection Target",
							uuid = "5b3830f2-93e2-9833-9894-680daafb64f5",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Party",
							conditionType = 10,
							inGroupTargetType = "Tank",
							name = "DT: Tank",
							partyTargetType = "Detection Target",
							uuid = "d00ae7a2-5b63-9ea0-8f6c-a76c339c4bee",
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
									"5b3830f2-93e2-9833-9894-680daafb64f5",
									true,
								},
								
								{
									"d00ae7a2-5b63-9ea0-8f6c-a76c339c4bee",
									false,
								},
							},
							filterTargetType = "Party",
							name = "F - Non Tank Missing Shield",
							uuid = "303cfea5-c9de-3c82-8055-df4b83304e43",
							version = 3,
						},
					},
				},
				mechanicTime = 132.26514619605,
				name = "[SGE] Eukrasian Prognosis",
				timelineIndex = 26,
				timerEndOffset = 5,
				timerOffset = -6,
				timerStartOffset = -5,
				uuid = "9475ceea-9df5-323a-85d5-4586ff3d2bc5",
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
							aType = "ACR",
							conditions = 
							{
								
								{
									"26fe8bf0-8e58-6157-9b67-e8a64a6b191a",
									true,
								},
								
								{
									"0796f2c7-5782-7e71-8675-e259a5fdcac0",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_Healbar_Ixochole",
							uuid = "9f150df4-47fb-823d-a797-346087437cd2",
							variableTogglesType = 3,
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
							jobValue = "SAGE",
							name = "Self: SGE",
							uuid = "26fe8bf0-8e58-6157-9b67-e8a64a6b191a",
							version = 3,
						},
						inheritedIndex = 1,
					},
					
					{
						data = 
						{
							category = "Party",
							comparator = 2,
							conditionType = 4,
							inRangeValue = 20,
							minTargetPercent = true,
							name = "Party Range: <= 20y",
							partyTargetNumber = 100,
							partyTargetSubType = "Number",
							uuid = "0796f2c7-5782-7e71-8675-e259a5fdcac0",
							version = 3,
						},
					},
				},
				mechanicTime = 132.26514619605,
				name = "[SGE] Ixochole",
				timelineIndex = 26,
				timerEndOffset = 5,
				timerOffset = 1,
				timerStartOffset = -5,
				uuid = "8702fe07-67ff-0367-8e4d-ed1a55486a59",
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
									"ace000e6-5541-6a8d-b064-b432e620d43a",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_Healbar_Pneuma",
							uuid = "9f150df4-47fb-823d-a797-346087437cd2",
							variableTogglesType = 3,
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
							jobValue = "SAGE",
							name = "Self: SGE",
							uuid = "ace000e6-5541-6a8d-b064-b432e620d43a",
							version = 3,
						},
						inheritedIndex = 1,
					},
				},
				mechanicTime = 132.26514619605,
				name = "[SGE] Pneuma",
				timelineIndex = 26,
				timerEndOffset = 5,
				timerOffset = -13,
				timerStartOffset = -5,
				uuid = "31c1ba5f-f64f-034b-85ca-9a389c28c903",
				version = 2,
			},
			inheritedIndex = 18,
		},
	},
	[28] = 
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
									"26fe8bf0-8e58-6157-9b67-e8a64a6b191a",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_Burn",
							uuid = "9f150df4-47fb-823d-a797-346087437cd2",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"26fe8bf0-8e58-6157-9b67-e8a64a6b191a",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_Burn",
							gVarValue = 2,
							uuid = "9ac8c031-3563-647d-9823-247f402be1c0",
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
							jobValue = "SAGE",
							name = "Self: SGE",
							uuid = "26fe8bf0-8e58-6157-9b67-e8a64a6b191a",
							version = 3,
						},
						inheritedIndex = 1,
					},
				},
				mechanicTime = 137.52892397383,
				name = "[SGE] Toggle Burn",
				throttleTime = 3000,
				timeRange = true,
				timelineIndex = 28,
				timerEndOffset = 2,
				timerStartOffset = -2,
				uuid = "41876e86-0159-f856-8735-6692d970bc36",
				version = 2,
			},
		},
	},
	[29] = 
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
									"a7ff75cf-1c65-b308-9b67-891e93f1c4f5",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_Healbar_Soteria",
							uuid = "9f150df4-47fb-823d-a797-346087437cd2",
							variableTogglesType = 3,
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
							jobValue = "SAGE",
							name = "Self: SGE",
							uuid = "a7ff75cf-1c65-b308-9b67-891e93f1c4f5",
							version = 3,
						},
						inheritedIndex = 1,
					},
				},
				mechanicTime = 139.61710915902,
				name = "[SGE] Soteria",
				timelineIndex = 29,
				timerEndOffset = 3,
				timerOffset = 3.0999999046326,
				timerStartOffset = -3,
				uuid = "129244f7-8672-3cbc-b7b0-fc2828b50652",
				version = 2,
			},
		},
	},
	[30] = 
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
									"a7ff75cf-1c65-b308-9b67-891e93f1c4f5",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_MovementSwiftcast",
							uuid = "3cff111f-56ee-e7d1-85e2-f6eecba10921",
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
							jobValue = "SAGE",
							name = "Self: SGE",
							uuid = "a7ff75cf-1c65-b308-9b67-891e93f1c4f5",
							version = 3,
						},
						inheritedIndex = 1,
					},
				},
				enabled = false,
				mechanicTime = 151.47790545531,
				name = "[SGE] Toggle M Swift",
				timelineIndex = 30,
				timerEndOffset = 5,
				timerStartOffset = -5,
				uuid = "bb208e28-c9bf-94f9-91e8-e836f98f570f",
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
							aType = "ACR",
							conditions = 
							{
								
								{
									"26fe8bf0-8e58-6157-9b67-e8a64a6b191a",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_Healbar_Haima",
							targetSubType = "Lowest HP",
							targetType = "Party",
							uuid = "9f150df4-47fb-823d-a797-346087437cd2",
							variableIsHover = true,
							variableTogglesType = 3,
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
							jobValue = "SAGE",
							name = "Self: SGE",
							uuid = "26fe8bf0-8e58-6157-9b67-e8a64a6b191a",
							version = 3,
						},
						inheritedIndex = 1,
					},
				},
				enabled = false,
				mechanicTime = 151.47790545531,
				name = "[SGE] Haima",
				timelineIndex = 30,
				timerEndOffset = 5,
				timerOffset = -3,
				timerStartOffset = -5,
				uuid = "d9ae83b0-4e9d-64e1-a7cb-329004099116",
				version = 2,
			},
			inheritedIndex = 19,
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
									"26fe8bf0-8e58-6157-9b67-e8a64a6b191a",
									true,
								},
								
								{
									"0796f2c7-5782-7e71-8675-e259a5fdcac0",
									true,
								},
								
								{
									"303cfea5-c9de-3c82-8055-df4b83304e43",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_Healbar_EukrasianPrognosis",
							uuid = "9f150df4-47fb-823d-a797-346087437cd2",
							variableTogglesType = 3,
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
							jobValue = "SAGE",
							name = "Self: SGE",
							uuid = "26fe8bf0-8e58-6157-9b67-e8a64a6b191a",
							version = 3,
						},
						inheritedIndex = 1,
					},
					
					{
						data = 
						{
							category = "Party",
							comparator = 2,
							conditionType = 4,
							inRangeValue = 20,
							minTargetPercent = true,
							name = "Party Range: <= 20y",
							partyTargetNumber = 100,
							partyTargetSubType = "Number",
							uuid = "0796f2c7-5782-7e71-8675-e259a5fdcac0",
							version = 3,
						},
					},
					
					{
						data = 
						{
							buffCheckType = 2,
							buffID = 2609,
							category = "Party",
							name = "DT: Missing Eukrasian Prognosis",
							partyTargetSubType = "Number",
							partyTargetType = "Detection Target",
							uuid = "5b3830f2-93e2-9833-9894-680daafb64f5",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Party",
							conditionType = 10,
							inGroupTargetType = "Tank",
							name = "DT: Tank",
							partyTargetType = "Detection Target",
							uuid = "d00ae7a2-5b63-9ea0-8f6c-a76c339c4bee",
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
									"5b3830f2-93e2-9833-9894-680daafb64f5",
									true,
								},
								
								{
									"d00ae7a2-5b63-9ea0-8f6c-a76c339c4bee",
									false,
								},
							},
							filterTargetType = "Party",
							name = "F - Non Tank Missing Shield",
							uuid = "303cfea5-c9de-3c82-8055-df4b83304e43",
							version = 3,
						},
					},
				},
				mechanicTime = 167.71168967762,
				name = "[SGE] Eukrasian Prognosis",
				timelineIndex = 34,
				timerEndOffset = 5,
				timerOffset = 0.10000000149012,
				timerStartOffset = -5,
				uuid = "13d7c36e-2114-6f98-80e0-8028959f2d29",
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
							aType = "ACR",
							conditions = 
							{
								
								{
									"299bb84c-9fa3-6837-9e30-b8c05eae3959",
									true,
								},
								
								{
									"db9e281c-6f91-3db5-8d6c-487c8eb46530",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_Healbar_Physis",
							uuid = "9f150df4-47fb-823d-a797-346087437cd2",
							variableTogglesType = 3,
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
							jobValue = "SAGE",
							name = "Self: SGE",
							uuid = "299bb84c-9fa3-6837-9e30-b8c05eae3959",
							version = 3,
						},
						inheritedIndex = 1,
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
							uuid = "db9e281c-6f91-3db5-8d6c-487c8eb46530",
							version = 3,
						},
					},
				},
				mechanicTime = 167.71168967762,
				name = "[SGE] Physis",
				timeRange = true,
				timelineIndex = 34,
				timerEndOffset = -1,
				timerStartOffset = -5,
				uuid = "63a29356-fd0f-7e1b-929d-45fb878b6db4",
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
							aType = "ACR",
							conditions = 
							{
								
								{
									"81ae31c5-9e92-6a56-ba07-ff21087cac48",
									true,
								},
								
								{
									"800486cc-705c-5caf-8fba-1dd95613f62d",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_Healbar_Panhaima",
							uuid = "3513de14-07f8-c935-80cb-36aa906944eb",
							variableTogglesType = 3,
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
							jobValue = "SAGE",
							name = "Self: SGE",
							uuid = "81ae31c5-9e92-6a56-ba07-ff21087cac48",
							version = 3,
						},
						inheritedIndex = 1,
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
							uuid = "800486cc-705c-5caf-8fba-1dd95613f62d",
							version = 3,
						},
					},
				},
				mechanicTime = 167.71168967762,
				name = "[SGE] Panhaima",
				timelineIndex = 34,
				timerEndOffset = -10,
				timerOffset = -4,
				timerStartOffset = -16,
				uuid = "a709652e-a0cb-72fd-beb6-838cb75e1e78",
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
							aType = "ACR",
							conditions = 
							{
								
								{
									"6eed371c-276e-0dc6-bfef-64a1ef96e29f",
									true,
								},
								
								{
									"6e5cce1c-e91c-060c-b26b-d9c804cb7b6e",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_Healbar_Kerachole",
							uuid = "1f6dfa69-9fa5-6422-bae0-e4c484120183",
							variableTogglesType = 3,
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
							jobValue = "SAGE",
							name = "Self: SGE",
							uuid = "6eed371c-276e-0dc6-bfef-64a1ef96e29f",
							version = 3,
						},
						inheritedIndex = 1,
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
							uuid = "6e5cce1c-e91c-060c-b26b-d9c804cb7b6e",
							version = 3,
						},
					},
				},
				mechanicTime = 173.37050637968,
				name = "[SGE] Kerachole",
				timeRange = true,
				timelineIndex = 35,
				timerEndOffset = -1,
				timerStartOffset = -16,
				uuid = "efb6785d-c0a1-a715-8401-e6931f157806",
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
							actionID = 24290,
							conditions = 
							{
								
								{
									"26fe8bf0-8e58-6157-9b67-e8a64a6b191a",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_Healbar_EukrasianPrognosis",
							uuid = "9f150df4-47fb-823d-a797-346087437cd2",
							variableTogglesType = 3,
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
							jobValue = "SAGE",
							name = "Self: SGE",
							uuid = "26fe8bf0-8e58-6157-9b67-e8a64a6b191a",
							version = 3,
						},
						inheritedIndex = 1,
					},
				},
				mechanicTime = 173.37050637968,
				name = "[SGE] Eukrasia",
				timelineIndex = 35,
				timerEndOffset = -1,
				timerOffset = -2.5,
				timerStartOffset = -5,
				uuid = "6a976620-9cec-373a-88aa-1c4e992e71af",
				version = 2,
			},
		},
	},
	[36] = 
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
							actionLua = "TensorDrift_SlidecastForceHold = true\nself.used = true",
							gVar = "ACR_RikuSGE3_CD",
							name = "Force Slidecast",
							uuid = "26b75ba9-ffe2-5289-bbe4-7548e58817b5",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "TensorDrift_SlidecastForceHold = false\nself.used = true",
							gVar = "ACR_RikuSGE3_CD",
							name = "End Slide",
							uuid = "c9525cfd-c78c-8c38-b40b-09e5fe1fbe7b",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				mechanicTime = 186.42310109999,
				name = "Force Slidecast",
				throttleTime = 3000,
				timeRange = true,
				timelineIndex = 36,
				timerEndOffset = 2,
				timerStartOffset = -2,
				uuid = "7c4f1ac8-4618-fad6-9e2f-68059fd0ddf0",
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
							aType = "ACR",
							conditions = 
							{
								
								{
									"26fe8bf0-8e58-6157-9b67-e8a64a6b191a",
									true,
								},
								
								{
									"0796f2c7-5782-7e71-8675-e259a5fdcac0",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_Healbar_Ixochole",
							uuid = "9f150df4-47fb-823d-a797-346087437cd2",
							variableTogglesType = 3,
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
							jobValue = "SAGE",
							name = "Self: SGE",
							uuid = "26fe8bf0-8e58-6157-9b67-e8a64a6b191a",
							version = 3,
						},
						inheritedIndex = 1,
					},
					
					{
						data = 
						{
							category = "Party",
							comparator = 2,
							conditionType = 4,
							inRangeValue = 20,
							minTargetPercent = true,
							name = "Party Range: <= 20y",
							partyTargetNumber = 100,
							partyTargetSubType = "Number",
							uuid = "0796f2c7-5782-7e71-8675-e259a5fdcac0",
							version = 3,
						},
					},
				},
				mechanicTime = 186.42310109999,
				name = "[SGE] Ixochole",
				timeRange = true,
				timelineIndex = 36,
				timerEndOffset = 8,
				timerStartOffset = 1,
				uuid = "e7be39f6-455c-77f9-a5fe-362d8dd722a7",
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
									"26fe8bf0-8e58-6157-9b67-e8a64a6b191a",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_Burn",
							uuid = "9f150df4-47fb-823d-a797-346087437cd2",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"26fe8bf0-8e58-6157-9b67-e8a64a6b191a",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_Burn",
							gVarValue = 2,
							uuid = "9ac8c031-3563-647d-9823-247f402be1c0",
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
							jobValue = "SAGE",
							name = "Self: SGE",
							uuid = "26fe8bf0-8e58-6157-9b67-e8a64a6b191a",
							version = 3,
						},
						inheritedIndex = 1,
					},
				},
				mechanicTime = 186.42310109999,
				name = "[SGE] Toggle Burn",
				throttleTime = 3000,
				timeRange = true,
				timelineIndex = 36,
				timerEndOffset = 7,
				timerStartOffset = 3,
				uuid = "ec5ce401-dc6f-f56f-a0df-8fc582e0220f",
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
							conditions = 
							{
								
								{
									"53d292a9-114e-4b73-ade9-8a05229e04b5",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_Healbar_Krasis",
							targetSubType = "Lowest HP",
							targetType = "Tank",
							uuid = "9f150df4-47fb-823d-a797-346087437cd2",
							variableIsHover = true,
							variableTogglesType = 3,
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
							jobValue = "SAGE",
							name = "Self: SGE",
							uuid = "53d292a9-114e-4b73-ade9-8a05229e04b5",
							version = 3,
						},
						inheritedIndex = 1,
					},
				},
				mechanicTime = 197.52218784626,
				name = "[SGE] Krasis",
				timelineIndex = 38,
				timerEndOffset = 5,
				timerOffset = 0.10000000149012,
				timerStartOffset = -5,
				uuid = "996e4332-1673-092a-ab2f-784ed87b5c32",
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
							actionID = 24316,
							conditions = 
							{
								
								{
									"2396dc77-b792-7e80-9887-f83101f21e56",
									true,
								},
								
								{
									"be39038c-1ae7-41d9-baee-6ef533259037",
									true,
								},
								
								{
									"1be9e28c-c0aa-41e7-a394-f4268f99f7a4",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_CD",
							targetType = "Enemy",
							uuid = "870510d0-9a27-ffb0-877a-e19b2e0e5941",
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
							jobValue = "SAGE",
							name = "Self: SGE",
							uuid = "2396dc77-b792-7e80-9887-f83101f21e56",
							version = 3,
						},
						inheritedIndex = 1,
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return FFXIV_Common_BotRunning",
							name = "Assist Enabled",
							uuid = "1be9e28c-c0aa-41e7-a394-f4268f99f7a4",
							version = 3,
						},
						inheritedIndex = 2,
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 6,
							gaugeIndex = 3,
							gaugeValue = 2,
							name = "Self Gauge: >= 2 Toxikon",
							uuid = "be39038c-1ae7-41d9-baee-6ef533259037",
							version = 3,
						},
					},
				},
				loop = true,
				mechanicTime = 197.52218784626,
				name = "[SGE] Toxikon",
				timeRange = true,
				timelineIndex = 38,
				timerEndOffset = -0.5,
				timerOffset = -6,
				timerStartOffset = -7.5,
				uuid = "2ac3f2cb-1aa6-62e2-81de-cd79741312d6",
				version = 2,
			},
			inheritedIndex = 4,
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							actionID = 24316,
							conditions = 
							{
								
								{
									"2396dc77-b792-7e80-9887-f83101f21e56",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_CD",
							targetType = "Enemy",
							uuid = "870510d0-9a27-ffb0-877a-e19b2e0e5941",
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
							jobValue = "SAGE",
							name = "Self: SGE",
							uuid = "2396dc77-b792-7e80-9887-f83101f21e56",
							version = 3,
						},
						inheritedIndex = 1,
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 6,
							gaugeIndex = 3,
							gaugeValue = 1,
							name = "Self Gauge: >= 1 Toxikon",
							uuid = "be39038c-1ae7-41d9-baee-6ef533259037",
							version = 3,
						},
					},
				},
				mechanicTime = 197.52218784626,
				name = "[SGE] Toxikon",
				timelineIndex = 38,
				timerEndOffset = -0.5,
				timerOffset = -2.5,
				timerStartOffset = -7.5,
				uuid = "7734258f-4ecd-29b5-81c8-928b72744060",
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
							aType = "ACR",
							conditions = 
							{
								
								{
									"6eed371c-276e-0dc6-bfef-64a1ef96e29f",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_Healbar_EukrasianDiagnosis",
							targetSubType = "Topmost Partylist",
							targetType = "Tank",
							uuid = "1f6dfa69-9fa5-6422-bae0-e4c484120183",
							variableIsHover = true,
							variableTogglesType = 3,
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"6eed371c-276e-0dc6-bfef-64a1ef96e29f",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_Healbar_EukrasianDiagnosis",
							targetSubType = "Bottom-most Partylist",
							targetType = "Tank",
							uuid = "bdea2236-c2ad-e9f6-9707-6df8298bbf01",
							variableIsHover = true,
							variableTogglesType = 3,
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
							jobValue = "SAGE",
							name = "Self: SGE",
							uuid = "6eed371c-276e-0dc6-bfef-64a1ef96e29f",
							version = 3,
						},
						inheritedIndex = 1,
					},
				},
				mechanicTime = 197.52218784626,
				name = "[SGE] Eukrasian Diagnosis",
				timeRange = true,
				timelineIndex = 38,
				timerEndOffset = 7,
				timerOffset = 1,
				timerStartOffset = 1,
				uuid = "82546f0b-e1aa-f3fa-a3ca-cdcba5c8681e",
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
									"515d74ca-ab1b-e512-a7d1-7bf5c67a20e3",
									true,
								},
								
								{
									"c7dea2c7-3688-0fad-9c73-4e054fa0a85b",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_Healbar_Kardia",
							targetSubType = "Topmost Partylist",
							targetType = "Detection Target",
							uuid = "c0a9c51e-79a0-c1be-b647-992fb1fced0e",
							variableIsHover = true,
							variableTogglesType = 3,
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
							conditionLua = "local t1 = AnyoneCore.Roster and AnyoneCore.Roster.entOf(\"T1\")\n\nif not t1 then\n    return false\nend\n\neventArgs.detectionTargetID = t1.id\nreturn true",
							dequeueIfLuaFalse = true,
							name = "AnyoneCore Roster: T1",
							uuid = "515d74ca-ab1b-e512-a7d1-7bf5c67a20e3",
							version = 3,
						},
						inheritedIndex = 4,
					},
					
					{
						data = 
						{
							buffCheckType = 2,
							buffID = 2605,
							category = "Party",
							dequeueIfLuaFalse = true,
							name = "DT: Kardion Missing",
							partyTargetSubType = "Topmost Partylist",
							partyTargetType = "Detection Target",
							uuid = "c7dea2c7-3688-0fad-9c73-4e054fa0a85b",
							version = 3,
						},
						inheritedIndex = 4,
					},
				},
				mechanicTime = 197.52218784626,
				name = "[SGE] Kardia",
				timelineIndex = 38,
				timerOffset = 5,
				uuid = "e02eb5da-e0a0-0086-b77f-f35cf2a660eb",
				version = 2,
			},
			inheritedIndex = 17,
		},
	},
	[39] = 
	{
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							actionID = 24290,
							conditions = 
							{
								
								{
									"26fe8bf0-8e58-6157-9b67-e8a64a6b191a",
									true,
								},
								
								{
									"c71f8391-2567-6c74-9a0d-aafc71a7286d",
									true,
								},
								
								{
									"667149d9-c922-e4a0-a695-46eff0de1f65",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_Healbar_EukrasianPrognosis",
							uuid = "9f150df4-47fb-823d-a797-346087437cd2",
							variableTogglesType = 3,
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
							jobValue = "SAGE",
							name = "Self: SGE",
							uuid = "26fe8bf0-8e58-6157-9b67-e8a64a6b191a",
							version = 3,
						},
						inheritedIndex = 1,
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return FFXIV_Common_BotRunning",
							dequeueIfLuaFalse = true,
							name = "Assist Enabled",
							uuid = "c71f8391-2567-6c74-9a0d-aafc71a7286d",
							version = 3,
						},
						inheritedIndex = 2,
					},
					
					{
						data = 
						{
							buffCheckType = 2,
							buffID = 2606,
							category = "Self",
							name = "Self Buff: Eukrasia Missing",
							uuid = "667149d9-c922-e4a0-a695-46eff0de1f65",
							version = 3,
						},
					},
				},
				loop = true,
				mechanicTime = 207.87965305988,
				name = "[SGE] Eukrasia",
				randomTimeout = 10,
				timeRange = true,
				timelineIndex = 39,
				timerEndOffset = -1,
				timerOffset = -1.5,
				timerStartOffset = -5,
				uuid = "1f20670f-50fb-0b43-8309-6727cb668cbe",
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
									"26fe8bf0-8e58-6157-9b67-e8a64a6b191a",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_Hotbar_Potion",
							uuid = "9f150df4-47fb-823d-a797-346087437cd2",
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
							jobValue = "SAGE",
							name = "Self: SGE",
							uuid = "26fe8bf0-8e58-6157-9b67-e8a64a6b191a",
							version = 3,
						},
						inheritedIndex = 1,
					},
				},
				mechanicTime = 207.87965305988,
				name = "[SGE] Use Pot",
				timelineIndex = 39,
				timerEndOffset = -1,
				timerOffset = -0.80000001192093,
				timerStartOffset = -5,
				uuid = "f125c878-a551-69aa-b8c4-316dc1f71d9a",
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
									"26fe8bf0-8e58-6157-9b67-e8a64a6b191a",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_Burn",
							uuid = "9f150df4-47fb-823d-a797-346087437cd2",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"26fe8bf0-8e58-6157-9b67-e8a64a6b191a",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_Burn",
							gVarValue = 2,
							uuid = "9ac8c031-3563-647d-9823-247f402be1c0",
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
							jobValue = "SAGE",
							name = "Self: SGE",
							uuid = "26fe8bf0-8e58-6157-9b67-e8a64a6b191a",
							version = 3,
						},
						inheritedIndex = 1,
					},
				},
				mechanicTime = 207.87965305988,
				name = "[SGE] Toggle Burn",
				throttleTime = 6000,
				timeRange = true,
				timelineIndex = 39,
				timerEndOffset = 10,
				timerStartOffset = 3,
				uuid = "ffe90889-3b70-3ec3-aa82-3243c684431d",
				version = 2,
			},
		},
	},
	[40] = 
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
									"26fe8bf0-8e58-6157-9b67-e8a64a6b191a",
									true,
								},
								
								{
									"08f3f7b5-6ab3-a32f-a878-f6743996bebb",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_Healbar_Taurochole",
							targetType = "Detection Target",
							uuid = "9f150df4-47fb-823d-a797-346087437cd2",
							variableIsHover = true,
							variableTogglesType = 3,
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
							jobValue = "SAGE",
							name = "Self: SGE",
							uuid = "26fe8bf0-8e58-6157-9b67-e8a64a6b191a",
							version = 3,
						},
						inheritedIndex = 1,
					},
					
					{
						data = 
						{
							category = "Party",
							conditionType = 7,
							jobValue = "PALADIN",
							name = "DT: PLD",
							partyTargetType = "Detection Target",
							uuid = "925e192f-b635-b497-b77e-a7f176c00264",
							version = 3,
						},
						inheritedIndex = 2,
					},
					
					{
						data = 
						{
							category = "Filter",
							conditions = 
							{
								
								{
									"925e192f-b635-b497-b77e-a7f176c00264",
									false,
								},
							},
							filterTargetType = "Tank",
							uuid = "08f3f7b5-6ab3-a32f-a878-f6743996bebb",
							version = 3,
						},
					},
				},
				mechanicTime = 220.14545421679,
				name = "[SGE] Taurochole",
				randomOffset = -1,
				timeRange = true,
				timelineIndex = 40,
				timerEndOffset = -1,
				timerOffset = -10,
				timerStartOffset = -10,
				uuid = "648ca7d1-da93-2737-81e7-5371560e8e79",
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
									"26fe8bf0-8e58-6157-9b67-e8a64a6b191a",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_Healbar_Haima",
							targetSubType = "Lowest HP",
							targetType = "Main Tank",
							uuid = "9f150df4-47fb-823d-a797-346087437cd2",
							variableIsHover = true,
							variableTogglesType = 3,
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
							jobValue = "SAGE",
							name = "Self: SGE",
							uuid = "26fe8bf0-8e58-6157-9b67-e8a64a6b191a",
							version = 3,
						},
						inheritedIndex = 1,
					},
				},
				mechanicTime = 220.14545421679,
				name = "[SGE] Haima",
				timelineIndex = 40,
				timerEndOffset = 5,
				timerOffset = -8,
				timerStartOffset = -5,
				uuid = "eacba591-9fb6-6d36-8429-163657ea4475",
				version = 2,
			},
			inheritedIndex = 4,
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
									"738f5cf2-ec60-616d-9a2c-f2dbd06647e8",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_Healbar_Kardia",
							targetSubType = "Topmost Partylist",
							targetType = "Main Tank",
							uuid = "c0a9c51e-79a0-c1be-b647-992fb1fced0e",
							variableIsHover = true,
							variableTogglesType = 3,
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							buffCheckType = 2,
							buffID = 2605,
							category = "Party",
							name = "MT Buff: Kardion Missing",
							partyTargetSubType = "Topmost Partylist",
							partyTargetType = "Main Tank",
							uuid = "738f5cf2-ec60-616d-9a2c-f2dbd06647e8",
							version = 3,
						},
					},
				},
				mechanicTime = 220.14545421679,
				name = "[SGE] Kardia MT",
				timelineIndex = 40,
				timerOffset = 1,
				uuid = "8a623659-abfe-258a-ae1e-808d7a76b31c",
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
							aType = "ACR",
							conditions = 
							{
								
								{
									"26fe8bf0-8e58-6157-9b67-e8a64a6b191a",
									true,
								},
								
								{
									"0796f2c7-5782-7e71-8675-e259a5fdcac0",
									true,
								},
							},
							fallthrough = true,
							gVar = "ACR_RikuSGE3_Healbar_Zoe",
							uuid = "e8241127-b7f4-8235-9f22-e126fbe1aa59",
							variableTogglesType = 3,
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
									"26fe8bf0-8e58-6157-9b67-e8a64a6b191a",
									true,
								},
								
								{
									"0796f2c7-5782-7e71-8675-e259a5fdcac0",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_Healbar_EukrasianPrognosis",
							uuid = "9f150df4-47fb-823d-a797-346087437cd2",
							variableTogglesType = 3,
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
							jobValue = "SAGE",
							name = "Self: SGE",
							uuid = "26fe8bf0-8e58-6157-9b67-e8a64a6b191a",
							version = 3,
						},
						inheritedIndex = 1,
					},
					
					{
						data = 
						{
							category = "Party",
							comparator = 2,
							conditionType = 4,
							inRangeValue = 20,
							minTargetPercent = true,
							name = "Party Range: <= 20y",
							partyTargetNumber = 100,
							partyTargetSubType = "Number",
							uuid = "0796f2c7-5782-7e71-8675-e259a5fdcac0",
							version = 3,
						},
					},
				},
				mechanicTime = 220.14545421679,
				name = "[SGE] Zoe Eukrasian Prognosis",
				timeRange = true,
				timelineIndex = 40,
				timerEndOffset = 7,
				timerOffset = 0.10000000149012,
				timerStartOffset = 0.10000000149012,
				uuid = "9aec4b15-12d7-04f5-b144-c4ed31aa7e80",
				version = 2,
			},
			inheritedIndex = 17,
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
									"a7ff75cf-1c65-b308-9b67-891e93f1c4f5",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_MovementSwiftcast",
							uuid = "3cff111f-56ee-e7d1-85e2-f6eecba10921",
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
							jobValue = "SAGE",
							name = "Self: SGE",
							uuid = "a7ff75cf-1c65-b308-9b67-891e93f1c4f5",
							version = 3,
						},
						inheritedIndex = 1,
					},
				},
				mechanicTime = 235.34477128997,
				name = "[SGE] Toggle M Swift",
				timelineIndex = 41,
				timerEndOffset = 5,
				timerStartOffset = -5,
				uuid = "114b8536-718a-6a11-85cc-196d84de4804",
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
							aType = "ACR",
							conditions = 
							{
								
								{
									"26fe8bf0-8e58-6157-9b67-e8a64a6b191a",
									true,
								},
								
								{
									"0796f2c7-5782-7e71-8675-e259a5fdcac0",
									true,
								},
								
								{
									"303cfea5-c9de-3c82-8055-df4b83304e43",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_Healbar_EukrasianPrognosis",
							uuid = "9f150df4-47fb-823d-a797-346087437cd2",
							variableTogglesType = 3,
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
							jobValue = "SAGE",
							name = "Self: SGE",
							uuid = "26fe8bf0-8e58-6157-9b67-e8a64a6b191a",
							version = 3,
						},
						inheritedIndex = 1,
					},
					
					{
						data = 
						{
							category = "Party",
							comparator = 2,
							conditionType = 4,
							inRangeValue = 20,
							minTargetPercent = true,
							name = "Party Range: <= 20y",
							partyTargetNumber = 100,
							partyTargetSubType = "Number",
							uuid = "0796f2c7-5782-7e71-8675-e259a5fdcac0",
							version = 3,
						},
					},
					
					{
						data = 
						{
							buffCheckType = 2,
							buffID = 2609,
							category = "Party",
							name = "DT: Missing Eukrasian Prognosis",
							partyTargetSubType = "Number",
							partyTargetType = "Detection Target",
							uuid = "5b3830f2-93e2-9833-9894-680daafb64f5",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Party",
							conditionType = 10,
							inGroupTargetType = "Tank",
							name = "DT: Tank",
							partyTargetType = "Detection Target",
							uuid = "d00ae7a2-5b63-9ea0-8f6c-a76c339c4bee",
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
									"5b3830f2-93e2-9833-9894-680daafb64f5",
									true,
								},
								
								{
									"d00ae7a2-5b63-9ea0-8f6c-a76c339c4bee",
									false,
								},
							},
							filterTargetType = "Party",
							name = "F - Non Tank Missing Shield",
							uuid = "303cfea5-c9de-3c82-8055-df4b83304e43",
							version = 3,
						},
					},
				},
				mechanicTime = 235.34477128997,
				name = "[SGE] Eukrasian Prognosis",
				timelineIndex = 41,
				timerEndOffset = 5,
				timerOffset = 3,
				timerStartOffset = -5,
				uuid = "05bbf49f-cd5c-115c-bdc8-2ee9bd214dbf",
				version = 2,
			},
			inheritedIndex = 27,
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
									"6eed371c-276e-0dc6-bfef-64a1ef96e29f",
									true,
								},
								
								{
									"6e5cce1c-e91c-060c-b26b-d9c804cb7b6e",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_Healbar_Kerachole",
							uuid = "1f6dfa69-9fa5-6422-bae0-e4c484120183",
							variableTogglesType = 3,
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
							jobValue = "SAGE",
							name = "Self: SGE",
							uuid = "6eed371c-276e-0dc6-bfef-64a1ef96e29f",
							version = 3,
						},
						inheritedIndex = 1,
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
							uuid = "6e5cce1c-e91c-060c-b26b-d9c804cb7b6e",
							version = 3,
						},
					},
				},
				mechanicTime = 235.34477128997,
				name = "[SGE] Kerachole",
				timeRange = true,
				timelineIndex = 41,
				timerEndOffset = -1,
				timerStartOffset = -14.5,
				uuid = "3d0f96d0-2337-ead9-9ae1-e4aa7b267510",
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
									"299bb84c-9fa3-6837-9e30-b8c05eae3959",
									true,
								},
								
								{
									"db9e281c-6f91-3db5-8d6c-487c8eb46530",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_Healbar_Physis",
							uuid = "9f150df4-47fb-823d-a797-346087437cd2",
							variableTogglesType = 3,
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
							jobValue = "SAGE",
							name = "Self: SGE",
							uuid = "299bb84c-9fa3-6837-9e30-b8c05eae3959",
							version = 3,
						},
						inheritedIndex = 1,
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
							uuid = "db9e281c-6f91-3db5-8d6c-487c8eb46530",
							version = 3,
						},
					},
				},
				mechanicTime = 235.34477128997,
				name = "[SGE] Physis",
				timelineIndex = 41,
				timerEndOffset = 5,
				timerOffset = 0.10000000149012,
				timerStartOffset = -5,
				uuid = "2797fced-462c-044a-a01d-94e1b8226497",
				version = 2,
			},
		},
	},
	[42] = 
	{
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							actionID = 24316,
							conditions = 
							{
								
								{
									"2396dc77-b792-7e80-9887-f83101f21e56",
									true,
								},
								
								{
									"be39038c-1ae7-41d9-baee-6ef533259037",
									true,
								},
								
								{
									"769d47f7-d1dd-669b-a720-bcb3c9e7bd03",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_CD",
							targetType = "Enemy",
							uuid = "870510d0-9a27-ffb0-877a-e19b2e0e5941",
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
							jobValue = "SAGE",
							name = "Self: SGE",
							uuid = "2396dc77-b792-7e80-9887-f83101f21e56",
							version = 3,
						},
						inheritedIndex = 1,
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return FFXIV_Common_BotRunning",
							name = "Assist Enabled",
							uuid = "769d47f7-d1dd-669b-a720-bcb3c9e7bd03",
							version = 3,
						},
						inheritedIndex = 2,
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 6,
							gaugeIndex = 3,
							gaugeValue = 3,
							name = "Self Gauge: >= 3 Toxikon",
							uuid = "be39038c-1ae7-41d9-baee-6ef533259037",
							version = 3,
						},
					},
				},
				mechanicTime = 248.57716839869,
				name = "[SGE] Toxikon",
				timelineIndex = 42,
				timerOffset = -4,
				timerStartOffset = -2,
				uuid = "b145e8fc-98bb-dea0-834b-a8f4c9f01c10",
				version = 2,
			},
		},
	},
	[43] = 
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
									"2aede583-6334-5e6e-8897-d0185d2e479e",
									true,
								},
								
								{
									"2655f02b-090f-3366-8e9d-81bd1daab933",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_Healbar_Holos",
							uuid = "a63d60d1-0099-4678-9951-0dde4026e2a7",
							variableTogglesType = 3,
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
							jobValue = "SAGE",
							name = "Self: SGE",
							uuid = "2aede583-6334-5e6e-8897-d0185d2e479e",
							version = 3,
						},
						inheritedIndex = 1,
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
							uuid = "2655f02b-090f-3366-8e9d-81bd1daab933",
							version = 3,
						},
					},
				},
				mechanicTime = 249.21799166092,
				name = "[SGE] Holos",
				timeRange = true,
				timelineIndex = 43,
				timerEndOffset = -1,
				timerOffset = 0.10000000149012,
				timerStartOffset = -19.5,
				uuid = "38b71cd8-e595-1897-b526-43cff546078b",
				version = 2,
			},
			inheritedIndex = 4,
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
									"a7ff75cf-1c65-b308-9b67-891e93f1c4f5",
									true,
								},
								
								{
									"268cb41f-7ac9-adae-954b-05c13795af92",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_Healbar_Soteria",
							uuid = "9f150df4-47fb-823d-a797-346087437cd2",
							variableTogglesType = 3,
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
							jobValue = "SAGE",
							name = "Self: SGE",
							uuid = "a7ff75cf-1c65-b308-9b67-891e93f1c4f5",
							version = 3,
						},
						inheritedIndex = 1,
					},
					
					{
						data = 
						{
							actionCDValue = 2,
							actionID = 37033,
							category = "Self",
							conditionType = 4,
							name = "Self: Pscyhe => 2s",
							uuid = "268cb41f-7ac9-adae-954b-05c13795af92",
							version = 3,
						},
					},
				},
				mechanicTime = 249.21799166092,
				name = "[SGE] Soteria",
				timeRange = true,
				timelineIndex = 43,
				timerEndOffset = 5,
				timerStartOffset = -5,
				uuid = "6069d844-8a51-db7c-8cb1-791c51586721",
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
							aType = "ACR",
							conditions = 
							{
								
								{
									"26fe8bf0-8e58-6157-9b67-e8a64a6b191a",
									true,
								},
								
								{
									"0796f2c7-5782-7e71-8675-e259a5fdcac0",
									true,
								},
								
								{
									"303cfea5-c9de-3c82-8055-df4b83304e43",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_Healbar_EukrasianPrognosis",
							uuid = "9f150df4-47fb-823d-a797-346087437cd2",
							variableTogglesType = 3,
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
							jobValue = "SAGE",
							name = "Self: SGE",
							uuid = "26fe8bf0-8e58-6157-9b67-e8a64a6b191a",
							version = 3,
						},
						inheritedIndex = 1,
					},
					
					{
						data = 
						{
							category = "Party",
							comparator = 2,
							conditionType = 4,
							inRangeValue = 20,
							minTargetPercent = true,
							name = "Party Range: <= 20y",
							partyTargetNumber = 100,
							partyTargetSubType = "Number",
							uuid = "0796f2c7-5782-7e71-8675-e259a5fdcac0",
							version = 3,
						},
					},
					
					{
						data = 
						{
							buffCheckType = 2,
							buffID = 2609,
							category = "Party",
							name = "DT: Missing Eukrasian Prognosis",
							partyTargetSubType = "Number",
							partyTargetType = "Detection Target",
							uuid = "5b3830f2-93e2-9833-9894-680daafb64f5",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Party",
							conditionType = 10,
							inGroupTargetType = "Tank",
							name = "DT: Tank",
							partyTargetType = "Detection Target",
							uuid = "d00ae7a2-5b63-9ea0-8f6c-a76c339c4bee",
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
									"5b3830f2-93e2-9833-9894-680daafb64f5",
									true,
								},
								
								{
									"d00ae7a2-5b63-9ea0-8f6c-a76c339c4bee",
									false,
								},
							},
							filterTargetType = "Party",
							name = "F - Non Tank Missing Shield",
							uuid = "303cfea5-c9de-3c82-8055-df4b83304e43",
							version = 3,
						},
					},
				},
				mechanicTime = 249.21799166092,
				name = "[SGE] Eukrasian Prognosis",
				timelineIndex = 43,
				timerEndOffset = 5,
				timerOffset = 1.5,
				timerStartOffset = -5,
				uuid = "5a8565ca-9c75-da72-9d8f-873853c2d495",
				version = 2,
			},
			inheritedIndex = 9,
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
							actionID = 24316,
							conditions = 
							{
								
								{
									"2396dc77-b792-7e80-9887-f83101f21e56",
									true,
								},
								
								{
									"646b8227-0a3f-242f-a89c-8396f345a99c",
									true,
								},
								
								{
									"be39038c-1ae7-41d9-baee-6ef533259037",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_CD",
							targetType = "Enemy",
							uuid = "870510d0-9a27-ffb0-877a-e19b2e0e5941",
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
							jobValue = "SAGE",
							name = "Self: SGE",
							uuid = "2396dc77-b792-7e80-9887-f83101f21e56",
							version = 3,
						},
						inheritedIndex = 1,
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return FFXIV_Common_BotRunning",
							name = "Assist Enabled",
							uuid = "646b8227-0a3f-242f-a89c-8396f345a99c",
							version = 3,
						},
						inheritedIndex = 2,
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 6,
							gaugeIndex = 3,
							gaugeValue = 3,
							name = "Self Gauge: >= 3 Toxikon",
							uuid = "be39038c-1ae7-41d9-baee-6ef533259037",
							version = 3,
						},
					},
				},
				mechanicTime = 257.94281774788,
				name = "[SGE] Toxikon",
				timelineIndex = 44,
				timerOffset = -3,
				timerStartOffset = -3,
				uuid = "90215ea3-a992-1365-9e9b-ece7d1217ff2",
				version = 2,
			},
		},
	},
	[47] = 
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
									"26fe8bf0-8e58-6157-9b67-e8a64a6b191a",
									true,
								},
								
								{
									"0796f2c7-5782-7e71-8675-e259a5fdcac0",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_Healbar_Ixochole",
							uuid = "9f150df4-47fb-823d-a797-346087437cd2",
							variableTogglesType = 3,
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
							jobValue = "SAGE",
							name = "Self: SGE",
							uuid = "26fe8bf0-8e58-6157-9b67-e8a64a6b191a",
							version = 3,
						},
						inheritedIndex = 1,
					},
					
					{
						data = 
						{
							category = "Party",
							comparator = 2,
							conditionType = 4,
							inRangeValue = 20,
							minTargetPercent = true,
							name = "Party Range: <= 20y",
							partyTargetNumber = 100,
							partyTargetSubType = "Number",
							uuid = "0796f2c7-5782-7e71-8675-e259a5fdcac0",
							version = 3,
						},
					},
				},
				mechanicTime = 259.26759932438,
				name = "[SGE] Ixochole",
				timelineIndex = 47,
				timerEndOffset = 5,
				timerOffset = 0.10000000149012,
				timerStartOffset = -5,
				uuid = "284c1f28-3f72-d58d-8dcb-b029cd340c5a",
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
									"26fe8bf0-8e58-6157-9b67-e8a64a6b191a",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_Burn",
							uuid = "9f150df4-47fb-823d-a797-346087437cd2",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"26fe8bf0-8e58-6157-9b67-e8a64a6b191a",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_Burn",
							gVarValue = 2,
							uuid = "9ac8c031-3563-647d-9823-247f402be1c0",
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
							jobValue = "SAGE",
							name = "Self: SGE",
							uuid = "26fe8bf0-8e58-6157-9b67-e8a64a6b191a",
							version = 3,
						},
						inheritedIndex = 1,
					},
				},
				mechanicTime = 259.26759932438,
				name = "[SGE] Toggle Burn",
				throttleTime = 6000,
				timeRange = true,
				timelineIndex = 47,
				timerEndOffset = 10,
				timerStartOffset = 3,
				uuid = "f37e562d-20f7-e4ba-ada6-e23c46b77bd8",
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
									"26fe8bf0-8e58-6157-9b67-e8a64a6b191a",
									true,
								},
								
								{
									"0796f2c7-5782-7e71-8675-e259a5fdcac0",
									true,
								},
								
								{
									"303cfea5-c9de-3c82-8055-df4b83304e43",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_Healbar_EukrasianPrognosis",
							uuid = "9f150df4-47fb-823d-a797-346087437cd2",
							variableTogglesType = 3,
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
							jobValue = "SAGE",
							name = "Self: SGE",
							uuid = "26fe8bf0-8e58-6157-9b67-e8a64a6b191a",
							version = 3,
						},
						inheritedIndex = 1,
					},
					
					{
						data = 
						{
							category = "Party",
							comparator = 2,
							conditionType = 4,
							inRangeValue = 20,
							minTargetPercent = true,
							name = "Party Range: <= 20y",
							partyTargetNumber = 100,
							partyTargetSubType = "Number",
							uuid = "0796f2c7-5782-7e71-8675-e259a5fdcac0",
							version = 3,
						},
					},
					
					{
						data = 
						{
							buffCheckType = 2,
							buffID = 2609,
							category = "Party",
							name = "DT: Missing Eukrasian Prognosis",
							partyTargetSubType = "Number",
							partyTargetType = "Detection Target",
							uuid = "5b3830f2-93e2-9833-9894-680daafb64f5",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Party",
							conditionType = 10,
							inGroupTargetType = "Tank",
							name = "DT: Tank",
							partyTargetType = "Detection Target",
							uuid = "d00ae7a2-5b63-9ea0-8f6c-a76c339c4bee",
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
									"5b3830f2-93e2-9833-9894-680daafb64f5",
									true,
								},
								
								{
									"d00ae7a2-5b63-9ea0-8f6c-a76c339c4bee",
									false,
								},
							},
							filterTargetType = "Party",
							name = "F - Non Tank Missing Shield",
							uuid = "303cfea5-c9de-3c82-8055-df4b83304e43",
							version = 3,
						},
					},
				},
				mechanicTime = 259.26759932438,
				name = "[SGE] Eukrasian Prognosis",
				timelineIndex = 47,
				timerEndOffset = 5,
				timerOffset = 1.5,
				timerStartOffset = -5,
				uuid = "0c9d1500-c77e-150f-8616-e6165edd00a7",
				version = 2,
			},
			inheritedIndex = 9,
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
							aType = "ACR",
							conditions = 
							{
								
								{
									"53d292a9-114e-4b73-ade9-8a05229e04b5",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_Healbar_Krasis",
							targetType = "Ranged Physical DPS",
							uuid = "9f150df4-47fb-823d-a797-346087437cd2",
							variableIsHover = true,
							variableTogglesType = 3,
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
							jobValue = "SAGE",
							name = "Self: SGE",
							uuid = "53d292a9-114e-4b73-ade9-8a05229e04b5",
							version = 3,
						},
						inheritedIndex = 1,
					},
				},
				mechanicTime = 269.6455060413,
				name = "[SGE] Krasis",
				timelineIndex = 48,
				timerEndOffset = 5,
				timerOffset = -2,
				timerStartOffset = -5,
				uuid = "e7b67f2e-2836-b77c-a878-5238bdc4f9f2",
				version = 2,
			},
			inheritedIndex = 30,
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
									"6eed371c-276e-0dc6-bfef-64a1ef96e29f",
									true,
								},
								
								{
									"6e5cce1c-e91c-060c-b26b-d9c804cb7b6e",
									true,
								},
								
								{
									"73317a59-32cc-0ef3-8144-5d37b696cab3",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_Healbar_Kerachole",
							uuid = "1f6dfa69-9fa5-6422-bae0-e4c484120183",
							variableTogglesType = 3,
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
							jobValue = "SAGE",
							name = "Self: SGE",
							uuid = "6eed371c-276e-0dc6-bfef-64a1ef96e29f",
							version = 3,
						},
						inheritedIndex = 1,
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
							uuid = "6e5cce1c-e91c-060c-b26b-d9c804cb7b6e",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionCDValue = 1,
							actionID = 24298,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "Self: Kerachole CD <= 1s",
							uuid = "73317a59-32cc-0ef3-8144-5d37b696cab3",
							version = 3,
						},
					},
				},
				mechanicTime = 270.25091459497,
				name = "[SGE] Kerachole",
				timeRange = true,
				timelineIndex = 49,
				timerEndOffset = -1,
				timerStartOffset = -14.5,
				uuid = "1e466b8a-b257-835c-9e8a-6e494f1df964",
				version = 2,
			},
			inheritedIndex = 4,
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
									"26fe8bf0-8e58-6157-9b67-e8a64a6b191a",
									true,
								},
								
								{
									"0796f2c7-5782-7e71-8675-e259a5fdcac0",
									true,
								},
								
								{
									"303cfea5-c9de-3c82-8055-df4b83304e43",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_Healbar_EukrasianPrognosis",
							uuid = "9f150df4-47fb-823d-a797-346087437cd2",
							variableTogglesType = 3,
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
							jobValue = "SAGE",
							name = "Self: SGE",
							uuid = "26fe8bf0-8e58-6157-9b67-e8a64a6b191a",
							version = 3,
						},
						inheritedIndex = 1,
					},
					
					{
						data = 
						{
							category = "Party",
							comparator = 2,
							conditionType = 4,
							inRangeValue = 20,
							minTargetPercent = true,
							name = "Party Range: <= 20y",
							partyTargetNumber = 100,
							partyTargetSubType = "Number",
							uuid = "0796f2c7-5782-7e71-8675-e259a5fdcac0",
							version = 3,
						},
					},
					
					{
						data = 
						{
							buffCheckType = 2,
							buffID = 2609,
							category = "Party",
							name = "DT: Missing Eukrasian Prognosis",
							partyTargetSubType = "Number",
							partyTargetType = "Detection Target",
							uuid = "5b3830f2-93e2-9833-9894-680daafb64f5",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Party",
							conditionType = 10,
							inGroupTargetType = "Tank",
							name = "DT: Tank",
							partyTargetType = "Detection Target",
							uuid = "d00ae7a2-5b63-9ea0-8f6c-a76c339c4bee",
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
									"5b3830f2-93e2-9833-9894-680daafb64f5",
									true,
								},
								
								{
									"d00ae7a2-5b63-9ea0-8f6c-a76c339c4bee",
									false,
								},
							},
							filterTargetType = "Party",
							name = "F - Non Tank Missing Shield",
							uuid = "303cfea5-c9de-3c82-8055-df4b83304e43",
							version = 3,
						},
					},
				},
				mechanicTime = 270.25091459497,
				name = "[SGE] Eukrasian Prognosis",
				timelineIndex = 49,
				timerEndOffset = 5,
				timerOffset = 1,
				timerStartOffset = -5,
				uuid = "53564789-0c76-f0b0-a86f-a805cdcf1188",
				version = 2,
			},
			inheritedIndex = 10,
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
							actionID = 24316,
							conditions = 
							{
								
								{
									"2396dc77-b792-7e80-9887-f83101f21e56",
									true,
								},
								
								{
									"77fa66b0-1eaf-8643-8a26-0b8ebaf63160",
									true,
								},
								
								{
									"be39038c-1ae7-41d9-baee-6ef533259037",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_CD",
							targetType = "Enemy",
							uuid = "870510d0-9a27-ffb0-877a-e19b2e0e5941",
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
							jobValue = "SAGE",
							name = "Self: SGE",
							uuid = "2396dc77-b792-7e80-9887-f83101f21e56",
							version = 3,
						},
						inheritedIndex = 1,
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return FFXIV_Common_BotRunning",
							name = "Assist Enabled",
							uuid = "77fa66b0-1eaf-8643-8a26-0b8ebaf63160",
							version = 3,
						},
						inheritedIndex = 2,
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 6,
							gaugeIndex = 3,
							gaugeValue = 3,
							name = "Self Gauge: >= 3 Toxikon",
							uuid = "be39038c-1ae7-41d9-baee-6ef533259037",
							version = 3,
						},
					},
				},
				mechanicTime = 278.89733564761,
				name = "[SGE] Toxikon",
				timelineIndex = 50,
				timerOffset = -2,
				timerStartOffset = -2,
				uuid = "32b6d604-ef57-4349-a9a0-6edc5f22679f",
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
							aType = "ACR",
							conditions = 
							{
								
								{
									"42ace145-2b74-484f-8bf2-cebf11dccf7a",
									true,
								},
								
								{
									"6dc6db9a-b186-7ff6-a6b3-f82998575c8f",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_Healbar_Philosophia",
							uuid = "7af0e0f9-9796-f4ac-9c26-f2fb54bb3a0f",
							variableTogglesType = 3,
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
							jobValue = "SAGE",
							name = "Self: SGE",
							uuid = "6dc6db9a-b186-7ff6-a6b3-f82998575c8f",
							version = 3,
						},
						inheritedIndex = 1,
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
							uuid = "42ace145-2b74-484f-8bf2-cebf11dccf7a",
							version = 3,
						},
					},
				},
				mechanicTime = 280.23863811015,
				name = "[SGE] Philosophia",
				timeRange = true,
				timelineIndex = 53,
				timerEndOffset = -1,
				timerStartOffset = -15,
				uuid = "8484a3df-ed26-412a-8a4d-70bc4aae0977",
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
							aType = "ACR",
							conditions = 
							{
								
								{
									"26fe8bf0-8e58-6157-9b67-e8a64a6b191a",
									true,
								},
								
								{
									"0796f2c7-5782-7e71-8675-e259a5fdcac0",
									true,
								},
								
								{
									"303cfea5-c9de-3c82-8055-df4b83304e43",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_Healbar_EukrasianPrognosis",
							uuid = "9f150df4-47fb-823d-a797-346087437cd2",
							variableTogglesType = 3,
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
							jobValue = "SAGE",
							name = "Self: SGE",
							uuid = "26fe8bf0-8e58-6157-9b67-e8a64a6b191a",
							version = 3,
						},
						inheritedIndex = 1,
					},
					
					{
						data = 
						{
							category = "Party",
							comparator = 2,
							conditionType = 4,
							inRangeValue = 20,
							minTargetPercent = true,
							name = "Party Range: <= 20y",
							partyTargetNumber = 100,
							partyTargetSubType = "Number",
							uuid = "0796f2c7-5782-7e71-8675-e259a5fdcac0",
							version = 3,
						},
					},
					
					{
						data = 
						{
							buffCheckType = 2,
							buffID = 2609,
							category = "Party",
							name = "DT: Missing Eukrasian Prognosis",
							partyTargetSubType = "Number",
							partyTargetType = "Detection Target",
							uuid = "5b3830f2-93e2-9833-9894-680daafb64f5",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Party",
							conditionType = 10,
							inGroupTargetType = "Tank",
							name = "DT: Tank",
							partyTargetType = "Detection Target",
							uuid = "d00ae7a2-5b63-9ea0-8f6c-a76c339c4bee",
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
									"5b3830f2-93e2-9833-9894-680daafb64f5",
									true,
								},
								
								{
									"d00ae7a2-5b63-9ea0-8f6c-a76c339c4bee",
									false,
								},
							},
							filterTargetType = "Party",
							name = "F - Non Tank Missing Shield",
							uuid = "303cfea5-c9de-3c82-8055-df4b83304e43",
							version = 3,
						},
					},
				},
				mechanicTime = 280.23863811015,
				name = "[SGE] Eukrasian Prognosis",
				timelineIndex = 53,
				timerEndOffset = 5,
				timerOffset = 0.10000000149012,
				timerStartOffset = -5,
				uuid = "9c9a163a-e21b-32da-896d-b9aa2505a48d",
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
									"ace000e6-5541-6a8d-b064-b432e620d43a",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_Healbar_Pneuma",
							uuid = "9f150df4-47fb-823d-a797-346087437cd2",
							variableTogglesType = 3,
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
							jobValue = "SAGE",
							name = "Self: SGE",
							uuid = "ace000e6-5541-6a8d-b064-b432e620d43a",
							version = 3,
						},
						inheritedIndex = 1,
					},
				},
				mechanicTime = 280.23863811015,
				name = "[SGE] Pneuma",
				timelineIndex = 53,
				timerEndOffset = 5,
				timerOffset = -0.5,
				timerStartOffset = 0.10000000149012,
				uuid = "14da1627-ac2a-0c9c-bc89-fc9af9b29b16",
				version = 2,
			},
		},
	},
	[54] = 
	{
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							actionID = 24316,
							conditions = 
							{
								
								{
									"2396dc77-b792-7e80-9887-f83101f21e56",
									true,
								},
								
								{
									"7c15c33c-903b-cdfc-9e66-84998c138f47",
									true,
								},
								
								{
									"be39038c-1ae7-41d9-baee-6ef533259037",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_CD",
							targetType = "Enemy",
							uuid = "870510d0-9a27-ffb0-877a-e19b2e0e5941",
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
							jobValue = "SAGE",
							name = "Self: SGE",
							uuid = "2396dc77-b792-7e80-9887-f83101f21e56",
							version = 3,
						},
						inheritedIndex = 1,
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return FFXIV_Common_BotRunning",
							name = "Assist Enabled",
							uuid = "7c15c33c-903b-cdfc-9e66-84998c138f47",
							version = 3,
						},
						inheritedIndex = 2,
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 6,
							gaugeIndex = 3,
							gaugeValue = 3,
							name = "Self Gauge: >= 3 Toxikon",
							uuid = "be39038c-1ae7-41d9-baee-6ef533259037",
							version = 3,
						},
					},
				},
				mechanicTime = 290.62530875247,
				name = "[SGE] Toxikon",
				timelineIndex = 54,
				timerOffset = -2,
				timerStartOffset = -2,
				uuid = "936853b9-6ad6-43d0-9226-bc125ed7a319",
				version = 2,
			},
		},
	},
	[55] = 
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
									"a7ff75cf-1c65-b308-9b67-891e93f1c4f5",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_ToxikonWeave",
							uuid = "9f150df4-47fb-823d-a797-346087437cd2",
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
							jobValue = "SAGE",
							name = "Self: SGE",
							uuid = "a7ff75cf-1c65-b308-9b67-891e93f1c4f5",
							version = 3,
						},
						inheritedIndex = 1,
					},
				},
				mechanicTime = 291.26647895232,
				name = "[SGE] Toggle T Weave",
				timelineIndex = 55,
				timerEndOffset = 5,
				timerOffset = -5,
				timerStartOffset = -5,
				uuid = "2c09fcd4-c619-c5b5-ab99-3334c033bd0b",
				version = 2,
			},
			inheritedIndex = 4,
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
									"26fe8bf0-8e58-6157-9b67-e8a64a6b191a",
									true,
								},
								
								{
									"0796f2c7-5782-7e71-8675-e259a5fdcac0",
									true,
								},
								
								{
									"303cfea5-c9de-3c82-8055-df4b83304e43",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_Healbar_EukrasianPrognosis",
							uuid = "9f150df4-47fb-823d-a797-346087437cd2",
							variableTogglesType = 3,
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
							jobValue = "SAGE",
							name = "Self: SGE",
							uuid = "26fe8bf0-8e58-6157-9b67-e8a64a6b191a",
							version = 3,
						},
						inheritedIndex = 1,
					},
					
					{
						data = 
						{
							category = "Party",
							comparator = 2,
							conditionType = 4,
							inRangeValue = 20,
							minTargetPercent = true,
							name = "Party Range: <= 20y",
							partyTargetNumber = 100,
							partyTargetSubType = "Number",
							uuid = "0796f2c7-5782-7e71-8675-e259a5fdcac0",
							version = 3,
						},
					},
					
					{
						data = 
						{
							buffCheckType = 2,
							buffID = 2609,
							category = "Party",
							name = "DT: Missing Eukrasian Prognosis",
							partyTargetSubType = "Number",
							partyTargetType = "Detection Target",
							uuid = "5b3830f2-93e2-9833-9894-680daafb64f5",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Party",
							conditionType = 10,
							inGroupTargetType = "Tank",
							name = "DT: Tank",
							partyTargetType = "Detection Target",
							uuid = "d00ae7a2-5b63-9ea0-8f6c-a76c339c4bee",
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
									"5b3830f2-93e2-9833-9894-680daafb64f5",
									true,
								},
								
								{
									"d00ae7a2-5b63-9ea0-8f6c-a76c339c4bee",
									false,
								},
							},
							filterTargetType = "Party",
							name = "F - Non Tank Missing Shield",
							uuid = "303cfea5-c9de-3c82-8055-df4b83304e43",
							version = 3,
						},
					},
				},
				mechanicTime = 291.26647895232,
				name = "[SGE] Eukrasian Prognosis",
				timelineIndex = 55,
				timerEndOffset = 5,
				timerOffset = 1,
				timerStartOffset = -5,
				uuid = "b81b78fa-9870-846a-9c53-d02794fbf079",
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
									"26fe8bf0-8e58-6157-9b67-e8a64a6b191a",
									true,
								},
								
								{
									"0796f2c7-5782-7e71-8675-e259a5fdcac0",
									true,
								},
								
								{
									"571b4a05-2850-fde4-9352-305041322659",
									true,
								},
								
								{
									"d6ca4c7b-a2b4-2539-af0c-435cf900a6c8",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_Healbar_Ixochole",
							uuid = "9f150df4-47fb-823d-a797-346087437cd2",
							variableTogglesType = 3,
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
							jobValue = "SAGE",
							name = "Self: SGE",
							uuid = "26fe8bf0-8e58-6157-9b67-e8a64a6b191a",
							version = 3,
						},
						inheritedIndex = 1,
					},
					
					{
						data = 
						{
							category = "Party",
							comparator = 2,
							conditionType = 4,
							inRangeValue = 20,
							minTargetPercent = true,
							name = "Party Range: <= 20y",
							partyTargetNumber = 100,
							partyTargetSubType = "Number",
							uuid = "0796f2c7-5782-7e71-8675-e259a5fdcac0",
							version = 3,
						},
					},
					
					{
						data = 
						{
							buffID = 3898,
							category = "Self",
							name = "Self Buff: Philosophia",
							uuid = "66f052fe-2781-3c55-b369-6f306cde86db",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Party",
							comparator = 2,
							conditionType = 2,
							hpValue = 80,
							minTargetPercent = true,
							name = "Party HP: 3/4 <= 80%",
							partyTargetNumber = 75,
							partyTargetSubType = "Number",
							uuid = "571b4a05-2850-fde4-9352-305041322659",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionCDValue = 1,
							actionID = 24299,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "CD: Ixochole <= 1s",
							uuid = "d6ca4c7b-a2b4-2539-af0c-435cf900a6c8",
							version = 3,
						},
					},
				},
				mechanicTime = 291.26647895232,
				name = "[SGE] Ixochole",
				timelineIndex = 55,
				timerEndOffset = 5,
				timerOffset = 3,
				timerStartOffset = -5,
				uuid = "a7b4a27f-14cb-5569-b791-e975c38b9a1c",
				version = 2,
			},
			inheritedIndex = 8,
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
							actionID = 24316,
							conditions = 
							{
								
								{
									"2396dc77-b792-7e80-9887-f83101f21e56",
									true,
								},
								
								{
									"1522d770-bf7e-0b65-9927-6e87d821d58c",
									true,
								},
								
								{
									"be39038c-1ae7-41d9-baee-6ef533259037",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_CD",
							targetType = "Enemy",
							uuid = "870510d0-9a27-ffb0-877a-e19b2e0e5941",
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
							jobValue = "SAGE",
							name = "Self: SGE",
							uuid = "2396dc77-b792-7e80-9887-f83101f21e56",
							version = 3,
						},
						inheritedIndex = 1,
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return FFXIV_Common_BotRunning",
							name = "Assist Enabled",
							uuid = "1522d770-bf7e-0b65-9927-6e87d821d58c",
							version = 3,
						},
						inheritedIndex = 2,
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 6,
							gaugeIndex = 3,
							gaugeValue = 3,
							name = "Self Gauge: >= 3 Toxikon",
							uuid = "be39038c-1ae7-41d9-baee-6ef533259037",
							version = 3,
						},
					},
				},
				mechanicTime = 299.97907895232,
				name = "[SGE] Toxikon",
				timelineIndex = 56,
				timerOffset = -3,
				timerStartOffset = -3,
				uuid = "edc6db89-8eb4-d0d7-942d-d174657baf5b",
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
									"26fe8bf0-8e58-6157-9b67-e8a64a6b191a",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_Burn",
							uuid = "9f150df4-47fb-823d-a797-346087437cd2",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"26fe8bf0-8e58-6157-9b67-e8a64a6b191a",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_Burn",
							gVarValue = 2,
							uuid = "9ac8c031-3563-647d-9823-247f402be1c0",
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
							jobValue = "SAGE",
							name = "Self: SGE",
							uuid = "26fe8bf0-8e58-6157-9b67-e8a64a6b191a",
							version = 3,
						},
						inheritedIndex = 1,
					},
				},
				mechanicTime = 299.97907895232,
				name = "[SGE] Toggle Burn",
				throttleTime = 6000,
				timeRange = true,
				timelineIndex = 56,
				timerEndOffset = 10,
				timerStartOffset = 2,
				uuid = "1696b78b-19d4-9c26-9cac-fcd31d677b1a",
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
							aType = "ACR",
							conditions = 
							{
								
								{
									"81ae31c5-9e92-6a56-ba07-ff21087cac48",
									true,
								},
								
								{
									"800486cc-705c-5caf-8fba-1dd95613f62d",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_Healbar_Panhaima",
							uuid = "3513de14-07f8-c935-80cb-36aa906944eb",
							variableTogglesType = 3,
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
							jobValue = "SAGE",
							name = "Self: SGE",
							uuid = "81ae31c5-9e92-6a56-ba07-ff21087cac48",
							version = 3,
						},
						inheritedIndex = 1,
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
							uuid = "800486cc-705c-5caf-8fba-1dd95613f62d",
							version = 3,
						},
					},
				},
				mechanicTime = 301.30844266449,
				name = "[SGE] Panhaima",
				timeRange = true,
				timelineIndex = 59,
				timerEndOffset = -1,
				timerStartOffset = -14.5,
				uuid = "aa79ae69-dc16-d5a9-a75e-c749cdf47c28",
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
							actionLua = "TensorDrift_SlidecastForceHold = true\nself.used = true",
							gVar = "ACR_RikuSGE3_CD",
							name = "Force Slidecast",
							uuid = "26b75ba9-ffe2-5289-bbe4-7548e58817b5",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "TensorDrift_SlidecastForceHold = false\nself.used = true",
							gVar = "ACR_RikuSGE3_CD",
							name = "End Slide",
							uuid = "c9525cfd-c78c-8c38-b40b-09e5fe1fbe7b",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				mechanicTime = 301.30844266449,
				name = "Force Slidecast",
				throttleTime = 3000,
				timeRange = true,
				timelineIndex = 59,
				timerEndOffset = 4,
				uuid = "80b7d920-52c2-bbbb-a77a-25d9c24ef3cc",
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
							aType = "ACR",
							conditions = 
							{
								
								{
									"26fe8bf0-8e58-6157-9b67-e8a64a6b191a",
									true,
								},
								
								{
									"0796f2c7-5782-7e71-8675-e259a5fdcac0",
									true,
								},
								
								{
									"303cfea5-c9de-3c82-8055-df4b83304e43",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_Healbar_EukrasianPrognosis",
							uuid = "9f150df4-47fb-823d-a797-346087437cd2",
							variableTogglesType = 3,
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
							jobValue = "SAGE",
							name = "Self: SGE",
							uuid = "26fe8bf0-8e58-6157-9b67-e8a64a6b191a",
							version = 3,
						},
						inheritedIndex = 1,
					},
					
					{
						data = 
						{
							category = "Party",
							comparator = 2,
							conditionType = 4,
							inRangeValue = 20,
							minTargetPercent = true,
							name = "Party Range: <= 20y",
							partyTargetNumber = 100,
							partyTargetSubType = "Number",
							uuid = "0796f2c7-5782-7e71-8675-e259a5fdcac0",
							version = 3,
						},
					},
					
					{
						data = 
						{
							buffCheckType = 2,
							buffID = 2609,
							category = "Party",
							name = "DT: Missing Eukrasian Prognosis",
							partyTargetSubType = "Number",
							partyTargetType = "Detection Target",
							uuid = "5b3830f2-93e2-9833-9894-680daafb64f5",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Party",
							conditionType = 10,
							inGroupTargetType = "Tank",
							name = "DT: Tank",
							partyTargetType = "Detection Target",
							uuid = "d00ae7a2-5b63-9ea0-8f6c-a76c339c4bee",
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
									"5b3830f2-93e2-9833-9894-680daafb64f5",
									true,
								},
								
								{
									"d00ae7a2-5b63-9ea0-8f6c-a76c339c4bee",
									false,
								},
							},
							filterTargetType = "Party",
							name = "F - Non Tank Missing Shield",
							uuid = "303cfea5-c9de-3c82-8055-df4b83304e43",
							version = 3,
						},
					},
				},
				mechanicTime = 301.30844266449,
				name = "[SGE] Eukrasian Prognosis",
				timelineIndex = 59,
				timerEndOffset = 5,
				timerOffset = 0.10000000149012,
				timerStartOffset = -5,
				uuid = "d81ebc68-6bcb-6bcc-ac54-cb43557ce93e",
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
									"26fe8bf0-8e58-6157-9b67-e8a64a6b191a",
									true,
								},
								
								{
									"0796f2c7-5782-7e71-8675-e259a5fdcac0",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_Healbar_Ixochole",
							uuid = "9f150df4-47fb-823d-a797-346087437cd2",
							variableTogglesType = 3,
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
							jobValue = "SAGE",
							name = "Self: SGE",
							uuid = "26fe8bf0-8e58-6157-9b67-e8a64a6b191a",
							version = 3,
						},
						inheritedIndex = 1,
					},
					
					{
						data = 
						{
							category = "Party",
							comparator = 2,
							conditionType = 4,
							inRangeValue = 20,
							minTargetPercent = true,
							name = "Party Range: <= 20y",
							partyTargetNumber = 100,
							partyTargetSubType = "Number",
							uuid = "0796f2c7-5782-7e71-8675-e259a5fdcac0",
							version = 3,
						},
					},
				},
				mechanicTime = 301.30844266449,
				name = "[SGE] Ixochole",
				timelineIndex = 59,
				timerEndOffset = 5,
				timerOffset = 1,
				timerStartOffset = -5,
				uuid = "e5a5fc21-e0a3-73b7-a120-0946cec9e64d",
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
							aType = "ACR",
							conditions = 
							{
								
								{
									"a7ff75cf-1c65-b308-9b67-891e93f1c4f5",
									true,
								},
								
								{
									"6a0ff213-9b7b-448e-a9e4-c43b4d797fe2",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_Healbar_Soteria",
							uuid = "9f150df4-47fb-823d-a797-346087437cd2",
							variableTogglesType = 3,
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
							jobValue = "SAGE",
							name = "Self: SGE",
							uuid = "a7ff75cf-1c65-b308-9b67-891e93f1c4f5",
							version = 3,
						},
						inheritedIndex = 1,
					},
					
					{
						data = 
						{
							actionCDValue = 2,
							actionID = 37033,
							category = "Self",
							conditionType = 4,
							name = "Self: Pscyhe => 2s",
							uuid = "6a0ff213-9b7b-448e-a9e4-c43b4d797fe2",
							version = 3,
						},
					},
				},
				mechanicTime = 301.30844266449,
				name = "[SGE] Soteria",
				timelineIndex = 59,
				timerEndOffset = 5,
				timerOffset = 4,
				timerStartOffset = -5,
				uuid = "818279f5-6c12-6f08-a782-ff113577a162",
				version = 2,
			},
			inheritedIndex = 29,
		},
	},
	[61] = 
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
									"26fe8bf0-8e58-6157-9b67-e8a64a6b191a",
									true,
								},
								
								{
									"0796f2c7-5782-7e71-8675-e259a5fdcac0",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_Healbar_EukrasianPrognosis",
							uuid = "9f150df4-47fb-823d-a797-346087437cd2",
							variableTogglesType = 3,
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
							jobValue = "SAGE",
							name = "Self: SGE",
							uuid = "26fe8bf0-8e58-6157-9b67-e8a64a6b191a",
							version = 3,
						},
						inheritedIndex = 1,
					},
					
					{
						data = 
						{
							category = "Party",
							comparator = 2,
							conditionType = 4,
							inRangeValue = 20,
							minTargetPercent = true,
							name = "Party Range: <= 20y",
							partyTargetNumber = 100,
							partyTargetSubType = "Number",
							uuid = "0796f2c7-5782-7e71-8675-e259a5fdcac0",
							version = 3,
						},
					},
				},
				mechanicTime = 312.32654954394,
				name = "[SGE] Eukrasian Prognosis",
				timelineIndex = 61,
				timerEndOffset = 5,
				timerOffset = 1,
				timerStartOffset = -5,
				uuid = "ac2575ba-33d2-f8a7-8de4-cfc479051ed3",
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
							aType = "ACR",
							conditions = 
							{
								
								{
									"26fe8bf0-8e58-6157-9b67-e8a64a6b191a",
									true,
								},
								
								{
									"0796f2c7-5782-7e71-8675-e259a5fdcac0",
									true,
								},
							},
							fallthrough = true,
							gVar = "ACR_RikuSGE3_Healbar_Zoe",
							uuid = "e8241127-b7f4-8235-9f22-e126fbe1aa59",
							variableTogglesType = 3,
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
									"26fe8bf0-8e58-6157-9b67-e8a64a6b191a",
									true,
								},
								
								{
									"0796f2c7-5782-7e71-8675-e259a5fdcac0",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_Healbar_EukrasianPrognosis",
							uuid = "9f150df4-47fb-823d-a797-346087437cd2",
							variableTogglesType = 3,
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
							jobValue = "SAGE",
							name = "Self: SGE",
							uuid = "26fe8bf0-8e58-6157-9b67-e8a64a6b191a",
							version = 3,
						},
						inheritedIndex = 1,
					},
					
					{
						data = 
						{
							category = "Party",
							comparator = 2,
							conditionType = 4,
							inRangeValue = 20,
							minTargetPercent = true,
							name = "Party Range: <= 20y",
							partyTargetNumber = 100,
							partyTargetSubType = "Number",
							uuid = "0796f2c7-5782-7e71-8675-e259a5fdcac0",
							version = 3,
						},
					},
				},
				mechanicTime = 321.78311722413,
				name = "[SGE] Zoe Eukrasian Prognosis",
				timelineIndex = 64,
				timerEndOffset = -1,
				timerOffset = 7,
				timerStartOffset = -10,
				uuid = "49621c9e-9327-807f-9289-a8861369e589",
				version = 2,
			},
			inheritedIndex = 4,
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
									"299bb84c-9fa3-6837-9e30-b8c05eae3959",
									true,
								},
								
								{
									"db9e281c-6f91-3db5-8d6c-487c8eb46530",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_Healbar_Physis",
							uuid = "9f150df4-47fb-823d-a797-346087437cd2",
							variableTogglesType = 3,
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
							jobValue = "SAGE",
							name = "Self: SGE",
							uuid = "299bb84c-9fa3-6837-9e30-b8c05eae3959",
							version = 3,
						},
						inheritedIndex = 1,
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
							uuid = "db9e281c-6f91-3db5-8d6c-487c8eb46530",
							version = 3,
						},
					},
				},
				mechanicTime = 321.78311722413,
				name = "[SGE] Physis",
				timelineIndex = 64,
				timerEndOffset = 5,
				timerOffset = 1,
				timerStartOffset = -5,
				uuid = "72042f59-7e6c-463b-98cb-82454e87efa5",
				version = 2,
			},
			inheritedIndex = 3,
		},
	},
	[65] = 
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
									"6eed371c-276e-0dc6-bfef-64a1ef96e29f",
									true,
								},
								
								{
									"6e5cce1c-e91c-060c-b26b-d9c804cb7b6e",
									true,
								},
								
								{
									"73317a59-32cc-0ef3-8144-5d37b696cab3",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_Healbar_Kerachole",
							uuid = "1f6dfa69-9fa5-6422-bae0-e4c484120183",
							variableTogglesType = 3,
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
							jobValue = "SAGE",
							name = "Self: SGE",
							uuid = "6eed371c-276e-0dc6-bfef-64a1ef96e29f",
							version = 3,
						},
						inheritedIndex = 1,
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
							uuid = "6e5cce1c-e91c-060c-b26b-d9c804cb7b6e",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionCDValue = 1,
							actionID = 24298,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "Self: Kerachole CD <= 1s",
							uuid = "73317a59-32cc-0ef3-8144-5d37b696cab3",
							version = 3,
						},
					},
				},
				mechanicTime = 322.39247758191,
				name = "[SGE] Kerachole",
				timeRange = true,
				timelineIndex = 65,
				timerEndOffset = -1,
				timerStartOffset = -14.5,
				uuid = "a278e328-24f3-2912-9a31-1f7ec32bc8c3",
				version = 2,
			},
			inheritedIndex = 6,
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
									"6eed371c-276e-0dc6-bfef-64a1ef96e29f",
									true,
								},
								
								{
									"6e5cce1c-e91c-060c-b26b-d9c804cb7b6e",
									true,
								},
								
								{
									"73317a59-32cc-0ef3-8144-5d37b696cab3",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_Healbar_Kerachole",
							uuid = "1f6dfa69-9fa5-6422-bae0-e4c484120183",
							variableTogglesType = 3,
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
							jobValue = "SAGE",
							name = "Self: SGE",
							uuid = "6eed371c-276e-0dc6-bfef-64a1ef96e29f",
							version = 3,
						},
						inheritedIndex = 1,
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
							uuid = "6e5cce1c-e91c-060c-b26b-d9c804cb7b6e",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionCDValue = 1,
							actionID = 24298,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "Self: Kerachole CD <= 1s",
							uuid = "73317a59-32cc-0ef3-8144-5d37b696cab3",
							version = 3,
						},
					},
				},
				mechanicTime = 341.70452758191,
				name = "[SGE] Kerachole",
				timeRange = true,
				timelineIndex = 66,
				timerEndOffset = -0.5,
				timerStartOffset = -14.5,
				uuid = "5ae74abd-5fab-c4f5-bfd8-dd471b4b2648",
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
							actionID = 24316,
							clusterRadius = 5,
							clusterRange = 25,
							conditions = 
							{
								
								{
									"2396dc77-b792-7e80-9887-f83101f21e56",
									true,
								},
								
								{
									"1c5346a0-1b85-950b-ac60-0f87e347e3c7",
									true,
								},
								
								{
									"be39038c-1ae7-41d9-baee-6ef533259037",
									true,
								},
								
								{
									"cbf606d9-3d41-b3dd-b8a7-458ca00f1992",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_CD",
							targetType = "Enemy",
							uuid = "870510d0-9a27-ffb0-877a-e19b2e0e5941",
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
							jobValue = "SAGE",
							name = "Self: SGE",
							uuid = "2396dc77-b792-7e80-9887-f83101f21e56",
							version = 3,
						},
						inheritedIndex = 1,
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return FFXIV_Common_BotRunning",
							name = "Assist Enabled",
							uuid = "1c5346a0-1b85-950b-ac60-0f87e347e3c7",
							version = 3,
						},
						inheritedIndex = 2,
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 6,
							gaugeIndex = 3,
							gaugeValue = 1,
							name = "Self Gauge: >= 1 Toxikon",
							uuid = "be39038c-1ae7-41d9-baee-6ef533259037",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionCDValue = 1,
							actionID = 24298,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "Self: Kerachole CD <= 1s",
							uuid = "cbf606d9-3d41-b3dd-b8a7-458ca00f1992",
							version = 3,
						},
					},
				},
				mechanicTime = 341.70452758191,
				name = "[SGE] Toxikon",
				timeRange = true,
				timelineIndex = 66,
				timerOffset = -4,
				timerStartOffset = -5,
				uuid = "5fafd8a4-f837-9f0f-9851-069b9360ba31",
				version = 2,
			},
			inheritedIndex = 4,
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
									"26fe8bf0-8e58-6157-9b67-e8a64a6b191a",
									true,
								},
								
								{
									"0796f2c7-5782-7e71-8675-e259a5fdcac0",
									true,
								},
								
								{
									"0e578e8f-f7eb-6074-ac5a-8a0fdd992761",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_Healbar_Ixochole",
							uuid = "9f150df4-47fb-823d-a797-346087437cd2",
							variableTogglesType = 3,
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
							jobValue = "SAGE",
							name = "Self: SGE",
							uuid = "26fe8bf0-8e58-6157-9b67-e8a64a6b191a",
							version = 3,
						},
						inheritedIndex = 1,
					},
					
					{
						data = 
						{
							category = "Party",
							comparator = 2,
							conditionType = 4,
							inRangeValue = 20,
							minTargetPercent = true,
							name = "Party Range: <= 20y",
							partyTargetNumber = 100,
							partyTargetSubType = "Number",
							uuid = "0796f2c7-5782-7e71-8675-e259a5fdcac0",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionCDValue = 1,
							actionID = 24299,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "CD: Ixochole <= 1s",
							uuid = "0e578e8f-f7eb-6074-ac5a-8a0fdd992761",
							version = 3,
						},
					},
				},
				mechanicTime = 341.70452758191,
				name = "[SGE] Ixochole",
				timelineIndex = 66,
				timerEndOffset = 5,
				timerOffset = 1,
				timerStartOffset = -5,
				uuid = "5b4b419f-4f8a-f6c5-a73c-d771380ddd50",
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
							aType = "ACR",
							conditions = 
							{
								
								{
									"26fe8bf0-8e58-6157-9b67-e8a64a6b191a",
									true,
								},
								
								{
									"0796f2c7-5782-7e71-8675-e259a5fdcac0",
									true,
								},
								
								{
									"dde0dbbf-e294-502f-b812-8be76c0c3bde",
									true,
								},
								
								{
									"1ea2c5c4-0bf6-7512-85a1-c106a27738a8",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_Healbar_Ixochole",
							uuid = "9f150df4-47fb-823d-a797-346087437cd2",
							variableTogglesType = 3,
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
							jobValue = "SAGE",
							name = "Self: SGE",
							uuid = "26fe8bf0-8e58-6157-9b67-e8a64a6b191a",
							version = 3,
						},
						inheritedIndex = 1,
					},
					
					{
						data = 
						{
							category = "Party",
							comparator = 2,
							conditionType = 4,
							inRangeValue = 20,
							minTargetPercent = true,
							name = "Party Range: <= 20y",
							partyTargetNumber = 100,
							partyTargetSubType = "Number",
							uuid = "0796f2c7-5782-7e71-8675-e259a5fdcac0",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Party",
							comparator = 2,
							conditionType = 2,
							hpValue = 80,
							minTargetPercent = true,
							name = "Party HP: 3/4 <= 80%",
							partyTargetNumber = 75,
							partyTargetSubType = "Number",
							uuid = "dde0dbbf-e294-502f-b812-8be76c0c3bde",
							version = 3,
						},
						inheritedIndex = 3,
					},
					
					{
						data = 
						{
							actionCDValue = 1,
							actionID = 24299,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "CD: Ixochole <= 1s",
							uuid = "1ea2c5c4-0bf6-7512-85a1-c106a27738a8",
							version = 3,
						},
					},
				},
				mechanicTime = 341.70452758191,
				name = "[SGE] Ixochole",
				timelineIndex = 66,
				timerEndOffset = 5,
				timerOffset = -5,
				timerStartOffset = -5,
				uuid = "ca8962b4-9b48-2dec-9317-558a23e18dc4",
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
									"a7ff75cf-1c65-b308-9b67-891e93f1c4f5",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_MovementSwiftcast",
							gVarValue = 2,
							uuid = "3cff111f-56ee-e7d1-85e2-f6eecba10921",
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
							jobValue = "SAGE",
							name = "Self: SGE",
							uuid = "a7ff75cf-1c65-b308-9b67-891e93f1c4f5",
							version = 3,
						},
						inheritedIndex = 1,
					},
				},
				mechanicTime = 341.70452758191,
				name = "[SGE] Toggle M Swift",
				timelineIndex = 66,
				timerEndOffset = 5,
				timerStartOffset = -5,
				uuid = "f67de75c-9f2b-501d-8e35-d89d5633598c",
				version = 2,
			},
			inheritedIndex = 12,
		},
	},
	[68] = 
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
							acrOptionType = "Hold Action",
							conditions = 
							{
								
								{
									"81ae31c5-9e92-6a56-ba07-ff21087cac48",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_Healbar_Panhaima",
							holdActionDuration = 22,
							holdActionID = 24309,
							uuid = "3513de14-07f8-c935-80cb-36aa906944eb",
							variableTogglesType = 3,
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
							jobValue = "SAGE",
							name = "Self: SGE",
							uuid = "81ae31c5-9e92-6a56-ba07-ff21087cac48",
							version = 3,
						},
						inheritedIndex = 1,
					},
				},
				mechanicTime = 360.0639775819,
				name = "[SGE] Hold Rhizomata",
				timelineIndex = 68,
				timerEndOffset = -1,
				timerStartOffset = -14,
				uuid = "cb1ce599-ab2a-8667-8f32-0017e3f65cd3",
				version = 2,
			},
			inheritedIndex = 1,
		},
	},
	[69] = 
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
							actionLua = "TensorDrift_SlidecastForceHold = true\nself.used = true",
							gVar = "ACR_RikuSGE3_CD",
							name = "Force Slidecast",
							uuid = "26b75ba9-ffe2-5289-bbe4-7548e58817b5",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "TensorDrift_SlidecastForceHold = false\nself.used = true",
							gVar = "ACR_RikuSGE3_CD",
							name = "End Slide",
							uuid = "c9525cfd-c78c-8c38-b40b-09e5fe1fbe7b",
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
							conditionType = 6,
							gaugeIndex = 3,
							gaugeValue = 3,
							name = "Self Gauge: >= 3 Toxikon",
							uuid = "10c9de9a-9aab-306f-99d5-ae7300d1bfb3",
							version = 3,
						},
					},
				},
				mechanicTime = 365.79918271312,
				name = "Force Slidecast",
				throttleTime = 3000,
				timeRange = true,
				timelineIndex = 69,
				timerEndOffset = 2,
				timerStartOffset = -2,
				uuid = "c6298460-0ba8-e3d0-8308-7a614a254ee2",
				version = 2,
			},
			inheritedIndex = 5,
		},
	},
	[70] = 
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
									"a7ff75cf-1c65-b308-9b67-891e93f1c4f5",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_ToxikonWeave",
							uuid = "9f150df4-47fb-823d-a797-346087437cd2",
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
							jobValue = "SAGE",
							name = "Self: SGE",
							uuid = "a7ff75cf-1c65-b308-9b67-891e93f1c4f5",
							version = 3,
						},
						inheritedIndex = 1,
					},
				},
				mechanicTime = 367.80061742504,
				name = "[SGE] Toggle T Weave",
				timelineIndex = 70,
				timerEndOffset = 5,
				timerOffset = -11,
				timerStartOffset = -5,
				uuid = "e0b93d4b-c41c-3cd6-9733-bbf696101e1b",
				version = 2,
			},
			inheritedIndex = 4,
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
									"53d292a9-114e-4b73-ade9-8a05229e04b5",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_Healbar_Krasis",
							targetType = "Main Tank",
							uuid = "9f150df4-47fb-823d-a797-346087437cd2",
							variableIsHover = true,
							variableTogglesType = 3,
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
							jobValue = "SAGE",
							name = "Self: SGE",
							uuid = "53d292a9-114e-4b73-ade9-8a05229e04b5",
							version = 3,
						},
						inheritedIndex = 1,
					},
				},
				mechanicTime = 367.80061742504,
				name = "[SGE] Krasis",
				timelineIndex = 70,
				timerEndOffset = -1,
				timerOffset = 2.0999999046326,
				timerStartOffset = -9,
				uuid = "129f3745-487d-0446-89db-ede8eea84fdb",
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
							aType = "ACR",
							conditions = 
							{
								
								{
									"a7ff75cf-1c65-b308-9b67-891e93f1c4f5",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_Healbar_Soteria",
							uuid = "9f150df4-47fb-823d-a797-346087437cd2",
							variableTogglesType = 3,
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
							jobValue = "SAGE",
							name = "Self: SGE",
							uuid = "a7ff75cf-1c65-b308-9b67-891e93f1c4f5",
							version = 3,
						},
						inheritedIndex = 1,
					},
				},
				mechanicTime = 367.80061742504,
				name = "[SGE] Soteria",
				timelineIndex = 70,
				timerEndOffset = 5,
				timerOffset = 2,
				timerStartOffset = -5,
				uuid = "3a9db344-1e49-95a3-86bc-04585eba82e2",
				version = 2,
			},
			inheritedIndex = 26,
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
									"26fe8bf0-8e58-6157-9b67-e8a64a6b191a",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_Burn",
							uuid = "9f150df4-47fb-823d-a797-346087437cd2",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"26fe8bf0-8e58-6157-9b67-e8a64a6b191a",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_Burn",
							gVarValue = 2,
							uuid = "9ac8c031-3563-647d-9823-247f402be1c0",
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
							jobValue = "SAGE",
							name = "Self: SGE",
							uuid = "26fe8bf0-8e58-6157-9b67-e8a64a6b191a",
							version = 3,
						},
						inheritedIndex = 1,
					},
				},
				mechanicTime = 367.80061742504,
				name = "[SGE] Toggle Burn",
				throttleTime = 9000,
				timeRange = true,
				timelineIndex = 70,
				timerEndOffset = 10,
				uuid = "907eb4a7-7161-8200-8822-40e1d9b9548d",
				version = 2,
			},
		},
	},
	[73] = 
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
									"26fe8bf0-8e58-6157-9b67-e8a64a6b191a",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_Healbar_Haima",
							targetSubType = "Lowest HP",
							targetType = "Main Tank",
							uuid = "9f150df4-47fb-823d-a797-346087437cd2",
							variableIsHover = true,
							variableTogglesType = 3,
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
							jobValue = "SAGE",
							name = "Self: SGE",
							uuid = "26fe8bf0-8e58-6157-9b67-e8a64a6b191a",
							version = 3,
						},
						inheritedIndex = 1,
					},
				},
				mechanicTime = 377.30637120621,
				name = "[SGE] Haima",
				timeRange = true,
				timelineIndex = 73,
				timerEndOffset = -1,
				timerOffset = -3,
				timerStartOffset = -14.5,
				uuid = "9ff84972-57c2-faa8-8c82-3dbee8f5d767",
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
							aType = "Lua",
							actionID = 24316,
							actionLua = "TensorDrift_SlidecastForceHold = true\nself.used = true",
							conditions = 
							{
								
								{
									"2396dc77-b792-7e80-9887-f83101f21e56",
									true,
								},
								
								{
									"be39038c-1ae7-41d9-baee-6ef533259037",
									true,
								},
								
								{
									"b3eda2b0-f60d-ce48-adce-3145309504b3",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_CD",
							name = "Slide",
							targetType = "Enemy",
							uuid = "870510d0-9a27-ffb0-877a-e19b2e0e5941",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "TensorDrift_SlidecastForceHold = false\nself.used = true",
							conditions = 
							{
								
								{
									"2396dc77-b792-7e80-9887-f83101f21e56",
									true,
								},
								
								{
									"be39038c-1ae7-41d9-baee-6ef533259037",
									false,
								},
							},
							gVar = "ACR_RikuWAR3_CD",
							name = "Stutter",
							uuid = "e139fadc-5197-26dd-920e-0c6fd1ea4059",
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
							jobValue = "SAGE",
							name = "Self: SGE",
							uuid = "2396dc77-b792-7e80-9887-f83101f21e56",
							version = 3,
						},
						inheritedIndex = 1,
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 6,
							gaugeIndex = 3,
							gaugeValue = 1,
							name = "Self Gauge: >= 1 Toxikon",
							uuid = "be39038c-1ae7-41d9-baee-6ef533259037",
							version = 3,
						},
					},
					
					{
						data = 
						{
							conditionType = 3,
							hpValue = 1,
							name = "Target: HP >= 1",
							uuid = "b3eda2b0-f60d-ce48-adce-3145309504b3",
							version = 3,
						},
					},
				},
				loop = true,
				mechanicTime = 377.30637120621,
				name = "[SGE] Dump Toxikon",
				timeRange = true,
				timelineIndex = 73,
				timerEndOffset = -0.5,
				timerOffset = -6,
				timerStartOffset = -14.5,
				uuid = "bb58b5f1-c753-2ca1-b3c5-1e11575f2712",
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
							aType = "ACR",
							conditions = 
							{
								
								{
									"26fe8bf0-8e58-6157-9b67-e8a64a6b191a",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_Healbar_Taurochole",
							targetType = "Main Tank",
							uuid = "9f150df4-47fb-823d-a797-346087437cd2",
							variableIsHover = true,
							variableTogglesType = 3,
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
							jobValue = "SAGE",
							name = "Self: SGE",
							uuid = "26fe8bf0-8e58-6157-9b67-e8a64a6b191a",
							version = 3,
						},
						inheritedIndex = 1,
					},
				},
				mechanicTime = 377.30637120621,
				name = "[SGE] Taurochole",
				randomOffset = -1,
				timeRange = true,
				timelineIndex = 73,
				timerEndOffset = -1,
				timerOffset = -10,
				timerStartOffset = -14.5,
				uuid = "664b0abc-5fc1-7260-b91f-fecc5ff5d92f",
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
							aType = "ACR",
							conditions = 
							{
								
								{
									"6eed371c-276e-0dc6-bfef-64a1ef96e29f",
									true,
								},
								
								{
									"6e5cce1c-e91c-060c-b26b-d9c804cb7b6e",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_Healbar_Kerachole",
							uuid = "1f6dfa69-9fa5-6422-bae0-e4c484120183",
							variableTogglesType = 3,
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
							jobValue = "SAGE",
							name = "Self: SGE",
							uuid = "6eed371c-276e-0dc6-bfef-64a1ef96e29f",
							version = 3,
						},
						inheritedIndex = 1,
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
							uuid = "6e5cce1c-e91c-060c-b26b-d9c804cb7b6e",
							version = 3,
						},
					},
				},
				mechanicTime = 377.30637120621,
				name = "[SGE] Kerachole",
				timeRange = true,
				timelineIndex = 73,
				timerEndOffset = -1,
				timerOffset = 5,
				timerStartOffset = -11,
				uuid = "2c8dbf55-eec4-0d3f-b827-708ffa1ee098",
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
									"26fe8bf0-8e58-6157-9b67-e8a64a6b191a",
									true,
								},
								
								{
									"0796f2c7-5782-7e71-8675-e259a5fdcac0",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_Healbar_Ixochole",
							uuid = "9f150df4-47fb-823d-a797-346087437cd2",
							variableTogglesType = 3,
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
							jobValue = "SAGE",
							name = "Self: SGE",
							uuid = "26fe8bf0-8e58-6157-9b67-e8a64a6b191a",
							version = 3,
						},
						inheritedIndex = 1,
					},
					
					{
						data = 
						{
							category = "Party",
							comparator = 2,
							conditionType = 4,
							inRangeValue = 20,
							minTargetPercent = true,
							name = "Party Range: <= 20y",
							partyTargetNumber = 100,
							partyTargetSubType = "Number",
							uuid = "0796f2c7-5782-7e71-8675-e259a5fdcac0",
							version = 3,
						},
					},
				},
				mechanicTime = 377.30637120621,
				name = "[SGE] Ixochole",
				timelineIndex = 73,
				timerEndOffset = 5,
				timerOffset = 1,
				timerStartOffset = -5,
				uuid = "5d496fca-b23f-036a-b88d-30512ad5925c",
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
									"6eed371c-276e-0dc6-bfef-64a1ef96e29f",
									true,
								},
								
								{
									"84484220-4c03-124d-8bc6-00658c2824ba",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_CD",
							name = "Stop Casting",
							stopCasting = true,
							uuid = "043f05c5-4aaf-dc61-9d4a-a2b62d3c21fa",
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
									"6eed371c-276e-0dc6-bfef-64a1ef96e29f",
									true,
								},
								
								{
									"84484220-4c03-124d-8bc6-00658c2824ba",
									true,
								},
								
								{
									"2066967b-c38a-ab8b-9d6a-723e4515f414",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_Healbar_EukrasianDiagnosis",
							targetSubType = "Topmost Partylist",
							targetType = "Tank",
							uuid = "1f6dfa69-9fa5-6422-bae0-e4c484120183",
							variableIsHover = true,
							variableTogglesType = 3,
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
									"6eed371c-276e-0dc6-bfef-64a1ef96e29f",
									true,
								},
								
								{
									"84484220-4c03-124d-8bc6-00658c2824ba",
									true,
								},
								
								{
									"fc34601b-87e9-e1aa-96b6-0897ad64de09",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_Healbar_EukrasianDiagnosis",
							targetSubType = "Bottom-most Partylist",
							targetType = "Tank",
							uuid = "bdea2236-c2ad-e9f6-9707-6df8298bbf01",
							variableIsHover = true,
							variableTogglesType = 3,
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
									"6eed371c-276e-0dc6-bfef-64a1ef96e29f",
									true,
								},
								
								{
									"84484220-4c03-124d-8bc6-00658c2824ba",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_Attacks",
							gVarValue = 2,
							uuid = "f4f47c92-4c14-defc-82ab-3ef9d080d5d0",
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
							jobValue = "SAGE",
							name = "Self: SGE",
							uuid = "6eed371c-276e-0dc6-bfef-64a1ef96e29f",
							version = 3,
						},
						inheritedIndex = 1,
					},
					
					{
						data = 
						{
							comparator = 2,
							conditionType = 3,
							hpType = 2,
							hpValue = 1,
							name = "Target: HP <= 1",
							uuid = "84484220-4c03-124d-8bc6-00658c2824ba",
							version = 3,
						},
					},
					
					{
						data = 
						{
							buffCheckType = 2,
							buffID = 2911,
							category = "Party",
							name = "DT: Missing Damage Down Debuff",
							partyTargetType = "Detection Target",
							uuid = "1be283f6-2ef4-127e-a7e2-c12d51206fe3",
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
									"1be283f6-2ef4-127e-a7e2-c12d51206fe3",
									true,
								},
							},
							filterTargetSubtype = "Bottom-most Partylist",
							filterTargetType = "Tank",
							name = "F - Bottom Tank",
							uuid = "fc34601b-87e9-e1aa-96b6-0897ad64de09",
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
									"1be283f6-2ef4-127e-a7e2-c12d51206fe3",
									true,
								},
							},
							filterTargetSubtype = "Topmost Partylist",
							filterTargetType = "Tank",
							name = "F - Top Tank",
							uuid = "2066967b-c38a-ab8b-9d6a-723e4515f414",
							version = 3,
						},
					},
				},
				mechanicTime = 377.30637120621,
				name = "[SGE] Eukrasian Diagnosis",
				timeRange = true,
				timelineIndex = 73,
				timerOffset = 1,
				timerStartOffset = -15,
				uuid = "bdf3a768-0987-66a0-90ec-b6988943ae21",
				version = 2,
			},
		},
	},
	[74] = 
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
							actionID = 24314,
							conditions = 
							{
								
								{
									"0c983eb5-162a-dd0e-a6ce-227d785ef690",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_DoT",
							gVarValue = 2,
							holdActionDuration = 16,
							holdActionID = 24314,
							uuid = "5844d9dd-0d8e-1b7f-b124-be34fe87d863",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"0c983eb5-162a-dd0e-a6ce-227d785ef690",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_Burn",
							uuid = "c0d5b32f-c5eb-7129-9954-5ef84594c2ed",
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
							name = "Self: Healer",
							partyTargetType = "Healer",
							uuid = "0c983eb5-162a-dd0e-a6ce-227d785ef690",
							version = 3,
						},
					},
				},
				mechanicTime = 381.48132335556,
				name = "[Healer] Toggle DoT & Burn",
				timelineIndex = 74,
				timerEndOffset = 3,
				timerOffset = -15,
				timerStartOffset = -15,
				uuid = "a07a9c90-41ef-23c4-85e2-97a0c5efdd66",
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
							actionID = 24290,
							conditions = 
							{
								
								{
									"26fe8bf0-8e58-6157-9b67-e8a64a6b191a",
									true,
								},
								
								{
									"51e8e693-b6cc-ccdb-8596-4bed7cd07721",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_Healbar_EukrasianPrognosis",
							ignoreWeaveRules = true,
							uuid = "9f150df4-47fb-823d-a797-346087437cd2",
							variableTogglesType = 3,
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
							jobValue = "SAGE",
							name = "Self: SGE",
							uuid = "26fe8bf0-8e58-6157-9b67-e8a64a6b191a",
							version = 3,
						},
						inheritedIndex = 1,
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return FFXIV_Common_BotRunning",
							dequeueIfLuaFalse = true,
							name = "Assist Enabled",
							uuid = "51e8e693-b6cc-ccdb-8596-4bed7cd07721",
							version = 3,
						},
						inheritedIndex = 2,
					},
				},
				mechanicTime = 381.48132335556,
				name = "[SGE] Eukrasia",
				randomTimeout = 10,
				timeRandomRange = true,
				timeRange = true,
				timelineIndex = 74,
				timerEndOffset = 3,
				timerOffset = 1,
				timerStartOffset = 0.5,
				uuid = "889dc938-4e0f-a98a-abdd-2de9e03be941",
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
							actionID = 24314,
							conditions = 
							{
								
								{
									"d4677109-8e7c-f7c9-9338-24fc263eccd5",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_DoT",
							holdActionDuration = 16,
							holdActionID = 24314,
							uuid = "2eda86d5-5f92-4b31-a07a-23474c3631b3",
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
									"d4677109-8e7c-f7c9-9338-24fc263eccd5",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_2Toxikon",
							uuid = "394c7cfc-e873-f599-829b-45058f7db85e",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"d4677109-8e7c-f7c9-9338-24fc263eccd5",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_Attacks",
							uuid = "679c988c-1b7e-99b4-9efe-45d4dd895cc8",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"d4677109-8e7c-f7c9-9338-24fc263eccd5",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_Burn",
							gVarValue = 2,
							uuid = "c813fda3-7660-a373-b3fc-7ed803b9f2b9",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "TensorDrift_SlidecastForceHold = false\nself.used = true",
							conditions = 
							{
								
								{
									"d4677109-8e7c-f7c9-9338-24fc263eccd5",
									true,
								},
							},
							gVar = "ACR_RikuWAR3_CD",
							name = "Reset Slide",
							uuid = "d2ec62b3-d986-b504-859b-dceb3c569def",
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
							jobValue = "SAGE",
							name = "Self: SGE",
							uuid = "d4677109-8e7c-f7c9-9338-24fc263eccd5",
							version = 3,
						},
						inheritedIndex = 1,
					},
				},
				mechanicTime = 381.48132335556,
				name = "[SGE] Reset Toggles",
				timelineIndex = 74,
				timerOffset = 10,
				uuid = "c59a5083-5548-74a9-84a9-46cfd751e247",
				version = 2,
			},
			inheritedIndex = 4,
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
									"299bb84c-9fa3-6837-9e30-b8c05eae3959",
									true,
								},
								
								{
									"db9e281c-6f91-3db5-8d6c-487c8eb46530",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_Healbar_Physis",
							uuid = "9f150df4-47fb-823d-a797-346087437cd2",
							variableTogglesType = 3,
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
							jobValue = "SAGE",
							name = "Self: SGE",
							uuid = "299bb84c-9fa3-6837-9e30-b8c05eae3959",
							version = 3,
						},
						inheritedIndex = 1,
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
							uuid = "db9e281c-6f91-3db5-8d6c-487c8eb46530",
							version = 3,
						},
					},
				},
				mechanicTime = 381.48132335556,
				name = "[SGE] Physis",
				timelineIndex = 74,
				timerEndOffset = 5,
				timerOffset = 2,
				timerStartOffset = -5,
				uuid = "2214e053-2035-3c8e-b402-60d08c09bfe5",
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
							aType = "ACR",
							conditions = 
							{
								
								{
									"26fe8bf0-8e58-6157-9b67-e8a64a6b191a",
									true,
								},
								
								{
									"0796f2c7-5782-7e71-8675-e259a5fdcac0",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_Healbar_EukrasianPrognosis",
							uuid = "9f150df4-47fb-823d-a797-346087437cd2",
							variableTogglesType = 3,
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
							jobValue = "SAGE",
							name = "Self: SGE",
							uuid = "26fe8bf0-8e58-6157-9b67-e8a64a6b191a",
							version = 3,
						},
						inheritedIndex = 1,
					},
					
					{
						data = 
						{
							category = "Party",
							comparator = 2,
							conditionType = 4,
							inRangeValue = 20,
							minTargetPercent = true,
							name = "Party Range: <= 20y",
							partyTargetNumber = 100,
							partyTargetSubType = "Number",
							uuid = "0796f2c7-5782-7e71-8675-e259a5fdcac0",
							version = 3,
						},
					},
				},
				mechanicTime = 424.39347120621,
				name = "[SGE] Eukrasian Prognosis",
				timeRange = true,
				timelineIndex = 76,
				timerEndOffset = 3,
				timerOffset = -3,
				timerStartOffset = -4,
				uuid = "19f49699-f3e4-7f11-b884-f287d9247763",
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
									"26fe8bf0-8e58-6157-9b67-e8a64a6b191a",
									true,
								},
								
								{
									"381dce5b-3db3-8082-89b0-49db92f75dec",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_Healbar_EukrasianDiagnosis",
							targetSubType = "Lowest HP",
							targetType = "Detection Target",
							uuid = "9f150df4-47fb-823d-a797-346087437cd2",
							variableIsHover = true,
							variableTogglesType = 3,
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
							jobValue = "SAGE",
							name = "Self: SGE",
							uuid = "26fe8bf0-8e58-6157-9b67-e8a64a6b191a",
							version = 3,
						},
						inheritedIndex = 1,
					},
					
					{
						data = 
						{
							category = "Party",
							comparator = 2,
							conditionType = 4,
							inRangeValue = 30,
							minTargetPercent = true,
							name = "DT Range: <= 30y",
							partyTargetNumber = 100,
							partyTargetSubType = "Number",
							partyTargetType = "Detection Target",
							uuid = "0796f2c7-5782-7e71-8675-e259a5fdcac0",
							version = 3,
						},
					},
					
					{
						data = 
						{
							buffCheckType = 2,
							buffID = 2607,
							category = "Party",
							comparator = 2,
							hpType = 2,
							hpValue = 60,
							name = "DT Buff: Missing E Diag",
							partyTargetType = "Detection Target",
							uuid = "4eda2bfd-8a78-35e9-9fb8-c4bfd00ad0d5",
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
									"0796f2c7-5782-7e71-8675-e259a5fdcac0",
									true,
								},
								
								{
									"4eda2bfd-8a78-35e9-9fb8-c4bfd00ad0d5",
									true,
								},
							},
							filterTargetSubtype = "Lowest HP",
							filterTargetType = "Tank",
							uuid = "381dce5b-3db3-8082-89b0-49db92f75dec",
							version = 3,
						},
						inheritedIndex = 4,
					},
				},
				loop = true,
				mechanicTime = 424.39347120621,
				name = "[SGE] Eukrasian Diagnosis",
				throttleTime = 500,
				timeRange = true,
				timelineIndex = 76,
				timerEndOffset = 6,
				timerOffset = -1,
				timerStartOffset = -7,
				uuid = "f4c903b8-1d9d-e1c8-86d3-78a0224b7b03",
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
									"104eee91-fce4-3ee1-b2e4-df9ea7ad111d",
									true,
								},
								
								{
									"738f5cf2-ec60-616d-9a2c-f2dbd06647e8",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_Healbar_Kardia",
							targetSubType = "Furthest",
							targetType = "Detection Target",
							uuid = "c0a9c51e-79a0-c1be-b647-992fb1fced0e",
							variableIsHover = true,
							variableTogglesType = 3,
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
							conditionLua = "local Roster = AnyoneCore.Roster\n\nif not Roster then\n    return false\nend\n\nlocal tankPriority = {\n    war = 1,\n    drk = 2,\n    gnb = 3,\n    pld = 4\n}\n\nlocal t1 = Roster.entOf(\"T1\")\nlocal t2 = Roster.entOf(\"T2\")\n\nif not t1 or not t2 then\n    return false\nend\n\nlocal t1Priority = tankPriority[AnyoneCore.jobs[t1.job]]\nlocal t2Priority = tankPriority[AnyoneCore.jobs[t2.job]]\n\nif not t1Priority or not t2Priority then\n    return false\nend\n\nlocal chaosTank = (t1Priority > t2Priority) and t1 or t2\n\neventArgs.detectionTargetID = chaosTank.id\nreturn true",
							dequeueIfLuaFalse = true,
							name = "Chaos Tank",
							uuid = "104eee91-fce4-3ee1-b2e4-df9ea7ad111d",
							version = 3,
						},
					},
					
					{
						data = 
						{
							buffCheckType = 2,
							buffID = 2605,
							category = "Party",
							name = "DT: Kardion Buff Missing",
							partyTargetSubType = "Furthest",
							partyTargetType = "Detection Target",
							uuid = "738f5cf2-ec60-616d-9a2c-f2dbd06647e8",
							version = 3,
						},
						inheritedIndex = 2,
					},
				},
				mechanicTime = 424.39347120621,
				name = "[SGE] Kardia",
				timelineIndex = 76,
				timerOffset = -1,
				uuid = "7f9e4d6b-90f4-c2d2-897f-817221b58d60",
				version = 2,
			},
			inheritedIndex = 15,
		},
	},
	[77] = 
	{
		
		{
			data = 
			{
				name = "[Opti] Disable Smart DoT",
				uuid = "1cb07377-2f2a-a69c-8ffb-fb4ee04e0a1d",
				version = 2,
			},
			inheritedObjectUUID = "5efacd1f-a095-7fe4-bfb9-7bd864100d26",
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
								gVar = "ACR_RikuSGE3_SmartDoT",
								gVarValue = 2,
								uuid = "a2924872-d08b-7510-afa0-300bfb67fa0b",
								version = 2.1,
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
							actionID = 24290,
							conditions = 
							{
								
								{
									"26fe8bf0-8e58-6157-9b67-e8a64a6b191a",
									true,
								},
								
								{
									"51e8e693-b6cc-ccdb-8596-4bed7cd07721",
									true,
								},
								
								{
									"667149d9-c922-e4a0-a695-46eff0de1f65",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_Healbar_EukrasianPrognosis",
							uuid = "9f150df4-47fb-823d-a797-346087437cd2",
							variableTogglesType = 3,
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
							jobValue = "SAGE",
							name = "Self: SGE",
							uuid = "26fe8bf0-8e58-6157-9b67-e8a64a6b191a",
							version = 3,
						},
						inheritedIndex = 1,
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return FFXIV_Common_BotRunning",
							dequeueIfLuaFalse = true,
							name = "Assist Enabled",
							uuid = "51e8e693-b6cc-ccdb-8596-4bed7cd07721",
							version = 3,
						},
						inheritedIndex = 2,
					},
					
					{
						data = 
						{
							buffCheckType = 2,
							buffID = 2606,
							category = "Self",
							name = "Self Buff: Eukrasia Missing",
							uuid = "667149d9-c922-e4a0-a695-46eff0de1f65",
							version = 3,
						},
					},
				},
				loop = true,
				mechanicTime = 427.45958272918,
				name = "[SGE] Eukrasia",
				randomTimeout = 10,
				timeRange = true,
				timelineIndex = 77,
				timerOffset = -1.5,
				timerStartOffset = -7,
				uuid = "1dbf26b8-bca8-886d-a843-89bc6b4fedd1",
				version = 2,
			},
		},
	},
	[78] = 
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
							actionLua = "TensorDrift_SlidecastForceHold = true\nself.used = true",
							gVar = "ACR_RikuSGE3_CD",
							name = "Force Slidecast",
							uuid = "26b75ba9-ffe2-5289-bbe4-7548e58817b5",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "TensorDrift_SlidecastForceHold = false\nself.used = true",
							gVar = "ACR_RikuSGE3_CD",
							name = "End Slide",
							uuid = "c9525cfd-c78c-8c38-b40b-09e5fe1fbe7b",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				mechanicTime = 430.61710950197,
				name = "Force Slidecast",
				throttleTime = 2000,
				timeRange = true,
				timelineIndex = 78,
				timerEndOffset = 8,
				timerStartOffset = 4,
				uuid = "7dfbcffe-5db3-4e8a-8687-d29c59b09fe1",
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
									"ace000e6-5541-6a8d-b064-b432e620d43a",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_Healbar_Zoe",
							uuid = "68f07163-b007-4f65-a949-55d21423260e",
							variableTogglesType = 3,
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
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "SAGE",
							name = "Self: SGE",
							uuid = "ace000e6-5541-6a8d-b064-b432e620d43a",
							version = 3,
						},
						inheritedIndex = 1,
					},
				},
				mechanicTime = 450.00390950196,
				name = "[SGE] Zoe",
				timeRange = true,
				timelineIndex = 79,
				timerEndOffset = 7,
				timerOffset = -3,
				timerStartOffset = -13,
				uuid = "f1491cf6-47b4-c2d1-9054-ca7ebeb6cccf",
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
							aType = "ACR",
							conditions = 
							{
								
								{
									"299bb84c-9fa3-6837-9e30-b8c05eae3959",
									true,
								},
								
								{
									"db9e281c-6f91-3db5-8d6c-487c8eb46530",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_Healbar_Physis",
							uuid = "9f150df4-47fb-823d-a797-346087437cd2",
							variableTogglesType = 3,
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
							jobValue = "SAGE",
							name = "Self: SGE",
							uuid = "299bb84c-9fa3-6837-9e30-b8c05eae3959",
							version = 3,
						},
						inheritedIndex = 1,
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
							uuid = "db9e281c-6f91-3db5-8d6c-487c8eb46530",
							version = 3,
						},
					},
				},
				mechanicTime = 450.00390950196,
				name = "[SGE] Physis",
				timelineIndex = 79,
				timerEndOffset = 5,
				timerOffset = -3,
				timerStartOffset = -5,
				uuid = "e0115a0c-67ab-1aae-86d7-c635cf3e4367",
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
									"a7ff75cf-1c65-b308-9b67-891e93f1c4f5",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_2Toxikon",
							gVarValue = 2,
							uuid = "89a2a281-ece0-b47d-ae01-2141d1630972",
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
							jobValue = "SAGE",
							name = "Self: SGE",
							uuid = "a7ff75cf-1c65-b308-9b67-891e93f1c4f5",
							version = 3,
						},
						inheritedIndex = 1,
					},
				},
				mechanicTime = 450.00390950196,
				name = "[SGE] Toggle 2 Toxikon",
				timelineIndex = 79,
				timerEndOffset = 5,
				timerOffset = -1,
				timerStartOffset = -5,
				uuid = "306de2b8-a847-a67b-bf42-f999e6afef2c",
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
							aType = "ACR",
							conditions = 
							{
								
								{
									"53d292a9-114e-4b73-ade9-8a05229e04b5",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_Healbar_Krasis",
							targetSubType = "Lowest HP",
							targetType = "Tank",
							uuid = "9f150df4-47fb-823d-a797-346087437cd2",
							variableIsHover = true,
							variableTogglesType = 3,
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
							jobValue = "SAGE",
							name = "Self: SGE",
							uuid = "53d292a9-114e-4b73-ade9-8a05229e04b5",
							version = 3,
						},
						inheritedIndex = 1,
					},
				},
				mechanicTime = 450.00390950196,
				name = "[SGE] Krasis",
				timelineIndex = 79,
				timerEndOffset = 5,
				timerOffset = -1,
				timerStartOffset = -5,
				uuid = "727fd2b3-84c3-7384-b18e-2eeb5d99b713",
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
							aType = "ACR",
							conditions = 
							{
								
								{
									"6eed371c-276e-0dc6-bfef-64a1ef96e29f",
									true,
								},
								
								{
									"6e5cce1c-e91c-060c-b26b-d9c804cb7b6e",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_Healbar_Kerachole",
							uuid = "1f6dfa69-9fa5-6422-bae0-e4c484120183",
							variableTogglesType = 3,
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
							jobValue = "SAGE",
							name = "Self: SGE",
							uuid = "6eed371c-276e-0dc6-bfef-64a1ef96e29f",
							version = 3,
						},
						inheritedIndex = 1,
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
							uuid = "6e5cce1c-e91c-060c-b26b-d9c804cb7b6e",
							version = 3,
						},
					},
				},
				mechanicTime = 450.00390950196,
				name = "[SGE] Kerachole",
				timeRange = true,
				timelineIndex = 79,
				timerEndOffset = -1,
				timerStartOffset = -14.5,
				uuid = "2595118f-504d-da5c-8bf7-f2f3a63ef2ba",
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
									"26fe8bf0-8e58-6157-9b67-e8a64a6b191a",
									true,
								},
								
								{
									"0796f2c7-5782-7e71-8675-e259a5fdcac0",
									true,
								},
								
								{
									"e223e459-fb7a-08cb-92b8-2df73cfa08f2",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_Healbar_EukrasianPrognosis",
							uuid = "9f150df4-47fb-823d-a797-346087437cd2",
							variableTogglesType = 3,
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
							jobValue = "SAGE",
							name = "Self: SGE",
							uuid = "26fe8bf0-8e58-6157-9b67-e8a64a6b191a",
							version = 3,
						},
						inheritedIndex = 1,
					},
					
					{
						data = 
						{
							category = "Party",
							comparator = 2,
							conditionType = 4,
							inRangeValue = 20,
							minTargetPercent = true,
							name = "Party Range: <= 20y",
							partyTargetNumber = 100,
							partyTargetSubType = "Number",
							uuid = "0796f2c7-5782-7e71-8675-e259a5fdcac0",
							version = 3,
						},
					},
					
					{
						data = 
						{
							buffID = 2611,
							category = "Self",
							name = "Self: Has Zoe Buff",
							uuid = "e223e459-fb7a-08cb-92b8-2df73cfa08f2",
							version = 3,
						},
						inheritedIndex = 2,
					},
				},
				mechanicTime = 450.00390950196,
				name = "[SGE] Eukrasian Prognosis",
				timeRange = true,
				timelineIndex = 79,
				timerEndOffset = 10,
				timerOffset = 2,
				timerStartOffset = 2,
				uuid = "b4bb6992-7da3-8b20-b3c1-741b2b4462d0",
				version = 2,
			},
			inheritedIndex = 27,
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
							acrOptionType = "Hold Action",
							actionID = 24316,
							conditions = 
							{
								
								{
									"2396dc77-b792-7e80-9887-f83101f21e56",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_CD",
							holdActionCharges = 2,
							holdActionDuration = 32,
							holdActionID = 24313,
							targetType = "Enemy",
							uuid = "870510d0-9a27-ffb0-877a-e19b2e0e5941",
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
							jobValue = "SAGE",
							name = "Self: SGE",
							uuid = "2396dc77-b792-7e80-9887-f83101f21e56",
							version = 3,
						},
						inheritedIndex = 1,
					},
				},
				mechanicTime = 450.00390950196,
				name = "[SGE] Hold Phlegma",
				timelineIndex = 79,
				timerOffset = -3,
				timerStartOffset = -2,
				uuid = "559c4db0-53e2-4243-b04c-e0c1d562f6ff",
				version = 2,
			},
		},
	},
	[80] = 
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
									"a7ff75cf-1c65-b308-9b67-891e93f1c4f5",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_Healbar_Soteria",
							uuid = "9f150df4-47fb-823d-a797-346087437cd2",
							variableTogglesType = 3,
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
							jobValue = "SAGE",
							name = "Self: SGE",
							uuid = "a7ff75cf-1c65-b308-9b67-891e93f1c4f5",
							version = 3,
						},
						inheritedIndex = 1,
					},
				},
				mechanicTime = 469.19930950196,
				name = "[SGE] Soteria",
				timelineIndex = 80,
				timerEndOffset = 5,
				timerOffset = -3,
				timerStartOffset = -5,
				uuid = "7cf3fe50-38fa-e332-8b45-64389676c91b",
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
							aType = "Lua",
							actionLua = "TensorDrift_SlidecastForceHold = true\nself.used = true",
							conditions = 
							{
								
								{
									"d1030c08-c549-1adb-b8b2-be36ac2c91ee",
									true,
								},
								
								{
									"3cd501c7-d23c-c344-813d-3e179fec13c2",
									true,
								},
								
								{
									"79f5f33e-b70c-9f7b-82ba-18cce413e962",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_CD",
							name = "Force Slidecast",
							uuid = "26b75ba9-ffe2-5289-bbe4-7548e58817b5",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "TensorDrift_SlidecastForceHold = false\nself.used = true",
							conditions = 
							{
								
								{
									"a6935c10-c7d8-00b1-906e-236a1c3ed091",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_CD",
							name = "End Slide",
							uuid = "c9525cfd-c78c-8c38-b40b-09e5fe1fbe7b",
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
							jobValue = "SAGE",
							name = "Self: SGE",
							uuid = "d1030c08-c549-1adb-b8b2-be36ac2c91ee",
							version = 3,
						},
						inheritedIndex = 1,
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 6,
							gaugeIndex = 3,
							gaugeValue = 3,
							name = "Self Gauge: >= 3 Toxikon",
							uuid = "3cd501c7-d23c-c344-813d-3e179fec13c2",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionCDValue = 1,
							actionID = 24298,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "Self: Kerachole CD <= 1s",
							uuid = "79f5f33e-b70c-9f7b-82ba-18cce413e962",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionUUID = "26b75ba9-ffe2-5289-bbe4-7548e58817b5",
							category = "Action",
							name = "Action Used: Force Slidecast",
							uuid = "a6935c10-c7d8-00b1-906e-236a1c3ed091",
							version = 3,
						},
						inheritedIndex = 4,
					},
				},
				mechanicTime = 469.19930950196,
				name = "Force Slidecast",
				throttleTime = 3000,
				timeRange = true,
				timelineIndex = 80,
				timerEndOffset = 2,
				timerStartOffset = -5,
				uuid = "083ae14b-239f-c0a9-8104-d4990b26e70c",
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
							gVar = "ACR_RikuSGE3_CD",
							setTarget = true,
							targetContentID = 7691,
							targetType = "ContentID",
							uuid = "60c6b762-030b-d5e0-a8fe-103c5ee54327",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				mechanicTime = 469.19930950196,
				name = "Target Chaos",
				timelineIndex = 80,
				timerOffset = -6,
				uuid = "157d311b-27b9-381b-be97-f926b65104f0",
				version = 2,
			},
			inheritedIndex = 11,
		},
		
		{
			data = 
			{
				name = "[Opti] Enable AOE",
				uuid = "3f73415e-4cb2-88be-bf3d-e51f522fa266",
				version = 2,
			},
			inheritedObjectUUID = "36ffa0fb-4c48-6652-ab76-003261e22000",
			inheritedOverwrites = 
			{
				timerOffset = -7,
			},
		},
		
		{
			data = 
			{
				name = "[Opti] Enable Smart DoT",
				uuid = "6d5a88c6-cb7e-86f1-8aee-6085cebaa27b",
				version = 2,
			},
			inheritedObjectUUID = "9e00b1c9-c030-67d9-8807-721bf4600e13",
			inheritedOverwrites = 
			{
				timerOffset = -7,
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
									"17018608-fe43-b818-9d29-3730258fd0f2",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_ToxikonWeave",
							gVarValue = 2,
							uuid = "30e44ac4-de33-e980-87fd-26ca0bc7e0f3",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"17018608-fe43-b818-9d29-3730258fd0f2",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_ToxikonWeave",
							uuid = "bb78f2df-c9c1-7a78-ba86-dedf6d4a19bb",
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
							jobValue = "SAGE",
							name = "Self: SGE",
							uuid = "17018608-fe43-b818-9d29-3730258fd0f2",
							version = 3,
						},
						inheritedIndex = 1,
					},
				},
				mechanicTime = 469.19930950196,
				name = "[SGE] Toggle T Weave",
				throttleTime = 7500,
				timeRange = true,
				timelineIndex = 80,
				timerEndOffset = 2,
				timerStartOffset = -7,
				uuid = "6be65e7e-08f1-e67a-8754-acd6df180823",
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
									"6dc6db9a-b186-7ff6-a6b3-f82998575c8f",
									true,
								},
								
								{
									"42ace145-2b74-484f-8bf2-cebf11dccf7a",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_Healbar_Philosophia",
							uuid = "7af0e0f9-9796-f4ac-9c26-f2fb54bb3a0f",
							variableTogglesType = 3,
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
							jobValue = "SAGE",
							name = "Self: SGE",
							uuid = "6dc6db9a-b186-7ff6-a6b3-f82998575c8f",
							version = 3,
						},
						inheritedIndex = 1,
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
							uuid = "42ace145-2b74-484f-8bf2-cebf11dccf7a",
							version = 3,
						},
					},
				},
				mechanicTime = 470.18264616806,
				name = "[SGE] Philosophia",
				timeRange = true,
				timelineIndex = 81,
				timerEndOffset = -1,
				timerOffset = 2,
				timerStartOffset = -19.5,
				uuid = "5b62d1f1-9d1c-9721-9ba1-e6f1737a16e7",
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
							aType = "ACR",
							conditions = 
							{
								
								{
									"2aede583-6334-5e6e-8897-d0185d2e479e",
									true,
								},
								
								{
									"2655f02b-090f-3366-8e9d-81bd1daab933",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_Healbar_Holos",
							uuid = "a63d60d1-0099-4678-9951-0dde4026e2a7",
							variableTogglesType = 3,
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
							jobValue = "SAGE",
							name = "Self: SGE",
							uuid = "2aede583-6334-5e6e-8897-d0185d2e479e",
							version = 3,
						},
						inheritedIndex = 1,
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
							uuid = "2655f02b-090f-3366-8e9d-81bd1daab933",
							version = 3,
						},
					},
				},
				mechanicTime = 470.18264616806,
				name = "[SGE] Holos",
				timeRange = true,
				timelineIndex = 81,
				timerEndOffset = -1,
				timerStartOffset = -19.5,
				uuid = "dbd1f775-e725-b2ae-879d-a766c763e4c2",
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
									"26fe8bf0-8e58-6157-9b67-e8a64a6b191a",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_Healbar_Taurochole",
							targetSubType = "Lowest HP",
							targetType = "Tank",
							uuid = "9f150df4-47fb-823d-a797-346087437cd2",
							variableIsHover = true,
							variableTogglesType = 3,
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
							jobValue = "SAGE",
							name = "Self: SGE",
							uuid = "26fe8bf0-8e58-6157-9b67-e8a64a6b191a",
							version = 3,
						},
						inheritedIndex = 1,
					},
				},
				mechanicTime = 470.18264616806,
				name = "[SGE] Taurochole",
				timelineIndex = 81,
				timerEndOffset = 5,
				timerOffset = 1,
				timerStartOffset = -5,
				uuid = "9fc3a7a8-d409-8243-8e5f-fd813058f596",
				version = 2,
			},
		},
	},
	[83] = 
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
							acrOptionType = "Hold Action",
							conditions = 
							{
								
								{
									"81ae31c5-9e92-6a56-ba07-ff21087cac48",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_Healbar_Panhaima",
							holdActionDuration = 10,
							holdActionID = 24309,
							uuid = "3513de14-07f8-c935-80cb-36aa906944eb",
							variableTogglesType = 3,
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
							jobValue = "SAGE",
							name = "Self: SGE",
							uuid = "81ae31c5-9e92-6a56-ba07-ff21087cac48",
							version = 3,
						},
						inheritedIndex = 1,
					},
				},
				mechanicTime = 478.4207739929,
				name = "[SGE] Hold Rhizomata",
				timelineIndex = 83,
				timerEndOffset = -1,
				timerOffset = -3,
				timerStartOffset = -14,
				uuid = "b4e45f31-2d50-de5b-9f04-e48e6bcd548b",
				version = 2,
			},
			inheritedIndex = 4,
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
									"26fe8bf0-8e58-6157-9b67-e8a64a6b191a",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_Hotbar_Potion",
							uuid = "9f150df4-47fb-823d-a797-346087437cd2",
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
							jobValue = "SAGE",
							name = "Self: SGE",
							uuid = "26fe8bf0-8e58-6157-9b67-e8a64a6b191a",
							version = 3,
						},
						inheritedIndex = 1,
					},
				},
				mechanicTime = 478.4207739929,
				name = "[SGE] Use Pot",
				timelineIndex = 83,
				timerEndOffset = -1,
				timerOffset = -1.5,
				timerStartOffset = -5,
				uuid = "16ca27fe-d65e-c89a-ab75-5b6414453aa5",
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
							aType = "ACR",
							conditions = 
							{
								
								{
									"26fe8bf0-8e58-6157-9b67-e8a64a6b191a",
									true,
								},
								
								{
									"5b3830f2-93e2-9833-9894-680daafb64f5",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_Healbar_Pepsis",
							uuid = "9f150df4-47fb-823d-a797-346087437cd2",
							variableTogglesType = 3,
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
							jobValue = "SAGE",
							name = "Self: SGE",
							uuid = "26fe8bf0-8e58-6157-9b67-e8a64a6b191a",
							version = 3,
						},
						inheritedIndex = 1,
					},
					
					{
						data = 
						{
							category = "Party",
							comparator = 2,
							conditionType = 4,
							inRangeValue = 20,
							minTargetPercent = true,
							name = "Party Range: <= 20y",
							partyTargetNumber = 100,
							partyTargetSubType = "Number",
							uuid = "0796f2c7-5782-7e71-8675-e259a5fdcac0",
							version = 3,
						},
					},
					
					{
						data = 
						{
							buffCheckType = 5,
							buffID = 2609,
							buffIDList = 
							{
								2609,
								2607,
							},
							category = "Party",
							matchAnyBuff = true,
							name = "Party: E. Prognosis/Diagnosis Buff",
							partyTargetSubType = "Number",
							uuid = "5b3830f2-93e2-9833-9894-680daafb64f5",
							version = 3,
						},
					},
				},
				mechanicTime = 481.45392399289,
				name = "[SGE] Pepsis",
				timeRange = true,
				timelineIndex = 84,
				timerEndOffset = 7,
				timerOffset = -1,
				timerStartOffset = -2,
				uuid = "f0fb0ee7-f1b8-4120-ab87-48f527c8c8b4",
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
							aType = "ACR",
							conditions = 
							{
								
								{
									"26fe8bf0-8e58-6157-9b67-e8a64a6b191a",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_Healbar_EukrasianPrognosis",
							uuid = "9f150df4-47fb-823d-a797-346087437cd2",
							variableTogglesType = 3,
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
							jobValue = "SAGE",
							name = "Self: SGE",
							uuid = "26fe8bf0-8e58-6157-9b67-e8a64a6b191a",
							version = 3,
						},
						inheritedIndex = 1,
					},
					
					{
						data = 
						{
							category = "Party",
							comparator = 2,
							conditionType = 4,
							inRangeValue = 20,
							minTargetPercent = true,
							name = "Party Range: <= 20y",
							partyTargetNumber = 100,
							partyTargetSubType = "Number",
							uuid = "0796f2c7-5782-7e71-8675-e259a5fdcac0",
							version = 3,
						},
					},
					
					{
						data = 
						{
							buffCheckType = 2,
							buffID = 2609,
							category = "Party",
							name = "DT: Missing Eukrasian Prognosis",
							partyTargetSubType = "Number",
							partyTargetType = "Detection Target",
							uuid = "5b3830f2-93e2-9833-9894-680daafb64f5",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Party",
							conditionType = 10,
							inGroupTargetType = "Tank",
							name = "DT: Tank",
							partyTargetType = "Detection Target",
							uuid = "d00ae7a2-5b63-9ea0-8f6c-a76c339c4bee",
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
									"5b3830f2-93e2-9833-9894-680daafb64f5",
									true,
								},
								
								{
									"d00ae7a2-5b63-9ea0-8f6c-a76c339c4bee",
									false,
								},
							},
							filterTargetType = "Party",
							name = "F - Non Tank Missing Shield",
							partyTargetNumber = 6,
							uuid = "303cfea5-c9de-3c82-8055-df4b83304e43",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionCDValue = 1,
							actionID = 24301,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "Self: Pepsis CD <= 1s",
							uuid = "525749db-96f5-04e0-bd6e-173ac4c2e5ab",
							version = 3,
						},
					},
				},
				mechanicTime = 481.45392399289,
				name = "[SGE] Eukrasian Prognosis",
				timeRange = true,
				timelineIndex = 84,
				timerEndOffset = 11,
				timerStartOffset = 5,
				uuid = "bb68094b-92c9-4819-9717-0eceefab09d2",
				version = 2,
			},
			inheritedIndex = 2,
		},
	},
	[85] = 
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
							acrOptionType = "Hold Action",
							actionID = 24316,
							conditions = 
							{
								
								{
									"2396dc77-b792-7e80-9887-f83101f21e56",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_CD",
							holdActionCharges = 2,
							holdActionDuration = 10,
							holdActionID = 24313,
							targetType = "Enemy",
							uuid = "870510d0-9a27-ffb0-877a-e19b2e0e5941",
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
							jobValue = "SAGE",
							name = "Self: SGE",
							uuid = "2396dc77-b792-7e80-9887-f83101f21e56",
							version = 3,
						},
						inheritedIndex = 1,
					},
				},
				mechanicTime = 490.04292399289,
				name = "[SGE] Hold Phlegma",
				timelineIndex = 85,
				timerOffset = -3,
				timerStartOffset = -2,
				uuid = "5bd5c0c1-d799-ad76-bd91-22eb1d5387b6",
				version = 2,
			},
		},
	},
	[86] = 
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
									"26fe8bf0-8e58-6157-9b67-e8a64a6b191a",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_Healbar_Druochole",
							targetSubType = "Lowest HP",
							targetType = "Tank",
							uuid = "9f150df4-47fb-823d-a797-346087437cd2",
							variableIsHover = true,
							variableTogglesType = 3,
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
							jobValue = "SAGE",
							name = "Self: SGE",
							uuid = "26fe8bf0-8e58-6157-9b67-e8a64a6b191a",
							version = 3,
						},
						inheritedIndex = 1,
					},
				},
				mechanicTime = 491.23479899289,
				name = "[SGE] Druochole",
				timelineIndex = 86,
				timerEndOffset = 5,
				timerOffset = 1,
				timerStartOffset = -5,
				uuid = "d66e69a4-0173-0ac5-aebd-a7b653068781",
				version = 2,
			},
			inheritedIndex = 3,
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
									"6eed371c-276e-0dc6-bfef-64a1ef96e29f",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_Healbar_Kerachole",
							uuid = "1f6dfa69-9fa5-6422-bae0-e4c484120183",
							variableTogglesType = 3,
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
							jobValue = "SAGE",
							name = "Self: SGE",
							uuid = "6eed371c-276e-0dc6-bfef-64a1ef96e29f",
							version = 3,
						},
						inheritedIndex = 1,
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
							uuid = "6e5cce1c-e91c-060c-b26b-d9c804cb7b6e",
							version = 3,
						},
					},
				},
				mechanicTime = 497.15528394761,
				name = "[SGE] Kerachole",
				timeRange = true,
				timelineIndex = 89,
				timerEndOffset = -1,
				timerStartOffset = -14.5,
				uuid = "31f60f74-9e24-e43b-8e76-d7a177b6c18c",
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
							aType = "ACR",
							conditions = 
							{
								
								{
									"26fe8bf0-8e58-6157-9b67-e8a64a6b191a",
									true,
								},
								
								{
									"0796f2c7-5782-7e71-8675-e259a5fdcac0",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_Healbar_Ixochole",
							uuid = "9f150df4-47fb-823d-a797-346087437cd2",
							variableTogglesType = 3,
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
							jobValue = "SAGE",
							name = "Self: SGE",
							uuid = "26fe8bf0-8e58-6157-9b67-e8a64a6b191a",
							version = 3,
						},
						inheritedIndex = 1,
					},
					
					{
						data = 
						{
							category = "Party",
							comparator = 2,
							conditionType = 4,
							inRangeValue = 20,
							minTargetPercent = true,
							name = "Party Range: <= 20y",
							partyTargetNumber = 100,
							partyTargetSubType = "Number",
							uuid = "0796f2c7-5782-7e71-8675-e259a5fdcac0",
							version = 3,
						},
					},
				},
				mechanicTime = 497.15528394761,
				name = "[SGE] Ixochole",
				timelineIndex = 89,
				timerEndOffset = 5,
				timerOffset = 1,
				timerStartOffset = -5,
				uuid = "10789f12-f883-9e26-8ef0-839af35812ff",
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
									"ace000e6-5541-6a8d-b064-b432e620d43a",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_Healbar_Pneuma",
							uuid = "9f150df4-47fb-823d-a797-346087437cd2",
							variableTogglesType = 3,
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
							jobValue = "SAGE",
							name = "Self: SGE",
							uuid = "ace000e6-5541-6a8d-b064-b432e620d43a",
							version = 3,
						},
						inheritedIndex = 1,
					},
				},
				mechanicTime = 497.15528394761,
				name = "[SGE] Pneuma",
				timelineIndex = 89,
				timerEndOffset = 5,
				timerOffset = -0.5,
				timerStartOffset = -5,
				uuid = "1ae2d4ae-aec8-91ec-a5b3-3bad8bcf9f63",
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
							actionID = 24316,
							conditions = 
							{
								
								{
									"2396dc77-b792-7e80-9887-f83101f21e56",
									true,
								},
								
								{
									"cb3751e8-0d95-e559-b32d-1eff813f43a0",
									true,
								},
								
								{
									"be39038c-1ae7-41d9-baee-6ef533259037",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_CD",
							targetType = "Enemy",
							uuid = "870510d0-9a27-ffb0-877a-e19b2e0e5941",
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
							jobValue = "SAGE",
							name = "Self: SGE",
							uuid = "2396dc77-b792-7e80-9887-f83101f21e56",
							version = 3,
						},
						inheritedIndex = 1,
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return FFXIV_Common_BotRunning",
							name = "Assist Enabled",
							uuid = "cb3751e8-0d95-e559-b32d-1eff813f43a0",
							version = 3,
						},
						inheritedIndex = 2,
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 6,
							gaugeIndex = 3,
							gaugeValue = 2,
							name = "Self Gauge: >= 2 Toxikon",
							uuid = "be39038c-1ae7-41d9-baee-6ef533259037",
							version = 3,
						},
					},
				},
				loop = true,
				mechanicTime = 507.31761539671,
				name = "[SGE] Toxikon",
				timeRange = true,
				timelineIndex = 91,
				timerEndOffset = 2,
				timerOffset = -3,
				timerStartOffset = -7,
				uuid = "b10f96db-81cd-a135-be99-126daa029b61",
				version = 2,
			},
			inheritedIndex = 4,
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
									"17018608-fe43-b818-9d29-3730258fd0f2",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_ToxikonWeave",
							gVarValue = 2,
							uuid = "30e44ac4-de33-e980-87fd-26ca0bc7e0f3",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"17018608-fe43-b818-9d29-3730258fd0f2",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_ToxikonWeave",
							uuid = "bb78f2df-c9c1-7a78-ba86-dedf6d4a19bb",
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
							jobValue = "SAGE",
							name = "Self: SGE",
							uuid = "17018608-fe43-b818-9d29-3730258fd0f2",
							version = 3,
						},
						inheritedIndex = 1,
					},
				},
				mechanicTime = 507.31761539671,
				name = "[SGE] Toggle T Weave",
				throttleTime = 7500,
				timeRange = true,
				timelineIndex = 91,
				timerEndOffset = 2,
				timerStartOffset = -7,
				uuid = "1fb0fc47-dfa1-146c-8a51-efc555ecb4d9",
				version = 2,
			},
		},
	},
	[93] = 
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
									"e380b775-4787-60c3-ae89-d1e0bf80fee5",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_CD",
							name = "Chaos",
							setTarget = true,
							targetContentID = 7691,
							targetType = "ContentID",
							uuid = "d14f21ee-fc23-538d-83ff-23c2cc5e0d35",
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
									"fb65221a-9d4e-83df-8537-85f56287d339",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_CD",
							name = "Exdeath",
							setTarget = true,
							targetContentID = 6052,
							targetType = "ContentID",
							uuid = "f174764e-68c7-1834-b729-2ac01d91a53e",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							buffID = 1602,
							category = "Self",
							dequeueIfLuaFalse = true,
							name = "Self: Buff Headwind",
							uuid = "e380b775-4787-60c3-ae89-d1e0bf80fee5",
							version = 3,
						},
					},
					
					{
						data = 
						{
							buffID = 1603,
							category = "Self",
							dequeueIfLuaFalse = true,
							name = "Self: Buff Tailwind",
							uuid = "fb65221a-9d4e-83df-8537-85f56287d339",
							version = 3,
						},
					},
				},
				mechanicTime = 511.44225832111,
				name = "Target Correct Boss",
				timelineIndex = 93,
				uuid = "724f083b-f49a-f8e5-afa2-a4d4d8383818",
				version = 2,
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
							aType = "ACR",
							conditions = 
							{
								
								{
									"299bb84c-9fa3-6837-9e30-b8c05eae3959",
									true,
								},
								
								{
									"db9e281c-6f91-3db5-8d6c-487c8eb46530",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_Healbar_Physis",
							uuid = "9f150df4-47fb-823d-a797-346087437cd2",
							variableTogglesType = 3,
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
							jobValue = "SAGE",
							name = "Self: SGE",
							uuid = "299bb84c-9fa3-6837-9e30-b8c05eae3959",
							version = 3,
						},
						inheritedIndex = 1,
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
							uuid = "db9e281c-6f91-3db5-8d6c-487c8eb46530",
							version = 3,
						},
					},
				},
				mechanicTime = 513.32988332111,
				name = "[SGE] Physis",
				timelineIndex = 94,
				timerEndOffset = 5,
				timerOffset = -5,
				timerStartOffset = -5,
				uuid = "085d4429-be35-0072-9aa2-a48a5da3193b",
				version = 2,
			},
		},
	},
	[95] = 
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
									"26fe8bf0-8e58-6157-9b67-e8a64a6b191a",
									true,
								},
								
								{
									"0796f2c7-5782-7e71-8675-e259a5fdcac0",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_Healbar_EukrasianPrognosis",
							uuid = "9f150df4-47fb-823d-a797-346087437cd2",
							variableTogglesType = 3,
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
							jobValue = "SAGE",
							name = "Self: SGE",
							uuid = "26fe8bf0-8e58-6157-9b67-e8a64a6b191a",
							version = 3,
						},
						inheritedIndex = 1,
					},
					
					{
						data = 
						{
							category = "Party",
							comparator = 2,
							conditionType = 4,
							inRangeValue = 20,
							minTargetPercent = true,
							name = "Party Range: <= 20y",
							partyTargetNumber = 100,
							partyTargetSubType = "Number",
							uuid = "0796f2c7-5782-7e71-8675-e259a5fdcac0",
							version = 3,
						},
					},
				},
				mechanicTime = 514.44485832111,
				name = "[SGE] Eukrasian Prognosis",
				timelineIndex = 95,
				timerEndOffset = 5,
				timerOffset = -5,
				timerStartOffset = -5,
				uuid = "b02e69ae-0b97-71c1-b530-a579f743c8e8",
				version = 2,
			},
		},
	},
	[96] = 
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
							actionLua = "TensorDrift_SlidecastForceHold = true\nself.used = true",
							gVar = "ACR_RikuSGE3_CD",
							name = "Force Slidecast",
							uuid = "26b75ba9-ffe2-5289-bbe4-7548e58817b5",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "TensorDrift_SlidecastForceHold = false\nself.used = true",
							gVar = "ACR_RikuSGE3_CD",
							name = "End Slide",
							uuid = "c9525cfd-c78c-8c38-b40b-09e5fe1fbe7b",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				mechanicTime = 515.32600832111,
				name = "Force Slidecast",
				throttleTime = 3000,
				timeRange = true,
				timelineIndex = 96,
				timerEndOffset = 2,
				timerStartOffset = -2,
				uuid = "cc10f098-2e25-4afa-aebb-413d931ea53d",
				version = 2,
			},
			inheritedIndex = 5,
		},
	},
	[99] = 
	{
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							actionID = 24316,
							conditions = 
							{
								
								{
									"2396dc77-b792-7e80-9887-f83101f21e56",
									true,
								},
								
								{
									"694b3bb9-6331-38d6-b589-6ede0687f758",
									true,
								},
								
								{
									"be39038c-1ae7-41d9-baee-6ef533259037",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_CD",
							targetType = "Enemy",
							uuid = "870510d0-9a27-ffb0-877a-e19b2e0e5941",
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
							jobValue = "SAGE",
							name = "Self: SGE",
							uuid = "2396dc77-b792-7e80-9887-f83101f21e56",
							version = 3,
						},
						inheritedIndex = 1,
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return FFXIV_Common_BotRunning",
							name = "Assist Enabled",
							uuid = "694b3bb9-6331-38d6-b589-6ede0687f758",
							version = 3,
						},
						inheritedIndex = 2,
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 6,
							gaugeIndex = 3,
							gaugeValue = 3,
							name = "Self Gauge: >= 3 Toxikon",
							uuid = "be39038c-1ae7-41d9-baee-6ef533259037",
							version = 3,
						},
					},
				},
				mechanicTime = 519.33918599411,
				name = "[SGE] Toxikon",
				timelineIndex = 99,
				timerOffset = -14,
				timerStartOffset = -14,
				uuid = "3105d968-3229-677c-8b48-425949662a20",
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
							aType = "ACR",
							conditions = 
							{
								
								{
									"81ae31c5-9e92-6a56-ba07-ff21087cac48",
									true,
								},
								
								{
									"800486cc-705c-5caf-8fba-1dd95613f62d",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_Healbar_Panhaima",
							uuid = "3513de14-07f8-c935-80cb-36aa906944eb",
							variableTogglesType = 3,
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
							jobValue = "SAGE",
							name = "Self: SGE",
							uuid = "81ae31c5-9e92-6a56-ba07-ff21087cac48",
							version = 3,
						},
						inheritedIndex = 1,
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
							uuid = "800486cc-705c-5caf-8fba-1dd95613f62d",
							version = 3,
						},
					},
				},
				mechanicTime = 519.33918599411,
				name = "[SGE] Panhaima",
				timeRange = true,
				timelineIndex = 99,
				timerEndOffset = -1,
				timerStartOffset = -14.5,
				uuid = "cac778be-81ce-aa4f-96cc-c4058e24d6dc",
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
							aType = "ACR",
							conditions = 
							{
								
								{
									"6eed371c-276e-0dc6-bfef-64a1ef96e29f",
									true,
								},
								
								{
									"6e5cce1c-e91c-060c-b26b-d9c804cb7b6e",
									true,
								},
								
								{
									"87156e97-ab77-ce1c-8e89-bf22f0876062",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_Healbar_Kerachole",
							uuid = "1f6dfa69-9fa5-6422-bae0-e4c484120183",
							variableTogglesType = 3,
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
							jobValue = "SAGE",
							name = "Self: SGE",
							uuid = "6eed371c-276e-0dc6-bfef-64a1ef96e29f",
							version = 3,
						},
						inheritedIndex = 1,
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
							uuid = "6e5cce1c-e91c-060c-b26b-d9c804cb7b6e",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionCDValue = 1,
							actionID = 24298,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "Self: Kerachole CD <= 1s",
							uuid = "87156e97-ab77-ce1c-8e89-bf22f0876062",
							version = 3,
						},
					},
				},
				mechanicTime = 519.33918599411,
				name = "[SGE] Kerachole",
				timeRange = true,
				timelineIndex = 99,
				timerEndOffset = -1,
				timerStartOffset = -14.5,
				uuid = "c8d74e1a-f060-cac0-a484-d4ec33073dda",
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
									"26fe8bf0-8e58-6157-9b67-e8a64a6b191a",
									true,
								},
								
								{
									"0796f2c7-5782-7e71-8675-e259a5fdcac0",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_Healbar_EukrasianPrognosis",
							uuid = "9f150df4-47fb-823d-a797-346087437cd2",
							variableTogglesType = 3,
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
							jobValue = "SAGE",
							name = "Self: SGE",
							uuid = "26fe8bf0-8e58-6157-9b67-e8a64a6b191a",
							version = 3,
						},
						inheritedIndex = 1,
					},
					
					{
						data = 
						{
							category = "Party",
							comparator = 2,
							conditionType = 4,
							inRangeValue = 20,
							minTargetPercent = true,
							name = "Party Range: <= 20y",
							partyTargetNumber = 100,
							partyTargetSubType = "Number",
							uuid = "0796f2c7-5782-7e71-8675-e259a5fdcac0",
							version = 3,
						},
					},
				},
				mechanicTime = 519.33918599411,
				name = "[SGE] Eukrasian Prognosis",
				timelineIndex = 99,
				timerEndOffset = 5,
				timerStartOffset = -5,
				uuid = "da90ed22-488b-032c-8f5f-9dbb3b0bb94d",
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
							aType = "ACR",
							conditions = 
							{
								
								{
									"a7ff75cf-1c65-b308-9b67-891e93f1c4f5",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_2Toxikon",
							uuid = "89a2a281-ece0-b47d-ae01-2141d1630972",
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
							jobValue = "SAGE",
							name = "Self: SGE",
							uuid = "a7ff75cf-1c65-b308-9b67-891e93f1c4f5",
							version = 3,
						},
						inheritedIndex = 1,
					},
				},
				mechanicTime = 521.36069634686,
				name = "[SGE] Toggle 2 Toxikon",
				timelineIndex = 101,
				timerEndOffset = 5,
				timerOffset = 7,
				timerStartOffset = -5,
				uuid = "1496b63d-2ea3-5275-9d94-97974fbdc365",
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
							aType = "Misc",
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
				uuid = "67968eb1-8384-eac5-b77a-4511244dc446",
				version = 2,
			},
		},
	},
	[103] = 
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
									"a7ff75cf-1c65-b308-9b67-891e93f1c4f5",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_Healbar_Soteria",
							uuid = "9f150df4-47fb-823d-a797-346087437cd2",
							variableTogglesType = 3,
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
							jobValue = "SAGE",
							name = "Self: SGE",
							uuid = "a7ff75cf-1c65-b308-9b67-891e93f1c4f5",
							version = 3,
						},
						inheritedIndex = 1,
					},
				},
				mechanicTime = 540.01642260272,
				name = "[SGE] Soteria",
				timelineIndex = 103,
				timerEndOffset = 5,
				timerOffset = -2,
				timerStartOffset = -5,
				uuid = "53aee8ae-ccfb-2683-8c70-d94123454ec7",
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
				mechanicTime = 540.01642260272,
				name = "Target Exdeath",
				timelineIndex = 103,
				timerOffset = 2,
				uuid = "32351568-4bc1-d283-abb1-97246f5542b8",
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
									"26fe8bf0-8e58-6157-9b67-e8a64a6b191a",
									true,
								},
								
								{
									"381dce5b-3db3-8082-89b0-49db92f75dec",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_Healbar_EukrasianDiagnosis",
							targetSubType = "Lowest HP",
							targetType = "Detection Target",
							uuid = "9f150df4-47fb-823d-a797-346087437cd2",
							variableIsHover = true,
							variableTogglesType = 3,
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
							jobValue = "SAGE",
							name = "Self: SGE",
							uuid = "26fe8bf0-8e58-6157-9b67-e8a64a6b191a",
							version = 3,
						},
						inheritedIndex = 1,
					},
					
					{
						data = 
						{
							category = "Party",
							comparator = 2,
							conditionType = 4,
							inRangeValue = 30,
							minTargetPercent = true,
							name = "DT Range: <= 30y",
							partyTargetNumber = 100,
							partyTargetSubType = "Number",
							partyTargetType = "Detection Target",
							uuid = "0796f2c7-5782-7e71-8675-e259a5fdcac0",
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
									"0796f2c7-5782-7e71-8675-e259a5fdcac0",
									true,
								},
							},
							filterTargetSubtype = "Lowest HP",
							filterTargetType = "Tank",
							uuid = "381dce5b-3db3-8082-89b0-49db92f75dec",
							version = 3,
						},
					},
				},
				mechanicTime = 540.01642260272,
				name = "[SGE] Eukrasian Diagnosis",
				timelineIndex = 103,
				timerEndOffset = 5,
				timerOffset = 0.5,
				timerStartOffset = -5,
				uuid = "3f6331c2-b368-a498-98e7-1bdd887096ae",
				version = 2,
			},
			inheritedIndex = 25,
		},
	},
	[104] = 
	{
		
		{
			data = 
			{
				name = "[Opti] Disable AOE",
				uuid = "5abae41d-8395-0f67-b071-400713179a4c",
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
								gVar = "ACR_RikuSGE3_SmartAOE",
								gVarValue = 2,
								uuid = "d9b4230c-656c-d975-8911-282e83d7857a",
								version = 2.1,
							},
						},
					},
				},
			},
		},
	},
	[105] = 
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
									"104eee91-fce4-3ee1-b2e4-df9ea7ad111d",
									true,
								},
								
								{
									"738f5cf2-ec60-616d-9a2c-f2dbd06647e8",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_Healbar_Kardia",
							targetSubType = "Furthest",
							targetType = "Detection Target",
							uuid = "c0a9c51e-79a0-c1be-b647-992fb1fced0e",
							variableIsHover = true,
							variableTogglesType = 3,
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
							conditionLua = "local Roster = AnyoneCore.Roster\n\nif not Roster then\n    return false\nend\n\nlocal tankPriority = {\n    war = 4,\n    drk = 3,\n    gnb = 2,\n    pld = 1\n}\n\nlocal t1 = Roster.entOf(\"T1\")\nlocal t2 = Roster.entOf(\"T2\")\n\nif not t1 or not t2 then\n    return false\nend\n\nlocal t1Priority = tankPriority[AnyoneCore.jobs[t1.job]]\nlocal t2Priority = tankPriority[AnyoneCore.jobs[t2.job]]\n\nif not t1Priority or not t2Priority then\n    return false\nend\n\nlocal chaosTank = (t1Priority > t2Priority) and t1 or t2\n\neventArgs.detectionTargetID = chaosTank.id\nreturn true",
							dequeueIfLuaFalse = true,
							name = "Chaos Tank",
							uuid = "104eee91-fce4-3ee1-b2e4-df9ea7ad111d",
							version = 3,
						},
					},
					
					{
						data = 
						{
							buffCheckType = 2,
							buffID = 2605,
							category = "Party",
							name = "DT: Kardion Buff Missing",
							partyTargetSubType = "Furthest",
							partyTargetType = "Detection Target",
							uuid = "738f5cf2-ec60-616d-9a2c-f2dbd06647e8",
							version = 3,
						},
						inheritedIndex = 2,
					},
				},
				mechanicTime = 554.19098210262,
				name = "[SGE] Kardia",
				timelineIndex = 105,
				timerOffset = -2,
				uuid = "fa614dbb-72f7-eef8-bb21-880dd3d9fa79",
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
							aType = "ACR",
							conditions = 
							{
								
								{
									"53d292a9-114e-4b73-ade9-8a05229e04b5",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_Healbar_Krasis",
							targetSubType = "Lowest HP",
							targetType = "Tank",
							uuid = "9f150df4-47fb-823d-a797-346087437cd2",
							variableIsHover = true,
							variableTogglesType = 3,
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
							jobValue = "SAGE",
							name = "Self: SGE",
							uuid = "53d292a9-114e-4b73-ade9-8a05229e04b5",
							version = 3,
						},
						inheritedIndex = 1,
					},
				},
				mechanicTime = 554.19098210262,
				name = "[SGE] Krasis",
				timelineIndex = 105,
				timerEndOffset = -1,
				timerStartOffset = -10,
				uuid = "237049e5-dd0b-fcde-ab2a-de402647b19b",
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
							aType = "ACR",
							conditions = 
							{
								
								{
									"26fe8bf0-8e58-6157-9b67-e8a64a6b191a",
									true,
								},
							},
							fallthrough = true,
							gVar = "ACR_RikuSGE3_Healbar_Zoe",
							uuid = "e8241127-b7f4-8235-9f22-e126fbe1aa59",
							variableTogglesType = 3,
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
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "SAGE",
							name = "Self: SGE",
							uuid = "26fe8bf0-8e58-6157-9b67-e8a64a6b191a",
							version = 3,
						},
						inheritedIndex = 1,
					},
				},
				mechanicTime = 554.19098210262,
				name = "[SGE] Zoe",
				timelineIndex = 105,
				timerEndOffset = -1,
				timerStartOffset = -6,
				uuid = "c23cfa13-615e-a569-9f76-ddb439455384",
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
							aType = "ACR",
							conditions = 
							{
								
								{
									"26fe8bf0-8e58-6157-9b67-e8a64a6b191a",
									true,
								},
								
								{
									"381dce5b-3db3-8082-89b0-49db92f75dec",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_Healbar_EukrasianDiagnosis",
							targetSubType = "Bottom-most Partylist",
							targetType = "Detection Target",
							uuid = "9f150df4-47fb-823d-a797-346087437cd2",
							variableIsHover = true,
							variableTogglesType = 3,
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
							jobValue = "SAGE",
							name = "Self: SGE",
							uuid = "26fe8bf0-8e58-6157-9b67-e8a64a6b191a",
							version = 3,
						},
						inheritedIndex = 1,
					},
					
					{
						data = 
						{
							buffCheckType = 2,
							buffID = 2611,
							category = "Self",
							name = "Self: Missing Zoe Buff",
							uuid = "71c4f04a-5a75-8802-90e6-61b35f98d5cc",
							version = 3,
						},
						inheritedIndex = 2,
					},
					
					{
						data = 
						{
							category = "Party",
							comparator = 2,
							conditionType = 4,
							inRangeValue = 30,
							minTargetPercent = true,
							name = "DT Range: <= 30y",
							partyTargetNumber = 100,
							partyTargetSubType = "Number",
							partyTargetType = "Detection Target",
							uuid = "0796f2c7-5782-7e71-8675-e259a5fdcac0",
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
									"0796f2c7-5782-7e71-8675-e259a5fdcac0",
									true,
								},
							},
							filterTargetSubtype = "Lowest HP",
							filterTargetType = "Tank",
							uuid = "381dce5b-3db3-8082-89b0-49db92f75dec",
							version = 3,
						},
					},
				},
				mechanicTime = 554.19098210262,
				name = "[SGE] Eukrasian Diagnosis",
				timelineIndex = 105,
				timerEndOffset = 5,
				timerOffset = -4,
				timerStartOffset = -5,
				uuid = "f9a7da29-004d-c01a-8416-de66c5bd8ea5",
				version = 2,
			},
			inheritedIndex = 25,
		},
	},
	[106] = 
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
									"26fe8bf0-8e58-6157-9b67-e8a64a6b191a",
									true,
								},
								
								{
									"0796f2c7-5782-7e71-8675-e259a5fdcac0",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_Healbar_EukrasianPrognosis",
							uuid = "9f150df4-47fb-823d-a797-346087437cd2",
							variableTogglesType = 3,
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
							jobValue = "SAGE",
							name = "Self: SGE",
							uuid = "26fe8bf0-8e58-6157-9b67-e8a64a6b191a",
							version = 3,
						},
						inheritedIndex = 1,
					},
					
					{
						data = 
						{
							category = "Party",
							comparator = 2,
							conditionType = 4,
							inRangeValue = 20,
							minTargetPercent = true,
							name = "Party Range: <= 20y",
							partyTargetNumber = 100,
							partyTargetSubType = "Number",
							uuid = "0796f2c7-5782-7e71-8675-e259a5fdcac0",
							version = 3,
						},
					},
					
					{
						data = 
						{
							buffID = 3898,
							category = "Self",
							name = "Self Buff: Philosophia",
							uuid = "78976015-65d8-5f00-9485-1b808e4b15ea",
							version = 3,
						},
					},
				},
				mechanicTime = 556.00428210262,
				name = "[SGE] Eukrasian Prognosis",
				timelineIndex = 106,
				timerEndOffset = -1,
				timerOffset = -1,
				timerStartOffset = -6,
				uuid = "7ca2aae0-9bd2-9d39-99cb-fdb58eb1a7cc",
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
							aType = "Lua",
							actionLua = "data.ljSGEInLine = \"Second\"\nself.used = true",
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
							actionLua = "data.ljSGEAccretion = true\n--TensorCore.sendParsedChatMessage(\"/e {color:255,0,0} Accretion true\")\nself.used = true",
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
							actionLua = "data.ljSGEAccretion = false\n--TensorCore.sendParsedChatMessage(\"/e {color:0,255,0} Accretion false\")\nself.used = true",
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
				name = "Second in Line & Accretion Heal Data",
				timelineIndex = 107,
				timerOffset = 5,
				uuid = "3b42f77c-ad05-1241-b945-0413b205e2b4",
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
									"26fe8bf0-8e58-6157-9b67-e8a64a6b191a",
									true,
								},
								
								{
									"0796f2c7-5782-7e71-8675-e259a5fdcac0",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_Healbar_Prognosis",
							uuid = "9f150df4-47fb-823d-a797-346087437cd2",
							variableTogglesType = 3,
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
							jobValue = "SAGE",
							name = "Self: SGE",
							uuid = "26fe8bf0-8e58-6157-9b67-e8a64a6b191a",
							version = 3,
						},
						inheritedIndex = 1,
					},
					
					{
						data = 
						{
							category = "Party",
							comparator = 2,
							conditionType = 4,
							inRangeValue = 20,
							minTargetPercent = true,
							name = "Party Range: <= 20y",
							partyTargetNumber = 100,
							partyTargetSubType = "Number",
							uuid = "0796f2c7-5782-7e71-8675-e259a5fdcac0",
							version = 3,
						},
					},
				},
				mechanicTime = 557.21788210262,
				name = "[SGE] Prognosis",
				timelineIndex = 107,
				timerEndOffset = 5,
				timerOffset = 4,
				timerStartOffset = -5,
				uuid = "4fc564ec-62ce-1bb3-8220-06ea93333249",
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
									"26fe8bf0-8e58-6157-9b67-e8a64a6b191a",
									true,
								},
								
								{
									"0796f2c7-5782-7e71-8675-e259a5fdcac0",
									true,
								},
								
								{
									"55af139a-dd29-f6f0-8aa4-078b31d55c31",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_Healbar_EukrasianPrognosis",
							uuid = "9f150df4-47fb-823d-a797-346087437cd2",
							variableTogglesType = 3,
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
							jobValue = "SAGE",
							name = "Self: SGE",
							uuid = "26fe8bf0-8e58-6157-9b67-e8a64a6b191a",
							version = 3,
						},
						inheritedIndex = 1,
					},
					
					{
						data = 
						{
							category = "Party",
							comparator = 2,
							conditionType = 4,
							inRangeValue = 20,
							minTargetPercent = true,
							name = "Party Range: <= 20y",
							partyTargetNumber = 100,
							partyTargetSubType = "Number",
							uuid = "0796f2c7-5782-7e71-8675-e259a5fdcac0",
							version = 3,
						},
					},
					
					{
						data = 
						{
							buffCheckType = 2,
							buffID = 2609,
							category = "Party",
							name = "DT: Missing Eukrasian Prognosis Buff",
							partyTargetType = "Detection Target",
							uuid = "1d3c56a3-408c-7bc1-b5f9-9be4d38c1862",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Party",
							conditionType = 10,
							inGroupTargetType = "Tank",
							name = "DT: Tank",
							partyTargetType = "Detection Target",
							uuid = "003d2428-acbb-ed8f-b2cf-1b9dc3d53701",
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
									"1d3c56a3-408c-7bc1-b5f9-9be4d38c1862",
									true,
								},
								
								{
									"003d2428-acbb-ed8f-b2cf-1b9dc3d53701",
									false,
								},
							},
							filterTargetType = "Party",
							uuid = "55af139a-dd29-f6f0-8aa4-078b31d55c31",
							version = 3,
						},
					},
				},
				loop = true,
				mechanicTime = 557.21788210262,
				name = "[SGE] Eukrasian Prognosis",
				timeRange = true,
				timelineIndex = 107,
				timerEndOffset = 13,
				timerStartOffset = 5,
				uuid = "48fa5cd2-9491-14ba-af28-3925cbecb737",
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
							aType = "ACR",
							conditions = 
							{
								
								{
									"26fe8bf0-8e58-6157-9b67-e8a64a6b191a",
									true,
								},
								
								{
									"e5b25e49-09b9-3aa0-b48f-c9763859a577",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_Healbar_Taurochole",
							targetType = "Detection Target",
							uuid = "9f150df4-47fb-823d-a797-346087437cd2",
							variableIsHover = true,
							variableTogglesType = 3,
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
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "SAGE",
							name = "Self: SGE",
							uuid = "26fe8bf0-8e58-6157-9b67-e8a64a6b191a",
							version = 3,
						},
						inheritedIndex = 1,
					},
					
					{
						data = 
						{
							buffCheckType = 2,
							buffID = 2607,
							category = "Party",
							name = "DT: Missing Eukrasian Diagnosis",
							partyTargetType = "Detection Target",
							uuid = "aa126a4d-4cae-d8cf-93a4-9f83e30819e6",
							version = 3,
						},
						inheritedIndex = 2,
					},
					
					{
						data = 
						{
							category = "Filter",
							filterTargetType = "Tank",
							name = "F - Tank Closest to Exdeath",
							subtypeRangeCheckSourceType = "ContentID",
							subtypeRangeSourceContentID = 6052,
							uuid = "e5b25e49-09b9-3aa0-b48f-c9763859a577",
							version = 3,
						},
					},
				},
				mechanicTime = 557.21788210262,
				name = "[SGE] Taurochole",
				timeRange = true,
				timelineIndex = 107,
				timerEndOffset = -1,
				timerStartOffset = -14.5,
				uuid = "0151165a-b466-bc8f-aa41-3b59af6a3321",
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
									"26fe8bf0-8e58-6157-9b67-e8a64a6b191a",
									true,
								},
								
								{
									"0796f2c7-5782-7e71-8675-e259a5fdcac0",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_Healbar_Ixochole",
							uuid = "9f150df4-47fb-823d-a797-346087437cd2",
							variableTogglesType = 3,
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
							jobValue = "SAGE",
							name = "Self: SGE",
							uuid = "26fe8bf0-8e58-6157-9b67-e8a64a6b191a",
							version = 3,
						},
						inheritedIndex = 1,
					},
					
					{
						data = 
						{
							category = "Party",
							comparator = 2,
							conditionType = 4,
							inRangeValue = 20,
							minTargetPercent = true,
							name = "Party Range: <= 20y",
							partyTargetNumber = 100,
							partyTargetSubType = "Number",
							uuid = "0796f2c7-5782-7e71-8675-e259a5fdcac0",
							version = 3,
						},
					},
				},
				enabled = false,
				mechanicTime = 557.21788210262,
				name = "[SGE] Ixochole",
				timelineIndex = 107,
				timerEndOffset = 5,
				timerOffset = 4,
				timerStartOffset = -5,
				uuid = "f6eb944c-7bd2-fe78-9b2b-9aec0f3adfee",
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
									"26fe8bf0-8e58-6157-9b67-e8a64a6b191a",
									true,
								},
								
								{
									"0796f2c7-5782-7e71-8675-e259a5fdcac0",
									true,
								},
								
								{
									"5b3830f2-93e2-9833-9894-680daafb64f5",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_Healbar_Pepsis",
							uuid = "9f150df4-47fb-823d-a797-346087437cd2",
							variableTogglesType = 3,
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
							jobValue = "SAGE",
							name = "Self: SGE",
							uuid = "26fe8bf0-8e58-6157-9b67-e8a64a6b191a",
							version = 3,
						},
						inheritedIndex = 1,
					},
					
					{
						data = 
						{
							category = "Party",
							comparator = 2,
							conditionType = 4,
							inRangeValue = 20,
							minTargetPercent = true,
							name = "Party Range: <= 20y",
							partyTargetNumber = 100,
							partyTargetSubType = "Number",
							uuid = "0796f2c7-5782-7e71-8675-e259a5fdcac0",
							version = 3,
						},
					},
					
					{
						data = 
						{
							buffCheckType = 5,
							buffID = 2609,
							buffIDList = 
							{
								2609,
								2607,
							},
							category = "Party",
							matchAnyBuff = true,
							name = "Party: E. Prognosis/Diagnosis Buff",
							partyTargetSubType = "Number",
							uuid = "5b3830f2-93e2-9833-9894-680daafb64f5",
							version = 3,
						},
					},
				},
				enabled = false,
				mechanicTime = 557.21788210262,
				name = "[SGE] Pepsis",
				timelineIndex = 107,
				timerEndOffset = 5,
				timerOffset = 5,
				timerStartOffset = -5,
				uuid = "3e117f4c-8ea2-577a-a471-97fb18565916",
				version = 2,
			},
			inheritedIndex = 35,
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
									"a7ff75cf-1c65-b308-9b67-891e93f1c4f5",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_Healbar_Soteria",
							uuid = "9f150df4-47fb-823d-a797-346087437cd2",
							variableTogglesType = 3,
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
							jobValue = "SAGE",
							name = "Self: SGE",
							uuid = "a7ff75cf-1c65-b308-9b67-891e93f1c4f5",
							version = 3,
						},
						inheritedIndex = 1,
					},
				},
				enabled = false,
				mechanicTime = 557.21788210262,
				name = "[SGE] Soteria",
				timelineIndex = 107,
				timerEndOffset = 5,
				timerOffset = 1,
				timerStartOffset = -5,
				uuid = "b0cb0680-a957-3b57-b68b-e76e11154941",
				version = 2,
			},
			inheritedIndex = 28,
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
									"26fe8bf0-8e58-6157-9b67-e8a64a6b191a",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_Healbar_Haima",
							targetSubType = "Lowest HP",
							targetType = "Off Tank",
							uuid = "9f150df4-47fb-823d-a797-346087437cd2",
							variableIsHover = true,
							variableTogglesType = 3,
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
							jobValue = "SAGE",
							name = "Self: SGE",
							uuid = "26fe8bf0-8e58-6157-9b67-e8a64a6b191a",
							version = 3,
						},
						inheritedIndex = 1,
					},
				},
				mechanicTime = 557.21788210262,
				name = "[SGE] Haima",
				timeRange = true,
				timelineIndex = 107,
				timerEndOffset = -1,
				timerOffset = 9,
				timerStartOffset = -14.5,
				uuid = "2c34e634-2652-601a-945b-9486b09d6376",
				version = 2,
			},
			inheritedIndex = 15,
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
									"26fe8bf0-8e58-6157-9b67-e8a64a6b191a",
									true,
								},
								
								{
									"0796f2c7-5782-7e71-8675-e259a5fdcac0",
									true,
								},
								
								{
									"3e70f8ee-ca91-c2dd-ba75-f12842bc10b4",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_Healbar_Ixochole",
							uuid = "9f150df4-47fb-823d-a797-346087437cd2",
							variableTogglesType = 3,
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
							jobValue = "SAGE",
							name = "Self: SGE",
							uuid = "26fe8bf0-8e58-6157-9b67-e8a64a6b191a",
							version = 3,
						},
						inheritedIndex = 1,
					},
					
					{
						data = 
						{
							category = "Party",
							comparator = 2,
							conditionType = 4,
							inRangeValue = 20,
							minTargetPercent = true,
							name = "Party Range: <= 20y",
							partyTargetNumber = 100,
							partyTargetSubType = "Number",
							uuid = "0796f2c7-5782-7e71-8675-e259a5fdcac0",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Party",
							comparator = 2,
							conditionType = 2,
							hpType = 2,
							hpValue = 50,
							minTargetPercent = true,
							name = "Party HP: 1/2 <= 50% HP",
							partyTargetNumber = 50,
							partyTargetSubType = "Number",
							partyTargetType = "DPS",
							uuid = "6f54471a-8ed0-5109-b59e-ce1f13153b18",
							version = 3,
						},
					},
					
					{
						data = 
						{
							buffCheckType = 2,
							buffID = 1604,
							category = "Party",
							name = "DT: Missing Accretion Buff",
							partyTargetType = "Detection Target",
							uuid = "f897ad50-ad58-0a2f-b26a-ea51c666f770",
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
									"f897ad50-ad58-0a2f-b26a-ea51c666f770",
									true,
								},
							},
							filterTargetType = "Healer",
							partyTargetNumber = 2,
							uuid = "3e70f8ee-ca91-c2dd-ba75-f12842bc10b4",
							version = 3,
						},
					},
				},
				mechanicTime = 574.57649748723,
				name = "[SGE] Ixochole",
				timeRange = true,
				timelineIndex = 108,
				timerEndOffset = -1,
				timerOffset = -3,
				timerStartOffset = -11,
				uuid = "7b40ecbf-da23-6cfa-9e82-9aad463d4a52",
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
									"6eed371c-276e-0dc6-bfef-64a1ef96e29f",
									true,
								},
								
								{
									"6e5cce1c-e91c-060c-b26b-d9c804cb7b6e",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_Healbar_Kerachole",
							uuid = "1f6dfa69-9fa5-6422-bae0-e4c484120183",
							variableTogglesType = 3,
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
							jobValue = "SAGE",
							name = "Self: SGE",
							uuid = "6eed371c-276e-0dc6-bfef-64a1ef96e29f",
							version = 3,
						},
						inheritedIndex = 1,
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
							uuid = "6e5cce1c-e91c-060c-b26b-d9c804cb7b6e",
							version = 3,
						},
					},
				},
				mechanicTime = 578.01131609381,
				name = "[SGE] Kerachole",
				timeRange = true,
				timelineIndex = 112,
				timerEndOffset = -1,
				timerStartOffset = -14.5,
				uuid = "ffd0e2ba-4089-62f4-b4a4-c5c16454ffd4",
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
									"299bb84c-9fa3-6837-9e30-b8c05eae3959",
									true,
								},
								
								{
									"db9e281c-6f91-3db5-8d6c-487c8eb46530",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_Healbar_Physis",
							uuid = "9f150df4-47fb-823d-a797-346087437cd2",
							variableTogglesType = 3,
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
							jobValue = "SAGE",
							name = "Self: SGE",
							uuid = "299bb84c-9fa3-6837-9e30-b8c05eae3959",
							version = 3,
						},
						inheritedIndex = 1,
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
							uuid = "db9e281c-6f91-3db5-8d6c-487c8eb46530",
							version = 3,
						},
					},
				},
				mechanicTime = 578.01131609381,
				name = "[SGE] Physis",
				timelineIndex = 112,
				timerEndOffset = 5,
				timerOffset = 1,
				timerStartOffset = -5,
				uuid = "fcc77485-f6b1-35d3-880b-94095472a532",
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
									"26fe8bf0-8e58-6157-9b67-e8a64a6b191a",
									true,
								},
								
								{
									"0796f2c7-5782-7e71-8675-e259a5fdcac0",
									true,
								},
								
								{
									"303cfea5-c9de-3c82-8055-df4b83304e43",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_Healbar_EukrasianPrognosis",
							uuid = "9f150df4-47fb-823d-a797-346087437cd2",
							variableTogglesType = 3,
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
							jobValue = "SAGE",
							name = "Self: SGE",
							uuid = "26fe8bf0-8e58-6157-9b67-e8a64a6b191a",
							version = 3,
						},
						inheritedIndex = 1,
					},
					
					{
						data = 
						{
							category = "Party",
							comparator = 2,
							conditionType = 4,
							inRangeValue = 20,
							minTargetPercent = true,
							name = "Party Range: <= 20y",
							partyTargetNumber = 100,
							partyTargetSubType = "Number",
							uuid = "0796f2c7-5782-7e71-8675-e259a5fdcac0",
							version = 3,
						},
					},
					
					{
						data = 
						{
							buffCheckType = 2,
							buffID = 2609,
							category = "Party",
							name = "DT: Missing Eukrasian Prognosis",
							partyTargetSubType = "Number",
							partyTargetType = "Detection Target",
							uuid = "5b3830f2-93e2-9833-9894-680daafb64f5",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Party",
							conditionType = 10,
							inGroupTargetType = "Tank",
							name = "DT: Tank",
							partyTargetType = "Detection Target",
							uuid = "d00ae7a2-5b63-9ea0-8f6c-a76c339c4bee",
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
									"5b3830f2-93e2-9833-9894-680daafb64f5",
									true,
								},
								
								{
									"d00ae7a2-5b63-9ea0-8f6c-a76c339c4bee",
									false,
								},
							},
							filterTargetType = "Party",
							name = "F - Non Tank Missing Shield",
							uuid = "303cfea5-c9de-3c82-8055-df4b83304e43",
							version = 3,
						},
					},
				},
				loop = true,
				mechanicTime = 578.01131609381,
				name = "[SGE] Eukrasian Prognosis",
				throttleTime = 500,
				timeRange = true,
				timelineIndex = 112,
				timerEndOffset = -1,
				timerOffset = -3,
				timerStartOffset = -7,
				uuid = "cd2be8a5-165c-ecbf-a348-2429d76c6bcd",
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
									"26fe8bf0-8e58-6157-9b67-e8a64a6b191a",
									true,
								},
								
								{
									"0796f2c7-5782-7e71-8675-e259a5fdcac0",
									true,
								},
								
								{
									"303cfea5-c9de-3c82-8055-df4b83304e43",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_Healbar_EukrasianPrognosis",
							uuid = "9f150df4-47fb-823d-a797-346087437cd2",
							variableTogglesType = 3,
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
							jobValue = "SAGE",
							name = "Self: SGE",
							uuid = "26fe8bf0-8e58-6157-9b67-e8a64a6b191a",
							version = 3,
						},
						inheritedIndex = 1,
					},
					
					{
						data = 
						{
							category = "Party",
							comparator = 2,
							conditionType = 4,
							inRangeValue = 20,
							minTargetPercent = true,
							name = "Party Range: <= 20y",
							partyTargetNumber = 100,
							partyTargetSubType = "Number",
							uuid = "0796f2c7-5782-7e71-8675-e259a5fdcac0",
							version = 3,
						},
					},
					
					{
						data = 
						{
							buffCheckType = 2,
							buffID = 2609,
							category = "Party",
							name = "DT: Missing Eukrasian Prognosis",
							partyTargetSubType = "Number",
							partyTargetType = "Detection Target",
							uuid = "5b3830f2-93e2-9833-9894-680daafb64f5",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Party",
							conditionType = 10,
							inGroupTargetType = "Tank",
							name = "DT: Tank",
							partyTargetType = "Detection Target",
							uuid = "d00ae7a2-5b63-9ea0-8f6c-a76c339c4bee",
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
									"5b3830f2-93e2-9833-9894-680daafb64f5",
									true,
								},
								
								{
									"d00ae7a2-5b63-9ea0-8f6c-a76c339c4bee",
									false,
								},
							},
							filterTargetType = "Party",
							name = "F - Non Tank Missing Shield",
							uuid = "303cfea5-c9de-3c82-8055-df4b83304e43",
							version = 3,
						},
					},
				},
				mechanicTime = 578.01131609381,
				name = "[SGE] Eukrasian Prognosis",
				timelineIndex = 112,
				timerEndOffset = 5,
				timerOffset = 2.2999999523163,
				timerStartOffset = -5,
				uuid = "e1e78c4f-9d39-d5e6-8ac6-f7700e7bb04c",
				version = 2,
			},
			inheritedIndex = 7,
		},
	},
	[114] = 
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
									"26fe8bf0-8e58-6157-9b67-e8a64a6b191a",
									true,
								},
								
								{
									"0796f2c7-5782-7e71-8675-e259a5fdcac0",
									true,
								},
								
								{
									"0c9ea64b-9c9b-6275-87d8-db0882554aab",
									false,
								},
							},
							gVar = "ACR_RikuSGE3_Healbar_EukrasianPrognosis",
							uuid = "9f150df4-47fb-823d-a797-346087437cd2",
							variableTogglesType = 3,
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
							jobValue = "SAGE",
							name = "Self: SGE",
							uuid = "26fe8bf0-8e58-6157-9b67-e8a64a6b191a",
							version = 3,
						},
						inheritedIndex = 1,
					},
					
					{
						data = 
						{
							category = "Party",
							comparator = 2,
							conditionType = 4,
							inRangeValue = 20,
							minTargetPercent = true,
							name = "Party Range: <= 20y",
							partyTargetNumber = 100,
							partyTargetSubType = "Number",
							uuid = "0796f2c7-5782-7e71-8675-e259a5fdcac0",
							version = 3,
						},
					},
					
					{
						data = 
						{
							buffID = 2609,
							category = "Self",
							name = "Self: Eukrasian Prognosis Buff",
							uuid = "0c9ea64b-9c9b-6275-87d8-db0882554aab",
							version = 3,
						},
					},
				},
				mechanicTime = 585.5151416903,
				name = "[SGE] Eukrasian Prognosis",
				timelineIndex = 114,
				timerEndOffset = 5,
				timerOffset = 4,
				timerStartOffset = -5,
				uuid = "d510daa3-ca83-1cce-b673-1d8ae486720f",
				version = 2,
			},
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
							actionID = 24316,
							conditions = 
							{
								
								{
									"2396dc77-b792-7e80-9887-f83101f21e56",
									true,
								},
								
								{
									"bf195a8b-a5a8-1811-a8c9-c74ac215292d",
									true,
								},
								
								{
									"be39038c-1ae7-41d9-baee-6ef533259037",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_CD",
							targetType = "Current Target",
							uuid = "870510d0-9a27-ffb0-877a-e19b2e0e5941",
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
							jobValue = "SAGE",
							name = "Self: SGE",
							uuid = "2396dc77-b792-7e80-9887-f83101f21e56",
							version = 3,
						},
						inheritedIndex = 1,
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return FFXIV_Common_BotRunning",
							name = "Assist Enabled",
							uuid = "bf195a8b-a5a8-1811-a8c9-c74ac215292d",
							version = 3,
						},
						inheritedIndex = 2,
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 6,
							gaugeIndex = 3,
							gaugeValue = 3,
							name = "Self Gauge: >= 3 Toxikon",
							uuid = "be39038c-1ae7-41d9-baee-6ef533259037",
							version = 3,
						},
					},
				},
				mechanicTime = 595.71497259653,
				name = "[SGE] Toxikon",
				timelineIndex = 115,
				timerOffset = -1,
				timerStartOffset = -14,
				uuid = "259eb6f0-33e3-16c7-828b-a34f1f804ca6",
				version = 2,
			},
			inheritedIndex = 4,
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
									"a7ff75cf-1c65-b308-9b67-891e93f1c4f5",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_Healbar_Soteria",
							uuid = "9f150df4-47fb-823d-a797-346087437cd2",
							variableTogglesType = 3,
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
							jobValue = "SAGE",
							name = "Self: SGE",
							uuid = "a7ff75cf-1c65-b308-9b67-891e93f1c4f5",
							version = 3,
						},
						inheritedIndex = 1,
					},
				},
				mechanicTime = 595.71497259653,
				name = "[SGE] Soteria",
				timelineIndex = 115,
				timerEndOffset = 5,
				timerOffset = -5,
				timerStartOffset = -5,
				uuid = "85929e6a-db36-0f36-b611-510b0454ee3b",
				version = 2,
			},
			inheritedIndex = 28,
		},
	},
	[117] = 
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
									"26fe8bf0-8e58-6157-9b67-e8a64a6b191a",
									true,
								},
								
								{
									"0796f2c7-5782-7e71-8675-e259a5fdcac0",
									true,
								},
								
								{
									"1a7b40c7-399c-9e8b-b75d-43f6be09fc4a",
									false,
								},
							},
							gVar = "ACR_RikuSGE3_Healbar_EukrasianPrognosis",
							uuid = "9f150df4-47fb-823d-a797-346087437cd2",
							variableTogglesType = 3,
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
							jobValue = "SAGE",
							name = "Self: SGE",
							uuid = "26fe8bf0-8e58-6157-9b67-e8a64a6b191a",
							version = 3,
						},
						inheritedIndex = 1,
					},
					
					{
						data = 
						{
							category = "Party",
							comparator = 2,
							conditionType = 4,
							inRangeValue = 20,
							minTargetPercent = true,
							name = "Party Range: <= 20y",
							partyTargetNumber = 100,
							partyTargetSubType = "Number",
							uuid = "0796f2c7-5782-7e71-8675-e259a5fdcac0",
							version = 3,
						},
					},
					
					{
						data = 
						{
							buffID = 2609,
							category = "Self",
							name = "Self: Eukrasian Prognosis Buff",
							uuid = "1a7b40c7-399c-9e8b-b75d-43f6be09fc4a",
							version = 3,
						},
					},
				},
				mechanicTime = 603.80002815209,
				name = "[SGE] Eukrasian Prognosis",
				timelineIndex = 117,
				timerEndOffset = 5,
				timerOffset = 1,
				timerStartOffset = -5,
				uuid = "d8ca8bbf-6c39-3ee0-9aa6-b28929335ed1",
				version = 2,
			},
		},
	},
	[122] = 
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
									"26fe8bf0-8e58-6157-9b67-e8a64a6b191a",
									true,
								},
								
								{
									"0796f2c7-5782-7e71-8675-e259a5fdcac0",
									true,
								},
								
								{
									"1a7b40c7-399c-9e8b-b75d-43f6be09fc4a",
									false,
								},
							},
							gVar = "ACR_RikuSGE3_Healbar_EukrasianPrognosis",
							uuid = "9f150df4-47fb-823d-a797-346087437cd2",
							variableTogglesType = 3,
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
							jobValue = "SAGE",
							name = "Self: SGE",
							uuid = "26fe8bf0-8e58-6157-9b67-e8a64a6b191a",
							version = 3,
						},
						inheritedIndex = 1,
					},
					
					{
						data = 
						{
							category = "Party",
							comparator = 2,
							conditionType = 4,
							inRangeValue = 20,
							minTargetPercent = true,
							name = "Party Range: <= 20y",
							partyTargetNumber = 100,
							partyTargetSubType = "Number",
							uuid = "0796f2c7-5782-7e71-8675-e259a5fdcac0",
							version = 3,
						},
					},
					
					{
						data = 
						{
							buffID = 2609,
							category = "Self",
							name = "Self: Eukrasian Prognosis Buff",
							uuid = "1a7b40c7-399c-9e8b-b75d-43f6be09fc4a",
							version = 3,
						},
					},
				},
				mechanicTime = 608.39401598045,
				name = "[SGE] Eukrasian Prognosis",
				timelineIndex = 122,
				timerEndOffset = 5,
				timerOffset = 1,
				timerStartOffset = -5,
				uuid = "ccb6c8c8-372d-bc69-9d09-456b729428c5",
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
									"2aede583-6334-5e6e-8897-d0185d2e479e",
									true,
								},
								
								{
									"2655f02b-090f-3366-8e9d-81bd1daab933",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_Healbar_Holos",
							uuid = "a63d60d1-0099-4678-9951-0dde4026e2a7",
							variableTogglesType = 3,
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
							jobValue = "SAGE",
							name = "Self: SGE",
							uuid = "2aede583-6334-5e6e-8897-d0185d2e479e",
							version = 3,
						},
						inheritedIndex = 1,
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
							uuid = "2655f02b-090f-3366-8e9d-81bd1daab933",
							version = 3,
						},
					},
				},
				mechanicTime = 608.39401598045,
				name = "[SGE] Holos",
				timeRange = true,
				timelineIndex = 122,
				timerEndOffset = -1,
				timerOffset = -19,
				timerStartOffset = -8,
				uuid = "1509c806-9284-63c6-9083-974da440bebf",
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
							conditions = 
							{
								
								{
									"6eed371c-276e-0dc6-bfef-64a1ef96e29f",
									true,
								},
								
								{
									"6e5cce1c-e91c-060c-b26b-d9c804cb7b6e",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_Healbar_Kerachole",
							uuid = "1f6dfa69-9fa5-6422-bae0-e4c484120183",
							variableTogglesType = 3,
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
							jobValue = "SAGE",
							name = "Self: SGE",
							uuid = "6eed371c-276e-0dc6-bfef-64a1ef96e29f",
							version = 3,
						},
						inheritedIndex = 1,
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
							uuid = "6e5cce1c-e91c-060c-b26b-d9c804cb7b6e",
							version = 3,
						},
					},
				},
				mechanicTime = 608.39401598045,
				name = "[SGE] Kerachole",
				timeRange = true,
				timelineIndex = 122,
				timerEndOffset = -1,
				timerStartOffset = -14,
				uuid = "21ad8a58-ac76-46ba-82c5-b663a8abfa0f",
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
									"26fe8bf0-8e58-6157-9b67-e8a64a6b191a",
									true,
								},
								
								{
									"0796f2c7-5782-7e71-8675-e259a5fdcac0",
									true,
								},
								
								{
									"03465555-d774-65e7-b77d-4c54adf466d3",
									true,
								},
								
								{
									"a69c85a7-c131-da2e-9fbf-1c9befabb2cf",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_Healbar_Ixochole",
							uuid = "9f150df4-47fb-823d-a797-346087437cd2",
							variableTogglesType = 3,
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
							jobValue = "SAGE",
							name = "Self: SGE",
							uuid = "26fe8bf0-8e58-6157-9b67-e8a64a6b191a",
							version = 3,
						},
						inheritedIndex = 1,
					},
					
					{
						data = 
						{
							category = "Party",
							comparator = 2,
							conditionType = 4,
							inRangeValue = 20,
							minTargetPercent = true,
							name = "Party Range: <= 20y",
							partyTargetNumber = 100,
							partyTargetSubType = "Number",
							uuid = "0796f2c7-5782-7e71-8675-e259a5fdcac0",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionCDValue = 1,
							actionID = 24299,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "CD: Ixochole <= 1s",
							uuid = "03465555-d774-65e7-b77d-4c54adf466d3",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Party",
							comparator = 2,
							conditionType = 2,
							hpValue = 80,
							minTargetPercent = true,
							name = "Party HP: 3/4 <= 80%",
							partyTargetNumber = 75,
							partyTargetSubType = "Number",
							uuid = "a69c85a7-c131-da2e-9fbf-1c9befabb2cf",
							version = 3,
						},
					},
				},
				mechanicTime = 608.39401598045,
				name = "[SGE] Ixochole",
				timeRange = true,
				timelineIndex = 122,
				timerEndOffset = 10,
				timerStartOffset = 5,
				uuid = "1375a4fe-0795-1a96-9367-869a990bde35",
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
									"26fe8bf0-8e58-6157-9b67-e8a64a6b191a",
									true,
								},
								
								{
									"42ed800f-d575-8aae-8688-ab7df9aa97a9",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_Healbar_Druochole",
							targetSubType = "Lowest HP",
							targetType = "Detection Target",
							uuid = "9f150df4-47fb-823d-a797-346087437cd2",
							variableIsHover = true,
							variableTogglesType = 3,
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
							jobValue = "SAGE",
							name = "Self: SGE",
							uuid = "26fe8bf0-8e58-6157-9b67-e8a64a6b191a",
							version = 3,
						},
						inheritedIndex = 1,
					},
					
					{
						data = 
						{
							category = "Party",
							conditionType = 10,
							inGroupTargetType = "Tank",
							name = "DT: Tank",
							partyTargetType = "Detection Target",
							uuid = "7abb883c-1f91-40e1-84c0-f1c33d534b3f",
							version = 3,
						},
						inheritedIndex = 2,
					},
					
					{
						data = 
						{
							category = "Party",
							comparator = 2,
							conditionType = 2,
							hpValue = 50,
							name = "DT: HP <= 50%",
							partyTargetType = "Detection Target",
							uuid = "3ba31bad-bb61-7c57-99e4-1b543d372300",
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
									"7abb883c-1f91-40e1-84c0-f1c33d534b3f",
									false,
								},
								
								{
									"3ba31bad-bb61-7c57-99e4-1b543d372300",
									true,
								},
							},
							filterTargetType = "Party",
							uuid = "42ed800f-d575-8aae-8688-ab7df9aa97a9",
							version = 3,
						},
					},
				},
				mechanicTime = 608.39401598045,
				name = "[SGE] Druochole",
				timeRange = true,
				timelineIndex = 122,
				timerEndOffset = 14,
				timerStartOffset = 9,
				uuid = "50e4ccab-71b8-5bfb-9b4a-95e1e13b6aec",
				version = 2,
			},
		},
	},
	[123] = 
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
									"97442e7b-337f-e4e4-bb15-2c86958f0744",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_Hotbar_Sprint",
							uuid = "fbf5b4cf-3fa7-f798-a099-bcfaea881945",
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
							jobValue = "SAGE",
							name = "Self: SGE",
							uuid = "97442e7b-337f-e4e4-bb15-2c86958f0744",
							version = 3,
						},
						inheritedIndex = 1,
					},
				},
				mechanicTime = 631.08148473045,
				name = "[SGE] Sprint",
				timelineIndex = 123,
				timerOffset = -11,
				uuid = "77678c4d-b2c6-3640-afb2-4774a416a442",
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
							aType = "ACR",
							conditions = 
							{
								
								{
									"ace000e6-5541-6a8d-b064-b432e620d43a",
									true,
								},
								
								{
									"4aa9d59a-e937-012a-8945-727285bef2c7",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_Healbar_Pneuma",
							uuid = "9f150df4-47fb-823d-a797-346087437cd2",
							variableTogglesType = 3,
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
							jobValue = "SAGE",
							name = "Self: SGE",
							uuid = "ace000e6-5541-6a8d-b064-b432e620d43a",
							version = 3,
						},
						inheritedIndex = 1,
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return data.ljSGEInLine ~= \"Second\" or data.ljSGEAccretion",
							dequeueIfLuaFalse = true,
							name = "Not 2nd in Line & Not Accretion",
							uuid = "4aa9d59a-e937-012a-8945-727285bef2c7",
							version = 3,
						},
					},
				},
				mechanicTime = 631.08148473045,
				name = "[SGE] Pneuma",
				timelineIndex = 123,
				timerEndOffset = 5,
				timerOffset = -9,
				timerStartOffset = -5,
				uuid = "4da56bcd-d1bc-0dab-b8a0-10dd18bce771",
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
									"ace000e6-5541-6a8d-b064-b432e620d43a",
									true,
								},
								
								{
									"4aa9d59a-e937-012a-8945-727285bef2c7",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_Healbar_Pneuma",
							uuid = "9f150df4-47fb-823d-a797-346087437cd2",
							variableTogglesType = 3,
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
							jobValue = "SAGE",
							name = "Self: SGE",
							uuid = "ace000e6-5541-6a8d-b064-b432e620d43a",
							version = 3,
						},
						inheritedIndex = 1,
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return data.ljSGEInLine == \"Second\" and not data.ljSGEAccretion",
							dequeueIfLuaFalse = true,
							name = "2nd in Line & Not Accretion",
							uuid = "4aa9d59a-e937-012a-8945-727285bef2c7",
							version = 3,
						},
					},
				},
				mechanicTime = 631.08148473045,
				name = "[SGE] Pneuma",
				timelineIndex = 123,
				timerEndOffset = 5,
				timerOffset = -11,
				timerStartOffset = -5,
				uuid = "cac11bb6-2725-c3f7-8511-fff03471e091",
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
									"26fe8bf0-8e58-6157-9b67-e8a64a6b191a",
									true,
								},
								
								{
									"0796f2c7-5782-7e71-8675-e259a5fdcac0",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_Healbar_EukrasianPrognosis",
							uuid = "9f150df4-47fb-823d-a797-346087437cd2",
							variableTogglesType = 3,
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
							jobValue = "SAGE",
							name = "Self: SGE",
							uuid = "26fe8bf0-8e58-6157-9b67-e8a64a6b191a",
							version = 3,
						},
						inheritedIndex = 1,
					},
					
					{
						data = 
						{
							category = "Party",
							comparator = 2,
							conditionType = 4,
							inRangeValue = 20,
							minTargetPercent = true,
							name = "Party Range: <= 20y",
							partyTargetNumber = 100,
							partyTargetSubType = "Number",
							uuid = "0796f2c7-5782-7e71-8675-e259a5fdcac0",
							version = 3,
						},
					},
					
					{
						data = 
						{
							buffID = 2609,
							category = "Self",
							name = "Self: Eukrasian Prognosis Buff",
							uuid = "1554b03c-9db3-bf96-83aa-63611d654f25",
							version = 3,
						},
					},
					
					{
						data = 
						{
							buffID = 2611,
							category = "Self",
							name = "Self: Zoe Buff",
							uuid = "891d0d2e-c73f-4407-9413-dc1a4acb5e13",
							version = 3,
						},
						inheritedIndex = 2,
					},
				},
				mechanicTime = 631.08148473045,
				name = "[SGE] Eukrasian Prognosis",
				timeRange = true,
				timelineIndex = 123,
				timerEndOffset = 12,
				timerStartOffset = -2,
				uuid = "19ec57bb-bce2-534a-b23d-4e59bdac772c",
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
									"81ae31c5-9e92-6a56-ba07-ff21087cac48",
									true,
								},
								
								{
									"800486cc-705c-5caf-8fba-1dd95613f62d",
									true,
								},
								
								{
									"2f3a9a03-5716-8933-8569-b68aedc99f1a",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_Healbar_Panhaima",
							uuid = "3513de14-07f8-c935-80cb-36aa906944eb",
							variableTogglesType = 3,
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
							jobValue = "SAGE",
							name = "Self: SGE",
							uuid = "81ae31c5-9e92-6a56-ba07-ff21087cac48",
							version = 3,
						},
						inheritedIndex = 1,
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
							uuid = "800486cc-705c-5caf-8fba-1dd95613f62d",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionCDValue = 1,
							actionID = 24311,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "Self: Panhaima CD <= 1s",
							uuid = "2f3a9a03-5716-8933-8569-b68aedc99f1a",
							version = 3,
						},
					},
				},
				mechanicTime = 631.08148473045,
				name = "[SGE] Panhaima",
				timeRange = true,
				timelineIndex = 123,
				timerEndOffset = 12,
				timerStartOffset = 6,
				uuid = "531bdb53-af2a-6e06-98d9-3949a349570f",
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
							aType = "ACR",
							conditions = 
							{
								
								{
									"26fe8bf0-8e58-6157-9b67-e8a64a6b191a",
									true,
								},
								
								{
									"0796f2c7-5782-7e71-8675-e259a5fdcac0",
									true,
								},
								
								{
									"a4890053-ae47-530b-8dc9-d992afa536b1",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_Healbar_EukrasianPrognosis",
							uuid = "9f150df4-47fb-823d-a797-346087437cd2",
							variableTogglesType = 3,
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
							jobValue = "SAGE",
							name = "Self: SGE",
							uuid = "26fe8bf0-8e58-6157-9b67-e8a64a6b191a",
							version = 3,
						},
						inheritedIndex = 1,
					},
					
					{
						data = 
						{
							category = "Party",
							comparator = 2,
							conditionType = 4,
							inRangeValue = 20,
							minTargetPercent = true,
							name = "Party Range: <= 20y",
							partyTargetNumber = 100,
							partyTargetSubType = "Number",
							uuid = "0796f2c7-5782-7e71-8675-e259a5fdcac0",
							version = 3,
						},
					},
					
					{
						data = 
						{
							buffID = 2609,
							category = "Self",
							name = "Self: Eukrasian Prognosis Buff",
							uuid = "1554b03c-9db3-bf96-83aa-63611d654f25",
							version = 3,
						},
					},
					
					{
						data = 
						{
							buffID = 2611,
							category = "Self",
							name = "Self: Zoe Buff",
							uuid = "891d0d2e-c73f-4407-9413-dc1a4acb5e13",
							version = 3,
						},
						inheritedIndex = 2,
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return data.ljSGEInLine == \"Second\" and not data.ljSGEAccretion",
							dequeueIfLuaFalse = true,
							name = "2nd in Line & Not Accretion",
							uuid = "a4890053-ae47-530b-8dc9-d992afa536b1",
							version = 3,
						},
					},
				},
				mechanicTime = 631.08148473045,
				name = "[SGE] Eukrasian Prognosis",
				timelineIndex = 123,
				timerEndOffset = 12,
				timerOffset = -10,
				timerStartOffset = -2,
				uuid = "5b6821c0-dfcd-94d1-9a08-7df081d4fe49",
				version = 2,
			},
			inheritedIndex = 9,
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
									"53d292a9-114e-4b73-ade9-8a05229e04b5",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_Healbar_Krasis",
							targetSubType = "Lowest HP",
							targetType = "Tank",
							uuid = "9f150df4-47fb-823d-a797-346087437cd2",
							variableIsHover = true,
							variableTogglesType = 3,
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
							jobValue = "SAGE",
							name = "Self: SGE",
							uuid = "53d292a9-114e-4b73-ade9-8a05229e04b5",
							version = 3,
						},
						inheritedIndex = 1,
					},
				},
				mechanicTime = 639.97108310281,
				name = "[SGE] Krasis",
				timelineIndex = 127,
				timerEndOffset = 5,
				timerOffset = 1,
				timerStartOffset = -5,
				uuid = "24d031f5-95b7-c69d-9474-5087997a6668",
				version = 2,
			},
			inheritedIndex = 30,
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
									"26fe8bf0-8e58-6157-9b67-e8a64a6b191a",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_Healbar_Taurochole",
							targetSubType = "Lowest HP",
							targetType = "Tank",
							uuid = "9f150df4-47fb-823d-a797-346087437cd2",
							variableIsHover = true,
							variableTogglesType = 3,
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
							jobValue = "SAGE",
							name = "Self: SGE",
							uuid = "26fe8bf0-8e58-6157-9b67-e8a64a6b191a",
							version = 3,
						},
						inheritedIndex = 1,
					},
				},
				mechanicTime = 639.97108310281,
				name = "[SGE] Taurochole",
				timeRange = true,
				timelineIndex = 127,
				timerEndOffset = -1,
				timerStartOffset = -9.5,
				uuid = "468425b4-fa19-ed5c-8761-6afbc1fdcb57",
				version = 2,
			},
			inheritedIndex = 2,
		},
	},
	[128] = 
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
									"26fe8bf0-8e58-6157-9b67-e8a64a6b191a",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_Healbar_EukrasianDiagnosis",
							targetSubType = "Lowest HP",
							targetType = "Party",
							uuid = "9f150df4-47fb-823d-a797-346087437cd2",
							variableIsHover = true,
							variableTogglesType = 3,
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
							jobValue = "SAGE",
							name = "Self: SGE",
							uuid = "26fe8bf0-8e58-6157-9b67-e8a64a6b191a",
							version = 3,
						},
						inheritedIndex = 1,
					},
					
					{
						data = 
						{
							category = "Party",
							comparator = 2,
							conditionType = 4,
							inRangeValue = 30,
							minTargetPercent = true,
							name = "DT Range: <= 30y",
							partyTargetNumber = 100,
							partyTargetSubType = "Number",
							partyTargetType = "Detection Target",
							uuid = "0796f2c7-5782-7e71-8675-e259a5fdcac0",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Party",
							comparator = 2,
							conditionType = 2,
							hpType = 2,
							hpValue = 60,
							name = "DT HP: <= 60% HP",
							partyTargetType = "Detection Target",
							uuid = "4eda2bfd-8a78-35e9-9fb8-c4bfd00ad0d5",
							version = 3,
						},
					},
					
					{
						data = 
						{
							buffCheckType = 2,
							buffID = 2911,
							category = "Party",
							name = "DT: Missing Damage Down Debuff",
							partyTargetType = "Detection Target",
							uuid = "1bf943c2-d852-8872-bdce-64ec7139ab0d",
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
									"0796f2c7-5782-7e71-8675-e259a5fdcac0",
									true,
								},
								
								{
									"4eda2bfd-8a78-35e9-9fb8-c4bfd00ad0d5",
									true,
								},
								
								{
									"1bf943c2-d852-8872-bdce-64ec7139ab0d",
									true,
								},
							},
							filterTargetSubtype = "Lowest HP",
							filterTargetType = "Party",
							uuid = "381dce5b-3db3-8082-89b0-49db92f75dec",
							version = 3,
						},
						inheritedIndex = 4,
					},
				},
				mechanicTime = 652.34305216234,
				name = "[SGE] Eukrasian Diagnosis",
				timelineIndex = 128,
				timerEndOffset = 1,
				timerOffset = -1,
				timerStartOffset = -5,
				uuid = "8d589669-7728-8f45-a67c-15aa816d587e",
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
							aType = "ACR",
							conditions = 
							{
								
								{
									"26fe8bf0-8e58-6157-9b67-e8a64a6b191a",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_Healbar_EukrasianDiagnosis",
							targetSubType = "Lowest HP",
							targetType = "Party",
							uuid = "9f150df4-47fb-823d-a797-346087437cd2",
							variableIsHover = true,
							variableTogglesType = 3,
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
							jobValue = "SAGE",
							name = "Self: SGE",
							uuid = "26fe8bf0-8e58-6157-9b67-e8a64a6b191a",
							version = 3,
						},
						inheritedIndex = 1,
					},
					
					{
						data = 
						{
							category = "Party",
							comparator = 2,
							conditionType = 4,
							inRangeValue = 30,
							minTargetPercent = true,
							name = "DT Range: <= 30y",
							partyTargetNumber = 100,
							partyTargetSubType = "Number",
							partyTargetType = "Detection Target",
							uuid = "0796f2c7-5782-7e71-8675-e259a5fdcac0",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Party",
							comparator = 2,
							conditionType = 2,
							hpType = 2,
							hpValue = 60,
							name = "DT HP: <= 60% HP",
							partyTargetType = "Detection Target",
							uuid = "4eda2bfd-8a78-35e9-9fb8-c4bfd00ad0d5",
							version = 3,
						},
					},
					
					{
						data = 
						{
							buffCheckType = 2,
							buffID = 2911,
							category = "Party",
							name = "DT: Missing Damage Down Debuff",
							partyTargetType = "Detection Target",
							uuid = "70984764-9b56-c830-ad8d-f21c0f972e90",
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
									"0796f2c7-5782-7e71-8675-e259a5fdcac0",
									true,
								},
								
								{
									"4eda2bfd-8a78-35e9-9fb8-c4bfd00ad0d5",
									true,
								},
								
								{
									"70984764-9b56-c830-ad8d-f21c0f972e90",
									true,
								},
							},
							filterTargetSubtype = "Lowest HP",
							filterTargetType = "Party",
							uuid = "381dce5b-3db3-8082-89b0-49db92f75dec",
							version = 3,
						},
						inheritedIndex = 4,
					},
				},
				mechanicTime = 652.34305216234,
				name = "[SGE] Eukrasian Diagnosis",
				timelineIndex = 128,
				timerEndOffset = 1,
				timerOffset = 4,
				timerStartOffset = -5,
				uuid = "695c0eb6-bd67-0716-8bdd-487574be446e",
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
							aType = "ACR",
							conditions = 
							{
								
								{
									"299bb84c-9fa3-6837-9e30-b8c05eae3959",
									true,
								},
								
								{
									"db9e281c-6f91-3db5-8d6c-487c8eb46530",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_Healbar_Physis",
							uuid = "9f150df4-47fb-823d-a797-346087437cd2",
							variableTogglesType = 3,
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
							jobValue = "SAGE",
							name = "Self: SGE",
							uuid = "299bb84c-9fa3-6837-9e30-b8c05eae3959",
							version = 3,
						},
						inheritedIndex = 1,
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
							uuid = "db9e281c-6f91-3db5-8d6c-487c8eb46530",
							version = 3,
						},
					},
				},
				mechanicTime = 652.34305216234,
				name = "[SGE] Physis",
				timelineIndex = 128,
				timerEndOffset = 5,
				timerOffset = 4,
				timerStartOffset = -5,
				uuid = "138c1a91-1583-ee27-b43d-028c23412733",
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
									"26fe8bf0-8e58-6157-9b67-e8a64a6b191a",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_Healbar_EukrasianDiagnosis",
							targetSubType = "Lowest HP",
							targetType = "Party",
							uuid = "9f150df4-47fb-823d-a797-346087437cd2",
							variableIsHover = true,
							variableTogglesType = 3,
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
							jobValue = "SAGE",
							name = "Self: SGE",
							uuid = "26fe8bf0-8e58-6157-9b67-e8a64a6b191a",
							version = 3,
						},
						inheritedIndex = 1,
					},
					
					{
						data = 
						{
							category = "Party",
							comparator = 2,
							conditionType = 4,
							inRangeValue = 30,
							minTargetPercent = true,
							name = "DT Range: <= 30y",
							partyTargetNumber = 100,
							partyTargetSubType = "Number",
							partyTargetType = "Detection Target",
							uuid = "0796f2c7-5782-7e71-8675-e259a5fdcac0",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Party",
							comparator = 2,
							conditionType = 2,
							hpType = 2,
							hpValue = 60,
							name = "DT HP: <= 60% HP",
							partyTargetType = "Detection Target",
							uuid = "4eda2bfd-8a78-35e9-9fb8-c4bfd00ad0d5",
							version = 3,
						},
					},
					
					{
						data = 
						{
							buffCheckType = 2,
							buffID = 2911,
							category = "Party",
							name = "DT: Missing Damage Down Debuff",
							partyTargetType = "Detection Target",
							uuid = "a755de6c-0fd0-82ab-b811-47d7ebcf2f92",
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
									"0796f2c7-5782-7e71-8675-e259a5fdcac0",
									true,
								},
								
								{
									"4eda2bfd-8a78-35e9-9fb8-c4bfd00ad0d5",
									true,
								},
								
								{
									"a755de6c-0fd0-82ab-b811-47d7ebcf2f92",
									true,
								},
							},
							filterTargetSubtype = "Lowest HP",
							filterTargetType = "Party",
							uuid = "381dce5b-3db3-8082-89b0-49db92f75dec",
							version = 3,
						},
						inheritedIndex = 5,
					},
				},
				mechanicTime = 652.34305216234,
				name = "[SGE] Eukrasian Diagnosis",
				timelineIndex = 128,
				timerEndOffset = 1,
				timerOffset = 9,
				timerStartOffset = -5,
				uuid = "4518a6bc-7e5f-53a0-995c-208977eab798",
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
							aType = "ACR",
							conditions = 
							{
								
								{
									"26fe8bf0-8e58-6157-9b67-e8a64a6b191a",
									true,
								},
								
								{
									"0796f2c7-5782-7e71-8675-e259a5fdcac0",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_Healbar_Ixochole",
							uuid = "9f150df4-47fb-823d-a797-346087437cd2",
							variableTogglesType = 3,
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
							jobValue = "SAGE",
							name = "Self: SGE",
							uuid = "26fe8bf0-8e58-6157-9b67-e8a64a6b191a",
							version = 3,
						},
						inheritedIndex = 1,
					},
					
					{
						data = 
						{
							category = "Party",
							comparator = 2,
							conditionType = 4,
							inRangeValue = 20,
							minTargetPercent = true,
							name = "Party Range: <= 20y",
							partyTargetNumber = 100,
							partyTargetSubType = "Number",
							uuid = "0796f2c7-5782-7e71-8675-e259a5fdcac0",
							version = 3,
						},
					},
				},
				mechanicTime = 652.34305216234,
				name = "[SGE] Ixochole",
				timelineIndex = 128,
				timerEndOffset = 5,
				timerOffset = 10,
				timerStartOffset = -5,
				uuid = "08188134-9ff5-a1be-bf1c-cd39191e71be",
				version = 2,
			},
			inheritedIndex = 5,
		},
	},
	[129] = 
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
									"26fe8bf0-8e58-6157-9b67-e8a64a6b191a",
									true,
								},
								
								{
									"0796f2c7-5782-7e71-8675-e259a5fdcac0",
									true,
								},
								
								{
									"ef6634c0-0ee8-a1e0-bd68-71dd47e3d345",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_Healbar_EukrasianPrognosis",
							uuid = "9f150df4-47fb-823d-a797-346087437cd2",
							variableTogglesType = 3,
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
							jobValue = "SAGE",
							name = "Self: SGE",
							uuid = "26fe8bf0-8e58-6157-9b67-e8a64a6b191a",
							version = 3,
						},
						inheritedIndex = 1,
					},
					
					{
						data = 
						{
							category = "Party",
							comparator = 2,
							conditionType = 4,
							inRangeValue = 20,
							minTargetPercent = true,
							name = "Party Range: <= 20y",
							partyTargetNumber = 100,
							partyTargetSubType = "Number",
							uuid = "0796f2c7-5782-7e71-8675-e259a5fdcac0",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Party",
							comparator = 2,
							conditionType = 2,
							hpValue = 99,
							minTargetPercent = true,
							name = "Party: 1 Member <= 99% HP",
							partyTargetNumber = 10,
							partyTargetSubType = "Number",
							uuid = "ef6634c0-0ee8-a1e0-bd68-71dd47e3d345",
							version = 3,
						},
					},
					
					{
						data = 
						{
							buffCheckType = 5,
							buffID = 2609,
							buffIDList = 
							{
								2607,
								2609,
							},
							category = "Self",
							matchAnyBuff = true,
							name = "Self: Eukrasian Prognosis/Diagnosis Buff",
							uuid = "b661acf5-6e4d-1e3d-93d7-0b1b34e14978",
							version = 3,
						},
						inheritedIndex = 4,
					},
					
					{
						data = 
						{
							actionCDValue = 1,
							actionID = 24301,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "Self: Pepsis CD <= 1s",
							uuid = "5018fc2e-2a8a-fa1b-85e6-7478479a31f2",
							version = 3,
						},
					},
				},
				loop = true,
				mechanicTime = 671.48837109883,
				name = "[SGE] Eukrasian Prognosis",
				throttleTime = 2000,
				timeRange = true,
				timelineIndex = 129,
				timerEndOffset = -1,
				timerOffset = -10,
				timerStartOffset = -7,
				uuid = "81f4205a-616d-b4ff-8ea2-1caa2bfd0c9b",
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
									"6eed371c-276e-0dc6-bfef-64a1ef96e29f",
									true,
								},
								
								{
									"6e5cce1c-e91c-060c-b26b-d9c804cb7b6e",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_Healbar_Kerachole",
							uuid = "1f6dfa69-9fa5-6422-bae0-e4c484120183",
							variableTogglesType = 3,
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
							jobValue = "SAGE",
							name = "Self: SGE",
							uuid = "6eed371c-276e-0dc6-bfef-64a1ef96e29f",
							version = 3,
						},
						inheritedIndex = 1,
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
							uuid = "6e5cce1c-e91c-060c-b26b-d9c804cb7b6e",
							version = 3,
						},
					},
				},
				mechanicTime = 676.34203400282,
				name = "[SGE] Kerachole",
				timeRange = true,
				timelineIndex = 135,
				timerEndOffset = -1,
				timerStartOffset = -14,
				uuid = "7228e218-3a55-56fc-ac15-169b37242d9f",
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
									"26fe8bf0-8e58-6157-9b67-e8a64a6b191a",
									true,
								},
								
								{
									"0796f2c7-5782-7e71-8675-e259a5fdcac0",
									true,
								},
								
								{
									"b661acf5-6e4d-1e3d-93d7-0b1b34e14978",
									false,
								},
							},
							gVar = "ACR_RikuSGE3_Healbar_EukrasianPrognosis",
							uuid = "9f150df4-47fb-823d-a797-346087437cd2",
							variableTogglesType = 3,
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
							jobValue = "SAGE",
							name = "Self: SGE",
							uuid = "26fe8bf0-8e58-6157-9b67-e8a64a6b191a",
							version = 3,
						},
						inheritedIndex = 1,
					},
					
					{
						data = 
						{
							category = "Party",
							comparator = 2,
							conditionType = 4,
							inRangeValue = 20,
							minTargetPercent = true,
							name = "Party Range: <= 20y",
							partyTargetNumber = 100,
							partyTargetSubType = "Number",
							uuid = "0796f2c7-5782-7e71-8675-e259a5fdcac0",
							version = 3,
						},
					},
					
					{
						data = 
						{
							buffID = 2609,
							category = "Self",
							name = "Self: Eukrasian Prognosis Buff",
							uuid = "b661acf5-6e4d-1e3d-93d7-0b1b34e14978",
							version = 3,
						},
					},
				},
				mechanicTime = 676.34203400282,
				name = "[SGE] Eukrasian Prognosis",
				timelineIndex = 135,
				timerEndOffset = -1,
				timerOffset = 1,
				timerStartOffset = -5,
				uuid = "63ae98fe-ea5a-dff8-b17a-4b330a49fcb8",
				version = 2,
			},
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
							aType = "ACR",
							conditions = 
							{
								
								{
									"26fe8bf0-8e58-6157-9b67-e8a64a6b191a",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_Healbar_Taurochole",
							targetSubType = "Lowest HP",
							targetType = "Party",
							uuid = "9f150df4-47fb-823d-a797-346087437cd2",
							variableIsHover = true,
							variableTogglesType = 3,
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
							jobValue = "SAGE",
							name = "Self: SGE",
							uuid = "26fe8bf0-8e58-6157-9b67-e8a64a6b191a",
							version = 3,
						},
						inheritedIndex = 1,
					},
				},
				enabled = false,
				mechanicTime = 689.33031525282,
				name = "[SGE] Taurochole",
				timelineIndex = 136,
				timerEndOffset = 5,
				timerOffset = -2,
				timerStartOffset = -5,
				uuid = "916b89cb-a055-4ad6-87f9-c4695eb70791",
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
									"26fe8bf0-8e58-6157-9b67-e8a64a6b191a",
									true,
								},
								
								{
									"381dce5b-3db3-8082-89b0-49db92f75dec",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_Healbar_Kardia",
							targetSubType = "Lowest HP",
							targetType = "Detection Target",
							uuid = "9f150df4-47fb-823d-a797-346087437cd2",
							variableIsHover = true,
							variableTogglesType = 3,
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"26fe8bf0-8e58-6157-9b67-e8a64a6b191a",
									true,
								},
								
								{
									"381dce5b-3db3-8082-89b0-49db92f75dec",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_Healbar_Haima",
							targetSubType = "Lowest HP",
							targetType = "Detection Target",
							uuid = "50319794-7a2b-3509-a1d6-2168987733fa",
							variableIsHover = true,
							variableTogglesType = 3,
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
							jobValue = "SAGE",
							name = "Self: SGE",
							uuid = "26fe8bf0-8e58-6157-9b67-e8a64a6b191a",
							version = 3,
						},
						inheritedIndex = 1,
					},
					
					{
						data = 
						{
							buffID = 3006,
							category = "Party",
							name = "DT: Third in Line Buff",
							partyTargetType = "Detection Target",
							uuid = "59f318f3-31b1-a408-8ce8-b248735ff083",
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
							name = "DT: Range <= 30y",
							partyTargetNumber = 100,
							partyTargetSubType = "Number",
							partyTargetType = "Detection Target",
							uuid = "0796f2c7-5782-7e71-8675-e259a5fdcac0",
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
									"59f318f3-31b1-a408-8ce8-b248735ff083",
									true,
								},
								
								{
									"0796f2c7-5782-7e71-8675-e259a5fdcac0",
									true,
								},
							},
							filterTargetType = "Tank",
							uuid = "381dce5b-3db3-8082-89b0-49db92f75dec",
							version = 3,
						},
					},
				},
				mechanicTime = 689.33031525282,
				name = "[SGE] Kardia Haima TIL Tank",
				timelineIndex = 136,
				timerEndOffset = 5,
				timerOffset = -6,
				timerStartOffset = -5,
				uuid = "3a04c98e-7eb4-9e65-ba35-24fb298f5638",
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
									"26fe8bf0-8e58-6157-9b67-e8a64a6b191a",
									true,
								},
								
								{
									"381dce5b-3db3-8082-89b0-49db92f75dec",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_Healbar_EukrasianDiagnosis",
							targetSubType = "Lowest HP",
							targetType = "Detection Target",
							uuid = "9f150df4-47fb-823d-a797-346087437cd2",
							variableIsHover = true,
							variableTogglesType = 3,
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
							jobValue = "SAGE",
							name = "Self: SGE",
							uuid = "26fe8bf0-8e58-6157-9b67-e8a64a6b191a",
							version = 3,
						},
						inheritedIndex = 1,
					},
					
					{
						data = 
						{
							category = "Party",
							comparator = 2,
							conditionType = 4,
							inRangeValue = 30,
							minTargetPercent = true,
							name = "DT Range: <= 30y",
							partyTargetNumber = 100,
							partyTargetSubType = "Number",
							partyTargetType = "Detection Target",
							uuid = "0796f2c7-5782-7e71-8675-e259a5fdcac0",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Party",
							comparator = 2,
							conditionType = 2,
							hpType = 2,
							hpValue = 60,
							name = "DT HP: <= 60% HP",
							partyTargetType = "Detection Target",
							uuid = "4eda2bfd-8a78-35e9-9fb8-c4bfd00ad0d5",
							version = 3,
						},
					},
					
					{
						data = 
						{
							buffCheckType = 2,
							buffID = 2911,
							category = "Party",
							name = "DT: Missing Damage Down Debuff",
							partyTargetType = "Detection Target",
							uuid = "23a78289-f5cb-44b7-b9f4-9d233f6ac818",
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
									"0796f2c7-5782-7e71-8675-e259a5fdcac0",
									true,
								},
								
								{
									"4eda2bfd-8a78-35e9-9fb8-c4bfd00ad0d5",
									true,
								},
								
								{
									"23a78289-f5cb-44b7-b9f4-9d233f6ac818",
									true,
								},
							},
							filterTargetSubtype = "Lowest HP",
							filterTargetType = "Party",
							uuid = "381dce5b-3db3-8082-89b0-49db92f75dec",
							version = 3,
						},
						inheritedIndex = 5,
					},
				},
				mechanicTime = 689.33031525282,
				name = "[SGE] Eukrasian Diagnosis",
				timelineIndex = 136,
				timerEndOffset = 1,
				timerOffset = -5,
				timerStartOffset = -5,
				uuid = "0ede3b41-e9bb-341e-a520-317322742afb",
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
							aType = "ACR",
							conditions = 
							{
								
								{
									"26fe8bf0-8e58-6157-9b67-e8a64a6b191a",
									true,
								},
								
								{
									"0796f2c7-5782-7e71-8675-e259a5fdcac0",
									true,
								},
								
								{
									"303cfea5-c9de-3c82-8055-df4b83304e43",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_Healbar_EukrasianPrognosis",
							uuid = "9f150df4-47fb-823d-a797-346087437cd2",
							variableTogglesType = 3,
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
							jobValue = "SAGE",
							name = "Self: SGE",
							uuid = "26fe8bf0-8e58-6157-9b67-e8a64a6b191a",
							version = 3,
						},
						inheritedIndex = 1,
					},
					
					{
						data = 
						{
							category = "Party",
							comparator = 2,
							conditionType = 4,
							inRangeValue = 20,
							minTargetPercent = true,
							name = "Party Range: <= 20y",
							partyTargetNumber = 100,
							partyTargetSubType = "Number",
							uuid = "0796f2c7-5782-7e71-8675-e259a5fdcac0",
							version = 3,
						},
					},
					
					{
						data = 
						{
							buffCheckType = 2,
							buffID = 2609,
							category = "Party",
							name = "DT: Missing Eukrasian Prognosis",
							partyTargetSubType = "Number",
							partyTargetType = "Detection Target",
							uuid = "5b3830f2-93e2-9833-9894-680daafb64f5",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Party",
							conditionType = 10,
							inGroupTargetType = "Tank",
							name = "DT: Tank",
							partyTargetType = "Detection Target",
							uuid = "d00ae7a2-5b63-9ea0-8f6c-a76c339c4bee",
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
									"5b3830f2-93e2-9833-9894-680daafb64f5",
									true,
								},
								
								{
									"d00ae7a2-5b63-9ea0-8f6c-a76c339c4bee",
									false,
								},
							},
							filterTargetType = "Party",
							name = "F - Non Tank Missing Shield",
							uuid = "303cfea5-c9de-3c82-8055-df4b83304e43",
							version = 3,
						},
					},
				},
				mechanicTime = 689.33031525282,
				name = "[SGE] Eukrasian Prognosis",
				timelineIndex = 136,
				timerEndOffset = 5,
				timerOffset = -3,
				timerStartOffset = -5,
				uuid = "b5bb3e91-8c7c-76ed-b57a-9b54af9c0aa4",
				version = 2,
			},
			inheritedIndex = 5,
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
									"26fe8bf0-8e58-6157-9b67-e8a64a6b191a",
									true,
								},
								
								{
									"381dce5b-3db3-8082-89b0-49db92f75dec",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_Healbar_EukrasianDiagnosis",
							targetSubType = "Lowest HP",
							targetType = "Detection Target",
							uuid = "9f150df4-47fb-823d-a797-346087437cd2",
							variableIsHover = true,
							variableTogglesType = 3,
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
							jobValue = "SAGE",
							name = "Self: SGE",
							uuid = "26fe8bf0-8e58-6157-9b67-e8a64a6b191a",
							version = 3,
						},
						inheritedIndex = 1,
					},
					
					{
						data = 
						{
							category = "Party",
							comparator = 2,
							conditionType = 4,
							inRangeValue = 30,
							minTargetPercent = true,
							name = "DT Range: <= 30y",
							partyTargetNumber = 100,
							partyTargetSubType = "Number",
							partyTargetType = "Detection Target",
							uuid = "0796f2c7-5782-7e71-8675-e259a5fdcac0",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Party",
							comparator = 2,
							conditionType = 2,
							hpType = 2,
							hpValue = 60,
							name = "DT HP: <= 60% HP",
							partyTargetType = "Detection Target",
							uuid = "4eda2bfd-8a78-35e9-9fb8-c4bfd00ad0d5",
							version = 3,
						},
					},
					
					{
						data = 
						{
							buffCheckType = 2,
							buffID = 2911,
							category = "Party",
							name = "DT: Missing Damage Down Debuff",
							partyTargetType = "Detection Target",
							uuid = "ed7b7abf-3138-cf1e-9931-806a4a105435",
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
									"0796f2c7-5782-7e71-8675-e259a5fdcac0",
									true,
								},
								
								{
									"4eda2bfd-8a78-35e9-9fb8-c4bfd00ad0d5",
									true,
								},
								
								{
									"ed7b7abf-3138-cf1e-9931-806a4a105435",
									true,
								},
							},
							filterTargetSubtype = "Lowest HP",
							filterTargetType = "Party",
							uuid = "381dce5b-3db3-8082-89b0-49db92f75dec",
							version = 3,
						},
						inheritedIndex = 5,
					},
				},
				mechanicTime = 690.41578400282,
				name = "[SGE] Eukrasian Diagnosis",
				timelineIndex = 137,
				timerEndOffset = 1,
				timerOffset = 0.5,
				timerStartOffset = -5,
				uuid = "2dbfb5b6-3000-e4dd-a7e6-f27fa34dcc8a",
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
									"a7ff75cf-1c65-b308-9b67-891e93f1c4f5",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_Healbar_Soteria",
							uuid = "9f150df4-47fb-823d-a797-346087437cd2",
							variableTogglesType = 3,
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
							jobValue = "SAGE",
							name = "Self: SGE",
							uuid = "a7ff75cf-1c65-b308-9b67-891e93f1c4f5",
							version = 3,
						},
						inheritedIndex = 1,
					},
				},
				mechanicTime = 690.41578400282,
				name = "[SGE] Soteria",
				timelineIndex = 137,
				timerEndOffset = 5,
				timerOffset = -3,
				timerStartOffset = -5,
				uuid = "1b1f7912-c0fb-7bc9-90c4-fb53d2635b2a",
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
							aType = "ACR",
							conditions = 
							{
								
								{
									"a7ff75cf-1c65-b308-9b67-891e93f1c4f5",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_2Toxikon",
							gVarValue = 2,
							uuid = "89a2a281-ece0-b47d-ae01-2141d1630972",
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
							jobValue = "SAGE",
							name = "Self: SGE",
							uuid = "a7ff75cf-1c65-b308-9b67-891e93f1c4f5",
							version = 3,
						},
						inheritedIndex = 1,
					},
				},
				mechanicTime = 690.41578400282,
				name = "[SGE] Toggle 2 Toxikon",
				timelineIndex = 137,
				timerEndOffset = 5,
				timerOffset = -2,
				timerStartOffset = -5,
				uuid = "69c4ae2a-b32a-7418-bdd5-b55e83d0ee79",
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
							aType = "ACR",
							conditions = 
							{
								
								{
									"26fe8bf0-8e58-6157-9b67-e8a64a6b191a",
									true,
								},
								
								{
									"0796f2c7-5782-7e71-8675-e259a5fdcac0",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_Healbar_EukrasianPrognosis",
							uuid = "9f150df4-47fb-823d-a797-346087437cd2",
							variableTogglesType = 3,
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
							jobValue = "SAGE",
							name = "Self: SGE",
							uuid = "26fe8bf0-8e58-6157-9b67-e8a64a6b191a",
							version = 3,
						},
						inheritedIndex = 1,
					},
					
					{
						data = 
						{
							category = "Party",
							comparator = 2,
							conditionType = 4,
							inRangeValue = 20,
							minTargetPercent = true,
							name = "Party Range: <= 20y",
							partyTargetNumber = 100,
							partyTargetSubType = "Number",
							uuid = "0796f2c7-5782-7e71-8675-e259a5fdcac0",
							version = 3,
						},
					},
					
					{
						data = 
						{
							buffID = 2609,
							category = "Self",
							name = "Self: Eukrasian Prognosis Buff",
							uuid = "da3adfd0-f610-1d4f-96fe-1e4260f44f34",
							version = 3,
						},
					},
				},
				mechanicTime = 690.41578400282,
				name = "[SGE] Eukrasian Prognosis",
				timelineIndex = 137,
				timerEndOffset = -1,
				timerOffset = 3,
				timerStartOffset = -5,
				uuid = "94096646-a03d-fa33-a54b-fcc508c5ba10",
				version = 2,
			},
			inheritedIndex = 5,
		},
	},
	[139] = 
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
									"97442e7b-337f-e4e4-bb15-2c86958f0744",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_Hotbar_Sprint",
							uuid = "fbf5b4cf-3fa7-f798-a099-bcfaea881945",
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
							jobValue = "SAGE",
							name = "Self: SGE",
							uuid = "97442e7b-337f-e4e4-bb15-2c86958f0744",
							version = 3,
						},
						inheritedIndex = 1,
					},
				},
				mechanicTime = 702.78725990995,
				name = "[SGE] Sprint",
				timelineIndex = 139,
				timerOffset = -3,
				uuid = "90fc1ffe-1fbc-7107-8e28-8ea867ceda38",
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
							actionID = 24314,
							conditions = 
							{
								
								{
									"0c983eb5-162a-dd0e-a6ce-227d785ef690",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_DoT",
							gVarValue = 2,
							holdActionDuration = 16,
							holdActionID = 24314,
							uuid = "5844d9dd-0d8e-1b7f-b124-be34fe87d863",
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
							name = "Self: Healer",
							partyTargetType = "Healer",
							uuid = "0c983eb5-162a-dd0e-a6ce-227d785ef690",
							version = 3,
						},
					},
				},
				mechanicTime = 702.78725990995,
				name = "[Healer] Toggle DoT",
				timelineIndex = 139,
				timerEndOffset = 3,
				timerStartOffset = -15,
				uuid = "0099d2f0-8290-408d-974b-6ddafc45481c",
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
									"26fe8bf0-8e58-6157-9b67-e8a64a6b191a",
									true,
								},
								
								{
									"0796f2c7-5782-7e71-8675-e259a5fdcac0",
									true,
								},
								
								{
									"da3adfd0-f610-1d4f-96fe-1e4260f44f34",
									false,
								},
							},
							gVar = "ACR_RikuSGE3_Healbar_EukrasianPrognosis",
							uuid = "9f150df4-47fb-823d-a797-346087437cd2",
							variableTogglesType = 3,
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
							jobValue = "SAGE",
							name = "Self: SGE",
							uuid = "26fe8bf0-8e58-6157-9b67-e8a64a6b191a",
							version = 3,
						},
						inheritedIndex = 1,
					},
					
					{
						data = 
						{
							category = "Party",
							comparator = 2,
							conditionType = 4,
							inRangeValue = 20,
							minTargetPercent = true,
							name = "Party Range: <= 20y",
							partyTargetNumber = 100,
							partyTargetSubType = "Number",
							uuid = "0796f2c7-5782-7e71-8675-e259a5fdcac0",
							version = 3,
						},
					},
					
					{
						data = 
						{
							buffID = 2609,
							category = "Self",
							name = "Self: Eukrasian Prognosis Buff",
							uuid = "da3adfd0-f610-1d4f-96fe-1e4260f44f34",
							version = 3,
						},
					},
				},
				mechanicTime = 702.78725990995,
				name = "[SGE] Eukrasian Prognosis",
				timelineIndex = 139,
				timerEndOffset = -1,
				timerOffset = -2,
				timerStartOffset = -5,
				uuid = "2bd8c787-3fc7-6e7f-aa80-e05a3e893357",
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
									"53d292a9-114e-4b73-ade9-8a05229e04b5",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_Healbar_Krasis",
							targetSubType = "Lowest HP",
							targetType = "Party",
							uuid = "9f150df4-47fb-823d-a797-346087437cd2",
							variableIsHover = true,
							variableTogglesType = 3,
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
							jobValue = "SAGE",
							name = "Self: SGE",
							uuid = "53d292a9-114e-4b73-ade9-8a05229e04b5",
							version = 3,
						},
						inheritedIndex = 1,
					},
				},
				mechanicTime = 702.78725990995,
				name = "[SGE] Krasis",
				timelineIndex = 139,
				timerEndOffset = 5,
				timerOffset = -1,
				timerStartOffset = -5,
				uuid = "72d4033a-f8fb-978b-b515-63aa9343a8a7",
				version = 2,
			},
			inheritedIndex = 12,
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
									"26fe8bf0-8e58-6157-9b67-e8a64a6b191a",
									true,
								},
								
								{
									"0796f2c7-5782-7e71-8675-e259a5fdcac0",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_Healbar_EukrasianPrognosis",
							uuid = "9f150df4-47fb-823d-a797-346087437cd2",
							variableTogglesType = 3,
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
							jobValue = "SAGE",
							name = "Self: SGE",
							uuid = "26fe8bf0-8e58-6157-9b67-e8a64a6b191a",
							version = 3,
						},
						inheritedIndex = 1,
					},
					
					{
						data = 
						{
							category = "Party",
							comparator = 2,
							conditionType = 4,
							inRangeValue = 20,
							minTargetPercent = true,
							name = "Party Range: <= 20y",
							partyTargetNumber = 100,
							partyTargetSubType = "Number",
							uuid = "0796f2c7-5782-7e71-8675-e259a5fdcac0",
							version = 3,
						},
					},
					
					{
						data = 
						{
							buffID = 2609,
							category = "Self",
							name = "Self: Eukrasian Prognosis Buff",
							uuid = "da3adfd0-f610-1d4f-96fe-1e4260f44f34",
							version = 3,
						},
					},
				},
				mechanicTime = 705.28176295466,
				name = "[SGE] Eukrasian Prognosis",
				timelineIndex = 141,
				timerEndOffset = -1,
				timerStartOffset = -5,
				uuid = "bad04dd9-2c58-7f25-9c14-2e7890bcdc4d",
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
									"26fe8bf0-8e58-6157-9b67-e8a64a6b191a",
									true,
								},
								
								{
									"0796f2c7-5782-7e71-8675-e259a5fdcac0",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_Healbar_Ixochole",
							uuid = "9f150df4-47fb-823d-a797-346087437cd2",
							variableTogglesType = 3,
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
							jobValue = "SAGE",
							name = "Self: SGE",
							uuid = "26fe8bf0-8e58-6157-9b67-e8a64a6b191a",
							version = 3,
						},
						inheritedIndex = 1,
					},
					
					{
						data = 
						{
							category = "Party",
							comparator = 2,
							conditionType = 4,
							inRangeValue = 20,
							minTargetPercent = true,
							name = "Party Range: <= 20y",
							partyTargetNumber = 100,
							partyTargetSubType = "Number",
							uuid = "0796f2c7-5782-7e71-8675-e259a5fdcac0",
							version = 3,
						},
					},
				},
				mechanicTime = 705.28176295466,
				name = "[SGE] Ixochole",
				timelineIndex = 141,
				timerEndOffset = 5,
				timerOffset = 0.5,
				timerStartOffset = -5,
				uuid = "5a578671-9f3a-5d0d-bf92-d441e81bab11",
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
							aType = "ACR",
							conditions = 
							{
								
								{
									"26fe8bf0-8e58-6157-9b67-e8a64a6b191a",
									true,
								},
								
								{
									"0796f2c7-5782-7e71-8675-e259a5fdcac0",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_Healbar_EukrasianPrognosis",
							uuid = "9f150df4-47fb-823d-a797-346087437cd2",
							variableTogglesType = 3,
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
							jobValue = "SAGE",
							name = "Self: SGE",
							uuid = "26fe8bf0-8e58-6157-9b67-e8a64a6b191a",
							version = 3,
						},
						inheritedIndex = 1,
					},
					
					{
						data = 
						{
							category = "Party",
							comparator = 2,
							conditionType = 4,
							inRangeValue = 20,
							minTargetPercent = true,
							name = "Party Range: <= 20y",
							partyTargetNumber = 100,
							partyTargetSubType = "Number",
							uuid = "0796f2c7-5782-7e71-8675-e259a5fdcac0",
							version = 3,
						},
					},
					
					{
						data = 
						{
							buffID = 2609,
							category = "Self",
							name = "Self: Eukrasian Prognosis Buff",
							uuid = "da3adfd0-f610-1d4f-96fe-1e4260f44f34",
							version = 3,
						},
					},
				},
				mechanicTime = 706.58990945806,
				name = "[SGE] Eukrasian Prognosis",
				timelineIndex = 143,
				timerEndOffset = -1,
				timerOffset = 1,
				timerStartOffset = -5,
				uuid = "db035207-9921-6a3d-9def-c9e679a79c9c",
				version = 2,
			},
			inheritedIndex = 3,
		},
	},
	[146] = 
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
									"6eed371c-276e-0dc6-bfef-64a1ef96e29f",
									true,
								},
								
								{
									"6e5cce1c-e91c-060c-b26b-d9c804cb7b6e",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_Healbar_Kerachole",
							uuid = "1f6dfa69-9fa5-6422-bae0-e4c484120183",
							variableTogglesType = 3,
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
							jobValue = "SAGE",
							name = "Self: SGE",
							uuid = "6eed371c-276e-0dc6-bfef-64a1ef96e29f",
							version = 3,
						},
						inheritedIndex = 1,
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
							uuid = "6e5cce1c-e91c-060c-b26b-d9c804cb7b6e",
							version = 3,
						},
					},
				},
				mechanicTime = 710.74107074838,
				name = "[SGE] Kerachole",
				timeRange = true,
				timelineIndex = 146,
				timerEndOffset = -1,
				timerStartOffset = -14,
				uuid = "d5b04112-97d8-61dc-b640-b07b7e3ee080",
				version = 2,
			},
		},
	},
	[148] = 
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
									"cdf179f3-81c6-f603-aa9c-439b1344a70d",
									true,
								},
								
								{
									"1b9bace4-38c3-9012-9fbc-6aedda9d495a",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_Attacks",
							gVarValue = 2,
							uuid = "e4f93982-807d-b66c-bdc9-d81f63223a33",
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
									"cdf179f3-81c6-f603-aa9c-439b1344a70d",
									true,
								},
								
								{
									"1b9bace4-38c3-9012-9fbc-6aedda9d495a",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_CD",
							untarget = true,
							uuid = "8a20faf7-8883-c5a9-9e3b-a10a6cd968d5",
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
							name = "Self: Healer",
							partyTargetType = "Healer",
							uuid = "cdf179f3-81c6-f603-aa9c-439b1344a70d",
							version = 3,
						},
					},
					
					{
						data = 
						{
							comparator = 2,
							conditionType = 3,
							hpType = 2,
							hpValue = 1,
							name = "Target: HP <= 1",
							uuid = "1b9bace4-38c3-9012-9fbc-6aedda9d495a",
							version = 3,
						},
					},
				},
				mechanicTime = 715.37264047081,
				name = "[Healer] Disable Attacks",
				timeRange = true,
				timelineIndex = 148,
				timerEndOffset = 10,
				timerStartOffset = -20,
				uuid = "a3cf3c15-3e71-6268-97a7-74bf4184dd01",
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
									"515d74ca-ab1b-e512-a7d1-7bf5c67a20e3",
									true,
								},
								
								{
									"c7dea2c7-3688-0fad-9c73-4e054fa0a85b",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_Healbar_Kardia",
							targetSubType = "Topmost Partylist",
							targetType = "Detection Target",
							uuid = "c0a9c51e-79a0-c1be-b647-992fb1fced0e",
							variableIsHover = true,
							variableTogglesType = 3,
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
							conditionLua = "local t1 = AnyoneCore.Roster and AnyoneCore.Roster.entOf(\"T1\")\n\nif not t1 then\n    return false\nend\n\neventArgs.detectionTargetID = t1.id\nreturn true",
							dequeueIfLuaFalse = true,
							name = "AnyoneCore Roster: T1",
							uuid = "515d74ca-ab1b-e512-a7d1-7bf5c67a20e3",
							version = 3,
						},
						inheritedIndex = 4,
					},
					
					{
						data = 
						{
							buffCheckType = 2,
							buffID = 2605,
							category = "Party",
							dequeueIfLuaFalse = true,
							name = "DT: Kardion Missing",
							partyTargetSubType = "Topmost Partylist",
							partyTargetType = "Detection Target",
							uuid = "c7dea2c7-3688-0fad-9c73-4e054fa0a85b",
							version = 3,
						},
						inheritedIndex = 4,
					},
				},
				mechanicTime = 715.37264047081,
				name = "[SGE] Kardia",
				timelineIndex = 148,
				timerOffset = -1,
				uuid = "f3e9e59a-5dc2-2e05-8345-4775530915da",
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
							conditions = 
							{
								
								{
									"26fe8bf0-8e58-6157-9b67-e8a64a6b191a",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_Healbar_Taurochole",
							targetSubType = "Lowest HP",
							targetType = "Party",
							uuid = "9f150df4-47fb-823d-a797-346087437cd2",
							variableIsHover = true,
							variableTogglesType = 3,
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
							jobValue = "SAGE",
							name = "Self: SGE",
							uuid = "26fe8bf0-8e58-6157-9b67-e8a64a6b191a",
							version = 3,
						},
						inheritedIndex = 1,
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return TensorCore.mGetTarget() == nil",
							name = "Self: No Target",
							uuid = "79a6e869-5bbb-20e3-9aeb-999d51908a4b",
							version = 3,
						},
					},
				},
				mechanicTime = 715.37264047081,
				name = "[SGE] Taurochole",
				timeRange = true,
				timelineIndex = 148,
				timerEndOffset = 10,
				timerOffset = -5,
				timerStartOffset = -5,
				uuid = "f96e3bab-6641-0e7b-bd59-093dbcdcc123",
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
							actionID = 24290,
							conditions = 
							{
								
								{
									"26fe8bf0-8e58-6157-9b67-e8a64a6b191a",
									true,
								},
								
								{
									"51e8e693-b6cc-ccdb-8596-4bed7cd07721",
									true,
								},
								
								{
									"667149d9-c922-e4a0-a695-46eff0de1f65",
									true,
								},
								
								{
									"463f6b35-15b4-a707-a690-428e40b9dc8c",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_Healbar_EukrasianPrognosis",
							ignoreWeaveRules = true,
							uuid = "9f150df4-47fb-823d-a797-346087437cd2",
							variableTogglesType = 3,
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
							jobValue = "SAGE",
							name = "Self: SGE",
							uuid = "26fe8bf0-8e58-6157-9b67-e8a64a6b191a",
							version = 3,
						},
						inheritedIndex = 1,
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return FFXIV_Common_BotRunning",
							dequeueIfLuaFalse = true,
							name = "Assist Enabled",
							uuid = "51e8e693-b6cc-ccdb-8596-4bed7cd07721",
							version = 3,
						},
						inheritedIndex = 2,
					},
					
					{
						data = 
						{
							buffCheckType = 2,
							buffID = 2606,
							category = "Self",
							name = "Self Buff: Eukrasia Missing",
							uuid = "667149d9-c922-e4a0-a695-46eff0de1f65",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return TensorCore.mGetTarget() == nil",
							name = "Self: No Target",
							uuid = "463f6b35-15b4-a707-a690-428e40b9dc8c",
							version = 3,
						},
					},
				},
				loop = true,
				mechanicTime = 715.37264047081,
				name = "[SGE] Eukrasia",
				randomTimeout = 10,
				timeRange = true,
				timelineIndex = 148,
				timerEndOffset = 10,
				timerOffset = -1.5,
				timerStartOffset = -5,
				uuid = "fb77bdd0-b311-2190-9292-b6ac4198628c",
				version = 2,
			},
		},
	},
	[150] = 
	{
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							actionID = 24290,
							conditions = 
							{
								
								{
									"26fe8bf0-8e58-6157-9b67-e8a64a6b191a",
									true,
								},
								
								{
									"51e8e693-b6cc-ccdb-8596-4bed7cd07721",
									true,
								},
								
								{
									"667149d9-c922-e4a0-a695-46eff0de1f65",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_Healbar_EukrasianPrognosis",
							uuid = "9f150df4-47fb-823d-a797-346087437cd2",
							variableTogglesType = 3,
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
							jobValue = "SAGE",
							name = "Self: SGE",
							uuid = "26fe8bf0-8e58-6157-9b67-e8a64a6b191a",
							version = 3,
						},
						inheritedIndex = 1,
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return FFXIV_Common_BotRunning",
							dequeueIfLuaFalse = true,
							name = "Assist Enabled",
							uuid = "51e8e693-b6cc-ccdb-8596-4bed7cd07721",
							version = 3,
						},
						inheritedIndex = 2,
					},
					
					{
						data = 
						{
							buffCheckType = 2,
							buffID = 2606,
							category = "Self",
							name = "Self Buff: Eukrasia Missing",
							uuid = "667149d9-c922-e4a0-a695-46eff0de1f65",
							version = 3,
						},
					},
				},
				loop = true,
				mechanicTime = 801.88345429349,
				name = "[SGE] Eukrasia",
				randomTimeout = 10,
				timeRange = true,
				timelineIndex = 150,
				timerEndOffset = -1.75,
				timerOffset = -1.5,
				timerStartOffset = -3,
				uuid = "a975f94a-4562-0f58-8c43-0460d0e87ddc",
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
							actionID = 24314,
							conditions = 
							{
								
								{
									"0c983eb5-162a-dd0e-a6ce-227d785ef690",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_DoT",
							holdActionDuration = 16,
							holdActionID = 24314,
							uuid = "5844d9dd-0d8e-1b7f-b124-be34fe87d863",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"0c983eb5-162a-dd0e-a6ce-227d785ef690",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_Attacks",
							uuid = "5420fd4b-aeb9-463f-a939-a029e8c54e77",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"7ec26ec8-d09d-2b46-a7db-12f44279d6a3",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_2Toxikon",
							uuid = "4face383-48f0-53da-95c7-a7fa2c4ec376",
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
							name = "Self: Healer",
							partyTargetType = "Healer",
							uuid = "0c983eb5-162a-dd0e-a6ce-227d785ef690",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "SAGE",
							name = "Self: SGE",
							uuid = "7ec26ec8-d09d-2b46-a7db-12f44279d6a3",
							version = 3,
						},
					},
				},
				mechanicTime = 801.88345429349,
				name = "[Healer] Toggles",
				timelineIndex = 150,
				timerEndOffset = 3,
				timerOffset = -1,
				timerStartOffset = -15,
				uuid = "3a3f69c2-4084-be02-9bae-85bd2f84aca9",
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
									"a7ff75cf-1c65-b308-9b67-891e93f1c4f5",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_2Toxikon",
							uuid = "89a2a281-ece0-b47d-ae01-2141d1630972",
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
							jobValue = "SAGE",
							name = "Self: SGE",
							uuid = "a7ff75cf-1c65-b308-9b67-891e93f1c4f5",
							version = 3,
						},
						inheritedIndex = 1,
					},
				},
				mechanicTime = 801.88345429349,
				name = "[SGE] Toggle 2 Toxikon",
				timelineIndex = 150,
				timerEndOffset = 5,
				timerStartOffset = -5,
				uuid = "66afa53c-892e-5b69-9b46-7610ce97f4f3",
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
							aType = "ACR",
							conditions = 
							{
								
								{
									"26fe8bf0-8e58-6157-9b67-e8a64a6b191a",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_Burn",
							uuid = "9f150df4-47fb-823d-a797-346087437cd2",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"26fe8bf0-8e58-6157-9b67-e8a64a6b191a",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_Burn",
							gVarValue = 2,
							uuid = "9ac8c031-3563-647d-9823-247f402be1c0",
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
							jobValue = "SAGE",
							name = "Self: SGE",
							uuid = "26fe8bf0-8e58-6157-9b67-e8a64a6b191a",
							version = 3,
						},
						inheritedIndex = 1,
					},
				},
				mechanicTime = 801.88345429349,
				name = "[SGE] Toggle Burn",
				throttleTime = 9000,
				timeRange = true,
				timelineIndex = 150,
				timerEndOffset = 10,
				uuid = "84ad5de9-cece-fb98-9f2d-1f3c7bea4608",
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
									"738f5cf2-ec60-616d-9a2c-f2dbd06647e8",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_Healbar_Kardia",
							targetSubType = "Topmost Partylist",
							targetType = "Main Tank",
							uuid = "c0a9c51e-79a0-c1be-b647-992fb1fced0e",
							variableIsHover = true,
							variableTogglesType = 3,
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							buffCheckType = 2,
							buffID = 2605,
							category = "Party",
							name = "MT Buff: Kardion Missing",
							partyTargetSubType = "Topmost Partylist",
							partyTargetType = "Main Tank",
							uuid = "738f5cf2-ec60-616d-9a2c-f2dbd06647e8",
							version = 3,
						},
					},
				},
				mechanicTime = 801.88345429349,
				name = "[SGE] Kardia MT",
				timelineIndex = 150,
				timerOffset = 3,
				uuid = "25a405cb-0bad-5b16-a7f5-aad9b7fc55f4",
				version = 2,
			},
			inheritedIndex = 15,
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
							aType = "ACR",
							conditions = 
							{
								
								{
									"42ace145-2b74-484f-8bf2-cebf11dccf7a",
									true,
								},
								
								{
									"6dc6db9a-b186-7ff6-a6b3-f82998575c8f",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_Healbar_Philosophia",
							uuid = "7af0e0f9-9796-f4ac-9c26-f2fb54bb3a0f",
							variableTogglesType = 3,
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
							jobValue = "SAGE",
							name = "Self: SGE",
							uuid = "6dc6db9a-b186-7ff6-a6b3-f82998575c8f",
							version = 3,
						},
						inheritedIndex = 1,
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
							uuid = "42ace145-2b74-484f-8bf2-cebf11dccf7a",
							version = 3,
						},
					},
				},
				mechanicTime = 826.02524789261,
				name = "[SGE] Philosophia",
				timeRange = true,
				timelineIndex = 153,
				timerEndOffset = -1,
				timerOffset = 1,
				timerStartOffset = -12,
				uuid = "a93a775c-9dc6-e573-9627-6f8a8c8571d0",
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
									"26fe8bf0-8e58-6157-9b67-e8a64a6b191a",
									true,
								},
								
								{
									"0796f2c7-5782-7e71-8675-e259a5fdcac0",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_Healbar_EukrasianPrognosis",
							uuid = "9f150df4-47fb-823d-a797-346087437cd2",
							variableTogglesType = 3,
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
							jobValue = "SAGE",
							name = "Self: SGE",
							uuid = "26fe8bf0-8e58-6157-9b67-e8a64a6b191a",
							version = 3,
						},
						inheritedIndex = 1,
					},
					
					{
						data = 
						{
							category = "Party",
							comparator = 2,
							conditionType = 4,
							inRangeValue = 20,
							minTargetPercent = true,
							name = "Party Range: <= 20y",
							partyTargetNumber = 100,
							partyTargetSubType = "Number",
							uuid = "0796f2c7-5782-7e71-8675-e259a5fdcac0",
							version = 3,
						},
					},
					
					{
						data = 
						{
							buffID = 2609,
							category = "Self",
							name = "Self: Eukrasian Prognosis Buff",
							uuid = "da3adfd0-f610-1d4f-96fe-1e4260f44f34",
							version = 3,
						},
					},
					
					{
						data = 
						{
							buffID = 3989,
							category = "Self",
							name = "Self Buff: Philosophia",
							uuid = "a3c2b599-8baa-b4b7-a5da-0ba8e859908f",
							version = 3,
						},
					},
					
					{
						data = 
						{
							buffID = 2611,
							category = "Self",
							name = "Self: Zoe Buff",
							uuid = "d58395d9-ba5c-45a4-92a1-989764619b9a",
							version = 3,
						},
						inheritedIndex = 2,
					},
				},
				mechanicTime = 826.02524789261,
				name = "[SGE] Eukrasian Prognosis",
				timeRange = true,
				timelineIndex = 153,
				timerEndOffset = -1,
				timerOffset = 2,
				timerStartOffset = -8,
				uuid = "d04b30e3-4a67-3136-b77c-72d0b30e864c",
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
							aType = "ACR",
							conditions = 
							{
								
								{
									"299bb84c-9fa3-6837-9e30-b8c05eae3959",
									true,
								},
								
								{
									"db9e281c-6f91-3db5-8d6c-487c8eb46530",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_Healbar_Physis",
							uuid = "9f150df4-47fb-823d-a797-346087437cd2",
							variableTogglesType = 3,
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
							jobValue = "SAGE",
							name = "Self: SGE",
							uuid = "299bb84c-9fa3-6837-9e30-b8c05eae3959",
							version = 3,
						},
						inheritedIndex = 1,
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
							uuid = "db9e281c-6f91-3db5-8d6c-487c8eb46530",
							version = 3,
						},
					},
				},
				mechanicTime = 826.02524789261,
				name = "[SGE] Physis",
				timelineIndex = 153,
				timerEndOffset = 5,
				timerStartOffset = -5,
				uuid = "25278c14-edcf-aabe-ad1c-7e608b98509b",
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
							aType = "ACR",
							conditions = 
							{
								
								{
									"26fe8bf0-8e58-6157-9b67-e8a64a6b191a",
									true,
								},
								
								{
									"0796f2c7-5782-7e71-8675-e259a5fdcac0",
									true,
								},
								
								{
									"da3adfd0-f610-1d4f-96fe-1e4260f44f34",
									false,
								},
							},
							gVar = "ACR_RikuSGE3_Healbar_EukrasianPrognosis",
							uuid = "9f150df4-47fb-823d-a797-346087437cd2",
							variableTogglesType = 3,
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
							jobValue = "SAGE",
							name = "Self: SGE",
							uuid = "26fe8bf0-8e58-6157-9b67-e8a64a6b191a",
							version = 3,
						},
						inheritedIndex = 1,
					},
					
					{
						data = 
						{
							category = "Party",
							comparator = 2,
							conditionType = 4,
							inRangeValue = 20,
							minTargetPercent = true,
							name = "Party Range: <= 20y",
							partyTargetNumber = 100,
							partyTargetSubType = "Number",
							uuid = "0796f2c7-5782-7e71-8675-e259a5fdcac0",
							version = 3,
						},
					},
					
					{
						data = 
						{
							buffID = 2609,
							category = "Self",
							name = "Self: Eukrasian Prognosis Buff",
							uuid = "da3adfd0-f610-1d4f-96fe-1e4260f44f34",
							version = 3,
						},
					},
				},
				mechanicTime = 826.02524789261,
				name = "[SGE] Eukrasian Prognosis",
				timelineIndex = 153,
				timerEndOffset = -1,
				timerOffset = 1,
				timerStartOffset = -5,
				uuid = "9b5646de-b1a8-6335-80bb-aa102c6af4dd",
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
							aType = "ACR",
							conditions = 
							{
								
								{
									"26fe8bf0-8e58-6157-9b67-e8a64a6b191a",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_Healbar_Haima",
							targetSubType = "Lowest HP",
							targetType = "Party",
							uuid = "9f150df4-47fb-823d-a797-346087437cd2",
							variableIsHover = true,
							variableTogglesType = 3,
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
							jobValue = "SAGE",
							name = "Self: SGE",
							uuid = "26fe8bf0-8e58-6157-9b67-e8a64a6b191a",
							version = 3,
						},
						inheritedIndex = 1,
					},
				},
				mechanicTime = 826.02524789261,
				name = "[SGE] Haima",
				timelineIndex = 153,
				timerEndOffset = 5,
				timerOffset = 2,
				timerStartOffset = -5,
				uuid = "eafd2b62-cb71-7de1-acd5-56f999e7927c",
				version = 2,
			},
			inheritedIndex = 19,
		},
	},
	[154] = 
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
									"6eed371c-276e-0dc6-bfef-64a1ef96e29f",
									true,
								},
								
								{
									"6e5cce1c-e91c-060c-b26b-d9c804cb7b6e",
									true,
								},
								
								{
									"8f2cf7c1-3765-78c0-89ab-f6d6e9a2a3f3",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_Healbar_Kerachole",
							uuid = "1f6dfa69-9fa5-6422-bae0-e4c484120183",
							variableTogglesType = 3,
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
							jobValue = "SAGE",
							name = "Self: SGE",
							uuid = "6eed371c-276e-0dc6-bfef-64a1ef96e29f",
							version = 3,
						},
						inheritedIndex = 1,
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
							uuid = "6e5cce1c-e91c-060c-b26b-d9c804cb7b6e",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionCDValue = 1,
							actionID = 24299,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "CD: Ixochole <= 1s",
							uuid = "8f2cf7c1-3765-78c0-89ab-f6d6e9a2a3f3",
							version = 3,
						},
					},
				},
				mechanicTime = 831.10515604713,
				name = "[SGE] Kerachole",
				timeRange = true,
				timelineIndex = 154,
				timerEndOffset = -1,
				timerStartOffset = -10.5,
				uuid = "7646245a-f7e6-189a-b5ed-543b054e9207",
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
									"26fe8bf0-8e58-6157-9b67-e8a64a6b191a",
									true,
								},
								
								{
									"0796f2c7-5782-7e71-8675-e259a5fdcac0",
									true,
								},
								
								{
									"da3adfd0-f610-1d4f-96fe-1e4260f44f34",
									false,
								},
							},
							gVar = "ACR_RikuSGE3_Healbar_EukrasianPrognosis",
							uuid = "9f150df4-47fb-823d-a797-346087437cd2",
							variableTogglesType = 3,
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
							jobValue = "SAGE",
							name = "Self: SGE",
							uuid = "26fe8bf0-8e58-6157-9b67-e8a64a6b191a",
							version = 3,
						},
						inheritedIndex = 1,
					},
					
					{
						data = 
						{
							category = "Party",
							comparator = 2,
							conditionType = 4,
							inRangeValue = 20,
							minTargetPercent = true,
							name = "Party Range: <= 20y",
							partyTargetNumber = 100,
							partyTargetSubType = "Number",
							uuid = "0796f2c7-5782-7e71-8675-e259a5fdcac0",
							version = 3,
						},
					},
					
					{
						data = 
						{
							buffID = 2609,
							category = "Self",
							name = "Self: Eukrasian Prognosis Buff",
							uuid = "da3adfd0-f610-1d4f-96fe-1e4260f44f34",
							version = 3,
						},
					},
				},
				mechanicTime = 831.10515604713,
				name = "[SGE] Eukrasian Prognosis",
				timelineIndex = 154,
				timerEndOffset = -1,
				timerOffset = 1,
				timerStartOffset = -5,
				uuid = "643f7929-93ec-c3a9-952e-0baa8a02072c",
				version = 2,
			},
			inheritedIndex = 3,
		},
	},
	[155] = 
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
									"a7ff75cf-1c65-b308-9b67-891e93f1c4f5",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_Healbar_Soteria",
							uuid = "9f150df4-47fb-823d-a797-346087437cd2",
							variableTogglesType = 3,
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
							jobValue = "SAGE",
							name = "Self: SGE",
							uuid = "a7ff75cf-1c65-b308-9b67-891e93f1c4f5",
							version = 3,
						},
						inheritedIndex = 1,
					},
				},
				mechanicTime = 836.78243971594,
				name = "[SGE] Soteria",
				timelineIndex = 155,
				timerEndOffset = 5,
				timerOffset = 1,
				timerStartOffset = -5,
				uuid = "48534ee0-3cd9-165d-955a-f1f81d53c347",
				version = 2,
			},
			inheritedIndex = 29,
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
							aType = "ACR",
							conditions = 
							{
								
								{
									"2aede583-6334-5e6e-8897-d0185d2e479e",
									true,
								},
								
								{
									"2655f02b-090f-3366-8e9d-81bd1daab933",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_Healbar_Holos",
							uuid = "a63d60d1-0099-4678-9951-0dde4026e2a7",
							variableTogglesType = 3,
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
							jobValue = "SAGE",
							name = "Self: SGE",
							uuid = "2aede583-6334-5e6e-8897-d0185d2e479e",
							version = 3,
						},
						inheritedIndex = 1,
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
							uuid = "2655f02b-090f-3366-8e9d-81bd1daab933",
							version = 3,
						},
					},
					
					{
						data = 
						{
							buffID = 3989,
							category = "Self",
							name = "Self Buff: Philosophia",
							uuid = "532e716a-6f15-5b39-ac9e-7f0dbf8a8937",
							version = 3,
						},
					},
				},
				mechanicTime = 841.08843971594,
				name = "[SGE] Holos",
				timeRange = true,
				timelineIndex = 156,
				timerEndOffset = -1,
				timerOffset = -19,
				timerStartOffset = -19.5,
				uuid = "d24f19d1-18e3-a1ef-8f4d-873b2b1dd775",
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
							aType = "ACR",
							conditions = 
							{
								
								{
									"26fe8bf0-8e58-6157-9b67-e8a64a6b191a",
									true,
								},
								
								{
									"0796f2c7-5782-7e71-8675-e259a5fdcac0",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_Healbar_EukrasianPrognosis",
							uuid = "9f150df4-47fb-823d-a797-346087437cd2",
							variableTogglesType = 3,
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
							jobValue = "SAGE",
							name = "Self: SGE",
							uuid = "26fe8bf0-8e58-6157-9b67-e8a64a6b191a",
							version = 3,
						},
						inheritedIndex = 1,
					},
					
					{
						data = 
						{
							category = "Party",
							comparator = 2,
							conditionType = 4,
							inRangeValue = 20,
							minTargetPercent = true,
							name = "Party Range: <= 20y",
							partyTargetNumber = 100,
							partyTargetSubType = "Number",
							uuid = "0796f2c7-5782-7e71-8675-e259a5fdcac0",
							version = 3,
						},
					},
				},
				mechanicTime = 841.08843971594,
				name = "[SGE] Eukrasian Prognosis",
				timelineIndex = 156,
				timerEndOffset = -1,
				timerOffset = 1,
				timerStartOffset = -10,
				uuid = "d355a233-1a59-b9a8-bdaf-5a69c4a7482d",
				version = 2,
			},
			inheritedIndex = 27,
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
									"26fe8bf0-8e58-6157-9b67-e8a64a6b191a",
									true,
								},
								
								{
									"0796f2c7-5782-7e71-8675-e259a5fdcac0",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_Healbar_Ixochole",
							uuid = "9f150df4-47fb-823d-a797-346087437cd2",
							variableTogglesType = 3,
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
							jobValue = "SAGE",
							name = "Self: SGE",
							uuid = "26fe8bf0-8e58-6157-9b67-e8a64a6b191a",
							version = 3,
						},
						inheritedIndex = 1,
					},
					
					{
						data = 
						{
							category = "Party",
							comparator = 2,
							conditionType = 4,
							inRangeValue = 20,
							minTargetPercent = true,
							name = "Party Range: <= 20y",
							partyTargetNumber = 100,
							partyTargetSubType = "Number",
							uuid = "0796f2c7-5782-7e71-8675-e259a5fdcac0",
							version = 3,
						},
					},
				},
				mechanicTime = 841.08843971594,
				name = "[SGE] Ixochole",
				timelineIndex = 156,
				timerEndOffset = 5,
				timerOffset = 1,
				timerStartOffset = -5,
				uuid = "4c0c9616-00e8-a135-9009-6b4723694a06",
				version = 2,
			},
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
									"81ae31c5-9e92-6a56-ba07-ff21087cac48",
									true,
								},
								
								{
									"800486cc-705c-5caf-8fba-1dd95613f62d",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_Healbar_Panhaima",
							uuid = "3513de14-07f8-c935-80cb-36aa906944eb",
							variableTogglesType = 3,
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
							jobValue = "SAGE",
							name = "Self: SGE",
							uuid = "81ae31c5-9e92-6a56-ba07-ff21087cac48",
							version = 3,
						},
						inheritedIndex = 1,
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
							uuid = "800486cc-705c-5caf-8fba-1dd95613f62d",
							version = 3,
						},
					},
				},
				mechanicTime = 846.19462329432,
				name = "[SGE] Panhaima",
				randomOffset = -1,
				timeRange = true,
				timelineIndex = 157,
				timerEndOffset = -1,
				timerOffset = -14.5,
				timerStartOffset = -14.5,
				uuid = "4f352478-962f-1a52-81dc-12014a3921bb",
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
							aType = "ACR",
							conditions = 
							{
								
								{
									"ace000e6-5541-6a8d-b064-b432e620d43a",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_Healbar_Zoe",
							uuid = "68f07163-b007-4f65-a949-55d21423260e",
							variableTogglesType = 3,
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
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "SAGE",
							name = "Self: SGE",
							uuid = "ace000e6-5541-6a8d-b064-b432e620d43a",
							version = 3,
						},
						inheritedIndex = 1,
					},
				},
				mechanicTime = 846.19462329432,
				name = "[SGE] Zoe",
				timelineIndex = 157,
				timerEndOffset = 5,
				timerOffset = -1,
				timerStartOffset = -5,
				uuid = "60583cfc-f415-a061-b7df-e94a2f58a764",
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
							aType = "ACR",
							conditions = 
							{
								
								{
									"53d292a9-114e-4b73-ade9-8a05229e04b5",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_Healbar_Krasis",
							targetSubType = "Lowest HP",
							targetType = "Party",
							uuid = "9f150df4-47fb-823d-a797-346087437cd2",
							variableIsHover = true,
							variableTogglesType = 3,
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
							jobValue = "SAGE",
							name = "Self: SGE",
							uuid = "53d292a9-114e-4b73-ade9-8a05229e04b5",
							version = 3,
						},
						inheritedIndex = 1,
					},
				},
				mechanicTime = 846.19462329432,
				name = "[SGE] Krasis",
				timelineIndex = 157,
				timerEndOffset = 5,
				timerOffset = 1,
				timerStartOffset = -5,
				uuid = "ad3b8514-700a-f67e-8e6c-2674ca3cac2c",
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
									"26fe8bf0-8e58-6157-9b67-e8a64a6b191a",
									true,
								},
								
								{
									"0796f2c7-5782-7e71-8675-e259a5fdcac0",
									true,
								},
								
								{
									"da3adfd0-f610-1d4f-96fe-1e4260f44f34",
									false,
								},
							},
							gVar = "ACR_RikuSGE3_Healbar_EukrasianPrognosis",
							uuid = "9f150df4-47fb-823d-a797-346087437cd2",
							variableTogglesType = 3,
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
							jobValue = "SAGE",
							name = "Self: SGE",
							uuid = "26fe8bf0-8e58-6157-9b67-e8a64a6b191a",
							version = 3,
						},
						inheritedIndex = 1,
					},
					
					{
						data = 
						{
							category = "Party",
							comparator = 2,
							conditionType = 4,
							inRangeValue = 20,
							minTargetPercent = true,
							name = "Party Range: <= 20y",
							partyTargetNumber = 100,
							partyTargetSubType = "Number",
							uuid = "0796f2c7-5782-7e71-8675-e259a5fdcac0",
							version = 3,
						},
					},
					
					{
						data = 
						{
							buffID = 2609,
							category = "Self",
							name = "Self: Eukrasian Prognosis Buff",
							uuid = "da3adfd0-f610-1d4f-96fe-1e4260f44f34",
							version = 3,
						},
					},
				},
				mechanicTime = 846.19462329432,
				name = "[SGE] Eukrasian Prognosis",
				timelineIndex = 157,
				timerEndOffset = -1,
				timerOffset = 3,
				timerStartOffset = -5,
				uuid = "240e1e49-6b03-60cd-aacb-13ca2a8e8714",
				version = 2,
			},
			inheritedIndex = 8,
		},
	},
	[159] = 
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
									"26fe8bf0-8e58-6157-9b67-e8a64a6b191a",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_Hotbar_Potion",
							uuid = "9f150df4-47fb-823d-a797-346087437cd2",
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
							jobValue = "SAGE",
							name = "Self: SGE",
							uuid = "26fe8bf0-8e58-6157-9b67-e8a64a6b191a",
							version = 3,
						},
						inheritedIndex = 1,
					},
				},
				mechanicTime = 855.99403801671,
				name = "[SGE] Use Pot",
				timelineIndex = 159,
				timerEndOffset = -1,
				timerOffset = 2,
				timerStartOffset = -5,
				uuid = "b13ba294-954f-0e80-bef0-69004ed6ff14",
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
									"26fe8bf0-8e58-6157-9b67-e8a64a6b191a",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_Burn",
							uuid = "b862beb4-8a30-fd8f-a232-43a9c19e3dfe",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"26fe8bf0-8e58-6157-9b67-e8a64a6b191a",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_Burn",
							gVarValue = 2,
							uuid = "2fcae39e-a1d9-769a-af35-cbdd6f1e1b17",
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
							jobValue = "SAGE",
							name = "Self: SGE",
							uuid = "26fe8bf0-8e58-6157-9b67-e8a64a6b191a",
							version = 3,
						},
						inheritedIndex = 1,
					},
				},
				mechanicTime = 868.13803801671,
				name = "[SGE] Burn",
				throttleTime = 28000,
				timeRange = true,
				timelineIndex = 160,
				timerEndOffset = 30,
				timerOffset = 5,
				timerStartOffset = -6,
				uuid = "f2f7eea3-1086-a238-8710-e6ef0d5958af",
				version = 2,
			},
		},
	},
	[161] = 
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
									"26fe8bf0-8e58-6157-9b67-e8a64a6b191a",
									true,
								},
								
								{
									"0796f2c7-5782-7e71-8675-e259a5fdcac0",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_Healbar_EukrasianPrognosis",
							uuid = "9f150df4-47fb-823d-a797-346087437cd2",
							variableTogglesType = 3,
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
							jobValue = "SAGE",
							name = "Self: SGE",
							uuid = "26fe8bf0-8e58-6157-9b67-e8a64a6b191a",
							version = 3,
						},
						inheritedIndex = 1,
					},
					
					{
						data = 
						{
							category = "Party",
							comparator = 2,
							conditionType = 4,
							inRangeValue = 20,
							minTargetPercent = true,
							name = "Party Range: <= 20y",
							partyTargetNumber = 100,
							partyTargetSubType = "Number",
							uuid = "0796f2c7-5782-7e71-8675-e259a5fdcac0",
							version = 3,
						},
					},
					
					{
						data = 
						{
							buffID = 2609,
							category = "Self",
							name = "Self: Eukrasian Prognosis Buff",
							uuid = "da3adfd0-f610-1d4f-96fe-1e4260f44f34",
							version = 3,
						},
					},
				},
				mechanicTime = 868.62945888075,
				name = "[SGE] Eukrasian Prognosis",
				timelineIndex = 161,
				timerEndOffset = -1,
				timerOffset = -4,
				timerStartOffset = -5,
				uuid = "ceb1f2e2-6e3d-e75a-9179-53a2e8bf916c",
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
							aType = "ACR",
							conditions = 
							{
								
								{
									"ace000e6-5541-6a8d-b064-b432e620d43a",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_Healbar_Pneuma",
							uuid = "9f150df4-47fb-823d-a797-346087437cd2",
							variableTogglesType = 3,
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
							jobValue = "SAGE",
							name = "Self: SGE",
							uuid = "ace000e6-5541-6a8d-b064-b432e620d43a",
							version = 3,
						},
						inheritedIndex = 1,
					},
				},
				mechanicTime = 868.62945888075,
				name = "[SGE] Pneuma",
				timelineIndex = 161,
				timerEndOffset = 5,
				timerOffset = -0.5,
				timerStartOffset = -5,
				uuid = "7311a766-2541-c28f-b8ab-c390010c6db9",
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
									"26fe8bf0-8e58-6157-9b67-e8a64a6b191a",
									true,
								},
								
								{
									"0796f2c7-5782-7e71-8675-e259a5fdcac0",
									true,
								},
								
								{
									"5b3830f2-93e2-9833-9894-680daafb64f5",
									true,
								},
								
								{
									"d2bcc6f8-42e0-a6bd-9228-102eebf77391",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_Healbar_Pepsis",
							uuid = "9f150df4-47fb-823d-a797-346087437cd2",
							variableTogglesType = 3,
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
							jobValue = "SAGE",
							name = "Self: SGE",
							uuid = "26fe8bf0-8e58-6157-9b67-e8a64a6b191a",
							version = 3,
						},
						inheritedIndex = 1,
					},
					
					{
						data = 
						{
							category = "Party",
							comparator = 2,
							conditionType = 4,
							inRangeValue = 20,
							minTargetPercent = true,
							name = "Party Range: <= 20y",
							partyTargetNumber = 100,
							partyTargetSubType = "Number",
							uuid = "0796f2c7-5782-7e71-8675-e259a5fdcac0",
							version = 3,
						},
					},
					
					{
						data = 
						{
							buffCheckType = 5,
							buffID = 2609,
							buffIDList = 
							{
								2609,
								2607,
							},
							category = "Party",
							matchAnyBuff = true,
							name = "Party: E. Prognosis/Diagnosis Buff",
							partyTargetSubType = "Number",
							uuid = "5b3830f2-93e2-9833-9894-680daafb64f5",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Party",
							comparator = 2,
							conditionType = 2,
							hpType = 2,
							hpValue = 75,
							minTargetPercent = true,
							name = "Party: HP 3/4 <= 75%",
							partyTargetNumber = 75,
							partyTargetSubType = "Number",
							uuid = "d2bcc6f8-42e0-a6bd-9228-102eebf77391",
							version = 3,
						},
					},
				},
				mechanicTime = 868.62945888075,
				name = "[SGE] Pepsis",
				timelineIndex = 161,
				timerEndOffset = 5,
				timerOffset = 1,
				timerStartOffset = -5,
				uuid = "7e897738-fb1f-8c58-9533-956ec1650ab3",
				version = 2,
			},
			inheritedIndex = 3,
		},
	},
	[162] = 
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
									"26fe8bf0-8e58-6157-9b67-e8a64a6b191a",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_Healbar_Taurochole",
							targetSubType = "Lowest HP",
							targetType = "Party",
							uuid = "9f150df4-47fb-823d-a797-346087437cd2",
							variableIsHover = true,
							variableTogglesType = 3,
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
							jobValue = "SAGE",
							name = "Self: SGE",
							uuid = "26fe8bf0-8e58-6157-9b67-e8a64a6b191a",
							version = 3,
						},
						inheritedIndex = 1,
					},
				},
				mechanicTime = 872.48857073874,
				name = "[SGE] Taurochole",
				timelineIndex = 162,
				timerEndOffset = 10,
				timerStartOffset = -5,
				uuid = "6a7db8c8-9be2-b322-98e4-8febc7a67c34",
				version = 2,
			},
			inheritedIndex = 5,
		},
	},
	[163] = 
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
									"6eed371c-276e-0dc6-bfef-64a1ef96e29f",
									true,
								},
								
								{
									"6e5cce1c-e91c-060c-b26b-d9c804cb7b6e",
									true,
								},
								
								{
									"5677f9c3-0a5b-68fb-bd00-bdcf71451931",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_Healbar_Kerachole",
							uuid = "1f6dfa69-9fa5-6422-bae0-e4c484120183",
							variableTogglesType = 3,
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
							jobValue = "SAGE",
							name = "Self: SGE",
							uuid = "6eed371c-276e-0dc6-bfef-64a1ef96e29f",
							version = 3,
						},
						inheritedIndex = 1,
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
							uuid = "6e5cce1c-e91c-060c-b26b-d9c804cb7b6e",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionCDValue = 1,
							actionID = 24298,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "Self: Kerachole CD <= 1s",
							uuid = "5677f9c3-0a5b-68fb-bd00-bdcf71451931",
							version = 3,
						},
					},
				},
				mechanicTime = 877.06989073874,
				name = "[SGE] Kerachole",
				timeRange = true,
				timelineIndex = 163,
				timerEndOffset = -1,
				timerStartOffset = -14.5,
				uuid = "ef92f8b6-d102-954f-8861-9de414a27779",
				version = 2,
			},
		},
	},
	[164] = 
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
									"299bb84c-9fa3-6837-9e30-b8c05eae3959",
									true,
								},
								
								{
									"db9e281c-6f91-3db5-8d6c-487c8eb46530",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_Healbar_Physis",
							uuid = "9f150df4-47fb-823d-a797-346087437cd2",
							variableTogglesType = 3,
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
							jobValue = "SAGE",
							name = "Self: SGE",
							uuid = "299bb84c-9fa3-6837-9e30-b8c05eae3959",
							version = 3,
						},
						inheritedIndex = 1,
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
							uuid = "db9e281c-6f91-3db5-8d6c-487c8eb46530",
							version = 3,
						},
					},
				},
				mechanicTime = 885.32629175592,
				name = "[SGE] Physis",
				timelineIndex = 164,
				timerEndOffset = 5,
				timerStartOffset = -5,
				uuid = "5e24134e-0d43-718b-ba3b-d8cb5972f1c0",
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
							aType = "ACR",
							conditions = 
							{
								
								{
									"26fe8bf0-8e58-6157-9b67-e8a64a6b191a",
									true,
								},
								
								{
									"0796f2c7-5782-7e71-8675-e259a5fdcac0",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_Healbar_EukrasianPrognosis",
							uuid = "9f150df4-47fb-823d-a797-346087437cd2",
							variableTogglesType = 3,
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
							jobValue = "SAGE",
							name = "Self: SGE",
							uuid = "26fe8bf0-8e58-6157-9b67-e8a64a6b191a",
							version = 3,
						},
						inheritedIndex = 1,
					},
					
					{
						data = 
						{
							category = "Party",
							comparator = 2,
							conditionType = 4,
							inRangeValue = 20,
							minTargetPercent = true,
							name = "Party Range: <= 20y",
							partyTargetNumber = 100,
							partyTargetSubType = "Number",
							uuid = "0796f2c7-5782-7e71-8675-e259a5fdcac0",
							version = 3,
						},
					},
					
					{
						data = 
						{
							buffID = 2609,
							category = "Self",
							name = "Self: Eukrasian Prognosis Buff",
							uuid = "da3adfd0-f610-1d4f-96fe-1e4260f44f34",
							version = 3,
						},
					},
				},
				mechanicTime = 885.32629175592,
				name = "[SGE] Eukrasian Prognosis",
				timelineIndex = 164,
				timerEndOffset = -1,
				timerStartOffset = -5,
				uuid = "2cdbda37-bf37-2b17-915e-edc3d8a5c8b7",
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
							aType = "Lua",
							actionLua = "TensorDrift_SlidecastForceHold = true\nself.used = true",
							conditions = 
							{
								
								{
									"c305123f-01e2-32b0-bd63-4424d6132137",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_CD",
							name = "Force Slidecast",
							uuid = "26b75ba9-ffe2-5289-bbe4-7548e58817b5",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "TensorDrift_SlidecastForceHold = false\nself.used = true",
							conditions = 
							{
								
								{
									"a6528518-f553-c3f8-8bec-1ab1f62e6ab1",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_CD",
							name = "End Slide",
							uuid = "c9525cfd-c78c-8c38-b40b-09e5fe1fbe7b",
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
							buffDuration = 2,
							buffID = 5543,
							category = "Party",
							comparator = 2,
							name = "Party: Cursed Shriek Buff <= 2s",
							partyTargetSubType = "Number",
							uuid = "c305123f-01e2-32b0-bd63-4424d6132137",
							version = 3,
						},
						inheritedIndex = 2,
					},
					
					{
						data = 
						{
							actionUUID = "26b75ba9-ffe2-5289-bbe4-7548e58817b5",
							category = "Action",
							name = "Action Used: Force Slidecast",
							uuid = "a6528518-f553-c3f8-8bec-1ab1f62e6ab1",
							version = 3,
						},
					},
				},
				mechanicTime = 885.32629175592,
				name = "Force Slidecast (Shriek 1)",
				throttleTime = 2500,
				timeRange = true,
				timelineIndex = 164,
				timerEndOffset = 2,
				timerStartOffset = -3,
				uuid = "69199ce1-36e8-3a58-8138-53a347deb3b6",
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
							aType = "ACR",
							conditions = 
							{
								
								{
									"299bb84c-9fa3-6837-9e30-b8c05eae3959",
									true,
								},
								
								{
									"db9e281c-6f91-3db5-8d6c-487c8eb46530",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_Healbar_Physis",
							uuid = "9f150df4-47fb-823d-a797-346087437cd2",
							variableTogglesType = 3,
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
							jobValue = "SAGE",
							name = "Self: SGE",
							uuid = "299bb84c-9fa3-6837-9e30-b8c05eae3959",
							version = 3,
						},
						inheritedIndex = 1,
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
							uuid = "db9e281c-6f91-3db5-8d6c-487c8eb46530",
							version = 3,
						},
					},
				},
				mechanicTime = 885.32629175592,
				name = "[SGE] Physis",
				timelineIndex = 164,
				timerEndOffset = 5,
				timerOffset = 1,
				timerStartOffset = -5,
				uuid = "ee16b9ca-c419-4e86-bd53-6d673734479c",
				version = 2,
			},
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
									"97442e7b-337f-e4e4-bb15-2c86958f0744",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_Hotbar_Sprint",
							uuid = "fbf5b4cf-3fa7-f798-a099-bcfaea881945",
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
							jobValue = "SAGE",
							name = "Self: SGE",
							uuid = "97442e7b-337f-e4e4-bb15-2c86958f0744",
							version = 3,
						},
						inheritedIndex = 1,
					},
				},
				mechanicTime = 895.49672653853,
				name = "[SGE] Sprint",
				timelineIndex = 165,
				timerOffset = -4,
				uuid = "80f6b980-98fc-c133-bb04-d94ea061a894",
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
							actionID = 24316,
							conditions = 
							{
								
								{
									"2396dc77-b792-7e80-9887-f83101f21e56",
									true,
								},
								
								{
									"2bd3f5cf-d130-74de-bc20-c09f81a3bd3f",
									true,
								},
								
								{
									"be39038c-1ae7-41d9-baee-6ef533259037",
									true,
								},
								
								{
									"4243a231-eb11-7e08-b08d-59b05f70262c",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_CD",
							targetType = "Enemy",
							uuid = "870510d0-9a27-ffb0-877a-e19b2e0e5941",
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
							jobValue = "SAGE",
							name = "Self: SGE",
							uuid = "2396dc77-b792-7e80-9887-f83101f21e56",
							version = 3,
						},
						inheritedIndex = 1,
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return FFXIV_Common_BotRunning",
							name = "Assist Enabled",
							uuid = "2bd3f5cf-d130-74de-bc20-c09f81a3bd3f",
							version = 3,
						},
						inheritedIndex = 2,
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 6,
							gaugeIndex = 3,
							gaugeValue = 1,
							name = "Self Gauge: >= 1 Toxikon",
							uuid = "be39038c-1ae7-41d9-baee-6ef533259037",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionCDValue = 2.5,
							actionID = 24298,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "Self: Kerachole CD <= 2.5s",
							uuid = "4243a231-eb11-7e08-b08d-59b05f70262c",
							version = 3,
						},
					},
				},
				mechanicTime = 895.49672653853,
				name = "[SGE] Toxikon",
				timeRange = true,
				timelineIndex = 165,
				timerEndOffset = 3,
				timerOffset = -3,
				timerStartOffset = -3,
				uuid = "ddf81489-3e5c-529a-9a5c-fd340095359d",
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
							actionID = 24299,
							conditions = 
							{
								
								{
									"26fe8bf0-8e58-6157-9b67-e8a64a6b191a",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_Healbar_Ixochole",
							ignoreWeaveRules = true,
							uuid = "9f150df4-47fb-823d-a797-346087437cd2",
							variableTogglesType = 3,
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
							jobValue = "SAGE",
							name = "Self: SGE",
							uuid = "26fe8bf0-8e58-6157-9b67-e8a64a6b191a",
							version = 3,
						},
						inheritedIndex = 1,
					},
					
					{
						data = 
						{
							category = "Party",
							comparator = 2,
							conditionType = 4,
							inRangeValue = 20,
							minTargetPercent = true,
							name = "Party Range: <= 20y",
							partyTargetNumber = 100,
							partyTargetSubType = "Number",
							uuid = "0796f2c7-5782-7e71-8675-e259a5fdcac0",
							version = 3,
						},
					},
				},
				mechanicTime = 895.49672653853,
				name = "[SGE] Ixochole",
				timeRange = true,
				timelineIndex = 165,
				timerEndOffset = 10,
				timerOffset = -1,
				timerStartOffset = 0.5,
				uuid = "b46464fb-28b8-b47b-86b5-650c17867203",
				version = 2,
			},
			inheritedIndex = 4,
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
									"26fe8bf0-8e58-6157-9b67-e8a64a6b191a",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_Healbar_EukrasianPrognosis",
							uuid = "9f150df4-47fb-823d-a797-346087437cd2",
							variableTogglesType = 3,
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
							jobValue = "SAGE",
							name = "Self: SGE",
							uuid = "26fe8bf0-8e58-6157-9b67-e8a64a6b191a",
							version = 3,
						},
						inheritedIndex = 1,
					},
					
					{
						data = 
						{
							category = "Party",
							comparator = 2,
							conditionType = 4,
							inRangeValue = 20,
							minTargetPercent = true,
							name = "Party Range: <= 20y",
							partyTargetNumber = 100,
							partyTargetSubType = "Number",
							uuid = "0796f2c7-5782-7e71-8675-e259a5fdcac0",
							version = 3,
						},
					},
					
					{
						data = 
						{
							buffID = 2609,
							category = "Self",
							name = "Self: Eukrasian Prognosis Buff",
							uuid = "da3adfd0-f610-1d4f-96fe-1e4260f44f34",
							version = 3,
						},
					},
				},
				mechanicTime = 895.49672653853,
				name = "[SGE] Eukrasian Prognosis",
				timelineIndex = 165,
				timerEndOffset = -1,
				timerOffset = -0.5,
				timerStartOffset = -5,
				uuid = "d633bd94-9c7c-6d16-bb78-baaa419d91f7",
				version = 2,
			},
			inheritedIndex = 13,
		},
	},
	[166] = 
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
							actionLua = "TensorDrift_SlidecastForceHold = true\nself.used = true",
							conditions = 
							{
								
								{
									"c305123f-01e2-32b0-bd63-4424d6132137",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_CD",
							name = "Force Slidecast",
							uuid = "26b75ba9-ffe2-5289-bbe4-7548e58817b5",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "TensorDrift_SlidecastForceHold = false\nself.used = true",
							conditions = 
							{
								
								{
									"a6528518-f553-c3f8-8bec-1ab1f62e6ab1",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_CD",
							name = "End Slide",
							uuid = "c9525cfd-c78c-8c38-b40b-09e5fe1fbe7b",
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
							buffDuration = 2,
							buffID = 5543,
							category = "Party",
							comparator = 2,
							name = "Party: Cursed Shriek Buff <= 2s",
							partyTargetSubType = "Number",
							uuid = "c305123f-01e2-32b0-bd63-4424d6132137",
							version = 3,
						},
						inheritedIndex = 2,
					},
					
					{
						data = 
						{
							actionUUID = "26b75ba9-ffe2-5289-bbe4-7548e58817b5",
							category = "Action",
							name = "Action Used: Force Slidecast",
							uuid = "a6528518-f553-c3f8-8bec-1ab1f62e6ab1",
							version = 3,
						},
					},
				},
				mechanicTime = 903.50044082329,
				name = "Force Slidecast (Shriek 2)",
				throttleTime = 2500,
				timeRange = true,
				timelineIndex = 166,
				timerEndOffset = 10,
				timerStartOffset = 2,
				uuid = "5d854289-06a4-1ddd-a3be-4daec01bc504",
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
							aType = "ACR",
							conditions = 
							{
								
								{
									"a7ff75cf-1c65-b308-9b67-891e93f1c4f5",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_Healbar_Soteria",
							uuid = "9f150df4-47fb-823d-a797-346087437cd2",
							variableTogglesType = 3,
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
							jobValue = "SAGE",
							name = "Self: SGE",
							uuid = "a7ff75cf-1c65-b308-9b67-891e93f1c4f5",
							version = 3,
						},
						inheritedIndex = 1,
					},
				},
				mechanicTime = 903.50044082329,
				name = "[SGE] Soteria",
				timelineIndex = 166,
				timerEndOffset = 5,
				timerOffset = 1,
				timerStartOffset = -5,
				uuid = "6256b70a-f697-76f0-b29a-6da5b3178545",
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
							actionID = 24298,
							conditions = 
							{
								
								{
									"6eed371c-276e-0dc6-bfef-64a1ef96e29f",
									true,
								},
								
								{
									"274ef581-81b8-6aa6-af72-a8b8de966c5b",
									true,
								},
								
								{
									"6e5cce1c-e91c-060c-b26b-d9c804cb7b6e",
									true,
								},
								
								{
									"1570fee7-f299-3ccc-9205-f5285150e291",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_Healbar_Kerachole",
							ignoreWeaveRules = true,
							uuid = "1f6dfa69-9fa5-6422-bae0-e4c484120183",
							variableTogglesType = 3,
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
							jobValue = "SAGE",
							name = "Self: SGE",
							uuid = "6eed371c-276e-0dc6-bfef-64a1ef96e29f",
							version = 3,
						},
						inheritedIndex = 1,
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return FFXIV_Common_BotRunning",
							name = "Assist Enabled",
							uuid = "274ef581-81b8-6aa6-af72-a8b8de966c5b",
							version = 3,
						},
						inheritedIndex = 2,
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
							uuid = "6e5cce1c-e91c-060c-b26b-d9c804cb7b6e",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionCDValue = 1,
							actionID = 24298,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "Self: Kerachole CD <= 1s",
							uuid = "1570fee7-f299-3ccc-9205-f5285150e291",
							version = 3,
						},
					},
				},
				mechanicTime = 903.50044082329,
				name = "[SGE] Kerachole",
				timeRange = true,
				timelineIndex = 166,
				timerEndOffset = -1,
				timerStartOffset = -10.5,
				uuid = "7a36d14b-c310-0ed7-9c4d-3a854cbc325f",
				version = 2,
			},
		},
	},
	[167] = 
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
									"53d292a9-114e-4b73-ade9-8a05229e04b5",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_Healbar_Krasis",
							targetSubType = "Lowest HP",
							targetType = "Main Tank",
							uuid = "9f150df4-47fb-823d-a797-346087437cd2",
							variableIsHover = true,
							variableTogglesType = 3,
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
							jobValue = "SAGE",
							name = "Self: SGE",
							uuid = "53d292a9-114e-4b73-ade9-8a05229e04b5",
							version = 3,
						},
						inheritedIndex = 1,
					},
				},
				mechanicTime = 916.86652777982,
				name = "[SGE] Krasis",
				timelineIndex = 167,
				timerEndOffset = 5,
				timerOffset = -5,
				timerStartOffset = -5,
				uuid = "5a99e12a-0c7a-c72c-a6c6-1c0c5bd90fd9",
				version = 2,
			},
			inheritedIndex = 12,
		},
	},
	[168] = 
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
									"26fe8bf0-8e58-6157-9b67-e8a64a6b191a",
									true,
								},
								
								{
									"0796f2c7-5782-7e71-8675-e259a5fdcac0",
									true,
								},
								
								{
									"da3adfd0-f610-1d4f-96fe-1e4260f44f34",
									false,
								},
							},
							gVar = "ACR_RikuSGE3_Healbar_EukrasianPrognosis",
							uuid = "9f150df4-47fb-823d-a797-346087437cd2",
							variableTogglesType = 3,
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
							jobValue = "SAGE",
							name = "Self: SGE",
							uuid = "26fe8bf0-8e58-6157-9b67-e8a64a6b191a",
							version = 3,
						},
						inheritedIndex = 1,
					},
					
					{
						data = 
						{
							category = "Party",
							comparator = 2,
							conditionType = 4,
							inRangeValue = 20,
							minTargetPercent = true,
							name = "Party Range: <= 20y",
							partyTargetNumber = 100,
							partyTargetSubType = "Number",
							uuid = "0796f2c7-5782-7e71-8675-e259a5fdcac0",
							version = 3,
						},
					},
					
					{
						data = 
						{
							buffID = 2609,
							category = "Self",
							name = "Self: Eukrasian Prognosis Buff",
							uuid = "da3adfd0-f610-1d4f-96fe-1e4260f44f34",
							version = 3,
						},
					},
				},
				mechanicTime = 921.94101651754,
				name = "[SGE] Eukrasian Prognosis",
				timelineIndex = 168,
				timerEndOffset = -1,
				timerOffset = 4,
				timerStartOffset = -5,
				uuid = "040b25fd-2df8-0323-a258-651946f322fe",
				version = 2,
			},
			inheritedIndex = 13,
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
									"6eed371c-276e-0dc6-bfef-64a1ef96e29f",
									true,
								},
								
								{
									"6e5cce1c-e91c-060c-b26b-d9c804cb7b6e",
									true,
								},
								
								{
									"17a39f5b-1d7f-1edf-8544-d19e77d6d59b",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_Healbar_Kerachole",
							uuid = "1f6dfa69-9fa5-6422-bae0-e4c484120183",
							variableTogglesType = 3,
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
							jobValue = "SAGE",
							name = "Self: SGE",
							uuid = "6eed371c-276e-0dc6-bfef-64a1ef96e29f",
							version = 3,
						},
						inheritedIndex = 1,
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
							uuid = "6e5cce1c-e91c-060c-b26b-d9c804cb7b6e",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionCDValue = 1,
							actionID = 24298,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "Self: Kerachole CD <= 1s",
							uuid = "17a39f5b-1d7f-1edf-8544-d19e77d6d59b",
							version = 3,
						},
					},
				},
				mechanicTime = 934.65048710577,
				name = "[SGE] Kerachole",
				timeRange = true,
				timelineIndex = 169,
				timerEndOffset = -1,
				timerStartOffset = -14.5,
				uuid = "bf812c01-d491-5966-8769-0f23a112f5e7",
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
									"26fe8bf0-8e58-6157-9b67-e8a64a6b191a",
									true,
								},
								
								{
									"0796f2c7-5782-7e71-8675-e259a5fdcac0",
									true,
								},
								
								{
									"da3adfd0-f610-1d4f-96fe-1e4260f44f34",
									false,
								},
							},
							gVar = "ACR_RikuSGE3_Healbar_EukrasianPrognosis",
							uuid = "9f150df4-47fb-823d-a797-346087437cd2",
							variableTogglesType = 3,
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
							jobValue = "SAGE",
							name = "Self: SGE",
							uuid = "26fe8bf0-8e58-6157-9b67-e8a64a6b191a",
							version = 3,
						},
						inheritedIndex = 1,
					},
					
					{
						data = 
						{
							category = "Party",
							comparator = 2,
							conditionType = 4,
							inRangeValue = 20,
							minTargetPercent = true,
							name = "Party Range: <= 20y",
							partyTargetNumber = 100,
							partyTargetSubType = "Number",
							uuid = "0796f2c7-5782-7e71-8675-e259a5fdcac0",
							version = 3,
						},
					},
					
					{
						data = 
						{
							buffID = 2609,
							category = "Self",
							name = "Self: Eukrasian Prognosis Buff",
							uuid = "da3adfd0-f610-1d4f-96fe-1e4260f44f34",
							version = 3,
						},
					},
				},
				mechanicTime = 934.65048710577,
				name = "[SGE] Eukrasian Prognosis",
				timelineIndex = 169,
				timerEndOffset = -1,
				timerOffset = -2,
				timerStartOffset = -5,
				uuid = "7d2e9bbc-58ff-1910-a91a-6b55acf62d8b",
				version = 2,
			},
			inheritedIndex = 15,
		},
	},
	[170] = 
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
							actionID = 24314,
							conditions = 
							{
								
								{
									"0c983eb5-162a-dd0e-a6ce-227d785ef690",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_DoT",
							gVarValue = 2,
							holdActionDuration = 16,
							holdActionID = 24314,
							uuid = "5844d9dd-0d8e-1b7f-b124-be34fe87d863",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"0c983eb5-162a-dd0e-a6ce-227d785ef690",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_Burn",
							uuid = "c0d5b32f-c5eb-7129-9954-5ef84594c2ed",
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
							name = "Self: Healer",
							partyTargetType = "Healer",
							uuid = "0c983eb5-162a-dd0e-a6ce-227d785ef690",
							version = 3,
						},
					},
				},
				mechanicTime = 934.65552902023,
				name = "[Healer] Toggle DoT & Burn",
				timelineIndex = 170,
				timerEndOffset = 3,
				timerOffset = -16.5,
				timerStartOffset = -15,
				uuid = "6c9e7812-cefa-9f3f-a7cc-7e48434cc5aa",
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
									"26fe8bf0-8e58-6157-9b67-e8a64a6b191a",
									true,
								},
								
								{
									"0796f2c7-5782-7e71-8675-e259a5fdcac0",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_Healbar_Prognosis",
							uuid = "9f150df4-47fb-823d-a797-346087437cd2",
							variableTogglesType = 3,
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
							jobValue = "SAGE",
							name = "Self: SGE",
							uuid = "26fe8bf0-8e58-6157-9b67-e8a64a6b191a",
							version = 3,
						},
						inheritedIndex = 1,
					},
					
					{
						data = 
						{
							category = "Party",
							comparator = 2,
							conditionType = 4,
							inRangeValue = 20,
							minTargetPercent = true,
							name = "Party Range: <= 20y",
							partyTargetNumber = 100,
							partyTargetSubType = "Number",
							uuid = "0796f2c7-5782-7e71-8675-e259a5fdcac0",
							version = 3,
						},
					},
				},
				mechanicTime = 934.65552902023,
				name = "[SGE] Prognosis",
				timelineIndex = 170,
				timerEndOffset = -1,
				timerOffset = 1,
				timerStartOffset = -5,
				uuid = "7855e0c9-b508-7c47-bbe1-9aaa1f41450d",
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
							aType = "ACR",
							conditions = 
							{
								
								{
									"26fe8bf0-8e58-6157-9b67-e8a64a6b191a",
									true,
								},
								
								{
									"0796f2c7-5782-7e71-8675-e259a5fdcac0",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_Healbar_Prognosis",
							uuid = "9f150df4-47fb-823d-a797-346087437cd2",
							variableTogglesType = 3,
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
							jobValue = "SAGE",
							name = "Self: SGE",
							uuid = "26fe8bf0-8e58-6157-9b67-e8a64a6b191a",
							version = 3,
						},
						inheritedIndex = 1,
					},
					
					{
						data = 
						{
							category = "Party",
							comparator = 2,
							conditionType = 4,
							inRangeValue = 20,
							minTargetPercent = true,
							name = "Party Range: <= 20y",
							partyTargetNumber = 100,
							partyTargetSubType = "Number",
							uuid = "0796f2c7-5782-7e71-8675-e259a5fdcac0",
							version = 3,
						},
					},
				},
				mechanicTime = 934.65552902023,
				name = "[SGE] Prognosis",
				timelineIndex = 170,
				timerEndOffset = -1,
				timerOffset = 4,
				timerStartOffset = -5,
				uuid = "6cad990c-040e-9d89-8dd4-10fb43a5f090",
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
							aType = "ACR",
							actionID = 24314,
							conditions = 
							{
								
								{
									"d4677109-8e7c-f7c9-9338-24fc263eccd5",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_DoT",
							holdActionDuration = 16,
							holdActionID = 24314,
							uuid = "2eda86d5-5f92-4b31-a07a-23474c3631b3",
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
									"d4677109-8e7c-f7c9-9338-24fc263eccd5",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_2Toxikon",
							uuid = "394c7cfc-e873-f599-829b-45058f7db85e",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"d4677109-8e7c-f7c9-9338-24fc263eccd5",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_Attacks",
							uuid = "679c988c-1b7e-99b4-9efe-45d4dd895cc8",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"d4677109-8e7c-f7c9-9338-24fc263eccd5",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_Burn",
							gVarValue = 2,
							uuid = "c813fda3-7660-a373-b3fc-7ed803b9f2b9",
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
							jobValue = "SAGE",
							name = "Self: SGE",
							uuid = "d4677109-8e7c-f7c9-9338-24fc263eccd5",
							version = 3,
						},
						inheritedIndex = 1,
					},
				},
				mechanicTime = 934.65552902023,
				name = "[SGE] Reset Toggles",
				timelineIndex = 170,
				timerOffset = 5,
				uuid = "90b93fab-31c3-a4fc-ae49-17cd27b5136f",
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
									"26fe8bf0-8e58-6157-9b67-e8a64a6b191a",
									true,
								},
								
								{
									"0796f2c7-5782-7e71-8675-e259a5fdcac0",
									true,
								},
								
								{
									"5b3830f2-93e2-9833-9894-680daafb64f5",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_Healbar_Pepsis",
							uuid = "9f150df4-47fb-823d-a797-346087437cd2",
							variableTogglesType = 3,
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
							jobValue = "SAGE",
							name = "Self: SGE",
							uuid = "26fe8bf0-8e58-6157-9b67-e8a64a6b191a",
							version = 3,
						},
						inheritedIndex = 1,
					},
					
					{
						data = 
						{
							category = "Party",
							comparator = 2,
							conditionType = 4,
							inRangeValue = 20,
							minTargetPercent = true,
							name = "Party Range: <= 20y",
							partyTargetNumber = 100,
							partyTargetSubType = "Number",
							uuid = "0796f2c7-5782-7e71-8675-e259a5fdcac0",
							version = 3,
						},
					},
					
					{
						data = 
						{
							buffCheckType = 5,
							buffID = 2609,
							buffIDList = 
							{
								2609,
								2607,
							},
							category = "Party",
							matchAnyBuff = true,
							name = "Party: E. Prognosis/Diagnosis Buff",
							partyTargetSubType = "Number",
							uuid = "5b3830f2-93e2-9833-9894-680daafb64f5",
							version = 3,
						},
					},
				},
				mechanicTime = 934.65552902023,
				name = "[SGE] Pepsis",
				timelineIndex = 170,
				timerEndOffset = 5,
				timerOffset = 5,
				timerStartOffset = -5,
				uuid = "ec5c9223-8feb-c248-a003-c826896f5ba2",
				version = 2,
			},
			inheritedIndex = 36,
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							actionID = 7562,
							conditions = 
							{
								
								{
									"e5a279ee-15f5-ea3f-bdfd-a4b5478f38be",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_CD",
							ignoreWeaveRules = true,
							uuid = "37140911-ff23-a4b0-a593-b3a9c6b0cd73",
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
							name = "Self: Healer",
							partyTargetType = "Healer",
							uuid = "e5a279ee-15f5-ea3f-bdfd-a4b5478f38be",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionCDValue = 1,
							actionID = 7562,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "Self: Lucid CD <= 1s",
							uuid = "ea086d9e-9db4-79cd-b827-f7124140f45a",
							version = 3,
						},
					},
				},
				mechanicTime = 934.65552902023,
				name = "[Healer] Lucid Dreaming",
				timeRange = true,
				timelineIndex = 170,
				timerEndOffset = 30,
				timerStartOffset = 1,
				uuid = "bec04cb5-831d-f8c6-9af4-9c7c28beb296",
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
									"515d74ca-ab1b-e512-a7d1-7bf5c67a20e3",
									true,
								},
								
								{
									"c7dea2c7-3688-0fad-9c73-4e054fa0a85b",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_Healbar_Kardia",
							targetSubType = "Topmost Partylist",
							targetType = "Detection Target",
							uuid = "c0a9c51e-79a0-c1be-b647-992fb1fced0e",
							variableIsHover = true,
							variableTogglesType = 3,
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
							conditionLua = "local t1 = AnyoneCore.Roster and AnyoneCore.Roster.entOf(\"T1\")\n\nif not t1 then\n    return false\nend\n\neventArgs.detectionTargetID = t1.id\nreturn true",
							dequeueIfLuaFalse = true,
							name = "AnyoneCore Roster: T1",
							uuid = "515d74ca-ab1b-e512-a7d1-7bf5c67a20e3",
							version = 3,
						},
						inheritedIndex = 4,
					},
					
					{
						data = 
						{
							buffCheckType = 2,
							buffID = 2605,
							category = "Party",
							dequeueIfLuaFalse = true,
							name = "DT: Kardion Missing",
							partyTargetSubType = "Topmost Partylist",
							partyTargetType = "Detection Target",
							uuid = "c7dea2c7-3688-0fad-9c73-4e054fa0a85b",
							version = 3,
						},
						inheritedIndex = 4,
					},
				},
				mechanicTime = 934.65552902023,
				name = "[SGE] Kardia",
				timelineIndex = 170,
				timerOffset = 10,
				uuid = "a72ee809-1b0f-a611-a921-967a3e5c64df",
				version = 2,
			},
			inheritedIndex = 17,
		},
	},
	[171] = 
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
									"26fe8bf0-8e58-6157-9b67-e8a64a6b191a",
									true,
								},
								
								{
									"0796f2c7-5782-7e71-8675-e259a5fdcac0",
									true,
								},
							},
							fallthrough = true,
							gVar = "ACR_RikuSGE3_Healbar_Zoe",
							uuid = "e8241127-b7f4-8235-9f22-e126fbe1aa59",
							variableTogglesType = 3,
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
									"26fe8bf0-8e58-6157-9b67-e8a64a6b191a",
									true,
								},
								
								{
									"0796f2c7-5782-7e71-8675-e259a5fdcac0",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_Healbar_EukrasianPrognosis",
							uuid = "9f150df4-47fb-823d-a797-346087437cd2",
							variableTogglesType = 3,
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
							jobValue = "SAGE",
							name = "Self: SGE",
							uuid = "26fe8bf0-8e58-6157-9b67-e8a64a6b191a",
							version = 3,
						},
						inheritedIndex = 1,
					},
					
					{
						data = 
						{
							category = "Party",
							comparator = 2,
							conditionType = 4,
							inRangeValue = 20,
							minTargetPercent = true,
							name = "Party Range: <= 20y",
							partyTargetNumber = 100,
							partyTargetSubType = "Number",
							uuid = "0796f2c7-5782-7e71-8675-e259a5fdcac0",
							version = 3,
						},
					},
				},
				mechanicTime = 965.64810213372,
				name = "[SGE] Zoe Eukrasian Prognosis",
				timeRange = true,
				timelineIndex = 171,
				timerEndOffset = -1,
				timerStartOffset = -12,
				uuid = "e6201600-725b-93e9-91fc-7617d7da357d",
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
							actionID = 24290,
							conditions = 
							{
								
								{
									"26fe8bf0-8e58-6157-9b67-e8a64a6b191a",
									true,
								},
								
								{
									"51e8e693-b6cc-ccdb-8596-4bed7cd07721",
									true,
								},
								
								{
									"667149d9-c922-e4a0-a695-46eff0de1f65",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_Healbar_EukrasianPrognosis",
							uuid = "9f150df4-47fb-823d-a797-346087437cd2",
							variableTogglesType = 3,
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
							jobValue = "SAGE",
							name = "Self: SGE",
							uuid = "26fe8bf0-8e58-6157-9b67-e8a64a6b191a",
							version = 3,
						},
						inheritedIndex = 1,
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return FFXIV_Common_BotRunning",
							dequeueIfLuaFalse = true,
							name = "Assist Enabled",
							uuid = "51e8e693-b6cc-ccdb-8596-4bed7cd07721",
							version = 3,
						},
						inheritedIndex = 2,
					},
					
					{
						data = 
						{
							buffCheckType = 2,
							buffID = 2606,
							category = "Self",
							name = "Self Buff: Eukrasia Missing",
							uuid = "667149d9-c922-e4a0-a695-46eff0de1f65",
							version = 3,
						},
					},
				},
				loop = true,
				mechanicTime = 965.64810213372,
				name = "[SGE] Eukrasia",
				randomTimeout = 10,
				timeRange = true,
				timelineIndex = 171,
				timerEndOffset = -0.80000001192093,
				timerOffset = -1.5,
				timerStartOffset = -5,
				uuid = "4d879e88-7874-71b9-82a6-de71ab105f25",
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
									"26fe8bf0-8e58-6157-9b67-e8a64a6b191a",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_Healbar_Haima",
							targetType = "Main Tank",
							uuid = "9f150df4-47fb-823d-a797-346087437cd2",
							variableIsHover = true,
							variableTogglesType = 3,
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
							jobValue = "SAGE",
							name = "Self: SGE",
							uuid = "26fe8bf0-8e58-6157-9b67-e8a64a6b191a",
							version = 3,
						},
						inheritedIndex = 1,
					},
				},
				mechanicTime = 965.64810213372,
				name = "[SGE] Haima",
				timelineIndex = 171,
				timerEndOffset = 5,
				timerOffset = 6,
				timerStartOffset = -5,
				uuid = "ab111ae5-0d9f-b352-bc3d-bfcf3d4a7d77",
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
							aType = "ACR",
							conditions = 
							{
								
								{
									"299bb84c-9fa3-6837-9e30-b8c05eae3959",
									true,
								},
								
								{
									"db9e281c-6f91-3db5-8d6c-487c8eb46530",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_Healbar_Physis",
							uuid = "9f150df4-47fb-823d-a797-346087437cd2",
							variableTogglesType = 3,
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
							jobValue = "SAGE",
							name = "Self: SGE",
							uuid = "299bb84c-9fa3-6837-9e30-b8c05eae3959",
							version = 3,
						},
						inheritedIndex = 1,
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
							uuid = "db9e281c-6f91-3db5-8d6c-487c8eb46530",
							version = 3,
						},
					},
				},
				mechanicTime = 965.64810213372,
				name = "[SGE] Physis",
				timelineIndex = 171,
				timerEndOffset = 5,
				timerOffset = -2,
				timerStartOffset = -5,
				uuid = "58257522-33c6-5cfc-b515-0a58ee031a51",
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
									"738f5cf2-ec60-616d-9a2c-f2dbd06647e8",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_Healbar_Kardia",
							targetSubType = "Topmost Partylist",
							targetType = "Main Tank",
							uuid = "c0a9c51e-79a0-c1be-b647-992fb1fced0e",
							variableIsHover = true,
							variableTogglesType = 3,
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							buffCheckType = 2,
							buffID = 2605,
							category = "Party",
							name = "MT Buff: Kardion Missing",
							partyTargetSubType = "Topmost Partylist",
							partyTargetType = "Main Tank",
							uuid = "738f5cf2-ec60-616d-9a2c-f2dbd06647e8",
							version = 3,
						},
					},
				},
				mechanicTime = 965.64810213372,
				name = "[SGE] Kardia MT",
				timelineIndex = 171,
				timerOffset = 1,
				uuid = "2c5f45a0-9e7e-5618-b167-8031347fbe30",
				version = 2,
			},
			inheritedIndex = 15,
		},
	},
	[173] = 
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
									"26fe8bf0-8e58-6157-9b67-e8a64a6b191a",
									true,
								},
								
								{
									"0796f2c7-5782-7e71-8675-e259a5fdcac0",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_Healbar_EukrasianPrognosis",
							uuid = "9f150df4-47fb-823d-a797-346087437cd2",
							variableTogglesType = 3,
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
							jobValue = "SAGE",
							name = "Self: SGE",
							uuid = "26fe8bf0-8e58-6157-9b67-e8a64a6b191a",
							version = 3,
						},
						inheritedIndex = 1,
					},
					
					{
						data = 
						{
							category = "Party",
							comparator = 2,
							conditionType = 4,
							inRangeValue = 20,
							minTargetPercent = true,
							name = "Party Range: <= 20y",
							partyTargetNumber = 100,
							partyTargetSubType = "Number",
							uuid = "0796f2c7-5782-7e71-8675-e259a5fdcac0",
							version = 3,
						},
					},
					
					{
						data = 
						{
							buffID = 2609,
							category = "Self",
							name = "Self: Eukrasian Prognosis Buff",
							uuid = "da3adfd0-f610-1d4f-96fe-1e4260f44f34",
							version = 3,
						},
					},
				},
				mechanicTime = 973.84072239989,
				name = "[SGE] Eukrasian Prognosis",
				timelineIndex = 173,
				timerEndOffset = -1,
				timerStartOffset = -5,
				uuid = "d6a1f7ce-c5be-7672-be1d-ec1969d1d86a",
				version = 2,
			},
			inheritedIndex = 3,
		},
	},
	[174] = 
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
									"26fe8bf0-8e58-6157-9b67-e8a64a6b191a",
									true,
								},
								
								{
									"0796f2c7-5782-7e71-8675-e259a5fdcac0",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_Healbar_EukrasianPrognosis",
							uuid = "9f150df4-47fb-823d-a797-346087437cd2",
							variableTogglesType = 3,
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
							jobValue = "SAGE",
							name = "Self: SGE",
							uuid = "26fe8bf0-8e58-6157-9b67-e8a64a6b191a",
							version = 3,
						},
						inheritedIndex = 1,
					},
					
					{
						data = 
						{
							category = "Party",
							comparator = 2,
							conditionType = 4,
							inRangeValue = 20,
							minTargetPercent = true,
							name = "Party Range: <= 20y",
							partyTargetNumber = 100,
							partyTargetSubType = "Number",
							uuid = "0796f2c7-5782-7e71-8675-e259a5fdcac0",
							version = 3,
						},
					},
					
					{
						data = 
						{
							buffID = 2609,
							category = "Self",
							name = "Self: Eukrasian Prognosis Buff",
							uuid = "da3adfd0-f610-1d4f-96fe-1e4260f44f34",
							version = 3,
						},
					},
				},
				enabled = false,
				mechanicTime = 974.56772239989,
				name = "[SGE] Eukrasian Prognosis",
				timelineIndex = 174,
				timerEndOffset = -1,
				timerStartOffset = -5,
				uuid = "f07a0ff8-7e8f-ce13-a767-8e92af0ee170",
				version = 2,
			},
			inheritedIndex = 3,
		},
	},
	[175] = 
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
									"26fe8bf0-8e58-6157-9b67-e8a64a6b191a",
									true,
								},
								
								{
									"0796f2c7-5782-7e71-8675-e259a5fdcac0",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_Healbar_EukrasianPrognosis",
							uuid = "9f150df4-47fb-823d-a797-346087437cd2",
							variableTogglesType = 3,
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
							jobValue = "SAGE",
							name = "Self: SGE",
							uuid = "26fe8bf0-8e58-6157-9b67-e8a64a6b191a",
							version = 3,
						},
						inheritedIndex = 1,
					},
					
					{
						data = 
						{
							category = "Party",
							comparator = 2,
							conditionType = 4,
							inRangeValue = 20,
							minTargetPercent = true,
							name = "Party Range: <= 20y",
							partyTargetNumber = 100,
							partyTargetSubType = "Number",
							uuid = "0796f2c7-5782-7e71-8675-e259a5fdcac0",
							version = 3,
						},
					},
					
					{
						data = 
						{
							buffID = 2609,
							category = "Self",
							name = "Self: Eukrasian Prognosis Buff",
							uuid = "da3adfd0-f610-1d4f-96fe-1e4260f44f34",
							version = 3,
						},
					},
				},
				enabled = false,
				mechanicTime = 975.22678122342,
				name = "[SGE] Eukrasian Prognosis",
				timelineIndex = 175,
				timerEndOffset = -1,
				timerStartOffset = -5,
				uuid = "4a95a888-d7d5-1d6f-9a72-5680ff3c0831",
				version = 2,
			},
			inheritedIndex = 3,
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
									"26fe8bf0-8e58-6157-9b67-e8a64a6b191a",
									true,
								},
								
								{
									"0796f2c7-5782-7e71-8675-e259a5fdcac0",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_Healbar_EukrasianPrognosis",
							uuid = "9f150df4-47fb-823d-a797-346087437cd2",
							variableTogglesType = 3,
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
							jobValue = "SAGE",
							name = "Self: SGE",
							uuid = "26fe8bf0-8e58-6157-9b67-e8a64a6b191a",
							version = 3,
						},
						inheritedIndex = 1,
					},
					
					{
						data = 
						{
							category = "Party",
							comparator = 2,
							conditionType = 4,
							inRangeValue = 20,
							minTargetPercent = true,
							name = "Party Range: <= 20y",
							partyTargetNumber = 100,
							partyTargetSubType = "Number",
							uuid = "0796f2c7-5782-7e71-8675-e259a5fdcac0",
							version = 3,
						},
					},
					
					{
						data = 
						{
							buffID = 2609,
							category = "Self",
							name = "Self: Eukrasian Prognosis Buff",
							uuid = "da3adfd0-f610-1d4f-96fe-1e4260f44f34",
							version = 3,
						},
					},
				},
				mechanicTime = 975.94101651753,
				name = "[SGE] Eukrasian Prognosis",
				timelineIndex = 176,
				timerEndOffset = -1,
				timerStartOffset = -5,
				uuid = "814a87ab-06c8-b464-9af6-41a7736fec79",
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
									"26fe8bf0-8e58-6157-9b67-e8a64a6b191a",
									true,
								},
								
								{
									"0796f2c7-5782-7e71-8675-e259a5fdcac0",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_Healbar_Ixochole",
							uuid = "9f150df4-47fb-823d-a797-346087437cd2",
							variableTogglesType = 3,
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
							jobValue = "SAGE",
							name = "Self: SGE",
							uuid = "26fe8bf0-8e58-6157-9b67-e8a64a6b191a",
							version = 3,
						},
						inheritedIndex = 1,
					},
					
					{
						data = 
						{
							category = "Party",
							comparator = 2,
							conditionType = 4,
							inRangeValue = 20,
							minTargetPercent = true,
							name = "Party Range: <= 20y",
							partyTargetNumber = 100,
							partyTargetSubType = "Number",
							uuid = "0796f2c7-5782-7e71-8675-e259a5fdcac0",
							version = 3,
						},
					},
				},
				enabled = false,
				mechanicTime = 975.94101651753,
				name = "[SGE] Ixochole",
				timelineIndex = 176,
				timerEndOffset = 5,
				timerOffset = 0.5,
				timerStartOffset = -5,
				uuid = "1fc0e1b1-ab4d-8262-9b45-a7ad051beca5",
				version = 2,
			},
		},
	},
	[177] = 
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
									"26fe8bf0-8e58-6157-9b67-e8a64a6b191a",
									true,
								},
								
								{
									"0796f2c7-5782-7e71-8675-e259a5fdcac0",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_Healbar_EukrasianPrognosis",
							uuid = "9f150df4-47fb-823d-a797-346087437cd2",
							variableTogglesType = 3,
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
							jobValue = "SAGE",
							name = "Self: SGE",
							uuid = "26fe8bf0-8e58-6157-9b67-e8a64a6b191a",
							version = 3,
						},
						inheritedIndex = 1,
					},
					
					{
						data = 
						{
							category = "Party",
							comparator = 2,
							conditionType = 4,
							inRangeValue = 20,
							minTargetPercent = true,
							name = "Party Range: <= 20y",
							partyTargetNumber = 100,
							partyTargetSubType = "Number",
							uuid = "0796f2c7-5782-7e71-8675-e259a5fdcac0",
							version = 3,
						},
					},
					
					{
						data = 
						{
							buffID = 2609,
							category = "Self",
							name = "Self: Eukrasian Prognosis Buff",
							uuid = "da3adfd0-f610-1d4f-96fe-1e4260f44f34",
							version = 3,
						},
					},
				},
				enabled = false,
				mechanicTime = 978.67931016566,
				name = "[SGE] Eukrasian Prognosis",
				timelineIndex = 177,
				timerEndOffset = -1,
				timerStartOffset = -5,
				uuid = "6a899b85-2b9c-f05a-a743-e0f699ddbac7",
				version = 2,
			},
			inheritedIndex = 3,
		},
	},
	[178] = 
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
									"26fe8bf0-8e58-6157-9b67-e8a64a6b191a",
									true,
								},
								
								{
									"0796f2c7-5782-7e71-8675-e259a5fdcac0",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_Healbar_EukrasianPrognosis",
							uuid = "9f150df4-47fb-823d-a797-346087437cd2",
							variableTogglesType = 3,
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
							jobValue = "SAGE",
							name = "Self: SGE",
							uuid = "26fe8bf0-8e58-6157-9b67-e8a64a6b191a",
							version = 3,
						},
						inheritedIndex = 1,
					},
					
					{
						data = 
						{
							category = "Party",
							comparator = 2,
							conditionType = 4,
							inRangeValue = 20,
							minTargetPercent = true,
							name = "Party Range: <= 20y",
							partyTargetNumber = 100,
							partyTargetSubType = "Number",
							uuid = "0796f2c7-5782-7e71-8675-e259a5fdcac0",
							version = 3,
						},
					},
					
					{
						data = 
						{
							buffID = 2609,
							category = "Self",
							name = "Self: Eukrasian Prognosis Buff",
							uuid = "da3adfd0-f610-1d4f-96fe-1e4260f44f34",
							version = 3,
						},
					},
				},
				mechanicTime = 981.83831871021,
				name = "[SGE] Eukrasian Prognosis",
				timelineIndex = 178,
				timerEndOffset = -1,
				timerStartOffset = -5,
				uuid = "d35d1954-1540-3d9f-9059-c10fa5cbdab5",
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
									"26fe8bf0-8e58-6157-9b67-e8a64a6b191a",
									true,
								},
								
								{
									"0796f2c7-5782-7e71-8675-e259a5fdcac0",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_Healbar_Ixochole",
							uuid = "9f150df4-47fb-823d-a797-346087437cd2",
							variableTogglesType = 3,
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
							jobValue = "SAGE",
							name = "Self: SGE",
							uuid = "26fe8bf0-8e58-6157-9b67-e8a64a6b191a",
							version = 3,
						},
						inheritedIndex = 1,
					},
					
					{
						data = 
						{
							category = "Party",
							comparator = 2,
							conditionType = 4,
							inRangeValue = 20,
							minTargetPercent = true,
							name = "Party Range: <= 20y",
							partyTargetNumber = 100,
							partyTargetSubType = "Number",
							uuid = "0796f2c7-5782-7e71-8675-e259a5fdcac0",
							version = 3,
						},
					},
				},
				mechanicTime = 981.83831871021,
				name = "[SGE] Ixochole",
				timelineIndex = 178,
				timerEndOffset = 5,
				timerOffset = 0.5,
				timerStartOffset = -5,
				uuid = "c8922436-614b-4809-8d93-7da2129c2605",
				version = 2,
			},
		},
	},
	[179] = 
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
									"2aede583-6334-5e6e-8897-d0185d2e479e",
									true,
								},
								
								{
									"2655f02b-090f-3366-8e9d-81bd1daab933",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_Healbar_Holos",
							uuid = "a63d60d1-0099-4678-9951-0dde4026e2a7",
							variableTogglesType = 3,
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
							jobValue = "SAGE",
							name = "Self: SGE",
							uuid = "2aede583-6334-5e6e-8897-d0185d2e479e",
							version = 3,
						},
						inheritedIndex = 1,
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
							uuid = "2655f02b-090f-3366-8e9d-81bd1daab933",
							version = 3,
						},
					},
					
					{
						data = 
						{
							buffID = 3989,
							category = "Self",
							name = "Self Buff: Philosophia",
							uuid = "532e716a-6f15-5b39-ac9e-7f0dbf8a8937",
							version = 3,
						},
					},
				},
				mechanicTime = 984.98511146124,
				name = "[SGE] Holos",
				timeRange = true,
				timelineIndex = 179,
				timerEndOffset = -1,
				timerOffset = -19,
				timerStartOffset = -19.5,
				uuid = "4d672ffc-b89e-d53c-b74c-f1208ed999e3",
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
							aType = "ACR",
							conditions = 
							{
								
								{
									"6eed371c-276e-0dc6-bfef-64a1ef96e29f",
									true,
								},
								
								{
									"6e5cce1c-e91c-060c-b26b-d9c804cb7b6e",
									true,
								},
								
								{
									"62a2aa42-6726-20d6-a18e-6a4310f5ba80",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_Healbar_Kerachole",
							uuid = "1f6dfa69-9fa5-6422-bae0-e4c484120183",
							variableTogglesType = 3,
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
							jobValue = "SAGE",
							name = "Self: SGE",
							uuid = "6eed371c-276e-0dc6-bfef-64a1ef96e29f",
							version = 3,
						},
						inheritedIndex = 1,
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
							uuid = "6e5cce1c-e91c-060c-b26b-d9c804cb7b6e",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionCDValue = 1,
							actionID = 24298,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "Self: Kerachole CD <= 1s",
							uuid = "62a2aa42-6726-20d6-a18e-6a4310f5ba80",
							version = 3,
						},
					},
				},
				mechanicTime = 984.98511146124,
				name = "[SGE] Kerachole",
				timeRange = true,
				timelineIndex = 179,
				timerEndOffset = -1,
				timerStartOffset = -14.5,
				uuid = "56f8cfd1-ed15-7a6c-91ff-037844d4c996",
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
									"26fe8bf0-8e58-6157-9b67-e8a64a6b191a",
									true,
								},
								
								{
									"0796f2c7-5782-7e71-8675-e259a5fdcac0",
									true,
								},
								
								{
									"da3adfd0-f610-1d4f-96fe-1e4260f44f34",
									false,
								},
							},
							gVar = "ACR_RikuSGE3_Healbar_EukrasianPrognosis",
							uuid = "9f150df4-47fb-823d-a797-346087437cd2",
							variableTogglesType = 3,
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
							jobValue = "SAGE",
							name = "Self: SGE",
							uuid = "26fe8bf0-8e58-6157-9b67-e8a64a6b191a",
							version = 3,
						},
						inheritedIndex = 1,
					},
					
					{
						data = 
						{
							category = "Party",
							comparator = 2,
							conditionType = 4,
							inRangeValue = 20,
							minTargetPercent = true,
							name = "Party Range: <= 20y",
							partyTargetNumber = 100,
							partyTargetSubType = "Number",
							uuid = "0796f2c7-5782-7e71-8675-e259a5fdcac0",
							version = 3,
						},
					},
					
					{
						data = 
						{
							buffID = 2609,
							category = "Self",
							name = "Self: Eukrasian Prognosis Buff",
							uuid = "da3adfd0-f610-1d4f-96fe-1e4260f44f34",
							version = 3,
						},
					},
				},
				mechanicTime = 984.98511146124,
				name = "[SGE] Eukrasian Prognosis",
				timelineIndex = 179,
				timerEndOffset = -1,
				timerOffset = 3,
				timerStartOffset = -5,
				uuid = "4d1f2763-38d7-7338-a747-1a738d6fc565",
				version = 2,
			},
			inheritedIndex = 4,
		},
	},
	[180] = 
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
									"97442e7b-337f-e4e4-bb15-2c86958f0744",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_Hotbar_Sprint",
							uuid = "fbf5b4cf-3fa7-f798-a099-bcfaea881945",
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
							jobValue = "SAGE",
							name = "Self: SGE",
							uuid = "97442e7b-337f-e4e4-bb15-2c86958f0744",
							version = 3,
						},
						inheritedIndex = 1,
					},
				},
				mechanicTime = 990.28011146124,
				name = "[SGE] Sprint",
				timelineIndex = 180,
				uuid = "de1d08a8-3943-fd3a-aa45-1a28e0f91522",
				version = 2,
			},
			inheritedIndex = 6,
		},
	},
	[182] = 
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
									"26fe8bf0-8e58-6157-9b67-e8a64a6b191a",
									true,
								},
								
								{
									"0796f2c7-5782-7e71-8675-e259a5fdcac0",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_Healbar_EukrasianPrognosis",
							uuid = "9f150df4-47fb-823d-a797-346087437cd2",
							variableTogglesType = 3,
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
							jobValue = "SAGE",
							name = "Self: SGE",
							uuid = "26fe8bf0-8e58-6157-9b67-e8a64a6b191a",
							version = 3,
						},
						inheritedIndex = 1,
					},
					
					{
						data = 
						{
							category = "Party",
							comparator = 2,
							conditionType = 4,
							inRangeValue = 20,
							minTargetPercent = true,
							name = "Party Range: <= 20y",
							partyTargetNumber = 100,
							partyTargetSubType = "Number",
							uuid = "0796f2c7-5782-7e71-8675-e259a5fdcac0",
							version = 3,
						},
					},
					
					{
						data = 
						{
							buffID = 2609,
							category = "Self",
							name = "Self: Eukrasian Prognosis Buff",
							uuid = "da3adfd0-f610-1d4f-96fe-1e4260f44f34",
							version = 3,
						},
					},
				},
				enabled = false,
				mechanicTime = 992.38827172462,
				name = "[SGE] Eukrasian Prognosis",
				timelineIndex = 182,
				timerEndOffset = -1,
				timerStartOffset = -5,
				uuid = "606fc9e0-06c8-efcf-85fd-c4a36bcef5e4",
				version = 2,
			},
			inheritedIndex = 3,
		},
	},
	[183] = 
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
									"26fe8bf0-8e58-6157-9b67-e8a64a6b191a",
									true,
								},
								
								{
									"0796f2c7-5782-7e71-8675-e259a5fdcac0",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_Healbar_EukrasianPrognosis",
							uuid = "9f150df4-47fb-823d-a797-346087437cd2",
							variableTogglesType = 3,
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
							jobValue = "SAGE",
							name = "Self: SGE",
							uuid = "26fe8bf0-8e58-6157-9b67-e8a64a6b191a",
							version = 3,
						},
						inheritedIndex = 1,
					},
					
					{
						data = 
						{
							category = "Party",
							comparator = 2,
							conditionType = 4,
							inRangeValue = 20,
							minTargetPercent = true,
							name = "Party Range: <= 20y",
							partyTargetNumber = 100,
							partyTargetSubType = "Number",
							uuid = "0796f2c7-5782-7e71-8675-e259a5fdcac0",
							version = 3,
						},
					},
					
					{
						data = 
						{
							buffID = 2609,
							category = "Self",
							name = "Self: Eukrasian Prognosis Buff",
							uuid = "da3adfd0-f610-1d4f-96fe-1e4260f44f34",
							version = 3,
						},
					},
				},
				enabled = false,
				mechanicTime = 993.37047688603,
				name = "[SGE] Eukrasian Prognosis",
				timelineIndex = 183,
				timerEndOffset = -1,
				timerStartOffset = -5,
				uuid = "205a4cad-ec78-d5d1-ab8c-32acc4230eb2",
				version = 2,
			},
			inheritedIndex = 3,
		},
	},
	[185] = 
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
									"81ae31c5-9e92-6a56-ba07-ff21087cac48",
									true,
								},
								
								{
									"800486cc-705c-5caf-8fba-1dd95613f62d",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_Healbar_Panhaima",
							uuid = "3513de14-07f8-c935-80cb-36aa906944eb",
							variableTogglesType = 3,
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
							jobValue = "SAGE",
							name = "Self: SGE",
							uuid = "81ae31c5-9e92-6a56-ba07-ff21087cac48",
							version = 3,
						},
						inheritedIndex = 1,
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
							uuid = "800486cc-705c-5caf-8fba-1dd95613f62d",
							version = 3,
						},
					},
				},
				mechanicTime = 994.40031547983,
				name = "[SGE] Panhaima",
				timeRange = true,
				timelineIndex = 185,
				timerEndOffset = -1,
				timerStartOffset = -8,
				uuid = "9b4653fd-4af1-c755-9b7e-448254994df8",
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
							aType = "ACR",
							conditions = 
							{
								
								{
									"26fe8bf0-8e58-6157-9b67-e8a64a6b191a",
									true,
								},
								
								{
									"0796f2c7-5782-7e71-8675-e259a5fdcac0",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_Healbar_EukrasianPrognosis",
							uuid = "9f150df4-47fb-823d-a797-346087437cd2",
							variableTogglesType = 3,
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
							jobValue = "SAGE",
							name = "Self: SGE",
							uuid = "26fe8bf0-8e58-6157-9b67-e8a64a6b191a",
							version = 3,
						},
						inheritedIndex = 1,
					},
					
					{
						data = 
						{
							category = "Party",
							comparator = 2,
							conditionType = 4,
							inRangeValue = 20,
							minTargetPercent = true,
							name = "Party Range: <= 20y",
							partyTargetNumber = 100,
							partyTargetSubType = "Number",
							uuid = "0796f2c7-5782-7e71-8675-e259a5fdcac0",
							version = 3,
						},
					},
					
					{
						data = 
						{
							buffID = 2609,
							category = "Self",
							name = "Self: Eukrasian Prognosis Buff",
							uuid = "da3adfd0-f610-1d4f-96fe-1e4260f44f34",
							version = 3,
						},
					},
				},
				mechanicTime = 994.40031547983,
				name = "[SGE] Eukrasian Prognosis",
				timelineIndex = 185,
				timerEndOffset = -1,
				timerOffset = 2,
				timerStartOffset = -5,
				uuid = "f4f87e87-e848-2447-a3cc-21b62e2c3a89",
				version = 2,
			},
			inheritedIndex = 3,
		},
	},
	[186] = 
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
									"26fe8bf0-8e58-6157-9b67-e8a64a6b191a",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_Healbar_Krasis",
							targetSubType = "Furthest",
							targetType = "Main Tank",
							uuid = "9f150df4-47fb-823d-a797-346087437cd2",
							variableIsHover = true,
							variableTogglesType = 3,
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
							jobValue = "SAGE",
							name = "Self: SGE",
							uuid = "26fe8bf0-8e58-6157-9b67-e8a64a6b191a",
							version = 3,
						},
						inheritedIndex = 1,
					},
				},
				mechanicTime = 1003.3929625387,
				name = "[SGE] Krasis",
				timelineIndex = 186,
				timerEndOffset = -1,
				timerOffset = -2,
				timerStartOffset = -14.5,
				uuid = "b8b0a999-3d27-167c-8c2c-8c7b2e022915",
				version = 2,
			},
			inheritedIndex = 6,
		},
	},
	[187] = 
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
									"26fe8bf0-8e58-6157-9b67-e8a64a6b191a",
									true,
								},
								
								{
									"0796f2c7-5782-7e71-8675-e259a5fdcac0",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_Healbar_EukrasianPrognosis",
							uuid = "9f150df4-47fb-823d-a797-346087437cd2",
							variableTogglesType = 3,
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
							jobValue = "SAGE",
							name = "Self: SGE",
							uuid = "26fe8bf0-8e58-6157-9b67-e8a64a6b191a",
							version = 3,
						},
						inheritedIndex = 1,
					},
					
					{
						data = 
						{
							category = "Party",
							comparator = 2,
							conditionType = 4,
							inRangeValue = 20,
							minTargetPercent = true,
							name = "Party Range: <= 20y",
							partyTargetNumber = 100,
							partyTargetSubType = "Number",
							uuid = "0796f2c7-5782-7e71-8675-e259a5fdcac0",
							version = 3,
						},
					},
					
					{
						data = 
						{
							buffID = 2609,
							category = "Self",
							name = "Self: Eukrasian Prognosis Buff",
							uuid = "da3adfd0-f610-1d4f-96fe-1e4260f44f34",
							version = 3,
						},
					},
				},
				enabled = false,
				mechanicTime = 1004.2901808608,
				name = "[SGE] Eukrasian Prognosis",
				timelineIndex = 187,
				timerEndOffset = -1,
				timerOffset = 1,
				timerStartOffset = -5,
				uuid = "86bc3355-f275-9bfd-8b80-379cb6fc7b40",
				version = 2,
			},
			inheritedIndex = 3,
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
									"26fe8bf0-8e58-6157-9b67-e8a64a6b191a",
									true,
								},
								
								{
									"55f84a62-5551-adbd-9c0b-153bbcf95992",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_Healbar_EukrasianDiagnosis",
							targetSubType = "Furthest",
							targetType = "Detection Target",
							uuid = "9f150df4-47fb-823d-a797-346087437cd2",
							variableIsHover = true,
							variableTogglesType = 3,
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
							jobValue = "SAGE",
							name = "Self: SGE",
							uuid = "26fe8bf0-8e58-6157-9b67-e8a64a6b191a",
							version = 3,
						},
						inheritedIndex = 1,
					},
					
					{
						data = 
						{
							buffID = 5350,
							category = "Party",
							name = "DT: Surprise Flare",
							partyTargetType = "Detection Target",
							uuid = "548add61-901e-bd40-845d-b38b55d3a85f",
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
									"548add61-901e-bd40-845d-b38b55d3a85f",
									true,
								},
							},
							filterTargetType = "Tank",
							uuid = "55f84a62-5551-adbd-9c0b-153bbcf95992",
							version = 3,
						},
					},
				},
				mechanicTime = 1007.4434123588,
				name = "[SGE] Eukrasian Diagnosis",
				timelineIndex = 189,
				timerEndOffset = -1,
				timerStartOffset = -14.5,
				uuid = "d0b836db-9cd4-115a-88ff-b6f8d894b0d4",
				version = 2,
			},
			inheritedIndex = 1,
		},
	},
	[190] = 
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
									"26fe8bf0-8e58-6157-9b67-e8a64a6b191a",
									true,
								},
								
								{
									"55f84a62-5551-adbd-9c0b-153bbcf95992",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_Healbar_Taurochole",
							targetSubType = "Furthest",
							targetType = "Detection Target",
							uuid = "9f150df4-47fb-823d-a797-346087437cd2",
							variableIsHover = true,
							variableTogglesType = 3,
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
							jobValue = "SAGE",
							name = "Self: SGE",
							uuid = "26fe8bf0-8e58-6157-9b67-e8a64a6b191a",
							version = 3,
						},
						inheritedIndex = 1,
					},
					
					{
						data = 
						{
							buffID = 5350,
							category = "Party",
							name = "DT: Surprise Flare Buff",
							partyTargetType = "Detection Target",
							uuid = "548add61-901e-bd40-845d-b38b55d3a85f",
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
									"548add61-901e-bd40-845d-b38b55d3a85f",
									true,
								},
							},
							filterTargetType = "Tank",
							uuid = "55f84a62-5551-adbd-9c0b-153bbcf95992",
							version = 3,
						},
					},
				},
				mechanicTime = 1010.9409115474,
				name = "[SGE] Taurochole",
				timeRange = true,
				timelineIndex = 190,
				timerEndOffset = -1,
				timerOffset = -2,
				timerStartOffset = -14.5,
				uuid = "431f95a0-83f8-887a-9567-f4072bbbc524",
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
							aType = "ACR",
							conditions = 
							{
								
								{
									"26fe8bf0-8e58-6157-9b67-e8a64a6b191a",
									true,
								},
								
								{
									"0796f2c7-5782-7e71-8675-e259a5fdcac0",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_Healbar_EukrasianPrognosis",
							uuid = "9f150df4-47fb-823d-a797-346087437cd2",
							variableTogglesType = 3,
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
							jobValue = "SAGE",
							name = "Self: SGE",
							uuid = "26fe8bf0-8e58-6157-9b67-e8a64a6b191a",
							version = 3,
						},
						inheritedIndex = 1,
					},
					
					{
						data = 
						{
							category = "Party",
							comparator = 2,
							conditionType = 4,
							inRangeValue = 20,
							minTargetPercent = true,
							name = "Party Range: <= 20y",
							partyTargetNumber = 100,
							partyTargetSubType = "Number",
							uuid = "0796f2c7-5782-7e71-8675-e259a5fdcac0",
							version = 3,
						},
					},
					
					{
						data = 
						{
							buffID = 2609,
							category = "Self",
							name = "Self: Eukrasian Prognosis Buff",
							uuid = "da3adfd0-f610-1d4f-96fe-1e4260f44f34",
							version = 3,
						},
					},
				},
				mechanicTime = 1010.9409115474,
				name = "[SGE] Eukrasian Prognosis",
				timelineIndex = 190,
				timerEndOffset = -1,
				timerOffset = 1,
				timerStartOffset = -5,
				uuid = "605efbcb-ff66-52a8-91f3-e033e1b16fc2",
				version = 2,
			},
			inheritedIndex = 3,
		},
	},
	[191] = 
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
									"26fe8bf0-8e58-6157-9b67-e8a64a6b191a",
									true,
								},
								
								{
									"0796f2c7-5782-7e71-8675-e259a5fdcac0",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_Healbar_EukrasianPrognosis",
							uuid = "9f150df4-47fb-823d-a797-346087437cd2",
							variableTogglesType = 3,
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
							jobValue = "SAGE",
							name = "Self: SGE",
							uuid = "26fe8bf0-8e58-6157-9b67-e8a64a6b191a",
							version = 3,
						},
						inheritedIndex = 1,
					},
					
					{
						data = 
						{
							category = "Party",
							comparator = 2,
							conditionType = 4,
							inRangeValue = 20,
							minTargetPercent = true,
							name = "Party Range: <= 20y",
							partyTargetNumber = 100,
							partyTargetSubType = "Number",
							uuid = "0796f2c7-5782-7e71-8675-e259a5fdcac0",
							version = 3,
						},
					},
					
					{
						data = 
						{
							buffID = 2609,
							category = "Self",
							name = "Self: Eukrasian Prognosis Buff",
							uuid = "da3adfd0-f610-1d4f-96fe-1e4260f44f34",
							version = 3,
						},
					},
				},
				enabled = false,
				mechanicTime = 1015.5629742328,
				name = "[SGE] Eukrasian Prognosis",
				timelineIndex = 191,
				timerEndOffset = -1,
				timerStartOffset = -5,
				uuid = "4d557b92-abc6-1760-8e23-aaec0d96c46d",
				version = 2,
			},
			inheritedIndex = 3,
		},
	},
	[192] = 
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
									"6eed371c-276e-0dc6-bfef-64a1ef96e29f",
									true,
								},
								
								{
									"6e5cce1c-e91c-060c-b26b-d9c804cb7b6e",
									true,
								},
								
								{
									"62a2aa42-6726-20d6-a18e-6a4310f5ba80",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_Healbar_Kerachole",
							uuid = "1f6dfa69-9fa5-6422-bae0-e4c484120183",
							variableTogglesType = 3,
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
							jobValue = "SAGE",
							name = "Self: SGE",
							uuid = "6eed371c-276e-0dc6-bfef-64a1ef96e29f",
							version = 3,
						},
						inheritedIndex = 1,
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
							uuid = "6e5cce1c-e91c-060c-b26b-d9c804cb7b6e",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionCDValue = 1,
							actionID = 24298,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "Self: Kerachole CD <= 1s",
							uuid = "62a2aa42-6726-20d6-a18e-6a4310f5ba80",
							version = 3,
						},
					},
				},
				mechanicTime = 1018.6634086512,
				name = "[SGE] Kerachole",
				timeRange = true,
				timelineIndex = 192,
				timerEndOffset = -1,
				timerStartOffset = -14.5,
				uuid = "08593777-17f4-88cd-abab-e71eddca2bca",
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
							aType = "ACR",
							conditions = 
							{
								
								{
									"738f5cf2-ec60-616d-9a2c-f2dbd06647e8",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_Healbar_Kardia",
							targetSubType = "Topmost Partylist",
							targetType = "Main Tank",
							uuid = "c0a9c51e-79a0-c1be-b647-992fb1fced0e",
							variableIsHover = true,
							variableTogglesType = 3,
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							buffCheckType = 2,
							buffID = 2605,
							category = "Party",
							name = "Tank Buff: Kardion Missing",
							partyTargetSubType = "Topmost Partylist",
							partyTargetType = "Main Tank",
							uuid = "738f5cf2-ec60-616d-9a2c-f2dbd06647e8",
							version = 3,
						},
					},
				},
				mechanicTime = 1018.6634086512,
				name = "[SGE] Kardia",
				timelineIndex = 192,
				timerOffset = -1,
				uuid = "562ef60d-8c8d-a98a-9904-c4e596a8df61",
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
									"26fe8bf0-8e58-6157-9b67-e8a64a6b191a",
									true,
								},
								
								{
									"0796f2c7-5782-7e71-8675-e259a5fdcac0",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_Healbar_EukrasianPrognosis",
							uuid = "9f150df4-47fb-823d-a797-346087437cd2",
							variableTogglesType = 3,
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
							jobValue = "SAGE",
							name = "Self: SGE",
							uuid = "26fe8bf0-8e58-6157-9b67-e8a64a6b191a",
							version = 3,
						},
						inheritedIndex = 1,
					},
					
					{
						data = 
						{
							category = "Party",
							comparator = 2,
							conditionType = 4,
							inRangeValue = 20,
							minTargetPercent = true,
							name = "Party Range: <= 20y",
							partyTargetNumber = 100,
							partyTargetSubType = "Number",
							uuid = "0796f2c7-5782-7e71-8675-e259a5fdcac0",
							version = 3,
						},
					},
					
					{
						data = 
						{
							buffID = 2609,
							category = "Self",
							name = "Self: Eukrasian Prognosis Buff",
							uuid = "da3adfd0-f610-1d4f-96fe-1e4260f44f34",
							version = 3,
						},
					},
				},
				enabled = false,
				mechanicTime = 1018.6634086512,
				name = "[SGE] Eukrasian Prognosis",
				timelineIndex = 192,
				timerEndOffset = -1,
				timerOffset = 1,
				timerStartOffset = -5,
				uuid = "39889bdb-1892-29ab-8667-71b0c0af53ad",
				version = 2,
			},
			inheritedIndex = 4,
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
									"a7ff75cf-1c65-b308-9b67-891e93f1c4f5",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_Healbar_Soteria",
							uuid = "9f150df4-47fb-823d-a797-346087437cd2",
							variableTogglesType = 3,
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
							jobValue = "SAGE",
							name = "Self: SGE",
							uuid = "a7ff75cf-1c65-b308-9b67-891e93f1c4f5",
							version = 3,
						},
						inheritedIndex = 1,
					},
				},
				mechanicTime = 1018.6634086512,
				name = "[SGE] Soteria",
				timelineIndex = 192,
				timerEndOffset = 5,
				timerOffset = 1,
				timerStartOffset = -5,
				uuid = "7933df7f-dbac-36ec-ace1-3e038f65787b",
				version = 2,
			},
			inheritedIndex = 14,
		},
	},
	[193] = 
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
									"26fe8bf0-8e58-6157-9b67-e8a64a6b191a",
									true,
								},
								
								{
									"0796f2c7-5782-7e71-8675-e259a5fdcac0",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_Healbar_EukrasianPrognosis",
							uuid = "9f150df4-47fb-823d-a797-346087437cd2",
							variableTogglesType = 3,
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
							jobValue = "SAGE",
							name = "Self: SGE",
							uuid = "26fe8bf0-8e58-6157-9b67-e8a64a6b191a",
							version = 3,
						},
						inheritedIndex = 1,
					},
					
					{
						data = 
						{
							category = "Party",
							comparator = 2,
							conditionType = 4,
							inRangeValue = 20,
							minTargetPercent = true,
							name = "Party Range: <= 20y",
							partyTargetNumber = 100,
							partyTargetSubType = "Number",
							uuid = "0796f2c7-5782-7e71-8675-e259a5fdcac0",
							version = 3,
						},
					},
					
					{
						data = 
						{
							buffID = 2609,
							category = "Self",
							name = "Self: Eukrasian Prognosis Buff",
							uuid = "da3adfd0-f610-1d4f-96fe-1e4260f44f34",
							version = 3,
						},
					},
				},
				mechanicTime = 1025.1000086512,
				name = "[SGE] Eukrasian Prognosis",
				timelineIndex = 193,
				timerEndOffset = -1,
				timerOffset = 3,
				timerStartOffset = -5,
				uuid = "464495b3-81a3-b968-bb68-6225324de617",
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
							aType = "ACR",
							conditions = 
							{
								
								{
									"299bb84c-9fa3-6837-9e30-b8c05eae3959",
									true,
								},
								
								{
									"db9e281c-6f91-3db5-8d6c-487c8eb46530",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_Healbar_Physis",
							uuid = "9f150df4-47fb-823d-a797-346087437cd2",
							variableTogglesType = 3,
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
							jobValue = "SAGE",
							name = "Self: SGE",
							uuid = "299bb84c-9fa3-6837-9e30-b8c05eae3959",
							version = 3,
						},
						inheritedIndex = 1,
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
							uuid = "db9e281c-6f91-3db5-8d6c-487c8eb46530",
							version = 3,
						},
					},
				},
				mechanicTime = 1025.1000086512,
				name = "[SGE] Physis",
				timelineIndex = 193,
				timerEndOffset = 5,
				timerOffset = 1,
				timerStartOffset = -5,
				uuid = "1c3c4fb7-5e35-4074-b037-54e7a174acc9",
				version = 2,
			},
		},
	},
	[196] = 
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
									"26fe8bf0-8e58-6157-9b67-e8a64a6b191a",
									true,
								},
								
								{
									"0796f2c7-5782-7e71-8675-e259a5fdcac0",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_Healbar_EukrasianPrognosis",
							uuid = "9f150df4-47fb-823d-a797-346087437cd2",
							variableTogglesType = 3,
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
							jobValue = "SAGE",
							name = "Self: SGE",
							uuid = "26fe8bf0-8e58-6157-9b67-e8a64a6b191a",
							version = 3,
						},
						inheritedIndex = 1,
					},
					
					{
						data = 
						{
							category = "Party",
							comparator = 2,
							conditionType = 4,
							inRangeValue = 20,
							minTargetPercent = true,
							name = "Party Range: <= 20y",
							partyTargetNumber = 100,
							partyTargetSubType = "Number",
							uuid = "0796f2c7-5782-7e71-8675-e259a5fdcac0",
							version = 3,
						},
					},
					
					{
						data = 
						{
							buffID = 2609,
							category = "Self",
							name = "Self: Eukrasian Prognosis Buff",
							uuid = "da3adfd0-f610-1d4f-96fe-1e4260f44f34",
							version = 3,
						},
					},
				},
				mechanicTime = 1035.2790680116,
				name = "[SGE] Eukrasian Prognosis",
				timelineIndex = 196,
				timerEndOffset = -1,
				timerOffset = 1,
				timerStartOffset = -5,
				uuid = "1913cf0e-9307-eeb1-8d86-398fcbce27f5",
				version = 2,
			},
			inheritedIndex = 3,
		},
	},
	[198] = 
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
									"26fe8bf0-8e58-6157-9b67-e8a64a6b191a",
									true,
								},
								
								{
									"0796f2c7-5782-7e71-8675-e259a5fdcac0",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_Healbar_EukrasianPrognosis",
							uuid = "9f150df4-47fb-823d-a797-346087437cd2",
							variableTogglesType = 3,
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
							jobValue = "SAGE",
							name = "Self: SGE",
							uuid = "26fe8bf0-8e58-6157-9b67-e8a64a6b191a",
							version = 3,
						},
						inheritedIndex = 1,
					},
					
					{
						data = 
						{
							category = "Party",
							comparator = 2,
							conditionType = 4,
							inRangeValue = 20,
							minTargetPercent = true,
							name = "Party Range: <= 20y",
							partyTargetNumber = 100,
							partyTargetSubType = "Number",
							uuid = "0796f2c7-5782-7e71-8675-e259a5fdcac0",
							version = 3,
						},
					},
					
					{
						data = 
						{
							buffID = 2609,
							category = "Self",
							name = "Self: Eukrasian Prognosis Buff",
							uuid = "da3adfd0-f610-1d4f-96fe-1e4260f44f34",
							version = 3,
						},
					},
				},
				mechanicTime = 1041.2310024427,
				name = "[SGE] Eukrasian Prognosis",
				timelineIndex = 198,
				timerEndOffset = -1,
				timerOffset = 1,
				timerStartOffset = -5,
				uuid = "14119385-aa27-94fb-94b4-efcd5ca32fe3",
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
									"ace000e6-5541-6a8d-b064-b432e620d43a",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_Healbar_Pneuma",
							uuid = "9f150df4-47fb-823d-a797-346087437cd2",
							variableTogglesType = 3,
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
							jobValue = "SAGE",
							name = "Self: SGE",
							uuid = "ace000e6-5541-6a8d-b064-b432e620d43a",
							version = 3,
						},
						inheritedIndex = 1,
					},
				},
				mechanicTime = 1041.2310024427,
				name = "[SGE] Pneuma",
				timelineIndex = 198,
				timerEndOffset = 5,
				timerOffset = -0.5,
				timerStartOffset = -5,
				uuid = "ad8e97ad-02a1-3f5b-8d7d-f2b8a88a1444",
				version = 2,
			},
		},
	},
	[202] = 
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
									"26fe8bf0-8e58-6157-9b67-e8a64a6b191a",
									true,
								},
								
								{
									"0796f2c7-5782-7e71-8675-e259a5fdcac0",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_Healbar_EukrasianPrognosis",
							uuid = "9f150df4-47fb-823d-a797-346087437cd2",
							variableTogglesType = 3,
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
							jobValue = "SAGE",
							name = "Self: SGE",
							uuid = "26fe8bf0-8e58-6157-9b67-e8a64a6b191a",
							version = 3,
						},
						inheritedIndex = 1,
					},
					
					{
						data = 
						{
							category = "Party",
							comparator = 2,
							conditionType = 4,
							inRangeValue = 20,
							minTargetPercent = true,
							name = "Party Range: <= 20y",
							partyTargetNumber = 100,
							partyTargetSubType = "Number",
							uuid = "0796f2c7-5782-7e71-8675-e259a5fdcac0",
							version = 3,
						},
					},
					
					{
						data = 
						{
							buffID = 2609,
							category = "Self",
							name = "Self: Eukrasian Prognosis Buff",
							uuid = "da3adfd0-f610-1d4f-96fe-1e4260f44f34",
							version = 3,
						},
					},
				},
				mechanicTime = 1047.2843757912,
				name = "[SGE] Eukrasian Prognosis",
				timelineIndex = 202,
				timerEndOffset = -1,
				timerOffset = 1,
				timerStartOffset = -5,
				uuid = "bafa87fe-c182-7bae-aa22-f8200d91e413",
				version = 2,
			},
			inheritedIndex = 3,
		},
	},
	[204] = 
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
									"26fe8bf0-8e58-6157-9b67-e8a64a6b191a",
									true,
								},
								
								{
									"0796f2c7-5782-7e71-8675-e259a5fdcac0",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_Healbar_EukrasianPrognosis",
							uuid = "9f150df4-47fb-823d-a797-346087437cd2",
							variableTogglesType = 3,
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
							jobValue = "SAGE",
							name = "Self: SGE",
							uuid = "26fe8bf0-8e58-6157-9b67-e8a64a6b191a",
							version = 3,
						},
						inheritedIndex = 1,
					},
					
					{
						data = 
						{
							category = "Party",
							comparator = 2,
							conditionType = 4,
							inRangeValue = 20,
							minTargetPercent = true,
							name = "Party Range: <= 20y",
							partyTargetNumber = 100,
							partyTargetSubType = "Number",
							uuid = "0796f2c7-5782-7e71-8675-e259a5fdcac0",
							version = 3,
						},
					},
					
					{
						data = 
						{
							buffID = 2609,
							category = "Self",
							name = "Self: Eukrasian Prognosis Buff",
							uuid = "da3adfd0-f610-1d4f-96fe-1e4260f44f34",
							version = 3,
						},
					},
				},
				mechanicTime = 1055.6337560913,
				name = "[SGE] Eukrasian Prognosis",
				timelineIndex = 204,
				timerEndOffset = -1,
				timerStartOffset = -5,
				uuid = "d3a9946f-821a-eb2a-8ee1-1868c4c8051d",
				version = 2,
			},
			inheritedIndex = 3,
		},
	},
	[205] = 
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
									"26fe8bf0-8e58-6157-9b67-e8a64a6b191a",
									true,
								},
								
								{
									"0796f2c7-5782-7e71-8675-e259a5fdcac0",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_Healbar_EukrasianPrognosis",
							uuid = "9f150df4-47fb-823d-a797-346087437cd2",
							variableTogglesType = 3,
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
							jobValue = "SAGE",
							name = "Self: SGE",
							uuid = "26fe8bf0-8e58-6157-9b67-e8a64a6b191a",
							version = 3,
						},
						inheritedIndex = 1,
					},
					
					{
						data = 
						{
							category = "Party",
							comparator = 2,
							conditionType = 4,
							inRangeValue = 20,
							minTargetPercent = true,
							name = "Party Range: <= 20y",
							partyTargetNumber = 100,
							partyTargetSubType = "Number",
							uuid = "0796f2c7-5782-7e71-8675-e259a5fdcac0",
							version = 3,
						},
					},
					
					{
						data = 
						{
							buffID = 2609,
							category = "Self",
							name = "Self: Eukrasian Prognosis Buff",
							uuid = "da3adfd0-f610-1d4f-96fe-1e4260f44f34",
							version = 3,
						},
					},
				},
				enabled = false,
				mechanicTime = 1056.3572945528,
				name = "[SGE] Eukrasian Prognosis",
				timelineIndex = 205,
				timerEndOffset = -1,
				timerStartOffset = -5,
				uuid = "54e883d3-ba8a-e5de-9982-85b2cd50c85c",
				version = 2,
			},
			inheritedIndex = 3,
		},
	},
	[206] = 
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
									"26fe8bf0-8e58-6157-9b67-e8a64a6b191a",
									true,
								},
								
								{
									"0796f2c7-5782-7e71-8675-e259a5fdcac0",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_Healbar_EukrasianPrognosis",
							uuid = "9f150df4-47fb-823d-a797-346087437cd2",
							variableTogglesType = 3,
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
							jobValue = "SAGE",
							name = "Self: SGE",
							uuid = "26fe8bf0-8e58-6157-9b67-e8a64a6b191a",
							version = 3,
						},
						inheritedIndex = 1,
					},
					
					{
						data = 
						{
							category = "Party",
							comparator = 2,
							conditionType = 4,
							inRangeValue = 20,
							minTargetPercent = true,
							name = "Party Range: <= 20y",
							partyTargetNumber = 100,
							partyTargetSubType = "Number",
							uuid = "0796f2c7-5782-7e71-8675-e259a5fdcac0",
							version = 3,
						},
					},
					
					{
						data = 
						{
							buffID = 2609,
							category = "Self",
							name = "Self: Eukrasian Prognosis Buff",
							uuid = "da3adfd0-f610-1d4f-96fe-1e4260f44f34",
							version = 3,
						},
					},
				},
				enabled = false,
				mechanicTime = 1057.0280637836,
				name = "[SGE] Eukrasian Prognosis",
				timelineIndex = 206,
				timerEndOffset = -1,
				timerStartOffset = -5,
				uuid = "5ad4bece-0c54-9be2-bde0-eeec96d1fd3c",
				version = 2,
			},
			inheritedIndex = 3,
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
									"26fe8bf0-8e58-6157-9b67-e8a64a6b191a",
									true,
								},
								
								{
									"0796f2c7-5782-7e71-8675-e259a5fdcac0",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_Healbar_EukrasianPrognosis",
							uuid = "9f150df4-47fb-823d-a797-346087437cd2",
							variableTogglesType = 3,
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
							jobValue = "SAGE",
							name = "Self: SGE",
							uuid = "26fe8bf0-8e58-6157-9b67-e8a64a6b191a",
							version = 3,
						},
						inheritedIndex = 1,
					},
					
					{
						data = 
						{
							category = "Party",
							comparator = 2,
							conditionType = 4,
							inRangeValue = 20,
							minTargetPercent = true,
							name = "Party Range: <= 20y",
							partyTargetNumber = 100,
							partyTargetSubType = "Number",
							uuid = "0796f2c7-5782-7e71-8675-e259a5fdcac0",
							version = 3,
						},
					},
					
					{
						data = 
						{
							buffID = 2609,
							category = "Self",
							name = "Self: Eukrasian Prognosis Buff",
							uuid = "da3adfd0-f610-1d4f-96fe-1e4260f44f34",
							version = 3,
						},
					},
				},
				mechanicTime = 1057.7456791682,
				name = "[SGE] Eukrasian Prognosis",
				timelineIndex = 207,
				timerEndOffset = -1,
				timerStartOffset = -5,
				uuid = "9d14831c-6bd4-419a-8a33-e250e2938936",
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
									"26fe8bf0-8e58-6157-9b67-e8a64a6b191a",
									true,
								},
								
								{
									"0796f2c7-5782-7e71-8675-e259a5fdcac0",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_Healbar_Ixochole",
							uuid = "9f150df4-47fb-823d-a797-346087437cd2",
							variableTogglesType = 3,
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
							jobValue = "SAGE",
							name = "Self: SGE",
							uuid = "26fe8bf0-8e58-6157-9b67-e8a64a6b191a",
							version = 3,
						},
						inheritedIndex = 1,
					},
					
					{
						data = 
						{
							category = "Party",
							comparator = 2,
							conditionType = 4,
							inRangeValue = 20,
							minTargetPercent = true,
							name = "Party Range: <= 20y",
							partyTargetNumber = 100,
							partyTargetSubType = "Number",
							uuid = "0796f2c7-5782-7e71-8675-e259a5fdcac0",
							version = 3,
						},
					},
				},
				mechanicTime = 1057.7456791682,
				name = "[SGE] Ixochole",
				timelineIndex = 207,
				timerEndOffset = 5,
				timerOffset = 0.5,
				timerStartOffset = -5,
				uuid = "dc7342fe-1f7b-abba-b5bb-86554bf8670f",
				version = 2,
			},
		},
	},
	[208] = 
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
									"26fe8bf0-8e58-6157-9b67-e8a64a6b191a",
									true,
								},
								
								{
									"0796f2c7-5782-7e71-8675-e259a5fdcac0",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_Healbar_EukrasianPrognosis",
							uuid = "9f150df4-47fb-823d-a797-346087437cd2",
							variableTogglesType = 3,
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
							jobValue = "SAGE",
							name = "Self: SGE",
							uuid = "26fe8bf0-8e58-6157-9b67-e8a64a6b191a",
							version = 3,
						},
						inheritedIndex = 1,
					},
					
					{
						data = 
						{
							category = "Party",
							comparator = 2,
							conditionType = 4,
							inRangeValue = 20,
							minTargetPercent = true,
							name = "Party Range: <= 20y",
							partyTargetNumber = 100,
							partyTargetSubType = "Number",
							uuid = "0796f2c7-5782-7e71-8675-e259a5fdcac0",
							version = 3,
						},
					},
					
					{
						data = 
						{
							buffID = 2609,
							category = "Self",
							name = "Self: Eukrasian Prognosis Buff",
							uuid = "da3adfd0-f610-1d4f-96fe-1e4260f44f34",
							version = 3,
						},
					},
				},
				enabled = false,
				mechanicTime = 1060.5180184963,
				name = "[SGE] Eukrasian Prognosis",
				timelineIndex = 208,
				timerEndOffset = -1,
				timerStartOffset = -5,
				uuid = "1d88059e-57da-89a5-a4e1-b11f74a010d9",
				version = 2,
			},
			inheritedIndex = 3,
		},
	},
	[209] = 
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
									"6eed371c-276e-0dc6-bfef-64a1ef96e29f",
									true,
								},
								
								{
									"6e5cce1c-e91c-060c-b26b-d9c804cb7b6e",
									true,
								},
								
								{
									"62a2aa42-6726-20d6-a18e-6a4310f5ba80",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_Healbar_Kerachole",
							uuid = "1f6dfa69-9fa5-6422-bae0-e4c484120183",
							variableTogglesType = 3,
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
							jobValue = "SAGE",
							name = "Self: SGE",
							uuid = "6eed371c-276e-0dc6-bfef-64a1ef96e29f",
							version = 3,
						},
						inheritedIndex = 1,
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
							uuid = "6e5cce1c-e91c-060c-b26b-d9c804cb7b6e",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionCDValue = 1,
							actionID = 24298,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "Self: Kerachole CD <= 1s",
							uuid = "62a2aa42-6726-20d6-a18e-6a4310f5ba80",
							version = 3,
						},
					},
				},
				mechanicTime = 1063.6903949829,
				name = "[SGE] Kerachole",
				timeRange = true,
				timelineIndex = 209,
				timerEndOffset = -1,
				timerStartOffset = -14.5,
				uuid = "45a3e3c1-ab46-6984-8ced-fe425ad553c1",
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
							aType = "ACR",
							conditions = 
							{
								
								{
									"26fe8bf0-8e58-6157-9b67-e8a64a6b191a",
									true,
								},
								
								{
									"0796f2c7-5782-7e71-8675-e259a5fdcac0",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_Healbar_EukrasianPrognosis",
							uuid = "9f150df4-47fb-823d-a797-346087437cd2",
							variableTogglesType = 3,
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
							jobValue = "SAGE",
							name = "Self: SGE",
							uuid = "26fe8bf0-8e58-6157-9b67-e8a64a6b191a",
							version = 3,
						},
						inheritedIndex = 1,
					},
					
					{
						data = 
						{
							category = "Party",
							comparator = 2,
							conditionType = 4,
							inRangeValue = 20,
							minTargetPercent = true,
							name = "Party Range: <= 20y",
							partyTargetNumber = 100,
							partyTargetSubType = "Number",
							uuid = "0796f2c7-5782-7e71-8675-e259a5fdcac0",
							version = 3,
						},
					},
					
					{
						data = 
						{
							buffID = 2609,
							category = "Self",
							name = "Self: Eukrasian Prognosis Buff",
							uuid = "da3adfd0-f610-1d4f-96fe-1e4260f44f34",
							version = 3,
						},
					},
				},
				mechanicTime = 1063.6903949829,
				name = "[SGE] Eukrasian Prognosis",
				timelineIndex = 209,
				timerEndOffset = -1,
				timerOffset = 1,
				timerStartOffset = -5,
				uuid = "42e3d2c3-72bd-e29a-a98d-1337e7168453",
				version = 2,
			},
			inheritedIndex = 7,
		},
	},
	[210] = 
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
									"26fe8bf0-8e58-6157-9b67-e8a64a6b191a",
									true,
								},
								
								{
									"0796f2c7-5782-7e71-8675-e259a5fdcac0",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_Healbar_EukrasianPrognosis",
							uuid = "9f150df4-47fb-823d-a797-346087437cd2",
							variableTogglesType = 3,
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
							jobValue = "SAGE",
							name = "Self: SGE",
							uuid = "26fe8bf0-8e58-6157-9b67-e8a64a6b191a",
							version = 3,
						},
						inheritedIndex = 1,
					},
					
					{
						data = 
						{
							category = "Party",
							comparator = 2,
							conditionType = 4,
							inRangeValue = 20,
							minTargetPercent = true,
							name = "Party Range: <= 20y",
							partyTargetNumber = 100,
							partyTargetSubType = "Number",
							uuid = "0796f2c7-5782-7e71-8675-e259a5fdcac0",
							version = 3,
						},
					},
					
					{
						data = 
						{
							buffID = 2609,
							category = "Self",
							name = "Self: Eukrasian Prognosis Buff",
							uuid = "da3adfd0-f610-1d4f-96fe-1e4260f44f34",
							version = 3,
						},
					},
				},
				mechanicTime = 1095.4450949829,
				name = "[SGE] Eukrasian Prognosis",
				timelineIndex = 210,
				timerEndOffset = -1,
				timerOffset = -7,
				timerStartOffset = -5,
				uuid = "d652c341-5844-1eb9-b5e0-fd93049a3155",
				version = 2,
			},
			inheritedIndex = 6,
		},
	},
	[212] = 
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
									"26fe8bf0-8e58-6157-9b67-e8a64a6b191a",
									true,
								},
								
								{
									"0796f2c7-5782-7e71-8675-e259a5fdcac0",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_Healbar_EukrasianPrognosis",
							uuid = "9f150df4-47fb-823d-a797-346087437cd2",
							variableTogglesType = 3,
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
							jobValue = "SAGE",
							name = "Self: SGE",
							uuid = "26fe8bf0-8e58-6157-9b67-e8a64a6b191a",
							version = 3,
						},
						inheritedIndex = 1,
					},
					
					{
						data = 
						{
							category = "Party",
							comparator = 2,
							conditionType = 4,
							inRangeValue = 20,
							minTargetPercent = true,
							name = "Party Range: <= 20y",
							partyTargetNumber = 100,
							partyTargetSubType = "Number",
							uuid = "0796f2c7-5782-7e71-8675-e259a5fdcac0",
							version = 3,
						},
					},
					
					{
						data = 
						{
							buffID = 2609,
							category = "Self",
							name = "Self: Eukrasian Prognosis Buff",
							uuid = "da3adfd0-f610-1d4f-96fe-1e4260f44f34",
							version = 3,
						},
					},
				},
				mechanicTime = 1096.9713108088,
				name = "[SGE] Eukrasian Prognosis",
				timelineIndex = 212,
				timerEndOffset = -1,
				timerStartOffset = -5,
				uuid = "69aa61c1-cb50-ec66-a62e-7726eafb99a0",
				version = 2,
			},
			inheritedIndex = 3,
		},
	},
	[213] = 
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
									"26fe8bf0-8e58-6157-9b67-e8a64a6b191a",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_Healbar_Krasis",
							targetSubType = "Furthest",
							targetType = "Main Tank",
							uuid = "9f150df4-47fb-823d-a797-346087437cd2",
							variableIsHover = true,
							variableTogglesType = 3,
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
							jobValue = "SAGE",
							name = "Self: SGE",
							uuid = "26fe8bf0-8e58-6157-9b67-e8a64a6b191a",
							version = 3,
						},
						inheritedIndex = 1,
					},
				},
				mechanicTime = 1098.6121441421,
				name = "[SGE] Krasis",
				timelineIndex = 213,
				timerEndOffset = -1,
				timerOffset = -4,
				timerStartOffset = -14.5,
				uuid = "3cc5ec65-9472-0e10-a47b-8a41bf2b7c70",
				version = 2,
			},
			inheritedIndex = 6,
		},
	},
	[214] = 
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
									"6eed371c-276e-0dc6-bfef-64a1ef96e29f",
									true,
								},
								
								{
									"6e5cce1c-e91c-060c-b26b-d9c804cb7b6e",
									true,
								},
								
								{
									"62a2aa42-6726-20d6-a18e-6a4310f5ba80",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_Healbar_Kerachole",
							uuid = "1f6dfa69-9fa5-6422-bae0-e4c484120183",
							variableTogglesType = 3,
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
							jobValue = "SAGE",
							name = "Self: SGE",
							uuid = "6eed371c-276e-0dc6-bfef-64a1ef96e29f",
							version = 3,
						},
						inheritedIndex = 1,
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
							uuid = "6e5cce1c-e91c-060c-b26b-d9c804cb7b6e",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionCDValue = 1,
							actionID = 24298,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "Self: Kerachole CD <= 1s",
							uuid = "62a2aa42-6726-20d6-a18e-6a4310f5ba80",
							version = 3,
						},
					},
				},
				mechanicTime = 1099.544362845,
				name = "[SGE] Kerachole",
				timeRange = true,
				timelineIndex = 214,
				timerEndOffset = -1,
				timerStartOffset = -14.5,
				uuid = "1ad722ec-cee5-3663-977b-d61f0452f497",
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
							aType = "ACR",
							conditions = 
							{
								
								{
									"26fe8bf0-8e58-6157-9b67-e8a64a6b191a",
									true,
								},
								
								{
									"55f84a62-5551-adbd-9c0b-153bbcf95992",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_Healbar_EukrasianDiagnosis",
							targetSubType = "Furthest",
							targetType = "Detection Target",
							uuid = "9f150df4-47fb-823d-a797-346087437cd2",
							variableIsHover = true,
							variableTogglesType = 3,
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
							jobValue = "SAGE",
							name = "Self: SGE",
							uuid = "26fe8bf0-8e58-6157-9b67-e8a64a6b191a",
							version = 3,
						},
						inheritedIndex = 1,
					},
					
					{
						data = 
						{
							buffID = 5350,
							category = "Party",
							name = "DT: Surprise Flare",
							partyTargetType = "Detection Target",
							uuid = "548add61-901e-bd40-845d-b38b55d3a85f",
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
									"548add61-901e-bd40-845d-b38b55d3a85f",
									true,
								},
							},
							filterTargetType = "Tank",
							uuid = "55f84a62-5551-adbd-9c0b-153bbcf95992",
							version = 3,
						},
					},
				},
				enabled = false,
				mechanicTime = 1099.544362845,
				name = "[SGE] Eukrasian Diagnosis",
				timelineIndex = 214,
				timerEndOffset = -1,
				timerStartOffset = -14.5,
				uuid = "177200c5-8c1b-04a4-a6ff-b7dca62067b9",
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
									"26fe8bf0-8e58-6157-9b67-e8a64a6b191a",
									true,
								},
								
								{
									"0796f2c7-5782-7e71-8675-e259a5fdcac0",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_Healbar_EukrasianPrognosis",
							uuid = "9f150df4-47fb-823d-a797-346087437cd2",
							variableTogglesType = 3,
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
							jobValue = "SAGE",
							name = "Self: SGE",
							uuid = "26fe8bf0-8e58-6157-9b67-e8a64a6b191a",
							version = 3,
						},
						inheritedIndex = 1,
					},
					
					{
						data = 
						{
							category = "Party",
							comparator = 2,
							conditionType = 4,
							inRangeValue = 20,
							minTargetPercent = true,
							name = "Party Range: <= 20y",
							partyTargetNumber = 100,
							partyTargetSubType = "Number",
							uuid = "0796f2c7-5782-7e71-8675-e259a5fdcac0",
							version = 3,
						},
					},
					
					{
						data = 
						{
							buffID = 2609,
							category = "Self",
							name = "Self: Eukrasian Prognosis Buff",
							uuid = "da3adfd0-f610-1d4f-96fe-1e4260f44f34",
							version = 3,
						},
					},
				},
				enabled = false,
				mechanicTime = 1099.544362845,
				name = "[SGE] Eukrasian Prognosis",
				timelineIndex = 214,
				timerEndOffset = -1,
				timerStartOffset = -5,
				uuid = "a09db649-9d1e-a63b-ba57-8773b33d144b",
				version = 2,
			},
			inheritedIndex = 4,
		},
	},
	[215] = 
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
									"26fe8bf0-8e58-6157-9b67-e8a64a6b191a",
									true,
								},
								
								{
									"55f84a62-5551-adbd-9c0b-153bbcf95992",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_Healbar_Taurochole",
							targetSubType = "Furthest",
							targetType = "Detection Target",
							uuid = "9f150df4-47fb-823d-a797-346087437cd2",
							variableIsHover = true,
							variableTogglesType = 3,
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
							jobValue = "SAGE",
							name = "Self: SGE",
							uuid = "26fe8bf0-8e58-6157-9b67-e8a64a6b191a",
							version = 3,
						},
						inheritedIndex = 1,
					},
					
					{
						data = 
						{
							buffID = 5350,
							category = "Party",
							name = "DT: Surprise Flare",
							partyTargetType = "Detection Target",
							uuid = "548add61-901e-bd40-845d-b38b55d3a85f",
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
									"548add61-901e-bd40-845d-b38b55d3a85f",
									true,
								},
							},
							filterTargetType = "Tank",
							uuid = "55f84a62-5551-adbd-9c0b-153bbcf95992",
							version = 3,
						},
					},
				},
				mechanicTime = 1103.0753057021,
				name = "[SGE] Taurochole",
				timeRange = true,
				timelineIndex = 215,
				timerEndOffset = -1,
				timerOffset = -2,
				timerStartOffset = -14.5,
				uuid = "b28e9b36-9328-1283-8667-a8d8e14798bc",
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
									"738f5cf2-ec60-616d-9a2c-f2dbd06647e8",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_Healbar_Kardia",
							targetSubType = "Topmost Partylist",
							targetType = "Main Tank",
							uuid = "c0a9c51e-79a0-c1be-b647-992fb1fced0e",
							variableIsHover = true,
							variableTogglesType = 3,
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							buffCheckType = 2,
							buffID = 2605,
							category = "Party",
							name = "Tank Buff: Kardion Missing",
							partyTargetSubType = "Topmost Partylist",
							partyTargetType = "Main Tank",
							uuid = "738f5cf2-ec60-616d-9a2c-f2dbd06647e8",
							version = 3,
						},
					},
				},
				mechanicTime = 1103.0753057021,
				name = "[SGE] Kardia",
				timelineIndex = 215,
				timerOffset = 2,
				uuid = "743082d0-2da4-37f3-b160-fd881e003401",
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
									"26fe8bf0-8e58-6157-9b67-e8a64a6b191a",
									true,
								},
								
								{
									"0796f2c7-5782-7e71-8675-e259a5fdcac0",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_Healbar_EukrasianPrognosis",
							uuid = "9f150df4-47fb-823d-a797-346087437cd2",
							variableTogglesType = 3,
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
							jobValue = "SAGE",
							name = "Self: SGE",
							uuid = "26fe8bf0-8e58-6157-9b67-e8a64a6b191a",
							version = 3,
						},
						inheritedIndex = 1,
					},
					
					{
						data = 
						{
							category = "Party",
							comparator = 2,
							conditionType = 4,
							inRangeValue = 20,
							minTargetPercent = true,
							name = "Party Range: <= 20y",
							partyTargetNumber = 100,
							partyTargetSubType = "Number",
							uuid = "0796f2c7-5782-7e71-8675-e259a5fdcac0",
							version = 3,
						},
					},
					
					{
						data = 
						{
							buffID = 2609,
							category = "Self",
							name = "Self: Eukrasian Prognosis Buff",
							uuid = "da3adfd0-f610-1d4f-96fe-1e4260f44f34",
							version = 3,
						},
					},
				},
				mechanicTime = 1103.0753057021,
				name = "[SGE] Eukrasian Prognosis",
				timelineIndex = 215,
				timerEndOffset = -1,
				timerOffset = 1,
				timerStartOffset = -5,
				uuid = "1bfc7326-0f32-f90d-a8d3-cdf8a08c2bb5",
				version = 2,
			},
			inheritedIndex = 3,
		},
	},
	[216] = 
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
									"26fe8bf0-8e58-6157-9b67-e8a64a6b191a",
									true,
								},
								
								{
									"0796f2c7-5782-7e71-8675-e259a5fdcac0",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_Healbar_EukrasianPrognosis",
							uuid = "9f150df4-47fb-823d-a797-346087437cd2",
							variableTogglesType = 3,
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
							jobValue = "SAGE",
							name = "Self: SGE",
							uuid = "26fe8bf0-8e58-6157-9b67-e8a64a6b191a",
							version = 3,
						},
						inheritedIndex = 1,
					},
					
					{
						data = 
						{
							category = "Party",
							comparator = 2,
							conditionType = 4,
							inRangeValue = 20,
							minTargetPercent = true,
							name = "Party Range: <= 20y",
							partyTargetNumber = 100,
							partyTargetSubType = "Number",
							uuid = "0796f2c7-5782-7e71-8675-e259a5fdcac0",
							version = 3,
						},
					},
					
					{
						data = 
						{
							buffID = 2609,
							category = "Self",
							name = "Self: Eukrasian Prognosis Buff",
							uuid = "da3adfd0-f610-1d4f-96fe-1e4260f44f34",
							version = 3,
						},
					},
				},
				mechanicTime = 1107.6512243835,
				name = "[SGE] Eukrasian Prognosis",
				timelineIndex = 216,
				timerEndOffset = -1,
				timerStartOffset = -5,
				uuid = "96863aac-2fef-d05f-b4a3-0b298e8644c4",
				version = 2,
			},
			inheritedIndex = 2,
		},
	},
	[217] = 
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
									"a7ff75cf-1c65-b308-9b67-891e93f1c4f5",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_Healbar_Soteria",
							uuid = "9f150df4-47fb-823d-a797-346087437cd2",
							variableTogglesType = 3,
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
							jobValue = "SAGE",
							name = "Self: SGE",
							uuid = "a7ff75cf-1c65-b308-9b67-891e93f1c4f5",
							version = 3,
						},
						inheritedIndex = 1,
					},
				},
				enabled = false,
				mechanicTime = 1110.7798573505,
				name = "[SGE] Soteria",
				timelineIndex = 217,
				timerEndOffset = 5,
				timerOffset = 1,
				timerStartOffset = -5,
				uuid = "ded25403-5871-4177-a485-5672520459da",
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
							aType = "ACR",
							conditions = 
							{
								
								{
									"26fe8bf0-8e58-6157-9b67-e8a64a6b191a",
									true,
								},
								
								{
									"0796f2c7-5782-7e71-8675-e259a5fdcac0",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_Healbar_EukrasianPrognosis",
							uuid = "9f150df4-47fb-823d-a797-346087437cd2",
							variableTogglesType = 3,
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
							jobValue = "SAGE",
							name = "Self: SGE",
							uuid = "26fe8bf0-8e58-6157-9b67-e8a64a6b191a",
							version = 3,
						},
						inheritedIndex = 1,
					},
					
					{
						data = 
						{
							category = "Party",
							comparator = 2,
							conditionType = 4,
							inRangeValue = 20,
							minTargetPercent = true,
							name = "Party Range: <= 20y",
							partyTargetNumber = 100,
							partyTargetSubType = "Number",
							uuid = "0796f2c7-5782-7e71-8675-e259a5fdcac0",
							version = 3,
						},
					},
					
					{
						data = 
						{
							buffID = 2609,
							category = "Self",
							name = "Self: Eukrasian Prognosis Buff",
							uuid = "da3adfd0-f610-1d4f-96fe-1e4260f44f34",
							version = 3,
						},
					},
				},
				mechanicTime = 1110.7798573505,
				name = "[SGE] Eukrasian Prognosis",
				timelineIndex = 217,
				timerEndOffset = -1,
				timerStartOffset = -5,
				uuid = "1ada620f-46d8-8dd5-a3ee-4d3c866eadcd",
				version = 2,
			},
			inheritedIndex = 2,
		},
	},
	[218] = 
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
									"26fe8bf0-8e58-6157-9b67-e8a64a6b191a",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_Healbar_Haima",
							targetType = "Main Tank",
							uuid = "9f150df4-47fb-823d-a797-346087437cd2",
							variableIsHover = true,
							variableTogglesType = 3,
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
							jobValue = "SAGE",
							name = "Self: SGE",
							uuid = "26fe8bf0-8e58-6157-9b67-e8a64a6b191a",
							version = 3,
						},
						inheritedIndex = 1,
					},
				},
				mechanicTime = 1113.9009474604,
				name = "[SGE] Haima",
				timeRange = true,
				timelineIndex = 218,
				timerEndOffset = -1,
				timerOffset = -14,
				timerStartOffset = -14.5,
				uuid = "4a1c347d-8e5d-eac2-a19c-8900cfcc2d1f",
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
							aType = "ACR",
							conditions = 
							{
								
								{
									"299bb84c-9fa3-6837-9e30-b8c05eae3959",
									true,
								},
								
								{
									"db9e281c-6f91-3db5-8d6c-487c8eb46530",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_Healbar_Physis",
							uuid = "9f150df4-47fb-823d-a797-346087437cd2",
							variableTogglesType = 3,
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
							jobValue = "SAGE",
							name = "Self: SGE",
							uuid = "299bb84c-9fa3-6837-9e30-b8c05eae3959",
							version = 3,
						},
						inheritedIndex = 1,
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
							uuid = "db9e281c-6f91-3db5-8d6c-487c8eb46530",
							version = 3,
						},
					},
				},
				mechanicTime = 1113.9009474604,
				name = "[SGE] Physis",
				timelineIndex = 218,
				timerEndOffset = 5,
				timerStartOffset = -5,
				uuid = "ab08209e-23e8-e81e-a868-c29d52395bc3",
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
									"26fe8bf0-8e58-6157-9b67-e8a64a6b191a",
									true,
								},
								
								{
									"0796f2c7-5782-7e71-8675-e259a5fdcac0",
									true,
								},
							},
							fallthrough = true,
							gVar = "ACR_RikuSGE3_Healbar_Zoe",
							uuid = "e8241127-b7f4-8235-9f22-e126fbe1aa59",
							variableTogglesType = 3,
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
									"26fe8bf0-8e58-6157-9b67-e8a64a6b191a",
									true,
								},
								
								{
									"0796f2c7-5782-7e71-8675-e259a5fdcac0",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_Healbar_EukrasianPrognosis",
							uuid = "9f150df4-47fb-823d-a797-346087437cd2",
							variableTogglesType = 3,
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
							jobValue = "SAGE",
							name = "Self: SGE",
							uuid = "26fe8bf0-8e58-6157-9b67-e8a64a6b191a",
							version = 3,
						},
						inheritedIndex = 1,
					},
					
					{
						data = 
						{
							category = "Party",
							comparator = 2,
							conditionType = 4,
							inRangeValue = 20,
							minTargetPercent = true,
							name = "Party Range: <= 20y",
							partyTargetNumber = 100,
							partyTargetSubType = "Number",
							uuid = "0796f2c7-5782-7e71-8675-e259a5fdcac0",
							version = 3,
						},
					},
				},
				mechanicTime = 1125.2071474604,
				name = "[SGE] Zoe Eukrasian Prognosis",
				timeRange = true,
				timelineIndex = 219,
				timerEndOffset = -1,
				timerStartOffset = -10,
				uuid = "6d51b731-18bf-1d64-ab90-d875c85ec831",
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
									"26fe8bf0-8e58-6157-9b67-e8a64a6b191a",
									true,
								},
								
								{
									"0796f2c7-5782-7e71-8675-e259a5fdcac0",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_Healbar_EukrasianPrognosis",
							uuid = "9f150df4-47fb-823d-a797-346087437cd2",
							variableTogglesType = 3,
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
							jobValue = "SAGE",
							name = "Self: SGE",
							uuid = "26fe8bf0-8e58-6157-9b67-e8a64a6b191a",
							version = 3,
						},
						inheritedIndex = 1,
					},
					
					{
						data = 
						{
							category = "Party",
							comparator = 2,
							conditionType = 4,
							inRangeValue = 20,
							minTargetPercent = true,
							name = "Party Range: <= 20y",
							partyTargetNumber = 100,
							partyTargetSubType = "Number",
							uuid = "0796f2c7-5782-7e71-8675-e259a5fdcac0",
							version = 3,
						},
					},
					
					{
						data = 
						{
							buffID = 2609,
							category = "Self",
							name = "Self: Eukrasian Prognosis Buff",
							uuid = "da3adfd0-f610-1d4f-96fe-1e4260f44f34",
							version = 3,
						},
					},
				},
				mechanicTime = 1125.2071474604,
				name = "[SGE] Eukrasian Prognosis",
				timelineIndex = 219,
				timerEndOffset = -1,
				timerStartOffset = -5,
				uuid = "45a2aa38-2b32-2949-9188-0b98b951594f",
				version = 2,
			},
			inheritedIndex = 4,
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
									"42ace145-2b74-484f-8bf2-cebf11dccf7a",
									true,
								},
								
								{
									"6dc6db9a-b186-7ff6-a6b3-f82998575c8f",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_Healbar_Philosophia",
							uuid = "7af0e0f9-9796-f4ac-9c26-f2fb54bb3a0f",
							variableTogglesType = 3,
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
							jobValue = "SAGE",
							name = "Self: SGE",
							uuid = "6dc6db9a-b186-7ff6-a6b3-f82998575c8f",
							version = 3,
						},
						inheritedIndex = 1,
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
							uuid = "42ace145-2b74-484f-8bf2-cebf11dccf7a",
							version = 3,
						},
					},
				},
				mechanicTime = 1125.2071474604,
				name = "[SGE] Philosophia",
				timelineIndex = 219,
				timerEndOffset = 5,
				timerOffset = 3,
				timerStartOffset = -5,
				uuid = "733aa998-7d2e-b7d3-930e-7ed035f9b531",
				version = 2,
			},
		},
	},
	[220] = 
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
									"26fe8bf0-8e58-6157-9b67-e8a64a6b191a",
									true,
								},
								
								{
									"0796f2c7-5782-7e71-8675-e259a5fdcac0",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_Healbar_Ixochole",
							uuid = "9f150df4-47fb-823d-a797-346087437cd2",
							variableTogglesType = 3,
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
							jobValue = "SAGE",
							name = "Self: SGE",
							uuid = "26fe8bf0-8e58-6157-9b67-e8a64a6b191a",
							version = 3,
						},
						inheritedIndex = 1,
					},
					
					{
						data = 
						{
							category = "Party",
							comparator = 2,
							conditionType = 4,
							inRangeValue = 20,
							minTargetPercent = true,
							name = "Party Range: <= 20y",
							partyTargetNumber = 100,
							partyTargetSubType = "Number",
							uuid = "0796f2c7-5782-7e71-8675-e259a5fdcac0",
							version = 3,
						},
					},
				},
				mechanicTime = 1130.3204807937,
				name = "[SGE] Ixochole",
				timelineIndex = 220,
				timerEndOffset = 5,
				timerOffset = 1,
				timerStartOffset = -5,
				uuid = "8a922623-8df1-4e2e-bdfd-ad5d0da6cd9c",
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
									"26fe8bf0-8e58-6157-9b67-e8a64a6b191a",
									true,
								},
								
								{
									"0796f2c7-5782-7e71-8675-e259a5fdcac0",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_Healbar_EukrasianPrognosis",
							uuid = "9f150df4-47fb-823d-a797-346087437cd2",
							variableTogglesType = 3,
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
							jobValue = "SAGE",
							name = "Self: SGE",
							uuid = "26fe8bf0-8e58-6157-9b67-e8a64a6b191a",
							version = 3,
						},
						inheritedIndex = 1,
					},
					
					{
						data = 
						{
							category = "Party",
							comparator = 2,
							conditionType = 4,
							inRangeValue = 20,
							minTargetPercent = true,
							name = "Party Range: <= 20y",
							partyTargetNumber = 100,
							partyTargetSubType = "Number",
							uuid = "0796f2c7-5782-7e71-8675-e259a5fdcac0",
							version = 3,
						},
					},
					
					{
						data = 
						{
							buffID = 2609,
							category = "Self",
							name = "Self: Eukrasian Prognosis Buff",
							uuid = "da3adfd0-f610-1d4f-96fe-1e4260f44f34",
							version = 3,
						},
					},
				},
				mechanicTime = 1130.3204807937,
				name = "[SGE] Eukrasian Prognosis",
				timelineIndex = 220,
				timerEndOffset = -1,
				timerOffset = -2,
				timerStartOffset = -5,
				uuid = "5d43879e-d59a-7f2e-8344-8d3e4a81b671",
				version = 2,
			},
			inheritedIndex = 3,
		},
	},
	[221] = 
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
									"6eed371c-276e-0dc6-bfef-64a1ef96e29f",
									true,
								},
								
								{
									"6e5cce1c-e91c-060c-b26b-d9c804cb7b6e",
									true,
								},
								
								{
									"62a2aa42-6726-20d6-a18e-6a4310f5ba80",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_Healbar_Kerachole",
							uuid = "1f6dfa69-9fa5-6422-bae0-e4c484120183",
							variableTogglesType = 3,
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
							jobValue = "SAGE",
							name = "Self: SGE",
							uuid = "6eed371c-276e-0dc6-bfef-64a1ef96e29f",
							version = 3,
						},
						inheritedIndex = 1,
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
							uuid = "6e5cce1c-e91c-060c-b26b-d9c804cb7b6e",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionCDValue = 1,
							actionID = 24298,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "Self: Kerachole CD <= 1s",
							uuid = "62a2aa42-6726-20d6-a18e-6a4310f5ba80",
							version = 3,
						},
					},
				},
				mechanicTime = 1133.3461474604,
				name = "[SGE] Kerachole",
				timeRange = true,
				timelineIndex = 221,
				timerEndOffset = -1,
				timerStartOffset = -14.5,
				uuid = "2b6cbaec-4036-7b58-a327-7c0f6ef34425",
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
									"26fe8bf0-8e58-6157-9b67-e8a64a6b191a",
									true,
								},
								
								{
									"0796f2c7-5782-7e71-8675-e259a5fdcac0",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_Healbar_EukrasianPrognosis",
							uuid = "9f150df4-47fb-823d-a797-346087437cd2",
							variableTogglesType = 3,
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
							jobValue = "SAGE",
							name = "Self: SGE",
							uuid = "26fe8bf0-8e58-6157-9b67-e8a64a6b191a",
							version = 3,
						},
						inheritedIndex = 1,
					},
					
					{
						data = 
						{
							category = "Party",
							comparator = 2,
							conditionType = 4,
							inRangeValue = 20,
							minTargetPercent = true,
							name = "Party Range: <= 20y",
							partyTargetNumber = 100,
							partyTargetSubType = "Number",
							uuid = "0796f2c7-5782-7e71-8675-e259a5fdcac0",
							version = 3,
						},
					},
					
					{
						data = 
						{
							buffID = 2609,
							category = "Self",
							name = "Self: Eukrasian Prognosis Buff",
							uuid = "da3adfd0-f610-1d4f-96fe-1e4260f44f34",
							version = 3,
						},
					},
				},
				mechanicTime = 1133.3461474604,
				name = "[SGE] Eukrasian Prognosis",
				timelineIndex = 221,
				timerEndOffset = -1,
				timerStartOffset = -5,
				uuid = "540302c1-3aa7-316a-9b4e-51b3eadce9c8",
				version = 2,
			},
			inheritedIndex = 4,
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
									"26fe8bf0-8e58-6157-9b67-e8a64a6b191a",
									true,
								},
								
								{
									"0796f2c7-5782-7e71-8675-e259a5fdcac0",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_Healbar_EukrasianPrognosis",
							uuid = "9f150df4-47fb-823d-a797-346087437cd2",
							variableTogglesType = 3,
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
							jobValue = "SAGE",
							name = "Self: SGE",
							uuid = "26fe8bf0-8e58-6157-9b67-e8a64a6b191a",
							version = 3,
						},
						inheritedIndex = 1,
					},
					
					{
						data = 
						{
							category = "Party",
							comparator = 2,
							conditionType = 4,
							inRangeValue = 20,
							minTargetPercent = true,
							name = "Party Range: <= 20y",
							partyTargetNumber = 100,
							partyTargetSubType = "Number",
							uuid = "0796f2c7-5782-7e71-8675-e259a5fdcac0",
							version = 3,
						},
					},
					
					{
						data = 
						{
							buffID = 2609,
							category = "Self",
							name = "Self: Eukrasian Prognosis Buff",
							uuid = "da3adfd0-f610-1d4f-96fe-1e4260f44f34",
							version = 3,
						},
					},
				},
				mechanicTime = 1133.3461474604,
				name = "[SGE] Eukrasian Prognosis",
				timelineIndex = 221,
				timerEndOffset = -1,
				timerOffset = 3,
				timerStartOffset = -5,
				uuid = "8fdb5025-db7b-4372-908a-a4881d16e3c9",
				version = 2,
			},
			inheritedIndex = 5,
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
									"26fe8bf0-8e58-6157-9b67-e8a64a6b191a",
									true,
								},
								
								{
									"0796f2c7-5782-7e71-8675-e259a5fdcac0",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_Healbar_EukrasianPrognosis",
							uuid = "9f150df4-47fb-823d-a797-346087437cd2",
							variableTogglesType = 3,
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
							jobValue = "SAGE",
							name = "Self: SGE",
							uuid = "26fe8bf0-8e58-6157-9b67-e8a64a6b191a",
							version = 3,
						},
						inheritedIndex = 1,
					},
					
					{
						data = 
						{
							category = "Party",
							comparator = 2,
							conditionType = 4,
							inRangeValue = 20,
							minTargetPercent = true,
							name = "Party Range: <= 20y",
							partyTargetNumber = 100,
							partyTargetSubType = "Number",
							uuid = "0796f2c7-5782-7e71-8675-e259a5fdcac0",
							version = 3,
						},
					},
					
					{
						data = 
						{
							buffID = 2609,
							category = "Self",
							name = "Self: Eukrasian Prognosis Buff",
							uuid = "da3adfd0-f610-1d4f-96fe-1e4260f44f34",
							version = 3,
						},
					},
				},
				mechanicTime = 1138.4497474604,
				name = "[SGE] Eukrasian Prognosis",
				timelineIndex = 222,
				timerEndOffset = -1,
				timerStartOffset = -5,
				uuid = "57d7d232-2ed7-0d97-8898-8c4ecbda77e8",
				version = 2,
			},
			inheritedIndex = 2,
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
									"2aede583-6334-5e6e-8897-d0185d2e479e",
									true,
								},
								
								{
									"2655f02b-090f-3366-8e9d-81bd1daab933",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_Healbar_Holos",
							uuid = "a63d60d1-0099-4678-9951-0dde4026e2a7",
							variableTogglesType = 3,
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
							jobValue = "SAGE",
							name = "Self: SGE",
							uuid = "2aede583-6334-5e6e-8897-d0185d2e479e",
							version = 3,
						},
						inheritedIndex = 1,
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
							uuid = "2655f02b-090f-3366-8e9d-81bd1daab933",
							version = 3,
						},
					},
				},
				mechanicTime = 1141.5122474604,
				name = "[SGE] Holos",
				timeRange = true,
				timelineIndex = 223,
				timerEndOffset = -1,
				timerStartOffset = -19.5,
				uuid = "988e1067-1a7b-29bb-9f37-b10490606a57",
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
									"26fe8bf0-8e58-6157-9b67-e8a64a6b191a",
									true,
								},
								
								{
									"0796f2c7-5782-7e71-8675-e259a5fdcac0",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_Healbar_EukrasianPrognosis",
							uuid = "9f150df4-47fb-823d-a797-346087437cd2",
							variableTogglesType = 3,
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
							jobValue = "SAGE",
							name = "Self: SGE",
							uuid = "26fe8bf0-8e58-6157-9b67-e8a64a6b191a",
							version = 3,
						},
						inheritedIndex = 1,
					},
					
					{
						data = 
						{
							category = "Party",
							comparator = 2,
							conditionType = 4,
							inRangeValue = 20,
							minTargetPercent = true,
							name = "Party Range: <= 20y",
							partyTargetNumber = 100,
							partyTargetSubType = "Number",
							uuid = "0796f2c7-5782-7e71-8675-e259a5fdcac0",
							version = 3,
						},
					},
					
					{
						data = 
						{
							buffID = 2609,
							category = "Self",
							name = "Self: Eukrasian Prognosis Buff",
							uuid = "da3adfd0-f610-1d4f-96fe-1e4260f44f34",
							version = 3,
						},
					},
				},
				mechanicTime = 1141.5122474604,
				name = "[SGE] Eukrasian Prognosis",
				timelineIndex = 223,
				timerEndOffset = -1,
				timerStartOffset = -5,
				uuid = "627c22e7-2636-3c95-bde7-b829537ba430",
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
									"26fe8bf0-8e58-6157-9b67-e8a64a6b191a",
									true,
								},
								
								{
									"0796f2c7-5782-7e71-8675-e259a5fdcac0",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_Healbar_EukrasianPrognosis",
							uuid = "9f150df4-47fb-823d-a797-346087437cd2",
							variableTogglesType = 3,
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
							jobValue = "SAGE",
							name = "Self: SGE",
							uuid = "26fe8bf0-8e58-6157-9b67-e8a64a6b191a",
							version = 3,
						},
						inheritedIndex = 1,
					},
					
					{
						data = 
						{
							category = "Party",
							comparator = 2,
							conditionType = 4,
							inRangeValue = 20,
							minTargetPercent = true,
							name = "Party Range: <= 20y",
							partyTargetNumber = 100,
							partyTargetSubType = "Number",
							uuid = "0796f2c7-5782-7e71-8675-e259a5fdcac0",
							version = 3,
						},
					},
					
					{
						data = 
						{
							buffID = 2609,
							category = "Self",
							name = "Self: Eukrasian Prognosis Buff",
							uuid = "da3adfd0-f610-1d4f-96fe-1e4260f44f34",
							version = 3,
						},
					},
				},
				mechanicTime = 1141.5122474604,
				name = "[SGE] Eukrasian Prognosis",
				timelineIndex = 223,
				timerEndOffset = -1,
				timerOffset = 3,
				timerStartOffset = -5,
				uuid = "958c8583-b1d7-0484-ae27-1bc2b1da8fe8",
				version = 2,
			},
			inheritedIndex = 4,
		},
	},
	[224] = 
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
									"26fe8bf0-8e58-6157-9b67-e8a64a6b191a",
									true,
								},
								
								{
									"0796f2c7-5782-7e71-8675-e259a5fdcac0",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_Healbar_EukrasianPrognosis",
							uuid = "9f150df4-47fb-823d-a797-346087437cd2",
							variableTogglesType = 3,
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
							jobValue = "SAGE",
							name = "Self: SGE",
							uuid = "26fe8bf0-8e58-6157-9b67-e8a64a6b191a",
							version = 3,
						},
						inheritedIndex = 1,
					},
					
					{
						data = 
						{
							category = "Party",
							comparator = 2,
							conditionType = 4,
							inRangeValue = 20,
							minTargetPercent = true,
							name = "Party Range: <= 20y",
							partyTargetNumber = 100,
							partyTargetSubType = "Number",
							uuid = "0796f2c7-5782-7e71-8675-e259a5fdcac0",
							version = 3,
						},
					},
					
					{
						data = 
						{
							buffID = 2609,
							category = "Self",
							name = "Self: Eukrasian Prognosis Buff",
							uuid = "da3adfd0-f610-1d4f-96fe-1e4260f44f34",
							version = 3,
						},
					},
				},
				mechanicTime = 1146.5870474604,
				name = "[SGE] Eukrasian Prognosis",
				timelineIndex = 224,
				timerEndOffset = -1,
				timerStartOffset = -5,
				uuid = "5e3f983b-1379-5706-8891-dd779a0a438f",
				version = 2,
			},
			inheritedIndex = 2,
		},
	},
	[225] = 
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
									"81ae31c5-9e92-6a56-ba07-ff21087cac48",
									true,
								},
								
								{
									"800486cc-705c-5caf-8fba-1dd95613f62d",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_Healbar_Panhaima",
							uuid = "3513de14-07f8-c935-80cb-36aa906944eb",
							variableTogglesType = 3,
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
							jobValue = "SAGE",
							name = "Self: SGE",
							uuid = "81ae31c5-9e92-6a56-ba07-ff21087cac48",
							version = 3,
						},
						inheritedIndex = 1,
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
							uuid = "800486cc-705c-5caf-8fba-1dd95613f62d",
							version = 3,
						},
					},
				},
				mechanicTime = 1149.6575474604,
				name = "[SGE] Panhaima",
				timeRange = true,
				timelineIndex = 225,
				timerEndOffset = -1,
				timerStartOffset = -14.5,
				uuid = "fdee5f0b-7597-43ad-8d2e-90b494dc3f32",
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
									"26fe8bf0-8e58-6157-9b67-e8a64a6b191a",
									true,
								},
								
								{
									"0796f2c7-5782-7e71-8675-e259a5fdcac0",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_Healbar_EukrasianPrognosis",
							uuid = "9f150df4-47fb-823d-a797-346087437cd2",
							variableTogglesType = 3,
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
							jobValue = "SAGE",
							name = "Self: SGE",
							uuid = "26fe8bf0-8e58-6157-9b67-e8a64a6b191a",
							version = 3,
						},
						inheritedIndex = 1,
					},
					
					{
						data = 
						{
							category = "Party",
							comparator = 2,
							conditionType = 4,
							inRangeValue = 20,
							minTargetPercent = true,
							name = "Party Range: <= 20y",
							partyTargetNumber = 100,
							partyTargetSubType = "Number",
							uuid = "0796f2c7-5782-7e71-8675-e259a5fdcac0",
							version = 3,
						},
					},
					
					{
						data = 
						{
							buffID = 2609,
							category = "Self",
							name = "Self: Eukrasian Prognosis Buff",
							uuid = "da3adfd0-f610-1d4f-96fe-1e4260f44f34",
							version = 3,
						},
					},
				},
				mechanicTime = 1149.6575474604,
				name = "[SGE] Eukrasian Prognosis",
				timelineIndex = 225,
				timerEndOffset = -1,
				timerOffset = 1,
				timerStartOffset = -5,
				uuid = "af62caae-031c-ef43-9f04-ba6308bc0bfb",
				version = 2,
			},
			inheritedIndex = 4,
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
									"26fe8bf0-8e58-6157-9b67-e8a64a6b191a",
									true,
								},
								
								{
									"0796f2c7-5782-7e71-8675-e259a5fdcac0",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_Healbar_EukrasianPrognosis",
							uuid = "9f150df4-47fb-823d-a797-346087437cd2",
							variableTogglesType = 3,
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
							jobValue = "SAGE",
							name = "Self: SGE",
							uuid = "26fe8bf0-8e58-6157-9b67-e8a64a6b191a",
							version = 3,
						},
						inheritedIndex = 1,
					},
					
					{
						data = 
						{
							category = "Party",
							comparator = 2,
							conditionType = 4,
							inRangeValue = 20,
							minTargetPercent = true,
							name = "Party Range: <= 20y",
							partyTargetNumber = 100,
							partyTargetSubType = "Number",
							uuid = "0796f2c7-5782-7e71-8675-e259a5fdcac0",
							version = 3,
						},
					},
					
					{
						data = 
						{
							buffID = 2609,
							category = "Self",
							name = "Self: Eukrasian Prognosis Buff",
							uuid = "da3adfd0-f610-1d4f-96fe-1e4260f44f34",
							version = 3,
						},
					},
				},
				mechanicTime = 1149.6575474604,
				name = "[SGE] Eukrasian Prognosis",
				timelineIndex = 225,
				timerEndOffset = -1,
				timerOffset = 3,
				timerStartOffset = -5,
				uuid = "42cfa17f-7a2a-b8b0-abea-9047cc654453",
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
							aType = "Misc",
							conditions = 
							{
								
								{
									"26fe8bf0-8e58-6157-9b67-e8a64a6b191a",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_Hotbar_Potion",
							potType = 3,
							usePot = true,
							uuid = "9f150df4-47fb-823d-a797-346087437cd2",
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
							jobValue = "SAGE",
							name = "Self: SGE",
							uuid = "26fe8bf0-8e58-6157-9b67-e8a64a6b191a",
							version = 3,
						},
						inheritedIndex = 1,
					},
				},
				mechanicTime = 1149.6575474604,
				name = "[SGE] Use Pot",
				timelineIndex = 225,
				timerEndOffset = -1,
				timerOffset = 2,
				timerStartOffset = -5,
				uuid = "05b1dcfa-b623-2b51-bdd8-84b29b921765",
				version = 2,
			},
		},
	},
	[226] = 
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
									"6eed371c-276e-0dc6-bfef-64a1ef96e29f",
									true,
								},
								
								{
									"6e5cce1c-e91c-060c-b26b-d9c804cb7b6e",
									true,
								},
								
								{
									"62a2aa42-6726-20d6-a18e-6a4310f5ba80",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_Healbar_Kerachole",
							uuid = "1f6dfa69-9fa5-6422-bae0-e4c484120183",
							variableTogglesType = 3,
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
							jobValue = "SAGE",
							name = "Self: SGE",
							uuid = "6eed371c-276e-0dc6-bfef-64a1ef96e29f",
							version = 3,
						},
						inheritedIndex = 1,
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
							uuid = "6e5cce1c-e91c-060c-b26b-d9c804cb7b6e",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionCDValue = 1,
							actionID = 24298,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "Self: Kerachole CD <= 1s",
							uuid = "62a2aa42-6726-20d6-a18e-6a4310f5ba80",
							version = 3,
						},
					},
				},
				mechanicTime = 1154.7445474604,
				name = "[SGE] Kerachole",
				timeRange = true,
				timelineIndex = 226,
				timerEndOffset = -1,
				timerStartOffset = -14.5,
				uuid = "69e4ab7b-1e06-a648-87a7-55a7f7d87039",
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
							aType = "ACR",
							conditions = 
							{
								
								{
									"26fe8bf0-8e58-6157-9b67-e8a64a6b191a",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_Burn",
							uuid = "b862beb4-8a30-fd8f-a232-43a9c19e3dfe",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"26fe8bf0-8e58-6157-9b67-e8a64a6b191a",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_DoT",
							gVarValue = 2,
							uuid = "2fcae39e-a1d9-769a-af35-cbdd6f1e1b17",
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
							jobValue = "SAGE",
							name = "Self: SGE",
							uuid = "26fe8bf0-8e58-6157-9b67-e8a64a6b191a",
							version = 3,
						},
						inheritedIndex = 1,
					},
				},
				mechanicTime = 1154.7445474604,
				name = "[SGE] Burn",
				timelineIndex = 226,
				timerEndOffset = -1,
				timerOffset = 5,
				timerStartOffset = -5,
				uuid = "373c9d29-5efe-a7e1-9d3c-0ce679c3a2f0",
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