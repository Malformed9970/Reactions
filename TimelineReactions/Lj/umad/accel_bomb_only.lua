local tbl = 
{
	[151] = 
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
							actionLua = "data.ljChaosAura = \"Lie\"\n--TensorCore.sendParsedChatMessage(\"/e {color:255,0,0} Chaos Lie\")\nself.used = true",
							conditions = 
							{
								
								{
									"98e42c37-f3da-9951-8873-683a6373a0ef",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_CD",
							name = "Chaos Lie",
							uuid = "52a17e1a-1b5e-4cd1-b64a-20b1e471984b",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "data.ljChaosAura = \"Truth\"\n--TensorCore.sendParsedChatMessage(\"/e {color:0,255,0} Chaos Truth\")\nself.used = true",
							conditions = 
							{
								
								{
									"2751e1ce-79f3-5c12-8d49-ad22d1aa2e5b",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_CD",
							name = "Chaos Truth",
							uuid = "1eace700-b94b-f268-aea2-f8475d50e205",
							version = 2.1,
						},
						inheritedIndex = 2,
					},
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "data.ljExdeathAura = \"Lie\"\n--TensorCore.sendParsedChatMessage(\"/e {color:255,0,0} Exdeath Lie\")\nself.used = true",
							conditions = 
							{
								
								{
									"ddbb6b21-ee24-b887-8583-b22ff7e77c59",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_CD",
							name = "Exdeath Lie",
							uuid = "8739abfb-67cc-d4c4-8ed1-f0c22377692a",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "data.ljExdeathAura = \"Truth\"\n--TensorCore.sendParsedChatMessage(\"/e {color:0,255,0} Exdeath Truth\")\nself.used = true",
							conditions = 
							{
								
								{
									"b4eabe06-0c7d-f0d3-9dce-f681b4335b26",
									true,
								},
							},
							gVar = "ACR_RikuSGE3_CD",
							name = "Exdeath Truth",
							uuid = "3d7b414a-ccc3-7c6f-804d-edbe42d423bb",
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
							eventIntValue = 2913,
							name = "Event: Chaos Lie",
							uuid = "98e42c37-f3da-9951-8873-683a6373a0ef",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Event",
							comparator = 3,
							eventArgType = 6,
							eventIntValue = 2914,
							name = "Event: Chaos Truth",
							uuid = "2751e1ce-79f3-5c12-8d49-ad22d1aa2e5b",
							version = 3,
						},
						inheritedIndex = 2,
					},
					
					{
						data = 
						{
							category = "Event",
							comparator = 3,
							eventArgType = 6,
							eventIntValue = 2915,
							name = "Event: Exdeath Lie",
							uuid = "ddbb6b21-ee24-b887-8583-b22ff7e77c59",
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
							uuid = "b4eabe06-0c7d-f0d3-9dce-f681b4335b26",
							version = 3,
						},
					},
				},
				eventType = 25,
				loop = true,
				mechanicTime = 812.05085714286,
				name = "[Lj Data] Record Truth & Lie",
				timeRange = true,
				timelineIndex = 151,
				timerEndOffset = 58,
				timerStartOffset = 4,
				uuid = "c0437f4d-591a-07fd-9af6-aa11fdf8825a",
				version = 2,
			},
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
							aType = "Lua",
							actionLua = "data.ljAccelBomb = true\n--SendTextCommand(\"/e Real Accel Bomb\")\nself.used = true",
							conditions = 
							{
								
								{
									"274f2dad-f7c1-b419-ad16-a81bca11d777",
									true,
								},
								
								{
									"2e0c317c-61c3-1330-a3f2-a7dc0efeb4ba",
									true,
								},
							},
							endIfUsed = true,
							gVar = "ACR_RikuWAR3_CD",
							name = "Stillness",
							uuid = "5c32ecc6-92bc-aab9-bfe4-eb1224e52be8",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "data.ljAccelBomb = false\n--SendTextCommand(\"/e Fake Accel Bomb\")\nself.used = true",
							conditions = 
							{
								
								{
									"274f2dad-f7c1-b419-ad16-a81bca11d777",
									false,
								},
								
								{
									"2e0c317c-61c3-1330-a3f2-a7dc0efeb4ba",
									true,
								},
							},
							endIfUsed = true,
							gVar = "ACR_RikuSGE3_CD",
							name = "Motion",
							uuid = "10d58f6e-0d5c-435b-a700-fc777dc939c4",
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
							conditionLua = "return data.ljExdeathAura == \"Truth\"",
							name = "Exdeath: Truth",
							uuid = "274f2dad-f7c1-b419-ad16-a81bca11d777",
							version = 3,
						},
						inheritedIndex = 1,
					},
					
					{
						data = 
						{
							buffID = 5546,
							category = "Self",
							name = "Self: Acceleration Bomb Buff",
							uuid = "2e0c317c-61c3-1330-a3f2-a7dc0efeb4ba",
							version = 3,
						},
					},
				},
				mechanicTime = 826.02524789261,
				name = "[Lj Data] Get Accel Bomb",
				timeRange = true,
				timelineIndex = 153,
				timerEndOffset = 20,
				timerStartOffset = -2,
				uuid = "1283ef9b-42f2-1746-9e5e-723831eaa720",
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
							aType = "Misc",
							conditions = 
							{
								
								{
									"e6d90469-40d1-94f2-8f97-cc86c184c5bb",
									true,
								},
								
								{
									"c3af5c05-6b4e-4922-99a0-dfd62372d6e0",
									true,
								},
							},
							gVar = "ACR_RikuWAR3_CD",
							name = "Stop Everything",
							stopAllActions = true,
							uuid = "220568e8-2c1c-e615-840f-10b1db559f82",
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
									"4663a60a-faba-f023-aa6d-dd2d0807e008",
									true,
								},
							},
							gVar = "ACR_RikuWAR3_CD",
							name = "Resume Everything",
							resumeAllActions = true,
							uuid = "6035706f-bf33-c304-96d1-7a36c2296c40",
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
							conditionLua = "return data.ljAccelBomb == true",
							dequeueIfLuaFalse = true,
							name = "Self: Stillness Bomb",
							uuid = "e6d90469-40d1-94f2-8f97-cc86c184c5bb",
							version = 3,
						},
					},
					
					{
						data = 
						{
							buffCheckType = 3,
							buffDuration = 1.5,
							buffID = 5546,
							category = "Self",
							comparator = 2,
							name = "Self: Accel Bomb Buff <= 1.5s",
							uuid = "c3af5c05-6b4e-4922-99a0-dfd62372d6e0",
							version = 3,
						},
						inheritedIndex = 2,
					},
					
					{
						data = 
						{
							actionUUID = "220568e8-2c1c-e615-840f-10b1db559f82",
							category = "Action",
							name = "Action Used: Stop Everything",
							uuid = "4663a60a-faba-f023-aa6d-dd2d0807e008",
							version = 3,
						},
					},
				},
				mechanicTime = 846.19462329432,
				name = "[Lj Opti] STOP EVERYTHING",
				throttleTime = 2000,
				timeRange = true,
				timelineIndex = 157,
				timerEndOffset = 60,
				timerOffset = -2,
				timerStartOffset = -3,
				uuid = "0bd2611b-f77a-5cdd-a32f-cadeec8db09c",
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
							actionLua = "TensorCore.mGetPlayer():Jump()\nself.used = true",
							conditions = 
							{
								
								{
									"e6d90469-40d1-94f2-8f97-cc86c184c5bb",
									true,
								},
								
								{
									"c3af5c05-6b4e-4922-99a0-dfd62372d6e0",
									true,
								},
							},
							gVar = "ACR_RikuWAR3_CD",
							name = "Jump",
							stopAllActions = true,
							uuid = "220568e8-2c1c-e615-840f-10b1db559f82",
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
							conditionLua = "return data.ljAccelBomb == false",
							dequeueIfLuaFalse = true,
							name = "Self: Motion Bomb",
							uuid = "e6d90469-40d1-94f2-8f97-cc86c184c5bb",
							version = 3,
						},
					},
					
					{
						data = 
						{
							buffCheckType = 3,
							buffDuration = 1.5,
							buffID = 5546,
							category = "Self",
							comparator = 2,
							name = "Self: Accel Bomb Buff <= 1.5s",
							uuid = "c3af5c05-6b4e-4922-99a0-dfd62372d6e0",
							version = 3,
						},
						inheritedIndex = 2,
					},
				},
				loop = true,
				mechanicTime = 846.19462329432,
				name = "[Lj Opti] JUMP FOR MOTION",
				timeRange = true,
				timelineIndex = 157,
				timerEndOffset = 60,
				timerOffset = -2,
				timerStartOffset = -3,
				uuid = "06651dcc-4bd8-c2f2-b20a-d8f99ff095c3",
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
							actionLua = "TensorDrift_SlidecastForceHold = true\nself.used = true",
							conditions = 
							{
								
								{
									"9e92cb67-1086-49f0-a48b-50c019806e0b",
									true,
								},
								
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
									"9e92cb67-1086-49f0-a48b-50c019806e0b",
									true,
								},
								
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
							category = "Lua",
							conditionLua = "return TensorDrift_SlidecastForceHold ~= nil",
							dequeueIfLuaFalse = true,
							name = "TensorDrift",
							uuid = "9e92cb67-1086-49f0-a48b-50c019806e0b",
							version = 3,
						},
						inheritedIndex = 1,
					},
					
					{
						data = 
						{
							buffCheckType = 3,
							buffDuration = 2.5,
							buffID = 5546,
							category = "Self",
							comparator = 2,
							name = "Self: Accel Bomb Buff <= 2.5s",
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
				mechanicTime = 846.19462329432,
				name = "[Lj Opti] Force Slidecast (Stillness/Motion)",
				throttleTime = 3000,
				timeRange = true,
				timelineIndex = 157,
				timerEndOffset = 60,
				timerStartOffset = -3,
				uuid = "16d8e550-9566-1c7a-a8e1-3df4b3520e8d",
				version = 2,
			},
			inheritedIndex = 7,
		},
	},
	inheritedProfiles = 
	{
	},
	timelineName = "dmu",
	version = "1.5.5",
}



return tbl