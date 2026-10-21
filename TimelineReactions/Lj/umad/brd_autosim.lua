local tbl = 
{
	
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Lj\\umad\\autosimv2.6",
				uuid = "9e283899-a26d-2d3d-e70b-3713dd93f769",
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
							aType = "ACR",
							conditions = 
							{
								
								{
									"c30e4e67-cb04-f9d9-a237-599f784648b6",
									true,
								},
								
								{
									"72ef37bf-b158-8431-874d-5dc28f2a700d",
									true,
								},
								
								{
									"8e8a850d-21ea-e5d5-8946-d10c8e668709",
									true,
								},
							},
							gVar = "ACR_TensorRequiem4_Hotbar_Peloton",
							uuid = "4b869acb-6f83-4567-9fa2-5a40f39343bb",
							variableTogglesType = 2,
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
							},
							name = "Reset Anyone's Prepull",
							uuid = "85a9fe0b-d83b-8f7d-8cb8-e58537e88805",
							version = 2.1,
						},
						inheritedIndex = 5,
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
							eventArgType = 3,
							eventCountdownRangeEnd = 4,
							eventCountdownRangeStart = 12,
							name = "Rand: => 4s <= 12s",
							uuid = "8e8a850d-21ea-e5d5-8946-d10c8e668709",
							version = 3,
						},
						inheritedIndex = 3,
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
				uuid = "6500c4a3-5b5a-23fe-a5cd-e8823811f3be",
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
				uuid = "615167bd-48df-854e-a16e-a32ce26af821",
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
							gVar = "ACR_TensorRequiem4_CD",
							uuid = "49f643e0-e835-0feb-959a-5ad49d1a03b8",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "ACR",
							gVar = "ACR_TensorRequiem4_AOE",
							uuid = "8a3eee51-66a8-ff2c-95cd-d4d289790ec0",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "ACR",
							gVar = "ACR_TensorRequiem4_SmartAOE",
							uuid = "09a65249-bdca-94eb-8815-2f864e00f063",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "ACR",
							gVar = "ACR_TensorRequiem4_DoTs",
							uuid = "cbede249-c167-7452-bce6-af35ba12a805",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "ACR",
							gVar = "ACR_TensorRequiem4_SmartDoT",
							uuid = "1f4c9c37-bcad-a9cc-80fb-3f07f249c0ea",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "ACR",
							gVar = "ACR_TensorRequiem4_Songs",
							uuid = "178f9722-d37a-13ac-af45-b92ca29a1c54",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "ACR",
							gVar = "ACR_TensorRequiem4_Apex",
							uuid = "ebafd38b-b8af-b7a1-b8f6-8cb05523f48b",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "ACR",
							gVar = "ACR_TensorRequiem4_Sidewinder",
							uuid = "7424496e-521f-eb2c-9590-f113a3a05961",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "ACR",
							gVar = "ACR_TensorRequiem4_AutoInterrupt",
							uuid = "6849070c-d470-a9dd-abd0-691077e5b78b",
							version = 2.1,
						},
						inheritedIndex = 9,
					},
					
					{
						data = 
						{
							aType = "ACR",
							gVar = "ACR_TensorRequiem4_Potion",
							uuid = "1c7a3f60-62f0-3385-9768-8a8223496d9d",
							version = 2.1,
						},
						inheritedIndex = 10,
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
				uuid = "7625394b-f3b4-91b3-9608-5e852a8d4cab",
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
							aType = "Lua",
							actionLua = "gStartCombat = false\nTensorDrift_SlidecastForceHold = false\nTensorCore.API.TensorACR.setHardLockFace(false)\nTensorCore.API.TensorACR.toggleLockFace(false)\nTensorCore.mGetPlayer():ClearTarget()\nACR_TensorACR_HotbarCancel = true\n\nself.used = true",
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
				uuid = "5b93424a-bdc3-eaff-8103-4f574f993bd5",
				version = 2,
			},
			inheritedIndex = 10,
		},
	}, 
	[8] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Lj\\umad\\autosimv2.6",
				uuid = "66efdd72-88c1-18d6-167a-457c5d2fa7c2",
			},
			inheritanceRoot = "Lj\\umad\\autosimv2.6",
			objectType = "folder",
		},
	},
	[25] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Lj\\umad\\autosimv2.6",
				uuid = "7c92c2fd-5b29-9f71-28b1-2e9f9c8ece4d",
			},
			inheritanceRoot = "Lj\\umad\\autosimv2.6",
			objectType = "folder",
		},
	},
	[34] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Lj\\umad\\autosimv2.6",
				uuid = "51665afb-c421-26af-e477-e285902a608b",
			},
			inheritanceRoot = "Lj\\umad\\autosimv2.6",
			objectType = "folder",
		},
	},
	[44] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Lj\\umad\\autosimv2.6",
				uuid = "38f58cf0-785b-27ac-4aa8-2d8eb9a9ed40",
			},
			inheritanceRoot = "Lj\\umad\\autosimv2.6",
			objectType = "folder",
		},
	},
	[72] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Lj\\umad\\autosimv2.6",
				uuid = "5f24d825-4213-5a09-bc27-3f43c0737e75",
			},
			inheritanceRoot = "Lj\\umad\\autosimv2.6",
			objectType = "folder",
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
									"3b0f0b07-6b44-2fc8-b2f6-72a4135bfe94",
									true,
								},
							},
							gVar = "ACR_TensorMagnum3_CD",
							setTarget = true,
							targetContentID = 7691,
							targetType = "ContentID",
							uuid = "baf2eb39-6977-b826-8874-c383a772185a",
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
							inRangeValue = 24,
							uuid = "3b0f0b07-6b44-2fc8-b2f6-72a4135bfe94",
							version = 3,
						},
					},
				},
				mechanicTime = 521.36069634686,
				name = "Target Chaos",
				timeRange = true,
				timelineIndex = 101,
				timerEndOffset = 4,
				timerOffset = 2,
				uuid = "acec5997-1f1b-dc3d-b06c-54a50f1d72f5",
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
							aType = "Misc",
							gVar = "ACR_TensorMagnum3_CD",
							setTarget = true,
							targetContentID = 6052,
							targetType = "ContentID",
							uuid = "baf2eb39-6977-b826-8874-c383a772185a",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				mechanicTime = 521.36069634686,
				name = "Target Exdeath",
				timelineIndex = 101,
				timerEndOffset = 3,
				timerOffset = 6,
				timerStartOffset = -3,
				uuid = "e510d13f-07f7-6580-87f5-b61ea3581444",
				version = 2,
			},
			inheritedIndex = 2,
		},
	},
	[148] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Lj\\umad\\autosimv2.6",
				uuid = "d626f89d-5efe-c639-6501-3b37322df42d",
			},
			inheritanceRoot = "Lj\\umad\\autosimv2.6",
			objectType = "folder",
		},
		
		{
			data = 
			{
				name = "[AutoSim] P3 Boss Dying",
				uuid = "5c54f150-6fb6-6aab-a64d-ba7fcc53f644",
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
								name = "DT: HP <= 1 HP",
								uuid = "49e996a5-8742-6e22-9981-ca8b306c4f55",
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
				uuid = "c102c757-bc11-7f63-8304-7cf170f90627",
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
				uuid = "df868b69-e84f-4d95-9084-aa9f18994779",
			},
			inheritanceRoot = "Lj\\umad\\autosimv2.6",
			objectType = "folder",
		},
	},
	[157] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Lj\\umad\\autosimv2.6",
				uuid = "66c2c2d5-0743-8929-9062-510bd2f7a9a5",
			},
			inheritanceRoot = "Lj\\umad\\autosimv2.6",
			objectType = "folder",
		},
	},
	[171] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Lj\\umad\\autosimv2.6",
				uuid = "60076941-6f8b-a3ed-d64c-96474e08a251",
			},
			inheritanceRoot = "Lj\\umad\\autosimv2.6",
			objectType = "folder",
		},
	},
	[226] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Lj\\umad\\autosimv2.6",
				uuid = "14a59144-9384-aa90-1803-177acb6f8c94",
			},
			inheritanceRoot = "Lj\\umad\\autosimv2.6",
			objectType = "folder",
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