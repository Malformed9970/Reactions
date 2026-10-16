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
							actionLua = "ACR_TensorReaper4_TargetHitRadiusAdjust = 0\nACR_TensorReaper4_ActionRangeAdjust = 3\nself.used = true",
							name = "Range Hack +3",
							uuid = "fc43c4db-6db0-f2fe-83bd-083d5498e468",
							version = 2.1,
						},
						inheritedIndex = 2,
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
							aType = "ACR",
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
							gVar = "ACR_TensorReaper4_Hotbar_HellsIngressTarget",
							uuid = "bd838977-3021-4b19-bdb5-3f9efb9e7698",
							variableTogglesType = 2,
							version = 2.1,
						},
						inheritedIndex = 4,
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
				uuid = "6ac896e0-876c-5d92-9bf3-c9e34433e0df",
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
				uuid = "674ccec8-f0a7-4a6a-b00f-feb0e4aae698",
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
							gVar = "ACR_TensorReaper4_CD",
							uuid = "49f643e0-e835-0feb-959a-5ad49d1a03b8",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "ACR",
							gVar = "ACR_TensorReaper4_AOE",
							uuid = "8a3eee51-66a8-ff2c-95cd-d4d289790ec0",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "ACR",
							gVar = "ACR_TensorReaper4_SmartAOE",
							uuid = "09a65249-bdca-94eb-8815-2f864e00f063",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "ACR",
							gVar = "ACR_TensorReaper4_SafeJump",
							uuid = "cbede249-c167-7452-bce6-af35ba12a805",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "ACR",
							gVar = "ACR_TensorReaper4_TrueNorth",
							uuid = "1f4c9c37-bcad-a9cc-80fb-3f07f249c0ea",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "ACR",
							gVar = "ACR_TensorReaper4_ArcaneCircle",
							uuid = "178f9722-d37a-13ac-af45-b92ca29a1c54",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "ACR",
							gVar = "ACR_TensorReaper4_Enshroud",
							uuid = "ebafd38b-b8af-b7a1-b8f6-8cb05523f48b",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "ACR",
							gVar = "ACR_TensorReaper4_Harpe",
							uuid = "7424496e-521f-eb2c-9590-f113a3a05961",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "ACR",
							gVar = "ACR_TensorReaper4_Soulsow",
							uuid = "1c7a3f60-62f0-3385-9768-8a8223496d9d",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "ACR",
							gVar = "ACR_TensorReaper4_HarvestMoon",
							uuid = "ce105aff-9589-458d-8397-d86bbb38862c",
							version = 2.1,
						},
						inheritedIndex = 10,
					},
					
					{
						data = 
						{
							aType = "ACR",
							gVar = "ACR_TensorReaper4_SmartDoT",
							uuid = "31d65d29-80e9-2ab3-afbe-a3594ec72b98",
							version = 2.1,
						},
						inheritedIndex = 11,
					},
					
					{
						data = 
						{
							aType = "ACR",
							gVar = "ACR_TensorReaper4_ArcaneCrest",
							uuid = "c63aa9d6-e9d7-2a22-99e0-376f476315f8",
							version = 2.1,
						},
						inheritedIndex = 12,
					},
					
					{
						data = 
						{
							aType = "ACR",
							gVar = "ACR_TensorReaper4_KBCancel",
							gVarValue = 2,
							uuid = "b2a82871-f699-cf69-ab38-bb9772da0a56",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "ACR",
							gVar = "ACR_TensorReaper4_Potion",
							uuid = "de23fff8-72d9-19a4-bcbd-209d4aac3957",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "ACR",
							gVar = "ACR_TensorReaper4_Burn",
							gVarValue = 2,
							uuid = "6849070c-d470-a9dd-abd0-691077e5b78b",
							version = 2.1,
						},
						inheritedIndex = 15,
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
				uuid = "25c9dabe-e901-446d-a848-b3690f913bd8",
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
				uuid = "6262396c-aa6a-6cf3-a0b1-d35489292290",
				version = 2,
			},
			inheritedIndex = 4,
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "Lj\\umad\\autosimv2.6",
				uuid = "30762197-5f5b-5663-8d62-d209126fc8a7",
			},
			inheritanceRoot = "Lj\\umad\\autosimv2.6",
			objectType = "folder",
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
							gVar = "ACR_TensorReaper4_Hotbar_ArcaneCrest",
							uuid = "28eb5962-7f2f-9dd1-8c55-d3d03a65662f",
							variableTogglesType = 2,
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				mechanicTime = 42.238586763472,
				name = "Arcane Crest",
				timeRange = true,
				timelineIndex = 7,
				timerStartOffset = -3,
				uuid = "55c42786-969e-8b54-ac64-d984dec39d2d",
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
				name = "Lj\\umad\\autosimv2.6",
				uuid = "7ffd6fa0-ae29-648c-61f8-f76234e3ecb0",
			},
			inheritanceRoot = "Lj\\umad\\autosimv2.6",
			objectType = "folder",
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
							gVar = "ACR_TensorReaper4_Hotbar_HellsIngressTarget",
							targetType = "Enemy",
							uuid = "ffab71d4-efae-37e4-b274-fe4ec495a868",
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
				name = "Ingress",
				timelineIndex = 9,
				timerOffset = 0.10000000149012,
				uuid = "7250f2f9-5c27-6de6-86d1-c2c4d654b5ba",
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
							gVar = "ACR_TensorReaper4_KBCancel",
							gVarValue = 2,
							uuid = "e4cd47a6-d1ab-b442-b244-0ba614fcba84",
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
				uuid = "f6a614ac-8ffd-bfc4-9f0a-bc5ef95b5333",
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
							aType = "ACR",
							gVar = "ACR_TensorReaper4_Hotbar_ArcaneCrest",
							uuid = "466b43d5-1b7f-e393-8bee-d65f4e55a992",
							variableTogglesType = 2,
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				mechanicTime = 87.304550672705,
				name = "Arcane Crest",
				timeRange = true,
				timelineIndex = 17,
				timerStartOffset = -3,
				uuid = "f598228b-6d12-e51a-8c97-c21397a68801",
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
				name = "Lj\\umad\\autosimv2.6",
				uuid = "83417783-0878-13ef-33ad-186d5dbe7d93",
			},
			inheritanceRoot = "Lj\\umad\\autosimv2.6",
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
							gVar = "ACR_TensorReaper4_Hotbar_ArcaneCrest",
							uuid = "999e4b93-9887-1604-b6d2-b54471cbe9e2",
							variableTogglesType = 2,
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				mechanicTime = 118.07975730716,
				name = "Arcane Crest",
				timeRange = true,
				timelineIndex = 25,
				timerStartOffset = -3,
				uuid = "4043e9aa-8cd9-c61b-aada-4d58fe0673ba",
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
				name = "Lj\\umad\\autosimv2.6",
				uuid = "f6f278d9-8c28-4b55-e5ba-fc2bc7efafa9",
			},
			inheritanceRoot = "Lj\\umad\\autosimv2.6",
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
							gVar = "ACR_TensorReaper4_Hotbar_ArcaneCrest",
							uuid = "3717127b-c811-fd4e-bf20-5b337f7db4a9",
							variableTogglesType = 2,
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				mechanicTime = 167.71168967762,
				name = "Arcane Crest",
				timeRange = true,
				timelineIndex = 34,
				timerStartOffset = -3,
				uuid = "faa48c30-f7f0-2a45-96ef-fd1833ad1d96",
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
							gVar = "ACR_TensorReaper4_KBCancel",
							gVarValue = 2,
							uuid = "29604518-9506-7592-9e82-a48aa96b7d49",
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
				uuid = "faebdda1-7d2e-f8cd-98ef-9bbf59dcc49a",
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
							gVar = "ACR_TensorReaper4_Hotbar_ArcaneCrest",
							uuid = "3a4a14e0-4a31-6cc6-9065-1e9d9bb22f39",
							variableTogglesType = 2,
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				mechanicTime = 249.21799166092,
				name = "Arcane Crest",
				timeRange = true,
				timelineIndex = 43,
				timerStartOffset = -3,
				uuid = "9cd7a302-fe38-a804-b0c6-2d571aa33d72",
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
							gVar = "ACR_TensorReaper4_Hotbar_ArcaneCrest",
							uuid = "9c01936f-74b4-6513-9106-b6726b1e6d6c",
							variableTogglesType = 2,
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				mechanicTime = 280.23863811015,
				name = "Arcane Crest",
				timeRange = true,
				timelineIndex = 53,
				timerStartOffset = -3,
				uuid = "95c7ad1e-b631-e9f0-b834-41f10ac8346d",
				version = 2,
			},
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
							gVar = "ACR_TensorReaper4_Hotbar_ArcaneCrest",
							uuid = "cfd1bc04-65c7-01e6-90cd-c198f2e0d302",
							variableTogglesType = 2,
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				mechanicTime = 312.32654954394,
				name = "Arcane Crest",
				timeRange = true,
				timelineIndex = 61,
				timerStartOffset = -3,
				uuid = "754c618c-29e7-abda-9ae6-93cfe81e4337",
				version = 2,
			},
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
							gVar = "ACR_TensorReaper4_Hotbar_ArcaneCrest",
							uuid = "45fcd3db-5278-8d18-875f-b95f145a0484",
							variableTogglesType = 2,
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				mechanicTime = 341.70452758191,
				name = "Arcane Crest",
				timeRange = true,
				timelineIndex = 66,
				timerStartOffset = -3,
				uuid = "c6aa310f-35c3-8f2e-81bb-f11ff6f80ecd",
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
				name = "Lj\\umad\\autosimv2.6",
				uuid = "b22f1457-5cdf-4613-8bc1-2115ae0dc027",
			},
			inheritanceRoot = "Lj\\umad\\autosimv2.6",
			objectType = "folder",
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
							gVar = "ACR_TensorReaper4_KBCancel",
							uuid = "74ebc726-70bd-5e85-8982-f7b70489180b",
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
				uuid = "a2e412e3-2909-5f65-9620-821825961fa4",
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
							gVar = "ACR_TensorReaper4_Hotbar_ArcaneCrest",
							uuid = "b88f8c58-5f2b-1d29-96bc-a25b915ae97b",
							variableTogglesType = 2,
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				mechanicTime = 450.00390950196,
				name = "Arcane Crest",
				timeRange = true,
				timelineIndex = 79,
				timerStartOffset = -3,
				uuid = "c5ac53c3-d859-9377-8fc3-bdf64b2da3ed",
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
							aType = "ACR",
							gVar = "ACR_TensorReaper4_Hotbar_ArcaneCrest",
							uuid = "4f2d2b3e-5157-686c-81b5-39c724382b12",
							variableTogglesType = 2,
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				mechanicTime = 507.31761539671,
				name = "Arcane Crest",
				timeRange = true,
				timelineIndex = 91,
				timerStartOffset = -3,
				uuid = "9453cc13-318c-2444-a909-763bb599c3b3",
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
							setTarget = true,
							targetContentID = 6052,
							targetType = "ContentID",
							uuid = "607a8823-b86b-0fd7-8d2c-e6fb9d8875f8",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				mechanicTime = 511.44225832111,
				name = "Target Exdeath",
				timelineIndex = 93,
				uuid = "615ff3c8-6250-8f07-8447-c2f5ec36df71",
				version = 2,
			},
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
							acrOptionType = "Hold Action",
							holdActionDuration = 15,
							holdActionID = 24404,
							uuid = "d7a923a2-b0a7-92d2-a55d-e7a6efd3c5eb",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				mechanicTime = 556.00428210262,
				name = "Hold Arcane Crest - Max",
				timelineIndex = 106,
				uuid = "0c465bb1-e88d-8ab4-8dd2-4a3b3e6787a1",
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
							gVar = "ACR_TensorReaper4_Hotbar_ArcaneCrest",
							uuid = "941586da-0cf9-bd67-82e5-5b442a551928",
							variableTogglesType = 2,
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				mechanicTime = 578.01131609381,
				name = "Arcane Crest",
				timeRange = true,
				timelineIndex = 112,
				timerStartOffset = -3,
				uuid = "0ad7059f-d31b-d1d9-a93c-d3139db9d847",
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
							gVar = "ACR_TensorReaper4_Hotbar_ArcaneCrest",
							uuid = "408b80cb-f9af-a9e1-bc3a-3222d9f99075",
							variableTogglesType = 2,
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				mechanicTime = 608.39401598045,
				name = "Arcane Crest",
				timeRange = true,
				timelineIndex = 122,
				timerStartOffset = -3,
				uuid = "8c88c319-36fb-5eb8-9c7f-41b30d100680",
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
							gVar = "ACR_TensorReaper4_Hotbar_ArcaneCrest",
							uuid = "c8620c35-b41c-8058-a3ac-78c79b4b5c57",
							variableTogglesType = 2,
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				mechanicTime = 676.34203400282,
				name = "Arcane Crest",
				timeRange = true,
				timelineIndex = 135,
				timerStartOffset = -3,
				uuid = "26d222bc-66ae-361f-8147-9afdae690fef",
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
							gVar = "ACR_TensorReaper4_Hotbar_ArcaneCrest",
							uuid = "e86f97cf-e5d5-10a5-a71e-fdf6b77bbfae",
							variableTogglesType = 2,
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				mechanicTime = 706.58990945806,
				name = "Arcane Crest",
				timeRange = true,
				timelineIndex = 143,
				timerStartOffset = -3,
				uuid = "f65f4c24-720f-fc58-b178-08803d46f3bd",
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
				name = "Lj\\umad\\autosimv2.6",
				uuid = "6fa33223-d51a-9a87-6c78-a14d3b100073",
			},
			inheritanceRoot = "Lj\\umad\\autosimv2.6",
			objectType = "folder",
		},
		
		{
			data = 
			{
				name = "[AutoSim] P3 Boss Dying",
				uuid = "52237833-53ea-b8e0-9849-82288998b841",
				version = 2,
			},
			inheritedObjectUUID = "de6b998f-cd15-f018-a589-0b4d717cd523",
			inheritedOverwrites = 
			{
				conditions = 
				{
					
					{
						type = "add",
						value = 
						{
							data = 
							{
								name = "DT: HP <= 1.5% HP",
								uuid = "a99f5edc-e2df-f7ba-a689-e0384bdf575e",
								version = 3,
							},
							inheritedObjectUUID = "cd523053-646a-4abc-8cbc-7e9865b98205",
							inheritedOverwrites = 
							{
								hpType = 2,
								hpValue = 1,
							},
						},
					},
				},
			},
		},
	},
	[151] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Lj\\umad\\autosimv2.6",
				uuid = "9a9222bd-08a9-3241-a5fe-78c798630b0d",
			},
			inheritanceRoot = "Lj\\umad\\autosimv2.6",
			objectType = "folder",
		},
	},
	[153] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Lj\\umad\\autosimv2.6",
				uuid = "6e8bc32b-c51c-8a2f-2b42-6919eb762c7b",
			},
			inheritanceRoot = "Lj\\umad\\autosimv2.6",
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
							gVar = "ACR_TensorReaper4_Hotbar_ArcaneCrest",
							uuid = "b7cd2eb5-65ee-b202-8e32-f46908d72a55",
							variableTogglesType = 2,
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				mechanicTime = 826.02524789261,
				name = "Arcane Crest",
				timeRange = true,
				timelineIndex = 153,
				timerStartOffset = -3,
				uuid = "4bcb6a6a-c6db-01b4-ad43-6ee558989d61",
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
				name = "Lj\\umad\\autosimv2.6",
				uuid = "7816263f-eae0-959b-8be1-46451614e28f",
			},
			inheritanceRoot = "Lj\\umad\\autosimv2.6",
			objectType = "folder",
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
							gVar = "ACR_TensorReaper4_Hotbar_ArcaneCrest",
							uuid = "14b6db2c-ddf7-aca4-8aa3-1e8dce8d05a6",
							variableTogglesType = 2,
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				mechanicTime = 855.99403801671,
				name = "Arcane Crest",
				timeRange = true,
				timelineIndex = 159,
				timerStartOffset = -3,
				uuid = "6f289f4c-8f94-2ad0-a443-a321a1f8712a",
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
				name = "Lj\\umad\\autosimv2.6",
				uuid = "de2dcf73-69a4-9057-52b6-5f71a1823083",
			},
			inheritanceRoot = "Lj\\umad\\autosimv2.6",
			objectType = "folder",
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
							gVar = "ACR_TensorReaper4_Hotbar_ArcaneCrest",
							uuid = "7f96a71d-15ef-7a30-a02c-d3ae84719942",
							variableTogglesType = 2,
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				mechanicTime = 973.84072239989,
				name = "Arcane Crest",
				timeRange = true,
				timelineIndex = 173,
				timerStartOffset = -3,
				uuid = "c17064de-d44d-3660-8c33-4f5efc39f22c",
				version = 2,
			},
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
							gVar = "ACR_TensorReaper4_Hotbar_ArcaneCrest",
							uuid = "22c02d9a-55e1-4781-9b15-0e338d82153d",
							variableTogglesType = 2,
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				mechanicTime = 1055.6337560913,
				name = "Arcane Crest",
				timeRange = true,
				timelineIndex = 204,
				timerStartOffset = -3,
				uuid = "d93ddebd-c432-3f2f-8263-8803ea857f31",
				version = 2,
			},
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
							gVar = "ACR_TensorReaper4_Hotbar_ArcaneCrest",
							uuid = "39d26823-754f-4e16-9a3d-30597e5bdca5",
							variableTogglesType = 2,
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				mechanicTime = 1125.2071474604,
				name = "Arcane Crest",
				timeRange = true,
				timelineIndex = 219,
				timerStartOffset = -3,
				uuid = "04b6edc3-a3cc-cf01-9edb-d01c7475ca72",
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
				name = "Lj\\umad\\autosimv2.6",
				uuid = "26cc8ce6-2ef0-aa8a-404e-c3b4bffea8f6",
			},
			inheritanceRoot = "Lj\\umad\\autosimv2.6",
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
							gVar = "ACR_TensorReaper4_Hotbar_ArcaneCrest",
							uuid = "dbbe92a6-d168-26cf-826c-3b2c20afdfef",
							variableTogglesType = 2,
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				enabled = false,
				mechanicTime = 1154.7445474604,
				name = "Arcane Crest",
				timeRange = true,
				timelineIndex = 226,
				timerStartOffset = -3,
				uuid = "c233e09b-73a1-29ea-a220-ccac781758b6",
				version = 2,
			},
		},
	},
	inheritedProfiles = 
	{
		"Lj\\umad\\autosimv2.6",
	},
	timelineName = "dmu",
	version = "1.5.5",
}



return tbl