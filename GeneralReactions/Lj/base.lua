local tbl = 
{
	
	{
		data = 
		{
			displayPath = "",
			name = "Lifecycle",
			uuid = "108fb4aa-3077-33d2-bac2-bdbe3d3a6774",
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
						actionLua = "ml_global_information.ToggleRun()\nself.used = true",
						conditions = 
						{
							
							{
								"7ad85a47-c001-3ac1-b0c3-b2bf308876b5",
								true,
							},
						},
						gVar = "ACR_TensorViper3_CD",
						name = "Disable Assist",
						uuid = "18592099-f4f3-158a-a00b-c7381b19612b",
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
						dequeueIfLuaFalse = true,
						name = "Assist Enabled",
						uuid = "7ad85a47-c001-3ac1-b0c3-b2bf308876b5",
						version = 3,
					},
				},
			},
			displayPath = "Lifecycle",
			eventType = 10,
			name = "Lj; OnDeath",
			uuid = "beb284cf-d14a-48ec-8e1a-04c8cb2acb4b",
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
						aType = "Lua",
						actionLua = "local profile = gACRSelectedProfiles[TensorCore.mGetPlayer().job]\n\nif profile then\n    for i = 1, 5 do\n    \tTensorCore.API.TensorACR.setHotbarEnabled(\"ACR_\" .. profile .. \"_Hotbar_DutyAction\" .. i, false)\n    end\nend\nself.used = true",
						conditions = 
						{
							
							{
								"672418be-39f9-2b3b-a1ad-032e62ae0280",
								true,
							},
							
							{
								"df74efb9-4705-7052-b131-02edb2689619",
								false,
							},
						},
						gVar = "ACR_TensorMagnum3_CD",
						name = "Disable Duty Hotbars",
						uuid = "c66c4f6c-f756-08eb-b3d4-d2b06ec97f1f",
						version = 2.1,
					},
				},
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "local profile = gACRSelectedProfiles[TensorCore.mGetPlayer().job]\n\nif profile then\n    for i = 1, 5 do\n    \tTensorCore.API.TensorACR.setHotbarEnabled(\"ACR_\" .. profile .. \"_Hotbar_DutyAction\" .. i, true)\n    end\nend\nself.used = true",
						conditions = 
						{
							
							{
								"672418be-39f9-2b3b-a1ad-032e62ae0280",
								true,
							},
							
							{
								"df74efb9-4705-7052-b131-02edb2689619",
								true,
							},
						},
						gVar = "ACR_TensorMagnum3_CD",
						name = "Enable Duty Hotbars",
						uuid = "5ddea810-6d65-623e-ae9d-0d09e2070608",
						version = 2.1,
					},
				},
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "ljHighendDuty = false\nlocal dutyInfo = Duty:GetActiveDutyInfo()\n\nif dutyInfo then\n    local highendKeywords = {\"Extreme\", \"Minstrel\", \"Savage\", \"Unreal\", \"Chaotic\", \"Ultimate\"}\n\n    for _, keyword in ipairs(highendKeywords) do\n        if dutyInfo.name:find(keyword) then\n            ljHighendDuty = true\n            break\n        end\n    end\nend\n\nself.used = true",
						gVar = "ACR_RikuWAR3_CD",
						name = "Set Highend Duty",
						uuid = "7c1ac2b9-7ffb-7f47-94e3-ba7ff9a8a93f",
						version = 2.1,
					},
				},
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "local mt = MoogleTelegraphs\nif mt == nil or mt.Settings == nil then\n    self.used = true\n    return\nend\nlocal S = mt.Settings\nlocal tables = {c = S.aoeIDUserSetCones, d = S.aoeIDUserSetDonuts, o = S.aoeIDUserSetCircles}\nlocal fields = {c = \"angle\", d = \"radius\", o = \"radius\"}\nlocal map = eventArgs.newMapID\n--[[ {table, aoeID, angle or radius, name, maps, source}; an empty map list applies on every map ]]\nlocal entries = {\n{\"c\",984,120,\"Burning Cyclone (Inferno Drake)\",{1041}},\n{\"c\",1382,90,\"Slipstream (Garuda)\",{155,294,297,398}},\n{\"c\",1875,45,\"Darkness (Amon)\",{134,156,281,335,363,372,397}},\n{\"c\",2353,45,\"Vile Utterance (Glasya Labolas)\",{372}},\n{\"c\",3249,360,\"Mini (Cerberus)\",{151}},\n{\"c\",3723,270,\"Slaughter (Ravana)\",{398,432}},\n{\"c\",6100,45,\"Mortal Ray (Forgall)\",{556}},\n{\"c\",6514,360,\"Thunder III (Sophia)\",{576}},\n{\"c\",7306,45,\"Void Blizzard III (Deathgaze Hollow)\",{627}},\n{\"c\",7918,90,\"Tail Smash (Bone Crawler)\",{620}},\n{\"c\",7920,90,\"Ripper Claw (Bone Crawler)\",{620}},\n{\"c\",7924,90,\"Heat Breath (Bone Crawler)\",{620}},\n{\"c\",9318,150,\"Ribbit (Halicarnassus)\",{693}},\n{\"c\",10323,120,\"Mangle (Rathalos)\",{762}},\n{\"c\",10339,90,\"Mangle (Rathalos)\",{762}},\n{\"c\",10346,120,\"Mangle (Rathalos)\",{761}},\n{\"c\",10362,90,\"Mangle (Rathalos)\",{761}},\n{\"c\",10462,180,\"Gravitational Wave (Kefka)\",{751,755}},\n{\"c\",10463,180,\"Intemperate Will (Kefka)\",{751,755}},\n{\"c\",13026,90,\"Hotspot (Suzaku)\",{811}},\n{\"c\",13551,150,\"Toad Choir (Aenc Thon, Lord of the Lengthsome Gait)\",{821}},\n{\"c\",14311,180,\"Handprint (Seiryu)\",{825}},\n{\"c\",14312,180,\"Handprint (Seiryu)\",{825}},\n{\"c\",14694,90,\"Dread Gaze (Arena Eye)\",{796}},\n{\"c\",14921,90,\"Spine Lash (Raya-O-Senna)\",{827}},\n{\"c\",15000,120,\"The Scarlet Whisper (A-Ruhn-Senna)\",{827}},\n{\"c\",15050,90,\"Ripper Claw (Arena Manticore)\",{796}},\n{\"c\",15324,90,\"Page Tear (Epilogi)\",{796}},\n{\"c\",15512,30,\"Towerfall (Batsquatch)\",{823}},\n{\"c\",15599,60,\"Swift Spill (Amphibious Talos)\",{836}},\n{\"c\",16739,90,\"Echo of the Lost (Hades)\",{847}},\n{\"c\",16740,90,\"Echo of the Lost (Hades)\",{847}},\n{\"c\",16830,120,\"Rusting Claw (O Poorest Pauldia)\",{816}},\n{\"c\",16957,120,\"The Lion's Breath (Tyger)\",{813,877}},\n{\"c\",16958,120,\"The Ram's Breath (Tyger)\",{813,877}},\n{\"c\",16959,120,\"The Dragon's Breath (Tyger)\",{813,877}},\n{\"c\",16970,120,\"Odious Miasma (Nariphon)\",{813,877}},\n{\"c\",17446,180,\"Left Cheek (Forgiven Pedantry)\",{814}},\n{\"c\",17448,180,\"Right Cheek (Forgiven Pedantry)\",{814}},\n{\"c\",17847,120,\"Cryptcall (Ixtab)\",{817}},\n{\"c\",18015,120,\"Numbing Noise (Sugaar)\",{815}},\n{\"c\",18016,120,\"Tail Snap (Sugaar)\",{815}},\n{\"c\",18026,120,\"Wild Horn (Tarchia)\",{815}},\n{\"c\",18027,60,\"Trounce (Tarchia)\",{815}},\n{\"c\",18127,180,\"Heavenly Cyclone (Forgiven Rebellion)\",{815}},\n{\"c\",22233,180,\"Barbs of Agony (Shadowkeeper)\",{943}},\n{\"c\",22380,90,\"Firebreathe (Dahu)\",{937}},\n{\"c\",22552,270,\"Optimal Play (Queen's Knight)\",{937}},\n{\"c\",22852,180,\"Blade of Entropy (Trinity Avowed)\",{937}},\n{\"c\",22853,180,\"Blade of Entropy (Trinity Avowed)\",{937}},\n{\"c\",22856,180,\"Blade of Entropy (Trinity Avowed)\",{937}},\n{\"c\",22857,180,\"Blade of Entropy (Trinity Avowed)\",{937}},\n{\"c\",22872,180,\"Blade of Entropy (Trinity Avowed)\",{937}},\n{\"c\",22873,180,\"Blade of Entropy (Trinity Avowed)\",{937}},\n{\"c\",22876,180,\"Blade of Entropy (Trinity Avowed)\",{937}},\n{\"c\",22877,180,\"Blade of Entropy (Trinity Avowed)\",{937}},\n{\"c\",25238,20,\"Manusya Blizzard III (Minduruva)\",{952}},\n{\"c\",25266,20,\"Delta Blizzard III (The Magus Sisters)\",{952}},\n{\"c\",25734,120,\"Pyric Breath (Ladon Lord)\",{974}},\n{\"c\",25735,120,\"Pyric Breath (Ladon Lord)\",{974}},\n{\"c\",25736,120,\"Pyric Breath (Ladon Lord)\",{974}},\n{\"c\",26073,180,\"Gaoler's Flail (Erichthonios)\",{1002}},\n{\"c\",26074,180,\"Gaoler's Flail (Erichthonios)\",{1002}},\n{\"c\",27069,60,\"Ancient Blizzard (Petalodus)\",{960,961,1027}},\n{\"c\",27223,120,\"Butcher (Sugriva)\",{957}},\n{\"c\",27224,120,\"Rip (Sugriva)\",{957}},\n{\"c\",27234,90,\"Brackish Rain (Yilan)\",{957}},\n{\"c\",27270,90,\"Tail Swipe (Arch-Eta)\",{960,1027}},\n{\"c\",27309,90,\"Quintuple Sneeze (Burfurlur the Canny)\",{956}},\n{\"c\",27310,90,\"Quintuple Sneeze (Burfurlur the Canny)\",{956}},\n{\"c\",27314,120,\"Uppercut (Burfurlur the Canny)\",{956}},\n{\"c\",27318,120,\"Princess's Threnody (Mousse Princess)\",{959}},\n{\"c\",27350,180,\"Right Maw (Ophioneus)\",{961}},\n{\"c\",27351,180,\"Left Maw (Ophioneus)\",{961}},\n{\"c\",27378,90,\"Plummet (Fan Ail)\",{960,1027}},\n{\"c\",27495,180,\"Left Hammer (Gurangatch)\",{961}},\n{\"c\",27496,180,\"Right Hammer (Gurangatch)\",{961}},\n{\"c\",27499,180,\"Octuple Slammer (Gurangatch)\",{961}},\n{\"c\",27500,180,\"Octuple Slammer (Gurangatch)\",{960,961,1027}},\n{\"c\",27626,180,\"Long Lick (Sphatika)\",{957}},\n{\"c\",27627,180,\"Long Lick (Sphatika)\",{957}},\n{\"c\",27628,180,\"Long Lick (Sphatika)\",{957}},\n{\"c\",27629,180,\"Long Lick (Sphatika)\",{957}},\n{\"c\",27630,180,\"Hind Whip (Sphatika)\",{957}},\n{\"c\",27631,180,\"Hind Whip (Sphatika)\",{957}},\n{\"c\",27632,180,\"Hind Whip (Sphatika)\",{957}},\n{\"c\",27633,180,\"Hind Whip (Sphatika)\",{957}},\n{\"c\",27641,180,\"Fore Interment (Ker)\",{956,957,958,959,960,961}},\n{\"c\",27642,180,\"Rear Interment (Ker)\",{956,957,958,959,960,961}},\n{\"c\",27643,180,\"Right Interment (Ker)\",{956,957,958,959,960,961}},\n{\"c\",27644,180,\"Left Interment (Ker)\",{956,957,958,959,960,961}},\n{\"c\",27661,180,\"Fore Interment (Ker)\",{956,957,958,959,960,961}},\n{\"c\",27662,180,\"Rear Interment (Ker)\",{956,957,958,959,960,961}},\n{\"c\",27663,180,\"Right Interment (Ker)\",{956,957,958,959,960,961}},\n{\"c\",27664,180,\"Left Interment (Ker)\",{956,957,958,959,960,961}},\n{\"c\",27693,90,\"Quintuple Sneeze (Burfurlur the Canny)\",{956}},\n{\"c\",27714,180,\"Long Lick (Sphatika)\",{957}},\n{\"c\",27715,180,\"Hind Whip (Sphatika)\",{957}},\n{\"c\",27990,180,\"Left in the Dark (Lucky Face)\",{1000}},\n{\"c\",27992,180,\"Right in the Dark (Lucky Face)\",{1000}},\n{\"c\",27996,180,\"Right in the Dark (Lucky Face)\",{1000}},\n{\"c\",28066,180,\"Gaoler's Flail (Erichthonios)\",{1002}},\n{\"c\",28067,180,\"Gaoler's Flail (Erichthonios)\",{1002}},\n{\"c\",29045,90,\"Byregot's Ward (Byregot)\",{1054}},\n{\"c\",29368,180,\"Hell of Fire (Nald'thal)\",{1054}},\n{\"c\",29370,180,\"Hell of Fire (Nald'thal)\",{1054}},\n{\"c\",29868,45,\"Firesteel Fracture (Shadowcaster Zeless Gah)\",{1069}},\n{\"c\",30299,180,\"Rush of Might (Gladiator of Sil'dih)\",{1075,1076},\"Anyone's Reactions\"},\n{\"c\",30300,180,\"Rush of Might (Gladiator of Sil'dih)\",{1075,1076},\"Anyone's Reactions\"},\n{\"c\",30547,45,\"Squeaky Clean (Silkie)\",{1075,1076}},\n{\"c\",30548,45,\"Squeaky Clean (Silkie)\",{1075,1076}},\n{\"c\",30549,200,\"Squeaky Clean (Silkie)\",{1075,1076},\"Anyone's Reactions\"},\n{\"c\",30550,225,\"Squeaky Clean (Silkie)\",{1075,1076}},\n{\"c\",30557,45,\"Fizzling Duster (Silkie)\",{1075,1076},\"Anyone's Reactions\"},\n{\"c\",30570,45,\"Fizzling Duster (Silkie)\",{1075,1076},\"Anyone's Reactions\"},\n{\"c\",30580,200,\"Squeaky Clean (Silkie)\",{1075,1076},\"Anyone's Reactions\"},\n{\"c\",30592,45,\"Fizzling Duster (Silkie)\",{1075,1076},\"Anyone's Reactions\"},\n{\"c\",30605,45,\"Fizzling Duster (Silkie)\",{1075,1076},\"Anyone's Reactions\"},\n{\"c\",30621,180,\"Rush of Might (Gladiator of Sil'dih)\",{1075,1076},\"Anyone's Reactions\"},\n{\"c\",30622,180,\"Rush of Might (Gladiator of Sil'dih)\",{1075,1076},\"Anyone's Reactions\"},\n{\"c\",30692,180,\"Whip Back\",{}},\n{\"c\",31915,20,\"Dark Blizzard III (Ascian Prime)\",{1110}},\n{\"c\",31916,20,\"Dark Blizzard III (Ascian Prime)\",{1110}},\n{\"c\",31917,20,\"Dark Blizzard III (Ascian Prime)\",{1110}},\n{\"c\",31918,20,\"Dark Blizzard III (Ascian Prime)\",{1110}},\n{\"c\",31919,20,\"Dark Blizzard III (Ascian Prime)\",{1110}},\n{\"c\",32251,30,\"Earth Shaker (Gymnasiou Styphnolobion)\",{1123}},\n{\"c\",32370,120,\"Odious Croak (Zuro Roggo)\",{1111}},\n{\"c\",33015,180,\"Odious Atmosphere (Gymnasiou Megakantha)\",{1123}},\n{\"c\",33016,180,\"Odious Atmosphere (Gymnasiou Megakantha)\",{1123}},\n{\"c\",33473,180,\"Trinity of Souls (Athena)\",{1153,1154}},\n{\"c\",33474,180,\"Trinity of Souls (Athena)\",{1153,1154}},\n{\"c\",33505,180,\"Trinity of Souls (Athena)\",{1154}},\n{\"c\",33506,180,\"Trinity of Souls (Athena)\",{1154}},\n{\"c\",33511,180,\"Trinity of Souls (Athena)\",{1154}},\n{\"c\",33512,180,\"Trinity of Souls (Athena)\",{1154}},\n{\"c\",34931,270,\"Arcane Blight (Lala)\",{1176}},\n{\"c\",35479,180,\"Hundred Lashings (Ketuduke)\",{1176}},\n{\"c\",35872,30,\"Death's Journey (Durante)\",{1164}},\n{\"c\",36015,180,\"The Face of Wrath (Asura)\",{509,1136}},\n{\"c\",36016,180,\"The Face of Delight (Asura)\",{509,1136}},\n{\"c\",37164,180,\"Right Wingblade (Rrax Yity'a)\",{1189}},\n{\"c\",37165,180,\"Left Wingblade (Rrax Yity'a)\",{1189}},\n{\"c\",37166,180,\"Right Wingblade (Rrax Yity'a)\",{1189}},\n{\"c\",37167,180,\"Left Wingblade (Rrax Yity'a)\",{1189}},\n{\"c\",37308,120,\"Noxious Sap (Neyoozoteel)\",{1189}},\n{\"c\",37886,270,\"Murderous Mist (Brute Bomber)\",{1230},\"Anyone's Reactions\"},\n{\"c\",37916,60,\"Infernal Spin (Brute Bomber)\",{1230}},\n{\"c\",37917,75,\"Infernal Spin (Brute Bomber)\",{1230},\"Anyone's Reactions\"},\n{\"c\",37918,75,\"Infernal Spin (Brute Bomber)\",{1230},\"Anyone's Reactions\"},\n{\"c\",37943,180,\"One-two Paw (Black Cat)\",{1226}},\n{\"c\",37944,180,\"One-two Paw (Black Cat)\",{1226}},\n{\"c\",37970,180,\"Leaping One-two Paw (Black Cat)\",{1226},\"Anyone's Reactions\"},\n{\"c\",37971,180,\"Leaping One-two Paw (Black Cat)\",{1226},\"Anyone's Reactions\"},\n{\"c\",37973,180,\"Leaping One-two Paw (Black Cat)\",{1226}},\n{\"c\",37974,180,\"Leaping One-two Paw (Black Cat)\",{1226}},\n{\"c\",37988,180,\"One-two Paw (Black Cat)\",{1226},\"Anyone's Reactions\"},\n{\"c\",37989,180,\"One-two Paw (Black Cat)\",{1226},\"Anyone's Reactions\"},\n{\"c\",37990,180,\"One-two Paw (Black Cat)\",{1226}},\n{\"c\",37992,180,\"One-two Paw (Black Cat)\",{1226}},\n{\"c\",37993,180,\"One-two Paw (Black Cat)\",{1226},\"Anyone's Reactions\"},\n{\"c\",37994,180,\"One-two Paw (Black Cat)\",{1225,1226},\"Anyone's Reactions\"},\n{\"c\",38004,180,\"Leaping One-two Paw (Black Cat)\",{1226},\"Anyone's Reactions\"},\n{\"c\",38005,180,\"Leaping One-two Paw (Black Cat)\",{1226},\"Anyone's Reactions\"},\n{\"c\",38007,180,\"Leaping One-two Paw (Black Cat)\",{1226}},\n{\"c\",38008,180,\"Leaping One-two Paw (Black Cat)\",{1226}},\n{\"c\",38380,180,\"Sidewise Spark (Wicked Thunder)\",{1232}},\n{\"c\",38381,180,\"Sidewise Spark (Wicked Thunder)\",{1232}},\n{\"c\",38441,180,\"Sidewise Spark (Wicked Thunder)\",{1232}},\n{\"c\",38442,180,\"Sidewise Spark (Wicked Thunder)\",{1232}},\n{\"c\",39003,120,\"Breath Sequence (Atticus the Primogenitor)\",{1191}},\n{\"c\",39004,120,\"Breath Sequence (Atticus the Primogenitor)\",{1191}},\n{\"c\",39005,120,\"Breath Sequence (Atticus the Primogenitor)\",{1191}},\n{\"c\",39101,90,\"Spinshock (Heshuala)\",{1191}},\n{\"c\",39154,315,\"Prickly Right (Barreltender)\",{1203}},\n{\"c\",39289,180,\"Twinscorched Halo (Sansheya)\",{1190}},\n{\"c\",39290,180,\"Twinscorched Veil (Sansheya)\",{1190}},\n{\"c\",39291,180,\"Twinscorched Halo (Sansheya)\",{1190}},\n{\"c\",39292,180,\"Twinscorched Veil (Sansheya)\",{1190}},\n{\"c\",39466,270,\"Fighter's Flourish (Kirlirger the Abhorrent)\",{1187}},\n{\"c\",39467,270,\"Discordant Flourish (Kirlirger the Abhorrent)\",{1187}},\n{\"c\",39473,270,\"Fighter's Flourish (Kirlirger the Abhorrent)\",{1187}},\n{\"c\",39477,270,\"Fighter's Flourish (Kirlirger the Abhorrent)\",{1187}},\n{\"c\",39507,180,\"Soulless Stream (Arch Aethereater)\",{1187,1188,1189,1190,1191,1192}},\n{\"c\",39508,180,\"Soulless Stream (Arch Aethereater)\",{1187,1188,1189,1190,1191,1192}},\n{\"c\",39509,180,\"Soulless Stream (Arch Aethereater)\",{1187,1188,1189,1190,1191,1192}},\n{\"c\",39510,180,\"Soulless Stream (Arch Aethereater)\",{1187,1188,1189,1190,1191,1192}},\n{\"c\",39538,270,\"Discordant Flourish (Kirlirger the Abhorrent)\",{1187}},\n{\"c\",39601,180,\"Twinscorch (Sansheya)\",{1190}},\n{\"c\",39602,180,\"Twinscorch (Sansheya)\",{1190}},\n{\"c\",39624,45,\"Blizzard II (Crystal Incarnation)\",{1187,1188,1189,1190,1191,1192}},\n{\"c\",39769,60,\"Fire Spin (Brute Bomber)\",{1229}},\n{\"c\",39771,60,\"Infernal Spin (Brute Bomber)\",{1229}},\n{\"c\",39773,180,\"Abyssal Smog (Ihnuxokiy)\",{1188}},\n{\"c\",39828,180,\"Abyssal Smog (Ihnuxokiy)\",{1188}},\n{\"c\",39855,75,\"Infernal Spin (Brute Bomber)\",{1230},\"Anyone's Reactions\"},\n{\"c\",39856,75,\"Infernal Spin (Brute Bomber)\",{1230},\"Anyone's Reactions\"},\n{\"c\",39877,270,\"Discordant Flourish (Kirlirger the Abhorrent)\",{1187}},\n{\"c\",39895,270,\"Murderous Mist (Brute Bomber)\",{1230},\"Anyone's Reactions\"},\n{\"c\",39932,270,\"Sweep the Leg (Byakko)\",{}},\n{\"c\",40193,270,\"Twin Stillness (Futures Rewritten Ultimate)\",{1238},\"Anyone's Reactions\"},\n{\"c\",40194,90,\"Twin Silence (Futures Rewritten Ultimate)\",{1238},\"Anyone's Reactions\"},\n{\"c\",40195,270,\"Twin Silence (Futures Rewritten Ultimate)\",{1238},\"Anyone's Reactions\"},\n{\"c\",40196,90,\"Twin Stillness (Futures Rewritten Ultimate)\",{1238},\"Anyone's Reactions\"},\n{\"c\",40858,120,\"Venom (Fafnir the Forgotten)\",{1248}},\n{\"c\",41184,45,\"Lightning Crossing (Neo Garula)\",{1252}},\n{\"c\",41287,60,\"Ancient Aero III (Repaired Lion)\",{1252},\"Occult Crescent\"},\n{\"c\",41289,60,\"Ancient Stone III (Repaired Lion)\",{1252},\"Occult Crescent\"},\n{\"c\",41292,60,\"Ancient Aero III (Repaired Lion)\",{1252},\"Occult Crescent\"},\n{\"c\",41293,60,\"Ancient Stone III (Repaired Lion)\",{1252},\"Occult Crescent\"},\n{\"c\",41779,180,\"Left Twin Tentacle (Nammu)\",{1252}},\n{\"c\",41781,180,\"Right Twin Tentacle (Nammu)\",{1252}},\n{\"c\",41982,45,\"Resounding Memory (Sisyphus)\",{1252}},\n{\"c\",42000,45,\"Zombie Scales (Advanced Aevis)\",{1252}},\n{\"c\",42001,45,\"Zombie Scales (Advanced Aevis)\",{1252}},\n{\"c\",42093,210,\"Hunter's Harvest (Howling Blade)\",{1263}},\n{\"c\",42113,60,\"Champion's Circuit (Howling Blade)\",{1263}},\n{\"c\",42566,180,\"Sector Bisector (Soldier S0)\",{1266}},\n{\"c\",42567,180,\"Sector Bisector (Soldier S0)\",{1266}},\n{\"c\",42697,180,\"Do the Hustle (Dancing Green)\",{1256}},\n{\"c\",42698,180,\"Do the Hustle (Dancing Green)\",{1256}},\n{\"c\",42788,180,\"Do the Hustle (Dancing Green)\",{1257},\"Anyone's Reactions\"},\n{\"c\",42789,180,\"Do the Hustle (Dancing Green)\",{1257},\"Anyone's Reactions\"},\n{\"c\",42853,45,\"Get Down! (Dancing Green)\",{1257},\"Anyone's Reactions\"},\n{\"c\",42869,180,\"Do the Hustle (Dancing Green)\",{1257},\"Anyone's Reactions\"},\n{\"c\",42870,180,\"Do the Hustle (Dancing Green)\",{1257},\"Anyone's Reactions\"},\n{\"c\",43046,120,\"Mini (Execrator)\",{1252}},\n{\"c\",43083,120,\"Thunder Slash (Zelenia)\",{1270}},\n{\"c\",43126,120,\"Holy Hazard (Zelenia)\",{1270}},\n{\"c\",43129,45,\"Specter of the Lost (Zelenia)\",{1270}},\n{\"c\",43234,120,\"Holy Hazard (Zelenia)\",{1271}},\n{\"c\",43957,180,\"Clamorous Chase (Guardian Arkveld)\",{1306}},\n{\"c\",43960,180,\"Clamorous Chase (Guardian Arkveld)\",{1306}},\n{\"c\",44690,180,\"Left Tentacle (Pilgrim's Traverse Stones 31-40)\",{1284}},\n{\"c\",44691,180,\"Right Tentacle (Pilgrim's Traverse Stones 31-40)\",{1284}},\n{\"c\",45044,180,\"Crimson Riddle (Faithbound Kirin)\",{1304}},\n{\"c\",45045,180,\"Crimson Riddle (Faithbound Kirin)\",{1304}},\n{\"c\",45337,300,\"Thunderclap Concerto (Amdusias)\",{1314}},\n{\"c\",45342,300,\"Thunderclap Concerto (Amdusias)\",{1314}},\n{\"c\",45842,60,\"Watersong (Darya the Sea-maid)\",{1317},\"Daniel DoS\"},\n{\"c\",45843,180,\"Watersong (Darya the Sea-maid)\",{1317},\"Daniel DoS\"},\n{\"c\",46128,90,\"Fire and Fury (The Tyrant)\",{1325}},\n{\"c\",46129,90,\"Fire and Fury (The Tyrant)\",{1325}},\n{\"c\",46373,180,\"Double Sobat (Lindwurm)\",{1327},\"Anyone's Reactions\"},\n{\"c\",46375,180,\"Snaking Kick (Lindwurm)\",{1327},\"Anyone's Reactions\"},\n{\"c\",46673,90,\"Malefic Alignment (Lone Swordmaster)\",{1316}},\n{\"c\",47052,180,\"Surging Current (Darya the Sea-maid)\",{1315}},\n{\"c\",47768,90,\"Blizzard III Blowout (Dancing Mad Ultimate)\",{1363},\"Anyone's Reactions\"},\n{\"c\",47771,90,\"Blizzard III Blowout (Dancing Mad Ultimate)\",{1363},\"Anyone's Reactions\"},\n{\"c\",47774,90,\"Blizzard III Blowout (Dancing Mad Ultimate)\",{1363},\"Anyone's Reactions\"},\n{\"c\",47836,180,\"All Things Ending (Dancing Mad Ultimate)\",{1363},\"Anyone's Reactions\"},\n{\"c\",47837,180,\"All Things Ending (Dancing Mad Ultimate)\",{1363},\"Anyone's Reactions\"},\n{\"c\",48123,180,\"Arm and Hammer (Manticore Piece)\",{1340}},\n{\"c\",48125,180,\"Arm and Hammer (Manticore Piece)\",{1340}},\n{\"c\",48212,60,\"Endless Swipes (Elder Tablitaur Piece)\",{1340}},\n{\"c\",48662,70,\"Hellish Breath (Metamorph)\",{1346}},\n{\"c\",48663,70,\"Hellish Breath (Metamorph)\",{1346}},\n{\"c\",49953,45,\"Gaze of the Void (Enuo)\",{1361}},\n{\"c\",50005,45,\"Gaze of the Void (Enuo)\",{1362},\"Anyone's Reactions\"},\n{\"c\",50071,45,\"Stone III (Patient Kuribu)\",{1346}},\n{\"c\",50146,180,\"Impartial Ruling (Alexander Resurrected)\",{1368}},\n{\"c\",50147,180,\"Impartial Ruling (Alexander Resurrected)\",{1368}},\n{\"c\",50179,120,\"Revolting Ruin III (Dancing Mad Ultimate)\",{1363},\"Anyone's Reactions\"},\n{\"c\",50295,180,\"Benighting Breath (Shinryu)\",{1372}},\n{\"c\",50554,180,\"Knowledge Level 5 Death (Arbatel)\",{1346}},\n{\"c\",50555,180,\"Knowledge Level 3 Flare (Arbatel)\",{1346}},\n{\"c\",50556,180,\"Knowledge Level 4 Holy (Arbatel)\",{1346}},\n{\"c\",50557,120,\"Knowledge Level 5 Death (Arbatel)\",{1269,1278,1346}},\n{\"c\",50558,120,\"Knowledge Level 3 Flare (Arbatel)\",{1269,1278,1346}},\n{\"c\",50559,120,\"Knowledge Level 4 Holy (Arbatel)\",{1269,1278,1346}},\n{\"c\",50560,120,\"Prime Knowledge Level Death (Arbatel)\",{1346}},\n{\"c\",50561,180,\"Prime Knowledge Level Death (Arbatel)\",{1346}},\n{\"c\",50673,120,\"Many-headed Breath (Phantom Hydra)\",{1346}},\n{\"c\",50674,120,\"Many-headed Breath (Phantom Hydra)\",{1346}},\n{\"c\",50675,120,\"Many-headed Breath (Phantom Hydra)\",{1346}},\n{\"c\",50677,70,\"Hellish Breath (Metamorph)\",{1346}},\n{\"c\",50691,180,\"Dual Cut (Conjured Calofisteri)\",{1346},\"Occult Crescent Reactions - Double Trouble CE\"},\n{\"c\",50692,180,\"Dual Cut (Conjured Calofisteri)\",{1346},\"Occult Crescent Reactions - Double Trouble CE\"},\n{\"d\",14388,2.9,\"Kasha (Yojimbo)\",{806}},\n{\"d\",14442,5,\"Whirling Zantetsuken (Raiden)\",{827}},\n{\"d\",14970,8,\"Superstorm (Bestial Node)\",{796}},\n{\"d\",15080,8,\"The Dragon's Voice (Apademak)\",{796}},\n{\"d\",15605,5,\"Breaking Wheel (Storge)\",{836}},\n{\"d\",15610,5,\"Breaking Wheel (Storge)\",{836}},\n{\"d\",15630,5,\"Perfect Contrition (Forgiven Whimsy)\",{822}},\n{\"d\",15887,5,\"Breaking Wheel (Storge)\",{836}},\n{\"d\",16819,5,\"Fourfold Suffering (Aglaope)\",{816}},\n{\"d\",16827,5,\"Bog Bequest (The Mudman)\",{816}},\n{\"d\",16963,8,\"The Dragon's Voice (Tyger)\",{813,877}},\n{\"d\",19730,10,\"Thundering (Wicked Thunder)\",{1232}},\n{\"d\",22551,5,\"Optimal Play (Queen's Knight)\",{937}},\n{\"d\",26875,8,\"Chitinous Trace (Ruminator)\",{959}},\n{\"d\",26877,8,\"Chitinous Trace (Ruminator)\",{959}},\n{\"d\",26879,8,\"Chitinous Advance (Ruminator)\",{959}},\n{\"d\",26916,8,\"Chitinous Reversal (Ruminator)\",{959}},\n{\"d\",27076,5,\"Rotting Elegy (Hulder)\",{956}},\n{\"d\",27332,6,\"Empty Refrain (Narrow-rift)\",{960,1027}},\n{\"d\",27337,6,\"Empty Refrain (Narrow-rift)\",{960,1027}},\n{\"d\",27346,5,\"Leaping Pyric Circle (Ophioneus)\",{961}},\n{\"d\",27352,5,\"Pyric Circle (Ophioneus)\",{961}},\n{\"d\",27364,6,\"You May Approach (Lunatender Queen)\",{959}},\n{\"d\",27371,6,\"Away with You (Lunatender Queen)\",{959}},\n{\"d\",27488,6,\"Empty Promise (Narrow-rift)\",{960,1027}},\n{\"d\",27637,8,\"Ancient Blizzard III (Ker)\",{956,957,958,959,960,961,1027}},\n{\"d\",27652,8,\"Ancient Blizzard III (Ker)\",{956,957,958,959,960,961}},\n{\"d\",27659,8,\"Whispers Manifest (Ker)\",{956,957,958,959,960,961}},\n{\"d\",28000,10,\"Quake Me Away (Lucky Face)\",{1000}},\n{\"d\",28189,10,\"Quake in Your Boots (Lucky Face)\",{1000}},\n{\"d\",29606,8,\"Flames of the Dead (Nald'thal)\",{1054}},\n{\"d\",29607,8,\"Flames of the Dead (Nald'thal)\",{1054}},\n{\"d\",30304,8,\"Ring of Might (Gladiator of Sil'dih)\",{1075,1076}},\n{\"d\",30305,13,\"Ring of Might (Gladiator of Sil'dih)\",{1075,1076}},\n{\"d\",30569,5,\"Bracing Duster (Silkie)\",{1075,1076},\"Anyone's Reactions\"},\n{\"d\",30604,5,\"Bracing Duster (Silkie)\",{1075,1076},\"Anyone's Reactions\"},\n{\"d\",34945,4,\"Rolling Spout (Lala)\",{1176}},\n{\"d\",36853,20,\"Spikesicle (Valigarmanda)\",{1196},\"Anyone's Reactions\"},\n{\"d\",36854,25,\"Spikesicle (Valigarmanda)\",{1196},\"Anyone's Reactions\"},\n{\"d\",36855,30,\"Spikesicle (Valigarmanda)\",{1196},\"Anyone's Reactions\"},\n{\"d\",36856,35,\"Spikesicle (Valigarmanda)\",{1196},\"Anyone's Reactions\"},\n{\"d\",37039,8,\"Stormwall Winds (Starcrier)\",{1189}},\n{\"d\",37771,3,\"Siege of Vollok (Zoraal Ja)\",{1201}},\n{\"d\",37805,24,\"Bedrock Uplift (Crescent Berserker)\",{1252}},\n{\"d\",37806,16,\"Bedrock Uplift (Crescent Berserker)\",{1252}},\n{\"d\",37807,8,\"Bedrock Uplift (Crescent Berserker)\",{1252}},\n{\"d\",38458,10,\"Code Execution (Sally the Sweeper)\",{1192}},\n{\"d\",38524,5,\"Weather Channel (The Forecaster)\",{1192}},\n{\"d\",38532,5,\"Wildfire Conditions (The Forecaster)\",{1192}},\n{\"d\",39284,10,\"Halo of Heat (Sansheya)\",{1190}},\n{\"d\",39294,10,\"Halo of Heat (Sansheya)\",{1190}},\n{\"d\",39463,10,\"Fullmoon Fury (Kirlirger the Abhorrent)\",{1187}},\n{\"d\",39465,10,\"Discordant Moon (Kirlirger the Abhorrent)\",{1187}},\n{\"d\",39514,6,\"Blizzard IV (Arch Aethereater)\",{1187,1188,1189,1190,1191,1192}},\n{\"d\",39626,6,\"Tempting Twist (Honey B. Lovely)\",{1228},\"Anyone's Reactions\"},\n{\"d\",39697,6,\"Tempting Twist (Honey B. Lovely)\",{1228},\"Anyone's Reactions\"},\n{\"d\",39801,6,\"Blizzard IV (Arch Aethereater)\",{1187,1188,1189,1190,1191,1192}},\n{\"d\",39803,6,\"Blizzard IV (Arch Aethereater)\",{1187,1188,1189,1190,1191,1192}},\n{\"d\",39830,6,\"Blizzard IV (Arch Aethereater)\",{1187,1188,1189,1190,1191,1192}},\n{\"d\",39838,6,\"Blizzard IV (Arch Aethereater)\",{1187,1188,1189,1190,1191,1192}},\n{\"d\",39875,10,\"Discordant Moon (Kirlirger the Abhorrent)\",{1187}},\n{\"d\",40118,4,\"The Path of Darkness (Futures Rewritten Ultimate)\",{1238},\"Anyone's Reactions\"},\n{\"d\",40203,4,\"Scythe Kick (Futures Rewritten Ultimate)\",{1238},\"Anyone's Reactions\"},\n{\"d\",40204,4,\"Reflected Scythe Kick (Futures Rewritten Ultimate)\",{1238},\"Anyone's Reactions\"},\n{\"d\",40205,4,\"Reflected Scythe Kick (Futures Rewritten Ultimate)\",{1238},\"Anyone's Reactions\"},\n{\"d\",40307,4,\"The Path of Light (Futures Rewritten Ultimate)\",{1238},\"Anyone's Reactions\"},\n{\"d\",40824,23,\"Hurricane Wing (Fafnir the Forgotten)\",{1248}},\n{\"d\",40834,23,\"Hurricane Wing (Fafnir the Forgotten)\",{1248}},\n{\"d\",40942,9,\"Brittle Impact (Prishe of the Distant Chains)\",{1248}},\n{\"d\",40943,18,\"Brittle Impact (Prishe of the Distant Chains)\",{1248}},\n{\"d\",40944,27,\"Brittle Impact (Prishe of the Distant Chains)\",{1248}},\n{\"d\",41729,7,\"Rotate Right (Demon Tablet)\",{1252},\"CE: Trial by Claw Occult Reactions\"},\n{\"d\",41731,19,\"Rotation (Demon Tablet)\",{1252},\"CE: Trial by Claw Occult Reactions\"},\n{\"d\",41733,7,\"Rotation (Demon Tablet)\",{1252},\"CE: Trial by Claw Occult Reactions\"},\n{\"d\",41734,13,\"Demonic Dark II (Demon Tablet)\",{1252},\"CE: Trial by Claw Occult Reactions\"},\n{\"d\",41735,19,\"Occult Chisel (Demon Tablet)\",{1252},\"CE: Trial by Claw Occult Reactions\"},\n{\"d\",41759,7,\"Crystallized Chaos (Crystal Dragon)\",{1252},\"CE: Trial by Claw Occult Reactions\"},\n{\"d\",41760,13,\"Crystallized Chaos (Crystal Dragon)\",{1252},\"CE: Trial by Claw Occult Reactions\"},\n{\"d\",41761,19,\"Crystallized Chaos (Crystal Dragon)\",{1252},\"CE: Trial by Claw Occult Reactions\"},\n{\"d\",41778,10,\"Far Tide (Nammu)\",{1252}},\n{\"d\",41981,10,\"Resounding Memory (Sisyphus)\",{1252}},\n{\"d\",42111,4,\"Champion's Circuit (Howling Blade)\",{1263}},\n{\"d\",42112,15.85,\"Champion's Circuit (Howling Blade)\",{1263}},\n{\"d\",42114,15.85,\"Champion's Circuit (Howling Blade)\",{1263}},\n{\"d\",42387,22,\"Brutish Swing (Brute Abombinator)\",{1261},\"Anyone's Reactions\"},\n{\"d\",42405,22,\"Brutish Swing (Brute Abombinator)\",{1261},\"Anyone's Reactions\"},\n{\"d\",42729,7,\"Crystallized Chaos (Crystal Dragon)\",{1252},\"CE: Trial by Claw\"},\n{\"d\",42730,13,\"Crystallized Chaos (Crystal Dragon)\",{1252}},\n{\"d\",42731,19,\"Crystallized Chaos (Crystal Dragon)\",{1252},\"CE: Trial by Claw\"},\n{\"d\",42733,7,\"Crystallized Chaos (Crystal Dragon)\",{1252},\"CE: Trial by Claw\"},\n{\"d\",42734,13,\"Crystallized Chaos (Crystal Dragon)\",{1252},\"CE: Trial by Claw\"},\n{\"d\",42735,19,\"Crystallized Chaos (Crystal Dragon)\",{1252},\"CE: Trial by Claw\"},\n{\"d\",42767,5,\"Prismatic Wing (Crystal Dragon)\",{1252}},\n{\"d\",42769,5,\"Made Magic (Crystal Dragon)\",{1252}},\n{\"d\",44238,8,\"The Dragon's Voice (Chimera)\",{1303}},\n{\"d\",44600,3,\"Circle of Lives (Necron)\",{1296}},\n{\"d\",45184,16,\"Aetherblight (Necron)\",{1296}},\n{\"d\",47640,18,\"Fulgurous Fugue (Two-headed Aevis)\",{1346},\"FTM B1 - Occult Reactions\"},\n{\"d\",47686,5,\"Blazeloop (Two-headed Aevis)\",{1346},\"FTM B1 - Occult Reactions\"},\n{\"d\",48414,4,\"Cleansing (Index)\",{1346}},\n{\"d\",48452,4,\"Cleansing (Index)\",{1346}},\n{\"d\",48508,5,\"Farburst (Catoblepas Piece)\",{1341}},\n{\"d\",48634,8,\"The Dragon's Voice (Regnant Chimera)\",{1346}},\n{\"d\",48721,13,\"Rippling Evisceration (Gargoyle Piece)\",{1342}},\n{\"d\",48772,12,\"Arboreal Storm (Treant Piece)\",{1342}},\n{\"d\",48773,18,\"Arboreal Storm (Treant Piece)\",{1342}},\n{\"d\",48774,24,\"Arboreal Storm (Treant Piece)\",{1342}},\n{\"d\",48775,30,\"Arboreal Storm (Treant Piece)\",{1342}},\n{\"d\",49648,10,\"Spin (Sword Dancer)\",{1346},\"FTM B1 - Occult Reactions\"},\n{\"d\",49649,15,\"Spin (Sword Dancer)\",{1346},\"FTM B1 - Occult Reactions\"},\n{\"d\",49650,20,\"Spin (Sword Dancer)\",{1346},\"FTM B1 - Occult Reactions\"},\n{\"d\",49978,40,\"Naught Grows (Enuo)\",{1362},\"Anyone's Reactions\"},\n{\"d\",50120,10,\"Longsword and Sorcery (Patient Kuribu)\",{1346}},\n{\"d\",50121,10,\"Longsword and Sorcery (Patient Kuribu)\",{1346}},\n{\"d\",50201,6,\"Circumscribed Fire (Shantotto the Demon)\",{1368}},\n{\"d\",50293,10,\"Wormwail (Shinryu)\",{1372}},\n{\"o\",47639,18,\"Poison Breath (Two-headed Aevis)\",{1346},\"FTM B1 - Occult Reactions\"},\n{\"o\",47641,20,\"Freezing Fugue (Two-headed Aevis)\",{1346},\"FTM B1 - Occult Reactions\"},\n{\"o\",49978,40,\"Naught Grows (Enuo)\",{1362},\"Unmaking Ex\"}\n}\nfor i = 1, #entries do\n    local e = entries[i]\n    local maps = e[5]\n    local match = #maps == 0\n    for j = 1, #maps do\n        if maps[j] == map then\n            match = true\n            break\n        end\n    end\n    local tbl = tables[e[1]]\n    if match and tbl ~= nil then\n        local field = fields[e[1]]\n        local cur = tbl[e[2]]\n        if cur == nil or cur.name ~= e[4] or cur[field] ~= e[3] or cur.source ~= e[6] then\n            tbl[e[2]] = {name = e[4], [field] = e[3], source = e[6]}\n        end\n    end\nend\nself.used = true",
						name = "Apply MoogleTelegraph Overrides",
						uuid = "16736585-76d0-6b9e-9805-e6525a666457",
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
						conditionLua = "local acr = TensorCore.API.TensorACR\nreturn acr ~= nil and acr.setHotbarEnabled ~= nil\n",
						dequeueIfLuaFalse = true,
						name = "Duty Hotbars Available",
						uuid = "672418be-39f9-2b3b-a1ad-032e62ae0280",
						version = 3,
					},
					inheritedIndex = 1,
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 12,
						localMapIDList = 
						{
							1315,
							1316,
							1317,
							911,
							920,
							936,
							937,
							1075,
							1076,
							1155,
							1156,
							1179,
							1180,
							975,
							1252,
							1069,
							1137,
							1176,
							1346,
						},
						name = "Duty Action Maps",
						uuid = "df74efb9-4705-7052-b131-02edb2689619",
						version = 3,
					},
				},
			},
			displayPath = "Lifecycle",
			eventType = 11,
			name = "Lj: OnMapChange",
			uuid = "c6ed8d71-13e7-ee66-84aa-8301431dbbad",
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
						aType = "Alert",
						alertPriority = 3,
						alertScale = 1,
						alertTTS = true,
						alertText = "Food Missing",
						conditions = 
						{
							
							{
								"400cbbd5-fdc5-738d-9a1e-82140d7ff606",
								true,
							},
							
							{
								"fa3c09da-201e-a1ad-bdd6-1ae07aebcc0a",
								true,
							},
						},
						gVar = "ACR_RikuMNK3_CD",
						name = "Missing Food Alert",
						uuid = "b6dd3ed9-9cac-2828-b29a-3fdd7ebd4a41",
						version = 2.1,
					},
					inheritedIndex = 1,
				},
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "gStartCombat = false\nArgus.deleteTimedShape()\nArgusDrawsPlus.setExtraBrightness(false)\nTensorDrift_SlidecastForceHold = false\nTensorCore.API.TensorACR.setHardLockFace(false)\nTensorCore.API.TensorACR.toggleLockFace(false)\nTensorCore.mGetPlayer():ClearTarget()\nACR_TensorACR_HotbarCancel = true\nACR_RikuRDM3_ResBreakCombo = false\nACR_TensorRequiem3_SongPriority = {\"WM\", \"MB\", \"AP\"}\nACR_TensorRuin3_PetOrder = {\"Titan\", \"Ifrit\", \"Garuda\"}\n\nself.used = true",
						gVar = "ACR_RikuRDM3_CD",
						uuid = "2d20d347-0b35-f029-b731-1faaa96bda8e",
						version = 2.1,
					},
				},
				
				{
					data = 
					{
						aType = "Alert",
						alertPriority = 2,
						alertScale = 1,
						alertTTS = true,
						alertText = "Food Expiring",
						conditions = 
						{
							
							{
								"f38cdf8d-89df-9e72-8d29-1d60a89fb39e",
								true,
							},
							
							{
								"fa3c09da-201e-a1ad-bdd6-1ae07aebcc0a",
								true,
							},
						},
						gVar = "ACR_RikuMNK3_CD",
						name = "Food Expiring Alert",
						uuid = "e894929d-8252-1b84-86a1-107a48463d20",
						version = 2.1,
					},
					inheritedIndex = 3,
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						buffCheckType = 3,
						buffDuration = 912,
						buffID = 48,
						category = "Self",
						comparator = 2,
						dequeueIfLuaFalse = true,
						name = "Food Expiring",
						uuid = "f38cdf8d-89df-9e72-8d29-1d60a89fb39e",
						version = 3,
					},
					inheritedIndex = 1,
				},
				
				{
					data = 
					{
						buffCheckType = 2,
						buffID = 48,
						category = "Self",
						dequeueIfLuaFalse = true,
						name = "Missing Food",
						uuid = "400cbbd5-fdc5-738d-9a1e-82140d7ff606",
						version = 3,
					},
					inheritedIndex = 2,
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return ljHighendDuty == true",
						dequeueIfLuaFalse = true,
						name = "In Highend Duty",
						uuid = "fa3c09da-201e-a1ad-bdd6-1ae07aebcc0a",
						version = 3,
					},
					inheritedIndex = 3,
				},
			},
			displayPath = "Lifecycle",
			eventType = 9,
			name = "Lj: OnWipe",
			uuid = "007954f3-7809-9dc4-baaf-f5f0dd1f1396",
			version = 2,
		},
		inheritedIndex = 4,
	},
	
	{
		data = 
		{
			displayPath = "",
			name = "Countdown",
			uuid = "1f59d909-60f2-89b4-9608-d090ff26d3db",
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
						actionLua = "ml_global_information.ToggleRun()\nself.used = true",
						conditions = 
						{
							
							{
								"b497d225-1e84-8649-af35-54c3fb6909a4",
								true,
							},
						},
						gVar = "ACR_TensorViper3_CD",
						name = "Disable Assist",
						uuid = "c2cdb702-38e7-8f02-a0ca-1198ae161cf9",
						version = 2.1,
					},
				},
				
				{
					data = 
					{
						aType = "Misc",
						gVar = "ACR_RikuRDM3_CD",
						stopCasting = true,
						untarget = true,
						uuid = "4f636a18-e905-e4c2-99c7-df1dfec2c20a",
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
						uuid = "b497d225-1e84-8649-af35-54c3fb6909a4",
						version = 3,
					},
				},
			},
			displayPath = "Countdown",
			eventType = 17,
			name = "Lj: CD | Cancel",
			uuid = "a9b5e472-2430-eb97-a980-1ba25dd5b92b",
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
						aType = "Alert",
						alertPriority = 2,
						alertScale = 1,
						alertTTS = true,
						alertText = "Food Expiring",
						conditions = 
						{
							
							{
								"d166a055-7bd5-b752-beb9-677a90228bcb",
								true,
							},
							
							{
								"59e6e080-bc72-f01f-a86b-f8c415ce1089",
								true,
							},
						},
						gVar = "ACR_RikuMNK3_CD",
						name = "Food Expiring Alert",
						uuid = "3f1135f0-1973-09f7-b465-8cb90387b889",
						version = 2.1,
					},
					inheritedIndex = 1,
				},
				
				{
					data = 
					{
						aType = "Alert",
						alertPriority = 3,
						alertScale = 1,
						alertTTS = true,
						alertText = "Food Missing",
						conditions = 
						{
							
							{
								"e506760d-297e-3da5-bccc-3265bfe741eb",
								true,
							},
							
							{
								"59e6e080-bc72-f01f-a86b-f8c415ce1089",
								true,
							},
						},
						gVar = "ACR_RikuMNK3_CD",
						name = "Missing Food Alert",
						uuid = "bc5a1860-599d-9919-a876-b64ac8689079",
						version = 2.1,
					},
					inheritedIndex = 2,
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						buffCheckType = 3,
						buffDuration = 912,
						buffID = 48,
						category = "Self",
						comparator = 2,
						dequeueIfLuaFalse = true,
						name = "Food Expiring",
						uuid = "d166a055-7bd5-b752-beb9-677a90228bcb",
						version = 3,
					},
					inheritedIndex = 1,
				},
				
				{
					data = 
					{
						buffCheckType = 2,
						buffID = 48,
						category = "Self",
						dequeueIfLuaFalse = true,
						name = "Missing Food",
						uuid = "e506760d-297e-3da5-bccc-3265bfe741eb",
						version = 3,
					},
					inheritedIndex = 2,
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return ljHighendDuty == true",
						dequeueIfLuaFalse = true,
						name = "In Highend Duty",
						uuid = "59e6e080-bc72-f01f-a86b-f8c415ce1089",
						version = 3,
					},
					inheritedIndex = 3,
				},
			},
			displayPath = "Countdown",
			eventType = 16,
			name = "Lj: CD | Food Alert",
			uuid = "cb262b9e-a027-e674-81ae-eb21fd482da7",
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
						aType = "Lua",
						actionLua = "ml_global_information.ToggleRun()\nself.used = true",
						conditions = 
						{
							
							{
								"6e40b1dc-3f06-5d29-9010-71cbfe4fb2d8",
								true,
							},
							
							{
								"a1bb26b8-385d-11b8-afe3-f3e7e30e4ed5",
								true,
							},
						},
						gVar = "ACR_TensorViper3_CD",
						name = "Disable Assist",
						uuid = "ef7eab92-17b2-c08b-a44d-2156ba9fceb3",
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
								"6e40b1dc-3f06-5d29-9010-71cbfe4fb2d8",
								true,
							},
							
							{
								"a1bb26b8-385d-11b8-afe3-f3e7e30e4ed5",
								true,
							},
						},
						gVar = "ACR_RikuRDM3_CD",
						stopCasting = true,
						untarget = true,
						uuid = "1ff29aff-3b8a-fa42-9e1d-85d1aa16bfac",
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
						conditionLua = "local party = TensorCore.entityList(\"myparty\") -- Do not use Party as it doesn't work for this\nparty[Player.id] = TensorCore.mGetPlayer() -- add myself to the party xd\n\nfor _, ent in pairs(party) do\n    if not ent.alive then \n        return true \n    end\nend\n\nreturn false",
						name = "Party Member Died",
						uuid = "6e40b1dc-3f06-5d29-9010-71cbfe4fb2d8",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return ACR.IsActive()",
						name = "Assist Enabled",
						uuid = "a1bb26b8-385d-11b8-afe3-f3e7e30e4ed5",
						version = 3,
					},
				},
			},
			displayPath = "Countdown",
			eventType = 16,
			name = "Lj: CD | Dead",
			uuid = "61204f8a-2db5-d890-bad7-c34845aff828",
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
						actionLua = "ml_global_information.ToggleRun()\nself.used = true",
						conditions = 
						{
							
							{
								"6e40b1dc-3f06-5d29-9010-71cbfe4fb2d8",
								true,
							},
							
							{
								"a1bb26b8-385d-11b8-afe3-f3e7e30e4ed5",
								true,
							},
						},
						gVar = "ACR_TensorViper3_CD",
						name = "Disable Assist",
						uuid = "ef7eab92-17b2-c08b-a44d-2156ba9fceb3",
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
						uuid = "a1bb26b8-385d-11b8-afe3-f3e7e30e4ed5",
						version = 3,
					},
					inheritedIndex = 1,
				},
				
				{
					data = 
					{
						category = "Event",
						comparator = 2,
						conditionLua = "local partyEntities = TensorCore.getEntityGroupList(\"Party\")\n\nfor entityId, entity in pairs(partyEntities) do\n    if entity.alive == false then\n        return true\n    end\nend\nreturn false",
						eventArgType = 2,
						eventCountdownTime = 5,
						name = "<= 5",
						uuid = "6e40b1dc-3f06-5d29-9010-71cbfe4fb2d8",
						version = 3,
					},
				},
			},
			displayPath = "Countdown",
			eventType = 16,
			name = "Lj: CD | Quick Pull",
			uuid = "e2ab71de-e8d9-3696-b02d-275f5a56bb3c",
			version = 2,
		},
		inheritedIndex = 10,
	},
	
	{
		data = 
		{
			displayPath = "",
			name = "World",
			uuid = "b978b394-bfaa-a1e9-8d2d-b5fa2eb483ad",
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
						actionLua = "local timer = eventArgs.duration * 1000\nlocal showBG = true\nlocal size = 1\nlocal height = 1\n\nif eventArgs.targetAttach then\n    AnyoneCore.addWorldTextCountdownOnEnt(\n        timer,\n        eventArgs.targetAttach,\n        AnyoneCore.white,\n        showBG,\n        size,\n        height\n    )\nelse\n    local pos = {x = eventArgs.x, y = eventArgs.y + height, z = eventArgs.z}\n    AnyoneCore.addWorldTextCountdown(timer, pos, AnyoneCore.white, showBG, size)\nend\n\nself.used = true\n--self.eventConditionMismatch = true",
						conditions = 
						{
							
							{
								"39d22543-cdfe-eeaf-8648-c7a1f092de1a",
								true,
							},
							
							{
								"8ff7a7d1-a237-0a97-bfce-ee126ec199bb",
								false,
							},
							
							{
								"d4810160-6d62-2454-aa85-3e4ef1569106",
								false,
							},
						},
						gVar = "ACR_RikuWAR3_CD",
						uuid = "a893cb88-8eec-e686-bcd6-ac56155dee5a",
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
						conditionLua = "return AnyoneCore ~= nil",
						dequeueIfLuaFalse = true,
						name = "AnyoneCore",
						uuid = "39d22543-cdfe-eeaf-8648-c7a1f092de1a",
						version = 3,
					},
					inheritedIndex = 1,
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return ljHighendDuty == true",
						dequeueIfLuaFalse = true,
						name = "In Highend Duty",
						uuid = "8ff7a7d1-a237-0a97-bfce-ee126ec199bb",
						version = 3,
					},
					inheritedIndex = 2,
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return eventArgs.friendly",
						dequeueIfLuaFalse = true,
						name = "Friendly AoE",
						uuid = "d4810160-6d62-2454-aa85-3e4ef1569106",
						version = 3,
					},
				},
			},
			displayPath = "World",
			eventType = 18,
			name = "Lj: World | AoE Countdown",
			uuid = "19b188aa-b0b4-4f2f-a90e-86a5a6a8738d",
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
						aType = "Alert",
						actionLua = "local text = \"Tank Buster on \" .. eventArgs.entityID\nTensorCore.addAlertText(5000, text, 1, 1, false)\nself.used = true",
						alertText = "Tank Buster on {entity:Event Entity}",
						conditions = 
						{
							
							{
								"63eb6ec9-d08e-902c-b4b5-c77d5653f41d",
								false,
							},
							
							{
								"4245fe15-9a3f-c8d4-a19d-101830f3a472",
								true,
							},
						},
						gVar = "ACR_TensorMagnum3_CD",
						name = "Alert: Tank Buster",
						uuid = "69088f8d-43b1-5396-9fee-cff0b0f14793",
						version = 2.1,
					},
				},
				
				{
					data = 
					{
						aType = "Alert",
						alertText = "Stack on {entity:Event Entity}",
						conditions = 
						{
							
							{
								"63eb6ec9-d08e-902c-b4b5-c77d5653f41d",
								false,
							},
							
							{
								"10c9ae96-43fc-62b5-a6b8-1388433fc039",
								true,
							},
						},
						gVar = "ACR_TensorMagnum3_CD",
						name = "Alert: Stack",
						uuid = "7c062a88-5536-bb63-87fe-9ff9becb02c0",
						version = 2.1,
					},
				},
				
				{
					data = 
					{
						aType = "Alert",
						alertText = "Spread",
						conditions = 
						{
							
							{
								"63eb6ec9-d08e-902c-b4b5-c77d5653f41d",
								false,
							},
							
							{
								"a98a3ee1-a9fa-8527-9186-389e0d126ed8",
								true,
							},
							
							{
								"cca46ce3-86a2-8d5a-9979-8dec07181243",
								true,
							},
						},
						gVar = "ACR_TensorMagnum3_CD",
						name = "Alert: Spread",
						uuid = "cdb3a0b3-ef72-32c6-b015-dca01cc22fad",
						version = 2.1,
					},
				},
				
				{
					data = 
					{
						aType = "Alert",
						alertText = "Stop Everything",
						conditions = 
						{
							
							{
								"63eb6ec9-d08e-902c-b4b5-c77d5653f41d",
								false,
							},
							
							{
								"a98a3ee1-a9fa-8527-9186-389e0d126ed8",
								true,
							},
							
							{
								"5b7eeb83-bf44-6c3d-8ffc-4173e72ce085",
								true,
							},
						},
						gVar = "ACR_TensorMagnum3_CD",
						name = "Alert: Stop Everything",
						uuid = "00ccca00-8dd7-8172-9347-9deefdf1bdca",
						version = 2.1,
					},
					inheritedIndex = 4,
				},
				
				{
					data = 
					{
						aType = "Alert",
						alertText = "Keep Moving",
						conditions = 
						{
							
							{
								"63eb6ec9-d08e-902c-b4b5-c77d5653f41d",
								false,
							},
							
							{
								"a98a3ee1-a9fa-8527-9186-389e0d126ed8",
								true,
							},
							
							{
								"458023aa-7f58-dfa5-9ab9-37a27f063d06",
								true,
							},
						},
						gVar = "ACR_TensorMagnum3_CD",
						name = "Alert: Keep Moving",
						uuid = "03ba9f3e-0f57-d9f5-99b3-6ea5c2ffccf3",
						version = 2.1,
					},
				},
				
				{
					data = 
					{
						aType = "Alert",
						alertText = "Look at Boss",
						conditions = 
						{
							
							{
								"63eb6ec9-d08e-902c-b4b5-c77d5653f41d",
								false,
							},
							
							{
								"a98a3ee1-a9fa-8527-9186-389e0d126ed8",
								true,
							},
							
							{
								"74e3c978-7973-258f-8674-218fe0ef091c",
								true,
							},
						},
						gVar = "ACR_TensorMagnum3_CD",
						name = "Alert: Look at Boss",
						uuid = "c15275e3-11d5-7093-a205-f5120243d230",
						version = 2.1,
					},
				},
				
				{
					data = 
					{
						aType = "Alert",
						alertText = "Look away from Boss",
						conditions = 
						{
							
							{
								"63eb6ec9-d08e-902c-b4b5-c77d5653f41d",
								false,
							},
							
							{
								"a98a3ee1-a9fa-8527-9186-389e0d126ed8",
								true,
							},
							
							{
								"48967971-08b9-d263-a7c7-ac1b64de4dc1",
								true,
							},
						},
						gVar = "ACR_TensorMagnum3_CD",
						name = "Alert: Look away from Boss",
						uuid = "ec3d2fc5-9c5b-71ef-8dd7-9702d11a93e5",
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
						conditionLua = "return ljHighendDuty == true",
						dequeueIfLuaFalse = true,
						name = "In Highend Duty",
						uuid = "63eb6ec9-d08e-902c-b4b5-c77d5653f41d",
						version = 3,
					},
					inheritedIndex = 1,
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 9,
						name = "Self: Event Entity",
						partyTargetType = "Event Entity",
						uuid = "a98a3ee1-a9fa-8527-9186-389e0d126ed8",
						version = 3,
					},
					inheritedIndex = 2,
				},
				
				{
					data = 
					{
						category = "Event",
						eventArgType = 3,
						markerIDList = 
						{
							198,
							218,
							230,
							259,
							343,
							344,
							381,
							615,
							570,
							498,
							471,
							243,
							256,
							259,
							314,
							341,
							342,
							343,
							344,
							412,
							463,
							464,
							465,
							467,
							468,
							475,
						},
						name = "Markers: Tank Busters",
						uuid = "4245fe15-9a3f-c8d4-a19d-101830f3a472",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Event",
						eventArgType = 3,
						markerIDList = 
						{
							62,
							161,
							318,
							305,
							93,
							100,
							113,
							132,
							221,
							266,
							289,
							316,
							317,
							719,
							161,
						},
						name = "Markers: Stack",
						uuid = "10c9ae96-43fc-62b5-a6b8-1388433fc039",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Event",
						eventArgType = 3,
						markerIDList = 
						{
							682,
						},
						name = "Markers: Stop Everything",
						uuid = "5b7eeb83-bf44-6c3d-8ffc-4173e72ce085",
						version = 3,
					},
					inheritedIndex = 5,
				},
				
				{
					data = 
					{
						category = "Event",
						eventArgType = 3,
						markerIDList = 
						{
							683,
						},
						name = "Markers: Keep Moving",
						uuid = "458023aa-7f58-dfa5-9ab9-37a27f063d06",
						version = 3,
					},
					inheritedIndex = 6,
				},
				
				{
					data = 
					{
						category = "Event",
						eventArgType = 3,
						markerIDList = 
						{
							681,
						},
						name = "Markers: Look at Boss",
						uuid = "74e3c978-7973-258f-8674-218fe0ef091c",
						version = 3,
					},
					inheritedIndex = 7,
				},
				
				{
					data = 
					{
						category = "Event",
						eventArgType = 3,
						markerIDList = 
						{
							680,
						},
						name = "Markers: Look away from Boss",
						uuid = "48967971-08b9-d263-a7c7-ac1b64de4dc1",
						version = 3,
					},
					inheritedIndex = 8,
				},
				
				{
					data = 
					{
						category = "Event",
						eventArgType = 3,
						markerIDList = 
						{
							96,
							139,
							315,
							558,
							466,
							215,
							95,
							101,
							108,
							120,
							129,
							130,
							135,
							139,
							138,
							140,
							141,
							169,
							189,
							196,
							220,
							233,
							310,
							311,
							324,
							328,
							329,
							345,
							353,
							371,
							372,
							373,
							375,
							376,
							385,
							450,
							466,
							712,
							558,
						},
						name = "Markers: Spread",
						uuid = "cca46ce3-86a2-8d5a-9979-8dec07181243",
						version = 3,
					},
				},
			},
			displayPath = "World",
			eventType = 4,
			name = "Lj: World | Alerts | OnEntityMarkerAdd",
			uuid = "08eff1f2-96bc-4f2c-b7f0-c27246a74fd4",
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
						actionLua = "local targetID = eventArgs.primaryEntityID\nlocal entity = TensorCore.mGetEntity(targetID)\nif entity == nil then\n    self.used = true\n    return\nend\n\nlocal player = TensorCore.mGetPlayer()\nlocal currentTime = Now()\nlocal delayMs = 10000\n\ndata.ljActiveGazes = data.ljActiveGazes or {}\n\nif entity.castinginfo then\n    local maxTime = entity.castinginfo.casttime or 10\n    local elapsedTime = entity.castinginfo.channeltime or 0\n    delayMs = ((maxTime - elapsedTime) * 1000) + 250\nend\n\ndata.ljActiveGazes[targetID] = currentTime + delayMs\nd(\"Gaze Tracker: Added entity \" .. tostring(entity.name))\ndata.ljGazePositions = data.ljGazePositions or {}\nlocal positions = data.ljGazePositions\nfor i = #positions, 1, -1 do\n    positions[i] = nil\nend\n\nlocal count = 0\nfor entID, unlockTime in pairs(data.ljActiveGazes) do\n    local gazeEntity = TensorCore.mGetEntity(entID)\n    if currentTime > unlockTime or gazeEntity == nil then\n        data.ljActiveGazes[entID] = nil\n        d(\"Gaze Tracker: Gaze \" .. tostring(entID) .. \" resolved.\")\n    else\n        count = count + 1\n        positions[count] = gazeEntity.pos\n    end\nend\n\nif count > 0 then\n    local heading\n    if count == 1 then\n        heading = TensorCore.getHeadingToTarget(player.pos, positions[1]) + math.pi\n    else\n        heading = TensorCore.Avoidance.getHeadingBetweenPos(player.pos, unpack(positions, 1, count)) + math.pi\n    end\n    TensorCore.API.TensorACR.setLockFaceHeading(heading)\n    TensorCore.API.TensorACR.toggleLockFace(true)\n    d(\"Start LockFace\")\nend\n\nself.used = true",
						conditions = 
						{
							
							{
								"8f0e8f02-2f1e-d0f6-955f-f5cf64a8ab5d",
								true,
							},
							
							{
								"715ef1e2-eb78-fb50-9037-b5c483c79ece",
								true,
							},
							
							{
								"10c14f8e-6820-cbbb-a0f6-efdc3ec9237b",
								false,
							},
							
							{
								"c5886579-38cb-7ba9-9684-67a22930846b",
								true,
							},
							
							{
								"219829a1-d2b4-b322-890e-1b530a44d348",
								true,
							},
							
							{
								"3fc4a180-f5de-c78a-83a7-304882ea972b",
								true,
							},
						},
						gVar = "ACR_RikuWAR3_CD",
						name = "Track Gaze",
						uuid = "6beb0923-b879-03d5-9b24-5cfee10f2e67",
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
						conditionLua = "local acr = TensorCore.API.TensorACR\nreturn acr ~= nil\n    and acr.setLockFaceHeading ~= nil\n    and acr.toggleLockFace ~= nil",
						dequeueIfLuaFalse = true,
						name = "Lock Face Available",
						uuid = "8f0e8f02-2f1e-d0f6-955f-f5cf64a8ab5d",
						version = 3,
					},
					inheritedIndex = 1,
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return ACR.IsActive()",
						dequeueIfLuaFalse = true,
						name = "Assist Enabled",
						uuid = "715ef1e2-eb78-fb50-9037-b5c483c79ece",
						version = 3,
					},
					inheritedIndex = 2,
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return ljHighendDuty == true",
						dequeueIfLuaFalse = true,
						name = "In Highend Duty",
						uuid = "10c14f8e-6820-cbbb-a0f6-efdc3ec9237b",
						version = 3,
					},
					inheritedIndex = 3,
				},
				
				{
					data = 
					{
						category = "Event",
						comparator = 3,
						dequeueIfLuaFalse = true,
						eventIntValue = 218,
						uuid = "c5886579-38cb-7ba9-9684-67a22930846b",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 7,
						uuid = "219829a1-d2b4-b322-890e-1b530a44d348",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return TensorCore.mGetEntity(eventArgs.primaryEntityID).aggropercentage > 0",
						name = "Combat with Gaze Entity",
						uuid = "3fc4a180-f5de-c78a-83a7-304882ea972b",
						version = 3,
					},
				},
			},
			displayPath = "World",
			eventType = 27,
			name = "Lj: World | Avoid Gaze",
			uuid = "9b395348-13a3-ecea-9141-d712cb2a9b74",
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
						actionLua = "local currentTime = Now()\nlocal player = TensorCore.mGetPlayer()\n\ndata.ljGazePositions = data.ljGazePositions or {}\nlocal positions = data.ljGazePositions\nfor i = #positions, 1, -1 do\n    positions[i] = nil\nend\n\nlocal count = 0\nfor entID, unlockTime in pairs(data.ljActiveGazes) do\n    local gazeEntity = TensorCore.mGetEntity(entID)\n    if currentTime > unlockTime or gazeEntity == nil then\n        data.ljActiveGazes[entID] = nil\n        d(\"Gaze Tracker: Gaze \" .. tostring(entID) .. \" resolved.\")\n    else\n        count = count + 1\n        positions[count] = gazeEntity.pos\n    end\nend\n\nif count > 0 then\n    local heading\n    if count == 1 then\n        heading = TensorCore.getHeadingToTarget(player.pos, positions[1]) + math.pi\n    else\n        heading = TensorCore.Avoidance.getHeadingBetweenPos(player.pos, unpack(positions, 1, count)) + math.pi\n    end\n    TensorCore.API.TensorACR.setLockFaceHeading(heading)\nelse\n    TensorCore.API.TensorACR.toggleLockFace(false)\n    d(\"Gaze Tracker: All gazes finished. End LockFace.\")\n    data.ljActiveGazes = nil\nend\n\nself.used = true",
						conditions = 
						{
							
							{
								"adbc8078-8a10-c7a6-abe3-5b4143c71be9",
								true,
							},
							
							{
								"492694b5-1e9b-e7f9-9e97-ec283930ebbe",
								true,
							},
							
							{
								"7484c6ae-8ef0-a59b-a76b-8e96b0d169f1",
								false,
							},
							
							{
								"efc279c1-1b95-9478-a1e5-e1415c44f8eb",
								true,
							},
						},
						gVar = "ACR_TensorMagnum3_CD",
						name = "Update Gaze Heading",
						uuid = "7e06448e-14c1-e612-8e2f-cae3ce2edf8c",
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
						conditionLua = "local acr = TensorCore.API.TensorACR\nreturn acr ~= nil\n    and acr.setLockFaceHeading ~= nil\n    and acr.toggleLockFace ~= nil",
						name = "Lock Face Available",
						uuid = "adbc8078-8a10-c7a6-abe3-5b4143c71be9",
						version = 3,
					},
					inheritedIndex = 1,
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return ACR.IsActive()",
						dequeueIfLuaFalse = true,
						name = "Assist Enabled",
						uuid = "492694b5-1e9b-e7f9-9e97-ec283930ebbe",
						version = 3,
					},
					inheritedIndex = 2,
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return ljHighendDuty == true",
						dequeueIfLuaFalse = true,
						name = "In Highend Duty",
						uuid = "7484c6ae-8ef0-a59b-a76b-8e96b0d169f1",
						version = 3,
					},
					inheritedIndex = 3,
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return data.ljActiveGazes ~= nil and table.size(data.ljActiveGazes) > 0",
						dequeueIfLuaFalse = true,
						name = "Gaze Var",
						uuid = "efc279c1-1b95-9478-a1e5-e1415c44f8eb",
						version = 3,
					},
				},
			},
			displayPath = "World",
			name = "Lj: World | Avoid Gaze End",
			uuid = "1826f265-ba7b-e515-81fb-0acf19f30ca5",
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
						aType = "Alert",
						alertText = "Raidwide",
						conditions = 
						{
							
							{
								"af4d2d93-32e2-2d1d-bf7e-6db614738b19",
								false,
							},
							
							{
								"ebbc6ec2-d05a-d7ad-b2c6-18d9db464144",
								true,
							},
							
							{
								"b95d02f0-40f6-8254-99c1-1042a2ac159e",
								false,
							},
						},
						gVar = "ACR_TensorMagnum3_CD",
						name = "Alert: Raidwide",
						uuid = "9916e894-9888-9af9-9b11-de57631e702a",
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
						conditionLua = "return ljHighendDuty == true",
						dequeueIfLuaFalse = true,
						name = "In Highend Duty",
						uuid = "af4d2d93-32e2-2d1d-bf7e-6db614738b19",
						version = 3,
					},
					inheritedIndex = 1,
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "if TensorCore.Avoidance.inUnavoidableAOE(TensorCore.mGetPlayer().id) then\n    if (eventArgs.aoeCastType == 2 or eventArgs.aoeCastType == 5 or eventArgs.aoeCastType == 7) and eventArgs.aoeLength >= 30 then\n        return true\n    end\nend\n\nreturn false",
						dequeueIfLuaFalse = true,
						name = "Self: In Raidwide",
						uuid = "ebbc6ec2-d05a-d7ad-b2c6-18d9db464144",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return eventArgs.friendly",
						dequeueIfLuaFalse = true,
						name = "AoE: Friendly",
						uuid = "b95d02f0-40f6-8254-99c1-1042a2ac159e",
						version = 3,
					},
				},
			},
			displayPath = "World",
			eventType = 18,
			name = "Lj: World | Alerts | Raidwide",
			uuid = "103632d8-41b0-e702-9ae0-316801b7a72f",
			version = 2,
		},
	},
	
	{
		data = 
		{
			displayPath = "",
			name = "Utilities",
			uuid = "36163370-f205-c318-90ec-a976b8a03153",
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
						aType = "Misc",
						conditions = 
						{
							
							{
								"69b5b987-503d-e566-99ae-eaa127a88775",
								true,
							},
							
							{
								"3fd0ed4a-7460-c6db-a800-b72bb3c5826c",
								true,
							},
							
							{
								"de35216d-4e4b-8c85-9f3f-96c37cd28868",
								true,
							},
						},
						endIfUsed = true,
						gVar = "ACR_TensorMagnum3_CD",
						name = "Stop Moving",
						stopMoving = true,
						uuid = "0ef0c68b-9cbe-576e-a961-7b8fc051f648",
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
								"69b5b987-503d-e566-99ae-eaa127a88775",
								true,
							},
							
							{
								"3fd0ed4a-7460-c6db-a800-b72bb3c5826c",
								true,
							},
							
							{
								"341b749e-d3d2-18ef-ad58-c63378d6e58f",
								true,
							},
							
							{
								"d6170bfa-c9b7-ecf7-9705-2fab78018d52",
								false,
							},
							
							{
								"d2cb0e5d-b0e6-7553-996b-e1e8c2686861",
								false,
							},
							
							{
								"261043e7-929b-2eb9-aa8d-8d84b88fa1b8",
								false,
							},
						},
						endIfUsed = true,
						gVar = "ACR_TensorMagnum3_CD",
						name = "Target Dark Boss",
						setTarget = true,
						targetContentID = 14038,
						targetType = "ContentID",
						uuid = "24dc9dcc-3dba-eb97-acd0-553360f6a99b",
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
								"69b5b987-503d-e566-99ae-eaa127a88775",
								true,
							},
							
							{
								"3fd0ed4a-7460-c6db-a800-b72bb3c5826c",
								true,
							},
							
							{
								"57cb4439-f2f6-d1ed-9d03-16964315e7ab",
								true,
							},
							
							{
								"5a049175-4b1c-00c7-b7d0-211089c9e029",
								false,
							},
							
							{
								"d2cb0e5d-b0e6-7553-996b-e1e8c2686861",
								false,
							},
							
							{
								"261043e7-929b-2eb9-aa8d-8d84b88fa1b8",
								false,
							},
						},
						endIfUsed = true,
						gVar = "ACR_TensorMagnum3_CD",
						name = "Target Light Boss",
						setTarget = true,
						targetContentID = 14037,
						targetType = "ContentID",
						uuid = "f86b9e09-d3f0-0034-bf14-022a1bff8f2f",
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
								"69b5b987-503d-e566-99ae-eaa127a88775",
								true,
							},
							
							{
								"3fd0ed4a-7460-c6db-a800-b72bb3c5826c",
								true,
							},
							
							{
								"261043e7-929b-2eb9-aa8d-8d84b88fa1b8",
								true,
							},
						},
						endIfUsed = true,
						gVar = "ACR_TensorMagnum3_CD",
						name = "Target Adds or Nail",
						setTarget = true,
						targetType = "Detection Target",
						uuid = "f1c739fc-db5f-65ad-9cd8-4147b66584d6",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Self",
						conditionType = 12,
						dequeueIfLuaFalse = true,
						localMapIDList = 
						{
							1311,
							1333,
							1290,
						},
						localmapid = 1311,
						uuid = "69b5b987-503d-e566-99ae-eaa127a88775",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return ACR.IsActive()",
						name = "Assist Enabled",
						uuid = "3fd0ed4a-7460-c6db-a800-b72bb3c5826c",
						version = 3,
					},
				},
				
				{
					data = 
					{
						buffID = 4562,
						category = "Self",
						name = "Chains of Condemnation",
						uuid = "de35216d-4e4b-8c85-9f3f-96c37cd28868",
						version = 3,
					},
				},
				
				{
					data = 
					{
						buffID = 4559,
						category = "Self",
						name = "Dark Vengeance",
						uuid = "341b749e-d3d2-18ef-ad58-c63378d6e58f",
						version = 3,
					},
				},
				
				{
					data = 
					{
						buffID = 4560,
						category = "Self",
						name = "Light Vengeance",
						uuid = "57cb4439-f2f6-d1ed-9d03-16964315e7ab",
						version = 3,
					},
				},
				
				{
					data = 
					{
						conditionType = 2,
						contentid = 14038,
						name = "Dark Boss Target",
						uuid = "d6170bfa-c9b7-ecf7-9705-2fab78018d52",
						version = 3,
					},
				},
				
				{
					data = 
					{
						conditionType = 2,
						contentid = 14037,
						name = "Light Boss Target",
						uuid = "5a049175-4b1c-00c7-b7d0-211089c9e029",
						version = 3,
					},
				},
				
				{
					data = 
					{
						conditionType = 2,
						contentid = 14041,
						name = "Flameborn Target",
						uuid = "d2cb0e5d-b0e6-7553-996b-e1e8c2686861",
						version = 3,
					},
					inheritedIndex = 8,
				},
				
				{
					data = 
					{
						category = "Filter",
						filterTargetType = "ContentID",
						name = "F - Nails",
						partyTargetContentID = 14042,
						uuid = "9ae42868-9b03-b53a-a0e0-d4113f256468",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Filter",
						filterTargetSubtype = "Highest HP",
						filterTargetType = "ContentID",
						name = "F - Adds",
						partyTargetContentID = 14039,
						uuid = "86444aec-84dc-a94d-a96a-e8de70879292",
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
								"9ae42868-9b03-b53a-a0e0-d4113f256468",
								true,
							},
							
							{
								"86444aec-84dc-a94d-a96a-e8de70879292",
								true,
							},
						},
						matchAnyBuff = true,
						name = "F - Adds OR Nails Exist",
						partyTargetNumber = 0,
						uuid = "261043e7-929b-2eb9-aa8d-8d84b88fa1b8",
						version = 3,
					},
					inheritedIndex = 11,
				},
			},
			displayPath = "Utilities",
			name = "Lj: Quantum | Target Selector",
			uuid = "19000f80-c532-f934-8064-b5795cabdfe2",
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
						actionLua = "--[[\n-- ==========================================\n-- ENTITY ROLE HELPERS\n-- ==========================================\n\n-- Each helper reads AnyoneCore.Roster while it seats you in the live party\n-- (T1/T2 reported as MT/OT), otherwise the Toolbox role assignments\n-- (Party Role Assigner window, right-click the Toolbox role button).\n-- While the Roster is active, both clicks on the role button open its\n-- Party Roster window instead.\n\n-- Returns current player role string (e.g., \"MT\"), or nil while unassigned\n-- function GetCurrentRole() end\n\n-- Returns the actual Entity Object table for the assigned player\n-- @param roleStr string: \"MT\", \"OT\", \"H1\", \"H2\", \"M1\", \"M2\", \"R1\", \"R2\"\n-- function GetRole(roleStr) end\n\n-- Returns 1 for Light Party 1 (MT, H1, M1, R1) or 2 for Light Party 2 (OT, H2, M2, R2)\n-- @param roleStr string (optional): Defaults to GetCurrentRole() if omitted.\n-- function GetLightParty(roleStr) end\n]]--",
						conditions = 
						{
							
							{
								"ee7fc361-03c9-8c30-8d87-46747c9a820e",
								false,
							},
						},
						gVar = "ACR_RikuWAR3_CD",
						name = "Function Docs",
						uuid = "802cf8b4-f18e-3ddb-906a-a7e3c11c2e36",
						version = 2.1,
					},
					inheritedIndex = 1,
				},
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "if not gLj_Toolbox then\n    gLj_Toolbox = {}\nend\n\nif not gLj_Toolbox.Settings then\n    gLj_Toolbox.Settings = {\n        roleOptions = {\n            tank = { \"MT\", \"OT\" },\n            healer = { \"H1\", \"H2\" },\n            dps = { \"M1\", \"M2\", \"R1\", \"R2\" }\n        },\n        partyRoles = {},\n        savedProfiles = {},\n        showEffectTester = false,\n        showPartyAssigner = false,\n        searchFilter = \"\",\n        selectedIndex = -1\n    }\nend\n\nif not gLj_Toolbox.State then\n    gLj_Toolbox.State = {\n        mapEffectsCache = {},\n        mapEffectsFiltered = {},\n        hasLoadedProfiles = false,\n        lastTick = 0 -- Moved from Script 3\n    }\nend\n\ngLj_Toolbox.Constants = {\n    ROLE_COLORS = {\n        tank = { 0.2, 0.4, 0.8, 1.0 },\n        healer = { 0.2, 0.5, 0.2, 1.0 },\n        dps = { 0.7, 0.2, 0.2, 1.0 }\n    },\n    GUI_FLAGS = GUI.WindowFlags_AlwaysAutoResize + GUI.WindowFlags_NoTitleBar + GUI.WindowFlags_NoCollapse,\n    BTN_WIDTH = 95,\n    BTN_HEIGHT = 20,\n    ROLE_BTN_WIDTH = 155,\n    ROLE_BTN_HEIGHT = 18,\n    ROLE_BUTTON_ID = \"##RoleButton\",\n    MAX_PARTY = 8,\n    EFFECT_TYPE_NAMES = { [2] = \"Model\", [4] = \"VFX\", [6] = \"Script\", [7] = \"Sound\" },\n    EFFECT_LIVE_MS = 250,\n\n    jobPriority = {\n        [21] = 1,  [19] = 2,  [32] = 3,  [37] = 4,\n        [24] = 5,  [28] = 6,  [33] = 7,  [40] = 8,\n        [20] = 9,  [22] = 10, [30] = 11, [34] = 12, [39] = 13, [41] = 14,\n        [23] = 15, [31] = 16, [38] = 17,\n        [25] = 18, [27] = 19, [35] = 20, [42] = 21\n    },\n    jobNames = {\n        [19]=\"PLD\", [21]=\"WAR\", [32]=\"DRK\", [37]=\"GNB\",\n        [24]=\"WHM\", [28]=\"SCH\", [33]=\"AST\", [40]=\"SGE\",\n        [20]=\"MNK\", [22]=\"DRG\", [30]=\"NIN\", [34]=\"SAM\", [39]=\"RPR\", [41]=\"VPR\",\n        [23]=\"BRD\", [31]=\"MCH\", [38]=\"DNC\",\n        [25]=\"BLM\", [27]=\"SMN\", [35]=\"RDM\", [42]=\"PCT\"\n    },\n    allRoles = {\"MT\", \"OT\", \"H1\", \"H2\", \"M1\", \"M2\", \"R1\", \"R2\"},\n    rosterSlots = { MT = \"T1\", OT = \"T2\", H1 = \"H1\", H2 = \"H2\", M1 = \"M1\", M2 = \"M2\", R1 = \"R1\", R2 = \"R2\" },\n    rosterRoles = { T1 = \"MT\", T2 = \"OT\", H1 = \"H1\", H2 = \"H2\", M1 = \"M1\", M2 = \"M2\", R1 = \"R1\", R2 = \"R2\" },\n    slotTitles = {},\n    emptySlotLabels = {}\n}\n\nfor _, r in ipairs(gLj_Toolbox.Constants.allRoles) do\n    gLj_Toolbox.Constants.slotTitles[r] = r .. \":\"\n    gLj_Toolbox.Constants.emptySlotLabels[r] = \" [ Empty ]###\" .. r\nend\n\ngLj_Toolbox.Paths = {\n    Folder = GetLuaModsPath() .. [[ffxivminion\\LjToolbox\\]],\n    File = GetLuaModsPath() .. [[ffxivminion\\LjToolbox\\SavedRoles.lua]]\n}\n\nif not gLj_Toolbox.Status then\n    local currentPID = GetCurrentPID()\n    local handle = io.popen(string.format('tasklist /M /FI \"PID eq %d\" /FO CSV', currentPID))\n    local hasDalamud = false\n    if handle then\n        local result = handle:read(\"*a\")\n        handle:close()\n        hasDalamud = result:match(\"Dalamud%.dll\") ~= nil\n    end\n    gLj_Toolbox.Status = { dalamud = hasDalamud, optifine = Optifine ~= nil and Optifine.IsEnabled() == true }\nend\n\nif not gLj_PartyRoles then gLj_PartyRoles = {} end\nfor _, r in ipairs(gLj_Toolbox.Constants.allRoles) do\n    if not gLj_PartyRoles[r] then gLj_PartyRoles[r] = 0 end\n    if not _G[\"gLj_Role_\" .. r] then _G[\"gLj_Role_\" .. r] = 0 end\nend\n\nif not gLj_Toolbox.Cache then\n    gLj_Toolbox.Cache = {\n        sortedParty = {},\n        nameToId = {},\n        nameToJob = {},\n        nameToLabel = {},\n        slotHolder = {},\n        slotLabel = {},\n        globalStrings = {}\n    }\n    for _, r in ipairs(gLj_Toolbox.Constants.allRoles) do\n        gLj_Toolbox.Cache.globalStrings[r] = \"gLj_Role_\" .. r\n        gLj_Toolbox.Cache.slotLabel[r] = gLj_Toolbox.Constants.emptySlotLabels[r]\n    end\nend\n\n-- Names are saved as ASCII: bytes outside printable ASCII, and %, become %XX,\n-- because a FileSave of CJK text is a suspected crash cause.\ngLj_Toolbox.EncodeByte = function(c)\n    return string.format(\"%%%02X\", string.byte(c))\nend\n\ngLj_Toolbox.DecodeByte = function(hex)\n    return string.char(tonumber(hex, 16))\nend\n\n-- Saves from the old \"None\" (deliberately unassigned) state are dropped.\ngLj_Toolbox.LoadProfiles = function()\n    if FileExists(gLj_Toolbox.Paths.File) then\n        local saved = {}\n        for key, entry in pairs(FileLoad(gLj_Toolbox.Paths.File) or {}) do\n            if entry.role ~= \"None\" then\n                saved[(key:gsub(\"%%(%x%x)\", gLj_Toolbox.DecodeByte))] = entry\n            end\n        end\n        gLj_Toolbox.Settings.savedProfiles = saved\n    end\nend\n\nif not gLj_Toolbox.State.hasLoadedProfiles then\n    gLj_Toolbox.LoadProfiles()\n    gLj_Toolbox.State.hasLoadedProfiles = true\nend\n\ngLj_Toolbox.SetSavedRole = function(name, job, role)\n    if job and role then\n        gLj_Toolbox.Settings.savedProfiles[name] = { job = job, role = role }\n    else\n        gLj_Toolbox.Settings.savedProfiles[name] = nil\n    end\nend\n\ngLj_Toolbox.WriteProfiles = function()\n    if not FolderExists(gLj_Toolbox.Paths.Folder) then FolderCreate(gLj_Toolbox.Paths.Folder) end\n    local encoded = {}\n    for name, entry in pairs(gLj_Toolbox.Settings.savedProfiles) do\n        encoded[(name:gsub(\"[^\\32-\\36\\38-\\126]\", gLj_Toolbox.EncodeByte))] = entry\n    end\n    FileSave(gLj_Toolbox.Paths.File, encoded)\nend\n\ngLj_Toolbox.DrawStatus = function(label, isActive)\n    GUI:Text(label .. \":\")\n    GUI:SameLine()\n    GUI:TextColored(isActive and 0 or 1, isActive and 1 or 0, 0, 1, isActive and \"YES\" or \"NO\")\nend\n\ngLj_Toolbox.GetRoleOptionsForJob = function(job)\n    if job == 19 or job == 21 or job == 32 or job == 37 then return gLj_Toolbox.Settings.roleOptions.tank, \"tank\"\n    elseif job == 24 or job == 28 or job == 33 or job == 40 then return gLj_Toolbox.Settings.roleOptions.healer, \"healer\"\n    else return gLj_Toolbox.Settings.roleOptions.dps, \"dps\" end\nend\n\ngLj_Toolbox.GetDefaultRoleIndexForJob = function(job)\n    if job == 28 or job == 40 then return 2 end\n    if job == 23 or job == 31 or job == 38 then return 3 end\n    if job == 25 or job == 27 or job == 35 or job == 42 then return 4 end\n    return 1\nend\n\ngLj_Toolbox.IsRoleValidForJob = function(role, job)\n    for _, r in ipairs(gLj_Toolbox.GetRoleOptionsForJob(job)) do\n        if r == role then return true end\n    end\n    return false\nend\n\n-- Saved role for this job, otherwise the job's default slot.\ngLj_Toolbox.PreferredRole = function(name, job)\n    local saved = gLj_Toolbox.Settings.savedProfiles[name]\n    if saved and saved.job == job and gLj_Toolbox.IsRoleValidForJob(saved.role, job) then\n        return saved.role\n    end\n    return gLj_Toolbox.GetRoleOptionsForJob(job)[gLj_Toolbox.GetDefaultRoleIndexForJob(job)]\nend\n\ngLj_Toolbox.RoleHolder = function(role)\n    for name, r in pairs(gLj_Toolbox.Settings.partyRoles) do\n        if r == role then return name end\n    end\n    return nil\nend\n\ngLj_Toolbox.FreeRoleFor = function(name, job)\n    local preferred = gLj_Toolbox.PreferredRole(name, job)\n    if not gLj_Toolbox.RoleHolder(preferred) then return preferred end\n    for _, r in ipairs(gLj_Toolbox.GetRoleOptionsForJob(job)) do\n        if not gLj_Toolbox.RoleHolder(r) then return r end\n    end\n    return nil\nend\n\ngLj_Toolbox.GetRoleColor = function(roleStr)\n    if roleStr == \"MT\" or roleStr == \"OT\" then return gLj_Toolbox.Constants.ROLE_COLORS.tank end\n    if roleStr == \"H1\" or roleStr == \"H2\" then return gLj_Toolbox.Constants.ROLE_COLORS.healer end\n    return gLj_Toolbox.Constants.ROLE_COLORS.dps\nend\n\ngLj_Toolbox.TrackMember = function(id, name, job)\n    local cache = gLj_Toolbox.Cache\n    cache.nameToId[name] = id\n    cache.nameToJob[name] = job\n    cache.nameToLabel[name] = string.format(\"[%s] %s\", gLj_Toolbox.Constants.jobNames[job] or \"???\", name)\nend\n\ngLj_Toolbox.ComparePriority = function(a, b)\n    local prioA = gLj_Toolbox.Constants.jobPriority[a.job] or 99\n    local prioB = gLj_Toolbox.Constants.jobPriority[b.job] or 99\n    if prioA == prioB then return a.name < b.name end\n    return prioA < prioB\nend\n\n-- Pushes partyRoles into the GetRole() globals and the assigner's slot labels.\ngLj_Toolbox.PublishRoles = function()\n    local cache = gLj_Toolbox.Cache\n    for _, r in ipairs(gLj_Toolbox.Constants.allRoles) do\n        gLj_PartyRoles[r] = 0\n        _G[cache.globalStrings[r]] = 0\n        cache.slotHolder[r] = nil\n        cache.slotLabel[r] = gLj_Toolbox.Constants.emptySlotLabels[r]\n    end\n    for name, r in pairs(gLj_Toolbox.Settings.partyRoles) do\n        cache.slotHolder[r] = name\n        cache.slotLabel[r] = \" \" .. (cache.nameToLabel[name] or name) .. \"###\" .. r\n        local eID = cache.nameToId[name]\n        if eID then\n            gLj_PartyRoles[r] = eID\n            _G[cache.globalStrings[r]] = eID\n        end\n    end\nend\n\n-- Gives name the role. Its holder swaps into name's old role when their job\n-- allows it, otherwise they wait unassigned for the next refresh to fill them.\ngLj_Toolbox.AssignRole = function(name, role, persist)\n    local roles = gLj_Toolbox.Settings.partyRoles\n    local nameToJob = gLj_Toolbox.Cache.nameToJob\n    local oldRole = roles[name]\n\n    if oldRole ~= role then\n        local holder = gLj_Toolbox.RoleHolder(role)\n        if holder then\n            local swapRole = nil\n            if oldRole and gLj_Toolbox.IsRoleValidForJob(oldRole, nameToJob[holder]) then swapRole = oldRole end\n            roles[holder] = swapRole\n            if persist then gLj_Toolbox.SetSavedRole(holder, nameToJob[holder], swapRole) end\n        end\n        roles[name] = role\n        gLj_Toolbox.PublishRoles()\n    end\n\n    if persist then\n        gLj_Toolbox.SetSavedRole(name, nameToJob[name], role)\n        gLj_Toolbox.WriteProfiles()\n        d(\"[LjToolbox] Saved preference for \" .. name .. \" as \" .. role)\n    end\nend\n\n-- Re-seats the local player whenever the character, job or entity changes.\ngLj_Toolbox.SyncLocalRole = function(player)\n    local state = gLj_Toolbox.State\n    if state.syncedName == player.name and state.syncedJob == player.job and state.syncedId == player.id then return end\n\n    if state.syncedName and state.syncedName ~= player.name then\n        gLj_Toolbox.Settings.partyRoles[state.syncedName] = nil\n    end\n    state.syncedName = player.name\n    state.syncedJob = player.job\n    state.syncedId = player.id\n\n    gLj_Toolbox.TrackMember(player.id, player.name, player.job)\n    gLj_Toolbox.AssignRole(player.name, gLj_Toolbox.PreferredRole(player.name, player.job), false)\n    gLj_Toolbox.PublishRoles()\nend\n\ngLj_Toolbox.RefreshPartyRoles = function()\n    local cache = gLj_Toolbox.Cache\n    local state = gLj_Toolbox.State\n    local roles = gLj_Toolbox.Settings.partyRoles\n    for k in pairs(cache.sortedParty) do cache.sortedParty[k] = nil end\n    for k in pairs(cache.nameToId) do cache.nameToId[k] = nil end\n    for k in pairs(cache.nameToJob) do cache.nameToJob[k] = nil end\n    for k in pairs(cache.nameToLabel) do cache.nameToLabel[k] = nil end\n\n    local cwCount = 0\n    local myPartyCount = 0\n\n    if EntityList and EntityList.crossworldparty then\n        for _ in pairs(EntityList.crossworldparty) do cwCount = cwCount + 1 end\n    end\n\n    local myParty = TensorCore.entityList(\"myparty\")\n    if myParty then\n        for _ in pairs(myParty) do myPartyCount = myPartyCount + 1 end\n    end\n\n    -- Outside a party only the local player is listed.\n    local members = nil\n    if cwCount > 1 then\n        members = EntityList.crossworldparty\n    elseif myPartyCount > 1 then\n        members = myParty\n    end\n\n    if members then\n        for _, m in pairs(members) do\n            local ent = TensorCore.mGetEntity(m.id) or { type = 1, id = m.id, name = m.name, job = m.job }\n            table.insert(cache.sortedParty, ent)\n            gLj_Toolbox.TrackMember(ent.id, ent.name, ent.job)\n        end\n    end\n\n    if state.syncedName and not cache.nameToJob[state.syncedName] then\n        table.insert(cache.sortedParty, { type = 1, id = state.syncedId, name = state.syncedName, job = state.syncedJob })\n        gLj_Toolbox.TrackMember(state.syncedId, state.syncedName, state.syncedJob)\n    end\n\n    table.sort(cache.sortedParty, gLj_Toolbox.ComparePriority)\n\n    -- Cap the list, dropping the lowest priority members but never the local player.\n    local count = #cache.sortedParty\n    for i = count, 1, -1 do\n        if count <= gLj_Toolbox.Constants.MAX_PARTY then break end\n        local ent = cache.sortedParty[i]\n        if ent.name ~= state.syncedName then\n            count = count - 1\n            cache.nameToId[ent.name] = nil\n            cache.nameToJob[ent.name] = nil\n            cache.nameToLabel[ent.name] = nil\n            table.remove(cache.sortedParty, i)\n        end\n    end\n\n    for name in pairs(roles) do\n        if not cache.nameToJob[name] then roles[name] = nil end\n    end\n\n    for _, ent in ipairs(cache.sortedParty) do\n        local currentRole = roles[ent.name]\n        if currentRole and not gLj_Toolbox.IsRoleValidForJob(currentRole, ent.job) then\n            roles[ent.name] = nil\n            currentRole = nil\n        end\n        if not currentRole then\n            roles[ent.name] = gLj_Toolbox.FreeRoleFor(ent.name, ent.job)\n        end\n    end\n\n    gLj_Toolbox.PublishRoles()\nend\n\n-- Roster and my slot while it seats me live (current() keeps the last record while solo)\ngLj_Toolbox.GetRoster = function()\n    local roster = AnyoneCore and AnyoneCore.Roster\n    if roster and roster.current() ~= nil then\n        local slot = roster.slotOf(TensorCore.mGetPlayer().id)\n        if slot then return roster, slot end\n    end\n    return nil\nend\n\nif not GetRole then\n    function GetRole(roleStr)\n        local roster = gLj_Toolbox.GetRoster()\n        local entID\n        if roster then\n            local slot = gLj_Toolbox.Constants.rosterSlots[roleStr]\n            entID = slot and roster.idOf(slot)\n        else\n            entID = gLj_PartyRoles[roleStr]\n        end\n        if entID and entID > 0 then\n            return TensorCore.mGetEntity(entID)\n        end\n        return nil\n    end\nend\n\n-- The local player's role and whether it came from the Roster.\ngLj_Toolbox.CurrentRole = function()\n    local roster, slot = gLj_Toolbox.GetRoster()\n    if roster then return gLj_Toolbox.Constants.rosterRoles[slot], true end\n    return gLj_Toolbox.Settings.partyRoles[TensorCore.mGetPlayer().name], false\nend\n\nif not GetCurrentRole then\n    function GetCurrentRole()\n        return (gLj_Toolbox.CurrentRole())\n    end\nend\n\nif not GetLightParty then\n    function GetLightParty(roleStr)\n        local targetRole = roleStr or (GetCurrentRole and GetCurrentRole())\n        if targetRole == \"MT\" or targetRole == \"H1\" or targetRole == \"M1\" or targetRole == \"R1\" then return 1 end\n        if targetRole == \"OT\" or targetRole == \"H2\" or targetRole == \"M2\" or targetRole == \"R2\" then return 2 end\n        return 0\n    end\nend\n\n-- Map Effects Explorer: the list, the filtered list and the selected effect's\n-- rows are built once (refresh, filter change, selection change); only the\n-- selected effect's live values are re-read, every EFFECT_LIVE_MS.\ngLj_Toolbox.RefreshMapEffects = function()\n    local cache = {}\n    local typeNames = gLj_Toolbox.Constants.EFFECT_TYPE_NAMES\n\n    if Argus and Argus.getNumCurrentMapEffects then\n        for i = 0, Argus.getNumCurrentMapEffects() - 1 do\n            local res = Argus.getMapEffectResource(i)\n            if res then\n                local resId, resPath, resType, isActive = Argus.getEffectResourceInfo(res)\n                local typeStr = typeNames[resType] or tostring(resType)\n                local validScriptCount = 0\n                if resType == 6 then\n                    for si = 0, (Argus.getNumEffectResourceScripts(res) or 0) - 1 do\n                        local sName = Argus.getEffectResourceScriptInfo(res, si)\n                        if sName and sName ~= \"\" then validScriptCount = validScriptCount + 1 end\n                    end\n                end\n                local displayLabel = string.format(\"[%d] id=%d type=%s active=%s scripts=%d | %s\",\n                    i, resId or 0, typeStr, tostring(isActive), validScriptCount, tostring(resPath))\n                table.insert(cache, { index = i, label = displayLabel, searchString = string.lower(displayLabel), isActive = isActive })\n            end\n        end\n    end\n    gLj_Toolbox.State.mapEffectsCache = cache\n    gLj_Toolbox.State.mapEffectsMapId = TensorCore.mGetPlayer().localmapid\n    gLj_Toolbox.State.mapEffectsFilter = nil\n    gLj_Toolbox.BuildEffectDetail(gLj_Toolbox.Settings.selectedIndex)\nend\n\ngLj_Toolbox.FilterMapEffects = function()\n    local state = gLj_Toolbox.State\n    local filter = gLj_Toolbox.Settings.searchFilter\n    local filtered = state.mapEffectsFiltered\n    if state.mapEffectsFilter == filter then return filtered end\n\n    state.mapEffectsFilter = filter\n    local filterLower = string.lower(filter)\n    for i = #filtered, 1, -1 do filtered[i] = nil end\n    for _, item in ipairs(state.mapEffectsCache) do\n        if filterLower == \"\" or string.find(item.searchString, filterLower, 1, true) then\n            filtered[#filtered + 1] = item\n        end\n    end\n    return filtered\nend\n\ngLj_Toolbox.BuildEffectDetail = function(index)\n    local state = gLj_Toolbox.State\n    state.effectDetail = nil\n    if index == -1 then return end\n\n    local res = Argus.getMapEffectResource(index)\n    if not res then\n        state.effectDetail = { index = index, missing = true, unbuilt = true, scripts = {}, pool = {},\n            nextLive = Now() + gLj_Toolbox.Constants.EFFECT_LIVE_MS }\n        return\n    end\n\n    local typeNames = gLj_Toolbox.Constants.EFFECT_TYPE_NAMES\n    local id, path, rType = Argus.getEffectResourceInfo(res)\n    local detail = {\n        index = index,\n        indexText = string.format(\"Index: %d\", index),\n        idText = string.format(\"ID: %d\", id or 0),\n        typeText = string.format(\"Type: %s (%d)\", typeNames[rType] or tostring(rType), rType or 0),\n        pathText = tostring(path),\n        isScript = rType == 6,\n        scripts = {},\n        pool = {}\n    }\n\n    if detail.isScript then\n        for si = 0, (Argus.getNumEffectResourceScripts(res) or 0) - 1 do\n            local sName, sNumSub, sRes = Argus.getEffectResourceScriptInfo(res, si)\n            if sName and sName ~= \"\" then\n                local flag = Argus.getEffectResourceScriptFlagForIndex(si)\n                local script = {\n                    index = si,\n                    label = string.format(\"[%d] %s (Flag: %d)\", si, tostring(sName), flag),\n                    runId = \"Run##\" .. si,\n                    stopId = \"Stop##\" .. si,\n                    copyId = \"Copy Reaction##\" .. si,\n                    reaction = string.format(\"return eventArgs.a1 == %d and eventArgs.a2 == 0 and eventArgs.a3 == %d\", index, flag),\n                    subs = {}\n                }\n                if sRes and sNumSub and sNumSub > 0 then\n                    for subI = 0, sNumSub - 1 do\n                        local ssRes = Argus.getEffectResourceScriptSubresource(sRes, subI)\n                        if ssRes then\n                            local ssId, ssPath, ssType = Argus.getEffectResourceInfo(ssRes)\n                            local shortPath = type(ssPath) == \"string\" and (ssPath:match(\".*/(.*)\") or ssPath) or \"Unknown\"\n                            script.subs[#script.subs + 1] = {\n                                label = string.format(\"[%s] ID: %d | %s\", typeNames[ssType] or tostring(ssType), ssId or 0, shortPath),\n                                path = tostring(ssPath)\n                            }\n                        end\n                    end\n                end\n                detail.scripts[#detail.scripts + 1] = script\n            end\n        end\n        detail.scriptsTitle = \"--- Script Explorer (\" .. #detail.scripts .. \" loaded) ---\"\n\n        for fi = 0, (Argus.getNumEffectSubresources(res) or 0) - 1 do\n            local fRes = Argus.getEffectSubresource(res, fi)\n            if fRes then\n                local fId, fPath, fType = Argus.getEffectResourceInfo(fRes)\n                detail.pool[#detail.pool + 1] = {\n                    index = fi,\n                    label = string.format(\"[%d] %s | ID: %d\", fi, typeNames[fType] or tostring(fType), fId or 0),\n                    path = tostring(fPath)\n                }\n            end\n        end\n        detail.poolTitle = \"--- Full Resource Pool (\" .. #detail.pool .. \" total) ---\"\n    end\n\n    state.effectDetail = detail\n    gLj_Toolbox.UpdateEffectLive(detail)\nend\n\ngLj_Toolbox.UpdateEffectLive = function(detail)\n    local res = Argus.getMapEffectResource(detail.index)\n    if detail.unbuilt and res then return gLj_Toolbox.BuildEffectDetail(detail.index) end\n\n    detail.nextLive = Now() + gLj_Toolbox.Constants.EFFECT_LIVE_MS\n    detail.missing = res == nil\n    if not res then return end\n\n    local _, _, _, isActive = Argus.getEffectResourceInfo(res)\n    detail.active = isActive\n\n    local px, py, pz = Argus.getEffectResourcePosition(res)\n    detail.posText = px and string.format(\"Position: X: %.3f   Y: %.3f   Z: %.3f\", px, py, pz)\n    local sx, sy, sz = Argus.getEffectResourceScale(res)\n    detail.scaleText = sx and string.format(\"Scale: X: %.3f   Y: %.3f   Z: %.3f\", sx, sy, sz)\n    local dx, dy, dz, ux, uy, uz = Argus.getEffectResourceOrientation(res)\n    detail.dirText = dx and string.format(\"Dir: X: %.3f  Y: %.3f  Z: %.3f   |   Up: X: %.3f  Y: %.3f  Z: %.3f\",\n        dx, dy, dz, ux, uy, uz)\n    local rt, rs = Argus.getEffectResourceRenderInfo(res)\n    detail.renderText = rt and string.format(\"Render Type: %s   |   Render State: %s\", tostring(rt), tostring(rs))\n\n    for _, script in ipairs(detail.scripts) do\n        local _, _, _, running = Argus.getEffectResourceScriptInfo(res, script.index)\n        script.running = running\n    end\n    for _, row in ipairs(detail.pool) do\n        row.active = false\n        local fRes = Argus.getEffectSubresource(res, row.index)\n        if fRes then\n            local _, _, _, active = Argus.getEffectResourceInfo(fRes)\n            row.active = active\n        end\n    end\nend\n\n-- Visible rows of an equal-height list: moves the cursor past the rows above\n-- the view and returns the range first + 1 .. last to draw.\ngLj_Toolbox.BeginClip = function(count, rowHeight)\n    local first, last = GUI:CalcListClipping(count, rowHeight)\n    first = math.max(0, math.min(first or 0, count))\n    last = math.max(first, math.min(last or count, count))\n    if first > 0 then GUI:SetCursorPosY(GUI:GetCursorPosY() + first * rowHeight) end\n    return first, last\nend\n\n-- Moves the cursor past the rows below the view so the scroll range stays whole.\ngLj_Toolbox.EndClip = function(count, last, rowHeight)\n    if last < count then GUI:SetCursorPosY(GUI:GetCursorPosY() + (count - last) * rowHeight) end\nend\n\ngLj_Toolbox.Buttons = {\n    { \"Reactions\", function() if AnyoneCore then AnyoneCore.openTensorReactions() end end },\n    { \"Dev Monitor\", function() if AnyoneCore then AnyoneCore.Settings.DevMonitor = not AnyoneCore.Settings.DevMonitor end end },\n    { \"ACR Options\", ACR.OpenProfileOptions },\n    { \"Effects Debug\", function() gLj_Toolbox.Settings.showEffectTester = not gLj_Toolbox.Settings.showEffectTester end }\n}\n\nself.used = true",
						conditions = 
						{
							
							{
								"ee7fc361-03c9-8c30-8d87-46747c9a820e",
								false,
							},
						},
						gVar = "ACR_RikuWAR3_CD",
						name = "Initialize",
						uuid = "ddefbec5-e0e4-a9e8-bf68-e0b3134c4f4f",
						version = 2.1,
					},
				},
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "if not gLj_Toolbox or not gLj_Toolbox.Constants then return end\n\nlocal localPlayer = TensorCore.mGetPlayer()\ngLj_Toolbox.SyncLocalRole(localPlayer)\n\nGUI:Begin(\"Toolbox###gLj_Toolbox\", true, gLj_Toolbox.Constants.GUI_FLAGS)\n\nif AnyoneCore and AnyoneCore.Settings.DutyHelper then\n    local dutyHelperOn, dutyHelperChanged = GUI:Checkbox(\"DutyHelper\", AnyoneCore.Settings.DutyHelper.enabled)\n    if dutyHelperChanged then AnyoneCore.Settings.DutyHelper.enabled = dutyHelperOn end\n    GUI:SameLine()\nend\ngStartCombat = GUI:Checkbox(\"Combat\", gStartCombat)\n\nfor i, btn in ipairs(gLj_Toolbox.Buttons) do\n    if GUI:Button(btn[1], gLj_Toolbox.Constants.BTN_WIDTH, gLj_Toolbox.Constants.BTN_HEIGHT) then btn[2]() end\n    if i % 2 ~= 0 then GUI:SameLine() end\nend\n\nGUI:Separator()\nGUI:Text(\"Role: \")\nGUI:SameLine()\n\nlocal roleOptions, roleType = gLj_Toolbox.GetRoleOptionsForJob(localPlayer.job)\nlocal currentRole, fromRoster = gLj_Toolbox.CurrentRole()\nlocal color = gLj_Toolbox.Constants.ROLE_COLORS[roleType]\n\nGUI:PushStyleVar(GUI.StyleVar_FramePadding, 4, 2)\nif color then GUI:PushStyleColor(GUI.Col_Button, color[1], color[2], color[3], color[4]) end\nlocal clicked = GUI:Button((currentRole or \"Unassigned\") .. gLj_Toolbox.Constants.ROLE_BUTTON_ID, gLj_Toolbox.Constants.ROLE_BTN_WIDTH,\n    gLj_Toolbox.Constants.ROLE_BTN_HEIGHT)\nlocal hovered = GUI:IsItemHovered()\nlocal rightClicked = hovered and GUI:IsMouseClicked(1)\nif color then GUI:PopStyleColor() end\nGUI:PopStyleVar()\nif hovered and fromRoster then GUI:SetTooltip(\"Set by AnyoneCore Roster. Click to edit it there.\") end\n\n-- Roster owns roles while active, so either click opens its Party Roster\nlocal ROLE_POPUP_ID = \"RoleSelectPopup\"\nif fromRoster then\n    if (clicked or rightClicked) and AnyoneCore.RosterPopup then AnyoneCore.RosterPopup.openManual() end\nelseif clicked then\n    GUI:OpenPopup(ROLE_POPUP_ID)\nelseif rightClicked then\n    gLj_Toolbox.Settings.showPartyAssigner = not gLj_Toolbox.Settings.showPartyAssigner\nend\n\nif GUI:BeginPopup(ROLE_POPUP_ID) then\n    for _, role in ipairs(roleOptions) do\n        if GUI:MenuItem(role) then\n            gLj_Toolbox.AssignRole(localPlayer.name, role, true)\n        end\n    end\n    GUI:EndPopup()\nend\n\nGUI:Separator()\ngLj_Toolbox.DrawStatus(\"Optifine\", gLj_Toolbox.Status.optifine)\nGUI:SameLine()\nGUI:Dummy(1, 0)\nGUI:SameLine()\ngLj_Toolbox.DrawStatus(\"Dalamud\", gLj_Toolbox.Status.dalamud)\n\nGUI:End()\n\nself.used = true",
						conditions = 
						{
							
							{
								"ee7fc361-03c9-8c30-8d87-46747c9a820e",
								true,
							},
							
							{
								"bba59078-55bf-d137-bd71-f426e48b5c14",
								true,
							},
						},
						gVar = "ACR_RikuWAR3_CD",
						name = "Draw Toolbox",
						uuid = "58b067df-2d37-8434-bd02-e98d3b3e7449",
						version = 2.1,
					},
				},
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "-- Roster owns roles while active\nif gLj_Toolbox.GetRoster() then\n    gLj_Toolbox.Settings.showPartyAssigner = false\n    self.used = true\n    return\nend\n\nif Now() - gLj_Toolbox.State.lastTick > 500 then\n    gLj_Toolbox.State.lastTick = Now()\n    gLj_Toolbox.RefreshPartyRoles()\nend\n\nGUI:SetNextWindowSize(340, 330, GUI.SetCond_FirstUseEver)\nlocal visible, open = GUI:Begin(\"Party Role Assigner###gLj_PartyAssigner\", gLj_Toolbox.Settings.showPartyAssigner)\n\nif not open then\n    gLj_Toolbox.Settings.showPartyAssigner = false\nend\n\nif visible then\n    local settings = gLj_Toolbox.Settings\n    local state = gLj_Toolbox.State\n    local cache = gLj_Toolbox.Cache\n    local constants = gLj_Toolbox.Constants\n    local dragJob = state.dragName and cache.nameToJob[state.dragName]\n\n    -- ========================\n    -- CONTROLS HEADER\n    -- ========================\n    if GUI:Button(\"Defaults\", 95, 24) then\n        for name in pairs(settings.partyRoles) do settings.partyRoles[name] = nil end\n        for name in pairs(settings.savedProfiles) do settings.savedProfiles[name] = nil end\n        gLj_Toolbox.WriteProfiles()\n        state.syncedName = nil\n        gLj_Toolbox.SyncLocalRole(TensorCore.mGetPlayer())\n        gLj_Toolbox.RefreshPartyRoles()\n    end\n\n    GUI:SameLine()\n\n    if GUI:Button(\"Prune Saves\", 95, 24) then\n        local removedCount = 0\n        for name in pairs(settings.savedProfiles) do\n            if not cache.nameToJob[name] then\n                settings.savedProfiles[name] = nil\n                removedCount = removedCount + 1\n            end\n        end\n        gLj_Toolbox.WriteProfiles()\n        d(\"[LjToolbox] Pruned \" .. removedCount .. \" absent players from memory.\")\n    end\n\n    GUI:Spacing()\n    GUI:TextColored(0.7, 0.7, 0.7, 1.0, \"Drag a player onto another slot to swap.\")\n    GUI:Separator()\n\n    state.dragHover = nil\n\n    for _, roleStr in ipairs(constants.allRoles) do\n        local occupantName = cache.slotHolder[roleStr]\n        local isHovered = state.dragHoverLast == roleStr\n\n        GUI:Text(constants.slotTitles[roleStr])\n        GUI:SameLine(35)\n        GUI:PushStyleVar(GUI.StyleVar_ButtonTextAlign, 0.0, 0.5)\n\n        local pushedColors = 1\n        if dragJob and not gLj_Toolbox.IsRoleValidForJob(roleStr, dragJob) then\n            GUI:PushStyleColor(GUI.Col_Button, 0.1, 0.1, 0.1, 0.5)\n            GUI:PushStyleColor(GUI.Col_Text, 0.4, 0.4, 0.4, 1.0)\n            pushedColors = 2\n        elseif occupantName then\n            local rCol = gLj_Toolbox.GetRoleColor(roleStr)\n            local boost = (isHovered or state.dragName == occupantName) and 1.4 or 1.0\n            GUI:PushStyleColor(GUI.Col_Button, rCol[1] * boost, rCol[2] * boost, rCol[3] * boost, rCol[4])\n        else\n            local shade = isHovered and 0.3 or 0.15\n            GUI:PushStyleColor(GUI.Col_Button, shade, shade, shade, 1.0)\n        end\n\n        GUI:Button(cache.slotLabel[roleStr], -1, 24)\n        if occupantName and GUI:IsItemClicked(0) then state.dragName = occupantName end\n        if state.dragName and GUI:IsItemHovered(GUI.HoveredFlags_AllowWhenBlockedByActiveItem) then state.dragHover = roleStr end\n\n        GUI:PopStyleColor(pushedColors)\n        GUI:PopStyleVar()\n    end\n\n    if state.dragName then\n        if GUI:IsMouseDown(0) then\n            state.dragHoverLast = state.dragHover\n            if GUI:IsMouseDragging(0) then GUI:SetTooltip(cache.nameToLabel[state.dragName] or state.dragName) end\n        else\n            local target = state.dragHover\n            if target and target ~= settings.partyRoles[state.dragName]\n                and gLj_Toolbox.IsRoleValidForJob(target, cache.nameToJob[state.dragName]) then\n                gLj_Toolbox.AssignRole(state.dragName, target, true)\n            end\n            state.dragName = nil\n            state.dragHoverLast = nil\n        end\n    end\nend\nGUI:End()\n\nself.used = true",
						conditions = 
						{
							
							{
								"ee7fc361-03c9-8c30-8d87-46747c9a820e",
								true,
							},
							
							{
								"bba59078-55bf-d137-bd71-f426e48b5c14",
								true,
							},
							
							{
								"1c71b517-9340-8478-9f9e-6887f578a600",
								true,
							},
						},
						gVar = "ACR_RikuWAR3_CD",
						name = "Draw Party Roles Assigner",
						uuid = "83476b1d-bc07-4e32-a4c8-a06b1cb5a81d",
						version = 2.1,
					},
				},
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "local settings = gLj_Toolbox.Settings\nlocal state = gLj_Toolbox.State\n\n-- Reset if Map Changes\nif state.mapEffectsMapId ~= TensorCore.mGetPlayer().localmapid then\n    settings.selectedIndex = -1\n    gLj_Toolbox.RefreshMapEffects()\nend\n\nGUI:SetNextWindowSize(1100, 600, GUI.SetCond_FirstUseEver)\nlocal visible, open = GUI:Begin(\"Map Effects Explorer###gLj_EffectDebugger\", settings.showEffectTester)\n\nif not open then\n    settings.showEffectTester = false\nend\n\nif visible then\n    local rowHeight = GUI:GetTextLineHeightWithSpacing()\n\n    if GUI:Button(\"Refresh List\", 100, 24) then gLj_Toolbox.RefreshMapEffects() end\n    GUI:SameLine()\n\n    GUI:PushItemWidth(300)\n    settings.searchFilter = GUI:InputText(\"Search Filter\", settings.searchFilter)\n    GUI:PopItemWidth()\n    GUI:Spacing()\n\n    local filteredItems = gLj_Toolbox.FilterMapEffects()\n\n    GUI:Columns(2, \"MapEffectsColumns\", true)\n\n    GUI:BeginChild(\"ME_LeftList\", 0, 0, true, GUI.WindowFlags_HorizontalScrollbar)\n    local first, last = gLj_Toolbox.BeginClip(#filteredItems, rowHeight)\n    for i = first + 1, last do\n        local item = filteredItems[i]\n        local isSelected = (settings.selectedIndex == item.index)\n\n        if isSelected then\n            GUI:PushStyleColor(GUI.Col_Text, 1.0, 0.2, 0.2, 1.0)\n        elseif item.isActive then\n            GUI:PushStyleColor(GUI.Col_Text, 0.9, 0.9, 0.9, 1.0)\n        else\n            GUI:PushStyleColor(GUI.Col_Text, 0.5, 0.5, 0.5, 1.0)\n        end\n\n        if GUI:Selectable(item.label, isSelected) then\n            settings.selectedIndex = item.index\n            gLj_Toolbox.BuildEffectDetail(item.index)\n        end\n        GUI:PopStyleColor()\n    end\n    gLj_Toolbox.EndClip(#filteredItems, last, rowHeight)\n    GUI:EndChild()\n\n    GUI:NextColumn()\n\n    GUI:BeginChild(\"ME_RightTree\", 0, 0, true)\n    if state.effectDetail and Now() >= state.effectDetail.nextLive then\n        gLj_Toolbox.UpdateEffectLive(state.effectDetail)\n    end\n    local detail = state.effectDetail\n\n    if not detail then\n        GUI:TextColored(0.5, 0.5, 0.5, 1.0, \"Select a map effect from the list on the left to inspect.\")\n    elseif detail.missing then\n        GUI:TextColored(1.0, 0.4, 0.4, 1.0, \"Resource is nil or despawned.\")\n    else\n        GUI:TextColored(0.95, 0.75, 0.20, 1.0, detail.indexText)\n        GUI:SameLine(100)\n        GUI:TextColored(0.40, 0.75, 1.00, 1.0, detail.idText)\n        GUI:SameLine(200)\n        GUI:TextColored(0.95, 0.75, 0.20, 1.0, detail.typeText)\n        GUI:SameLine(350)\n\n        if detail.active then\n            GUI:TextColored(0.30, 0.90, 0.40, 1.0, \"Status: ACTIVE\")\n        else\n            GUI:TextColored(0.60, 0.60, 0.60, 1.0, \"Status: INACTIVE\")\n        end\n\n        GUI:Spacing()\n        GUI:TextColored(0.8, 0.8, 0.8, 1.0, \"Path: \")\n        GUI:SameLine()\n        GUI:TextColored(1.0, 1.0, 1.0, 1.0, detail.pathText)\n\n        GUI:SameLine()\n        if GUI:Button(\"[Copy]##Path\", 45, 18) then GUI:SetClipboardText(detail.pathText) end\n\n        GUI:Separator()\n        GUI:Spacing()\n\n        GUI:Text(\"Actions:\")\n        GUI:SameLine()\n        if GUI:Button(\"Spawn on Me\", 120, 20) then\n            local res = Argus.getMapEffectResource(detail.index)\n            local pos = TensorCore.mGetPlayer().pos\n            if res then Argus.setEffectResourcePosition(res, pos.x, pos.y, pos.z) end\n            detail.nextLive = 0\n        end\n        GUI:SameLine()\n        if GUI:Button(\"Turn Off (Flag 4)\", 120, 20) then\n            Argus.runMapEffect(detail.index, 0, 4)\n            detail.nextLive = 0\n        end\n\n        GUI:Spacing()\n        GUI:Separator()\n        GUI:Spacing()\n\n        if detail.posText then GUI:TextColored(0.4, 0.8, 1.0, 1.0, detail.posText) end\n        if detail.scaleText then GUI:TextColored(0.4, 1.0, 0.4, 1.0, detail.scaleText) end\n        if detail.dirText then GUI:TextColored(1.0, 0.6, 0.6, 1.0, detail.dirText) end\n        if detail.renderText then\n            GUI:Spacing()\n            GUI:TextColored(0.8, 0.8, 0.8, 1.0, detail.renderText)\n        end\n\n        GUI:Spacing()\n        GUI:Separator()\n        GUI:Spacing()\n\n        if detail.isScript then\n            if #detail.scripts > 0 then\n                GUI:TextColored(0.95, 0.75, 0.20, 1.0, detail.scriptsTitle)\n                GUI:Spacing()\n\n                for _, script in ipairs(detail.scripts) do\n                    if script.running then\n                        GUI:TextColored(0.3, 0.9, 0.4, 1.0, script.label)\n                    else\n                        GUI:TextColored(0.9, 0.3, 0.3, 1.0, script.label)\n                    end\n\n                    GUI:SameLine(350)\n                    if GUI:Button(script.runId, 40, 18) then\n                        local res = Argus.getMapEffectResource(detail.index)\n                        if res then Argus.startEffectResourceScript(res, script.index, 0) end\n                        detail.nextLive = 0\n                    end\n                    GUI:SameLine()\n                    if GUI:Button(script.stopId, 40, 18) then\n                        Argus.runMapEffect(detail.index, 0, 4)\n                        detail.nextLive = 0\n                    end\n                    GUI:SameLine()\n                    if GUI:Button(script.copyId, 110, 18) then GUI:SetClipboardText(script.reaction) end\n\n                    for _, sub in ipairs(script.subs) do\n                        GUI:TextColored(0.5, 0.5, 0.5, 1.0, \"      -\")\n                        GUI:SameLine()\n                        GUI:TextColored(0.7, 0.7, 0.7, 1.0, sub.label)\n                        if GUI:IsItemHovered() then GUI:SetTooltip(sub.path) end\n                    end\n                    GUI:Spacing()\n                end\n            end\n\n            if #detail.pool > 0 then\n                GUI:Spacing()\n                GUI:TextColored(0.40, 0.75, 1.00, 1.0, detail.poolTitle)\n                GUI:Spacing()\n                local poolFirst, poolLast = gLj_Toolbox.BeginClip(#detail.pool, rowHeight)\n                for i = poolFirst + 1, poolLast do\n                    local row = detail.pool[i]\n                    if row.active then\n                        GUI:TextColored(0.9, 0.9, 0.9, 1.0, row.label)\n                    else\n                        GUI:TextColored(0.5, 0.5, 0.5, 1.0, row.label)\n                    end\n                    GUI:SameLine(180)\n                    GUI:TextColored(0.6, 0.6, 0.6, 1.0, row.path)\n                end\n                gLj_Toolbox.EndClip(#detail.pool, poolLast, rowHeight)\n            end\n        end\n    end\n    GUI:EndChild()\n    GUI:Columns(1)\nend\nGUI:End()\n\nself.used = true",
						conditions = 
						{
							
							{
								"ee7fc361-03c9-8c30-8d87-46747c9a820e",
								true,
							},
							
							{
								"d011e231-0d5f-dc7b-afe1-4e844574b667",
								true,
							},
						},
						gVar = "ACR_RikuWAR3_CD",
						name = "Draw Map Effects Debugger",
						uuid = "e6ecea36-1ab2-e492-b77a-34338ab7029b",
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
						conditionLua = "return ljHighendDuty == true",
						dequeueIfLuaFalse = true,
						name = "In Highend Duty",
						uuid = "64d7c855-cc05-f50d-a8b2-34c52aa84eed",
						version = 3,
					},
					inheritedIndex = 1,
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return InInstance()",
						dequeueIfLuaFalse = true,
						name = "In Instance",
						uuid = "a367a1bc-5882-a8d3-9acd-d695597d9892",
						version = 3,
					},
					inheritedIndex = 2,
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return gLj_Toolbox ~= nil",
						name = "Initialized",
						uuid = "ee7fc361-03c9-8c30-8d87-46747c9a820e",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local p = TensorCore.mGetPlayer()\nreturn p.name ~= nil and p.name ~= \"\" and p.job ~= nil and p.job > 0",
						name = "Player Ready",
						uuid = "bba59078-55bf-d137-bd71-f426e48b5c14",
						version = 3,
					},
					inheritedIndex = 4,
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return gLj_Toolbox.Settings.showPartyAssigner",
						name = "Party Roles Assigner",
						uuid = "1c71b517-9340-8478-9f9e-6887f578a600",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return gLj_Toolbox.Settings.showEffectTester",
						name = "Map Effects Debugger",
						uuid = "d011e231-0d5f-dc7b-afe1-4e844574b667",
						version = 3,
					},
				},
			},
			displayPath = "Utilities",
			eventType = 13,
			name = "Lj: Toolbox",
			uuid = "944ecaeb-9b2c-3dbd-bfed-7a33915d3caf",
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
						actionID = 46942,
						conditions = 
						{
							
							{
								"6d128ba5-8eb6-e96d-9def-0f35077277f0",
								true,
							},
							
							{
								"6625b085-e682-6937-b10f-d88d17f25b9d",
								true,
							},
							
							{
								"fa526f25-1c52-19a8-84ec-e072956139e0",
								true,
							},
							
							{
								"076677ea-360d-d868-8867-8d43ca710c70",
								true,
							},
						},
						gVar = "ACR_RikuWAR3_CD",
						targetSubType = "Highest HP",
						targetType = "Enemy",
						uuid = "13d5015a-74a1-90ac-90d0-001308bb78a6",
						version = 2.1,
					},
				},
				
				{
					data = 
					{
						actionID = 46940,
						conditions = 
						{
							
							{
								"6d128ba5-8eb6-e96d-9def-0f35077277f0",
								true,
							},
							
							{
								"6625b085-e682-6937-b10f-d88d17f25b9d",
								true,
							},
							
							{
								"fa526f25-1c52-19a8-84ec-e072956139e0",
								true,
							},
							
							{
								"5af485de-a28e-83f8-a13a-60a61b9cf488",
								true,
							},
							
							{
								"0fea527c-2162-7129-a55c-e74b263adfd3",
								true,
							},
						},
						gVar = "ACR_RikuWAR3_CD",
						targetType = "Current Target",
						uuid = "8ceca89c-777d-f9e5-b5d5-12d92885e403",
						version = 2.1,
					},
				},
				
				{
					data = 
					{
						actionID = 46941,
						conditions = 
						{
							
							{
								"6d128ba5-8eb6-e96d-9def-0f35077277f0",
								true,
							},
							
							{
								"6625b085-e682-6937-b10f-d88d17f25b9d",
								true,
							},
							
							{
								"fa526f25-1c52-19a8-84ec-e072956139e0",
								true,
							},
							
							{
								"fa3513f2-6b12-fedf-a6cd-a01adebf3a62",
								true,
							},
						},
						gVar = "ACR_TensorViper3_CD",
						uuid = "72760658-6612-71ca-a212-bd9313ea0228",
						version = 2.1,
					},
				},
				
				{
					data = 
					{
						actionID = 46939,
						conditions = 
						{
							
							{
								"6d128ba5-8eb6-e96d-9def-0f35077277f0",
								true,
							},
							
							{
								"6625b085-e682-6937-b10f-d88d17f25b9d",
								true,
							},
							
							{
								"fa526f25-1c52-19a8-84ec-e072956139e0",
								true,
							},
							
							{
								"2efcabe6-3aa1-5501-b514-b7aad2eab0a6",
								false,
							},
							
							{
								"66951871-1975-4cfa-b9f9-52395b208ff7",
								true,
							},
						},
						gVar = "ACR_RikuWAR3_CD",
						ignoreWeaveRules = true,
						targetType = "Detection Target",
						uuid = "4aa28261-1da9-833f-a91d-6da7d8ba2b53",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Self",
						conditionType = 12,
						dequeueIfLuaFalse = true,
						localMapIDList = 
						{
							1315,
							1316,
						},
						localmapid = 1315,
						name = "Merchant's Tale",
						uuid = "6d128ba5-8eb6-e96d-9def-0f35077277f0",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return ACR.IsActive()",
						name = "Bot Enabled",
						uuid = "6625b085-e682-6937-b10f-d88d17f25b9d",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 7,
						uuid = "fa526f25-1c52-19a8-84ec-e072956139e0",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return TensorCore.API.RikuRDM3.inMeleeCombo(false)",
						name = "Self In RDM Combo",
						uuid = "2efcabe6-3aa1-5501-b514-b7aad2eab0a6",
						version = 3,
					},
				},
				
				{
					data = 
					{
						actionID = 46942,
						category = "Self",
						comparator = 2,
						conditionType = 4,
						name = "CD - Variant Eagle Eye",
						uuid = "076677ea-360d-d868-8867-8d43ca710c70",
						version = 3,
					},
				},
				
				{
					data = 
					{
						actionID = 46940,
						category = "Self",
						comparator = 2,
						conditionType = 4,
						name = "CD - Variant Spirit Dart",
						uuid = "5af485de-a28e-83f8-a13a-60a61b9cf488",
						version = 3,
					},
				},
				
				{
					data = 
					{
						actionID = 46941,
						category = "Self",
						comparator = 2,
						conditionType = 4,
						name = "CD - Variant Rampart",
						uuid = "fa3513f2-6b12-fedf-a6cd-a01adebf3a62",
						version = 3,
					},
				},
				
				{
					data = 
					{
						buffCheckType = 2,
						buffDuration = 2,
						buffID = 3359,
						comparator = 2,
						name = "Target Missing Spirit Dart",
						uuid = "bf5d208e-07e1-6479-9453-2fbd1eee2f89",
						version = 3,
					},
				},
				
				{
					data = 
					{
						buffCheckType = 3,
						buffDuration = 2,
						buffID = 3359,
						comparator = 2,
						name = "Target Expiring Spirit Dart",
						uuid = "77b3aad9-f944-551e-a3fb-316f5f83350e",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Party",
						comparator = 2,
						conditionType = 2,
						hpValue = 55,
						name = "DT - HP <= 55% HP",
						partyTargetType = "Detection Target",
						uuid = "4ab9f8d7-de93-0699-88f7-38cf9ef572a5",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Party",
						comparator = 2,
						conditionType = 4,
						inRangeValue = 29,
						name = "DT - Range <= 29y",
						partyTargetType = "Detection Target",
						uuid = "bc7c07dd-f552-d5ef-b03e-77a667c72fe3",
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
								"bf5d208e-07e1-6479-9453-2fbd1eee2f89",
								true,
							},
							
							{
								"77b3aad9-f944-551e-a3fb-316f5f83350e",
								true,
							},
						},
						matchAnyBuff = true,
						name = "F - Spirit Dart",
						partyTargetNumber = 0,
						uuid = "0fea527c-2162-7129-a55c-e74b263adfd3",
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
								"4ab9f8d7-de93-0699-88f7-38cf9ef572a5",
								true,
							},
							
							{
								"bc7c07dd-f552-d5ef-b03e-77a667c72fe3",
								true,
							},
						},
						filterTargetSubtype = "Lowest HP",
						filterTargetType = "Party",
						name = "F - Cure Target",
						uuid = "66951871-1975-4cfa-b9f9-52395b208ff7",
						version = 3,
					},
				},
			},
			displayPath = "Utilities",
			name = "Lj: Variant | Merchant's Tale",
			uuid = "3c0d1ba7-f030-135c-bca1-33f5d01cb92a",
			version = 2,
		},
		inheritedIndex = 19,
	}, 
	inheritedProfiles = 
	{
	},
}



return tbl