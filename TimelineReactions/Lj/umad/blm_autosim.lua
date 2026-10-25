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
							aType = "Misc",
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
									"29682a5c-4f53-02e6-baf4-06d6bded0ae8",
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
							uuid = "a5445cdd-dd21-203a-baea-9be108206f47",
							version = 2.1,
						},
						inheritedIndex = 5,
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
							eventCountdownTime = 3.5,
							name = "<= 3.5s",
							uuid = "29682a5c-4f53-02e6-baf4-06d6bded0ae8",
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
				uuid = "b0c28d30-abde-0e23-983c-242899503dbe",
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
				uuid = "36e527a9-ffe6-9d06-9662-8de91e977334",
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
							gVar = "ACR_TensorNuke4_CD",
							uuid = "49f643e0-e835-0feb-959a-5ad49d1a03b8",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "ACR",
							gVar = "ACR_TensorNuke4_AOE",
							uuid = "8a3eee51-66a8-ff2c-95cd-d4d289790ec0",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "ACR",
							gVar = "ACR_TensorNuke4_SmartAOE",
							uuid = "09a65249-bdca-94eb-8815-2f864e00f063",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "ACR",
							gVar = "ACR_TensorNuke4_LeyLines",
							uuid = "1f4c9c37-bcad-a9cc-80fb-3f07f249c0ea",
							version = 2.1,
						},
						inheritedIndex = 4,
					},
					
					{
						data = 
						{
							aType = "ACR",
							gVar = "ACR_TensorNuke4_Thunder",
							uuid = "cbede249-c167-7452-bce6-af35ba12a805",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "ACR",
							gVar = "ACR_TensorNuke4_SmartDoT",
							uuid = "178f9722-d37a-13ac-af45-b92ca29a1c54",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "ACR",
							gVar = "ACR_TensorNuke4_Scathe",
							uuid = "ebafd38b-b8af-b7a1-b8f6-8cb05523f48b",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "ACR",
							gVar = "ACR_TensorNuke4_SafeJump",
							uuid = "7424496e-521f-eb2c-9590-f113a3a05961",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "ACR",
							gVar = "ACR_TensorNuke4_AutoUmbralSoul",
							uuid = "1c7a3f60-62f0-3385-9768-8a8223496d9d",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "ACR",
							gVar = "ACR_TensorNuke4_KBCancel",
							gVarValue = 2,
							uuid = "ce105aff-9589-458d-8397-d86bbb38862c",
							version = 2.1,
						},
						inheritedIndex = 10,
					},
					
					{
						data = 
						{
							aType = "ACR",
							gVar = "ACR_TensorNuke4_Potion",
							uuid = "31d65d29-80e9-2ab3-afbe-a3594ec72b98",
							version = 2.1,
						},
						inheritedIndex = 11,
					},
					
					{
						data = 
						{
							aType = "ACR",
							gVar = "ACR_TensorNuke4_Burn",
							gVarValue = 2,
							uuid = "c63aa9d6-e9d7-2a22-99e0-376f476315f8",
							version = 2.1,
						},
						inheritedIndex = 12,
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
				uuid = "8e47d6da-74b1-1033-b95a-67c411b66d70",
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
				uuid = "0f3c6dc5-59db-c276-ba48-8b4a65f9decc",
				version = 2,
			},
			inheritedIndex = 4,
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "Lj\\umad\\autosimv2.6",
				uuid = "a33c80a8-7042-a974-c6b8-5be62d63a998",
			},
			inheritanceRoot = "Lj\\umad\\autosimv2.6",
			objectType = "folder",
		},
	}, 
	[3] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Lj\\umad\\autosimv2.6",
				uuid = "a3a0922a-fafd-d326-a577-b334cd8cc75a",
			},
			inheritanceRoot = "Lj\\umad\\autosimv2.6",
			objectType = "folder",
		},
	},
	[8] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Lj\\umad\\autosimv2.6",
				uuid = "7b18094f-f990-0ffb-d434-dc4dee3a11ff",
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
				uuid = "c134bc9a-6418-fee6-5e1e-5fc813fa9d4a",
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
				uuid = "ccc8fb54-b2c8-1980-41e5-bbba1933b204",
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
				uuid = "810c0e77-9c20-86cb-d70c-7b99e8a8f467",
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
				uuid = "ed2e8a7e-a338-068a-8ba4-ac60c07f9d6e",
			},
			inheritanceRoot = "Lj\\umad\\autosimv2.6",
			objectType = "folder",
		},
	},
	[148] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Lj\\umad\\autosimv2.6",
				uuid = "4945b58c-93e7-a690-7804-ab02f317aabc",
			},
			inheritanceRoot = "Lj\\umad\\autosimv2.6",
			objectType = "folder",
		},
	},
	[151] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Lj\\umad\\autosimv2.6",
				uuid = "7acea012-6923-8aa6-4464-e278739944c2",
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
				uuid = "679719f0-de68-60f4-2ca3-f23a551e7d60",
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
				uuid = "111d0adc-1829-9ce8-1124-b3f6a18016cc",
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
				uuid = "26c19ebc-9a24-b700-30c9-5b7ec47c2a2c",
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
				uuid = "d0d4b779-e044-c99d-3a38-9c03eebcd0a9",
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