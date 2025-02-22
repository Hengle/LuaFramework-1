--version = 1
local l_fileType = "layer"

local UIUtil = require "ui/common/UIUtil"

--EDITOR elements start tag
local eleRoot = 
{
	prop = {
		etype = "Layer",
		name = "root",
		posX = 0,
		posY = 0,
		anchorX = 0,
		anchorY = 0,
	},
	children = {
	{
		prop = {
			etype = "Image",
			name = "ddd",
			posX = 0.5,
			posY = 0.5,
			anchorX = 0.5,
			anchorY = 0.5,
			sizeX = 1,
			sizeY = 1,
			image = "b#dd",
			scale9 = true,
			scale9Left = 0.2,
			scale9Right = 0.2,
			scale9Top = 0.2,
			scale9Bottom = 0.2,
			alpha = 0.7,
		},
		children = {
		{
			prop = {
				etype = "Button",
				name = "dd",
				posX = 0.5,
				posY = 0.5,
				anchorX = 0.5,
				anchorY = 0.5,
				sizeX = 1,
				sizeY = 1,
			},
		},
		},
	},
	{
		prop = {
			etype = "Grid",
			name = "ysjm",
			posX = 0.5,
			posY = 0.5,
			anchorX = 0.5,
			anchorY = 0.5,
			sizeX = 1,
			sizeY = 1,
		},
		children = {
		{
			prop = {
				etype = "Image",
				name = "dt",
				posX = 0.5,
				posY = 0.5,
				anchorX = 0.5,
				anchorY = 0.5,
				sizeX = 0.7929688,
				sizeY = 0.8055556,
				image = "g#dt2.png",
				scale9 = true,
				scale9Left = 0.3,
				scale9Right = 0.3,
				scale9Top = 0.3,
				scale9Bottom = 0.3,
			},
			children = {
			{
				prop = {
					etype = "Image",
					name = "hua2",
					posX = 0.6967232,
					posY = 0.6686881,
					anchorX = 0.5,
					anchorY = 0.5,
					lockHV = true,
					sizeX = 0.3934393,
					sizeY = 0.6265521,
					image = "w#w_hua.png",
					alpha = 0.3,
					flippedY = true,
				},
			},
			{
				prop = {
					etype = "Image",
					name = "hua1",
					posX = 0.3032823,
					posY = 0.6686881,
					anchorX = 0.5,
					anchorY = 0.5,
					lockHV = true,
					sizeX = 0.3934393,
					sizeY = 0.6265521,
					image = "w#w_hua.png",
					alpha = 0.3,
					flippedX = true,
					flippedY = true,
				},
			},
			{
				prop = {
					etype = "Image",
					name = "pg",
					posX = 0.5,
					posY = 0.9561764,
					anchorX = 0.5,
					anchorY = 0.5,
					sizeX = 0.9033602,
					sizeY = 0.065235,
					image = "w#cdd",
					flippedY = true,
				},
			},
			{
				prop = {
					etype = "Image",
					name = "db",
					posX = 0.5,
					posY = 0.4491365,
					anchorX = 0.5,
					anchorY = 0.5,
					sizeX = 0.9283251,
					sizeY = 0.8074647,
					image = "g#g_d9.png",
					scale9 = true,
					scale9Left = 0.3,
					scale9Right = 0.3,
					scale9Top = 0.3,
					scale9Bottom = 0.3,
				},
			},
			{
				prop = {
					etype = "Grid",
					name = "zhouwei",
					varName = "otherRoot",
					posX = 0.4990037,
					posY = 0.4757447,
					anchorX = 0.5,
					anchorY = 0.5,
					visible = false,
					sizeX = 0.9940227,
					sizeY = 0.9234368,
				},
				children = {
				{
					prop = {
						etype = "Button",
						name = "hq1",
						varName = "same_clan_btn",
						posX = 0.1168041,
						posY = 0.9485555,
						anchorX = 0.5,
						anchorY = 0.5,
						sizeX = 0.154982,
						sizeY = 0.143662,
						image = "w#w_aa4.png",
						imageNormal = "w#w_aa4.png",
						imagePressed = "w#w_aa2.png",
						imageDisable = "w#w_aa4.png",
						disablePressScale = true,
						soundEffectClick = "audio/rxjh/UI/anniu.ogg",
					},
					children = {
					{
						prop = {
							etype = "Label",
							name = "hqz1",
							posX = 0.5,
							posY = 0.5041192,
							anchorX = 0.5,
							anchorY = 0.5,
							sizeX = 0.871219,
							sizeY = 0.499176,
							text = "相同派别",
							color = "FFFBFFCC",
							fontSize = 24,
							fontOutlineEnable = true,
							fontOutlineColor = "FF51361C",
							fontOutlineSize = 2,
							hTextAlign = 1,
							vTextAlign = 1,
						},
					},
					},
				},
				{
					prop = {
						etype = "Button",
						name = "hq2",
						varName = "enemy_clan_btn",
						posX = 0.2627755,
						posY = 0.9485555,
						anchorX = 0.5,
						anchorY = 0.5,
						sizeX = 0.154982,
						sizeY = 0.143662,
						image = "w#w_aa4.png",
						imageNormal = "w#w_aa4.png",
						imagePressed = "w#w_aa2.png",
						imageDisable = "w#w_aa4.png",
						disablePressScale = true,
						soundEffectClick = "audio/rxjh/UI/anniu.ogg",
					},
					children = {
					{
						prop = {
							etype = "Label",
							name = "hqz2",
							posX = 0.5,
							posY = 0.5041192,
							anchorX = 0.5,
							anchorY = 0.5,
							sizeX = 0.9189917,
							sizeY = 0.499176,
							text = "敌对派别",
							color = "FFFBFFCC",
							fontSize = 24,
							fontOutlineEnable = true,
							fontOutlineColor = "FF51361C",
							fontOutlineSize = 2,
							hTextAlign = 1,
							vTextAlign = 1,
						},
					},
					},
				},
				{
					prop = {
						etype = "Scroll",
						name = "lb",
						varName = "clan_scroll",
						posX = 0.5,
						posY = 0.4190845,
						anchorX = 0.5,
						anchorY = 0.5,
						sizeX = 0.9261891,
						sizeY = 0.7474723,
					},
				},
				{
					prop = {
						etype = "Image",
						name = "btk",
						posX = 0.5010009,
						posY = 0.8431762,
						anchorX = 0.5,
						anchorY = 0.5,
						sizeX = 0.9341069,
						sizeY = 0.1196078,
						image = "a",
						scale9 = true,
						scale9Left = 0.4,
						scale9Right = 0.4,
						scale9Top = 0.4,
						scale9Bottom = 0.4,
						alpha = 0.3,
					},
					children = {
					{
						prop = {
							etype = "Image",
							name = "btk1",
							posX = 0.1262534,
							posY = 0.5164594,
							anchorX = 0.5,
							anchorY = 0.5,
							sizeX = 0.2538496,
							sizeY = 1.016394,
							image = "g#g_tmd.png",
							scale9 = true,
							scale9Left = 0.4,
							scale9Right = 0.4,
							scale9Top = 0.4,
							scale9Bottom = 0.4,
						},
						children = {
						{
							prop = {
								etype = "Label",
								name = "z1",
								posX = 0.5,
								posY = 0.548387,
								anchorX = 0.5,
								anchorY = 0.5,
								sizeX = 0.740453,
								sizeY = 0.8444229,
								text = "宗 门",
								color = "FF55C4A6",
								fontSize = 24,
								fontOutlineEnable = true,
								fontOutlineColor = "FF143230",
								hTextAlign = 1,
								vTextAlign = 1,
							},
						},
						},
					},
					{
						prop = {
							etype = "Image",
							name = "btk2",
							posX = 0.3324999,
							posY = 0.5164595,
							anchorX = 0.5,
							anchorY = 0.5,
							sizeX = 0.1716711,
							sizeY = 1.016394,
							image = "g#g_tmd.png",
							scale9 = true,
							scale9Left = 0.4,
							scale9Right = 0.4,
							scale9Top = 0.4,
							scale9Bottom = 0.4,
						},
						children = {
						{
							prop = {
								etype = "Label",
								name = "z2",
								posX = 0.5,
								posY = 0.548387,
								anchorX = 0.5,
								anchorY = 0.5,
								sizeX = 0.740453,
								sizeY = 0.8444229,
								text = "宗门等级",
								color = "FF55C4A6",
								fontSize = 24,
								fontOutlineEnable = true,
								fontOutlineColor = "FF143230",
								hTextAlign = 1,
								vTextAlign = 1,
							},
						},
						},
					},
					{
						prop = {
							etype = "Image",
							name = "btk3",
							posX = 0.5418636,
							posY = 0.5164593,
							anchorX = 0.5,
							anchorY = 0.5,
							sizeX = 0.2600842,
							sizeY = 1.016394,
							image = "g#g_tmd.png",
							scale9 = true,
							scale9Left = 0.4,
							scale9Right = 0.4,
							scale9Top = 0.4,
							scale9Bottom = 0.4,
						},
						children = {
						{
							prop = {
								etype = "Label",
								name = "z3",
								posX = 0.5,
								posY = 0.548387,
								anchorX = 0.5,
								anchorY = 0.5,
								sizeX = 0.740453,
								sizeY = 0.8444229,
								text = "宗 主",
								color = "FF55C4A6",
								fontSize = 24,
								fontOutlineEnable = true,
								fontOutlineColor = "FF143230",
								hTextAlign = 1,
								vTextAlign = 1,
							},
						},
						},
					},
					{
						prop = {
							etype = "Image",
							name = "btk4",
							posX = 0.7501477,
							posY = 0.5164594,
							anchorX = 0.5,
							anchorY = 0.5,
							sizeX = 0.1695118,
							sizeY = 1.016394,
							image = "g#g_tmd.png",
							scale9 = true,
							scale9Left = 0.4,
							scale9Right = 0.4,
							scale9Top = 0.4,
							scale9Bottom = 0.4,
						},
						children = {
						{
							prop = {
								etype = "Label",
								name = "z4",
								posX = 0.5,
								posY = 0.548387,
								anchorX = 0.5,
								anchorY = 0.5,
								sizeX = 0.740453,
								sizeY = 0.8444229,
								text = "宗主战力",
								color = "FF55C4A6",
								fontSize = 24,
								fontOutlineEnable = true,
								fontOutlineColor = "FF143230",
								hTextAlign = 1,
								vTextAlign = 1,
							},
						},
						},
					},
					{
						prop = {
							etype = "Image",
							name = "btk5",
							posX = 0.9145499,
							posY = 0.5164594,
							anchorX = 0.5,
							anchorY = 0.5,
							sizeX = 0.1723205,
							sizeY = 1.016394,
							image = "g#g_tmd.png",
							scale9 = true,
							scale9Left = 0.4,
							scale9Right = 0.4,
							scale9Top = 0.4,
							scale9Bottom = 0.4,
						},
						children = {
						{
							prop = {
								etype = "Label",
								name = "z5",
								posX = 0.5,
								posY = 0.548387,
								anchorX = 0.5,
								anchorY = 0.5,
								sizeX = 0.740453,
								sizeY = 0.8444229,
								text = "距 离",
								color = "FF55C4A6",
								fontSize = 24,
								fontOutlineEnable = true,
								fontOutlineColor = "FF143230",
								hTextAlign = 1,
								vTextAlign = 1,
							},
						},
						},
					},
					},
				},
				},
			},
			{
				prop = {
					etype = "Grid",
					name = "weizhi",
					varName = "myRoot",
					posX = 0.4990037,
					posY = 0.4757447,
					anchorX = 0.5,
					anchorY = 0.5,
					sizeX = 0.9940227,
					sizeY = 0.9234368,
				},
				children = {
				{
					prop = {
						etype = "Image",
						name = "dk1",
						posX = 0.5,
						posY = 0.6773745,
						anchorX = 0.5,
						anchorY = 0.5,
						sizeX = 0.8529353,
						sizeY = 0.3734176,
						image = "w#w_smd3.png",
						scale9 = true,
						scale9Left = 0.1,
						scale9Right = 0.1,
						scale9Top = 0.1,
						scale9Bottom = 0.1,
						alpha = 0.6,
					},
					children = {
					{
						prop = {
							etype = "Image",
							name = "zmk",
							varName = "level_bg_icon",
							posX = 0.2342775,
							posY = 0.6151213,
							anchorX = 0.5,
							anchorY = 0.5,
							lockHV = true,
							sizeX = 0.1354475,
							sizeY = 0.6200001,
							image = "zm#33",
						},
						children = {
						{
							prop = {
								etype = "Image",
								name = "sz",
								varName = "my_lvl_icon1",
								posX = 0.366067,
								posY = 0.4010431,
								anchorX = 0.5,
								anchorY = 0.5,
								sizeX = 0.2622894,
								sizeY = 0.3603451,
								image = "zm#sz8",
							},
						},
						{
							prop = {
								etype = "Image",
								name = "sz2",
								varName = "my_lvl_icon2",
								posX = 0.6339008,
								posY = 0.4010431,
								anchorX = 0.5,
								anchorY = 0.5,
								sizeX = 0.2622894,
								sizeY = 0.3603451,
								image = "zm#sz8",
							},
						},
						{
							prop = {
								etype = "Image",
								name = "nv",
								varName = "girl_bg",
								posX = 0.5,
								posY = 0.3108194,
								anchorX = 0.5,
								anchorY = 0.5,
								sizeX = 1.019163,
								sizeY = 0.5439557,
								image = "zm#nv",
							},
						},
						},
					},
					{
						prop = {
							etype = "Label",
							name = "zmm",
							varName = "clanName_label",
							posX = 0.5572293,
							posY = 0.745366,
							anchorX = 0.5,
							anchorY = 0.5,
							sizeX = 0.2292502,
							sizeY = 0.2535313,
							text = "宗门名称",
							color = "FFA2FAE0",
							fontSize = 24,
							vTextAlign = 1,
						},
					},
					{
						prop = {
							etype = "Label",
							name = "wz1",
							posX = 0.1879845,
							posY = 0.1587787,
							anchorX = 0.5,
							anchorY = 0.5,
							sizeX = 0.1297047,
							sizeY = 0.2535312,
							text = "位置：",
							color = "FF419679",
							fontSize = 24,
							hTextAlign = 2,
							vTextAlign = 1,
						},
					},
					{
						prop = {
							etype = "Label",
							name = "wz2",
							varName = "pos_desc",
							posX = 0.4710752,
							posY = 0.1587787,
							anchorX = 0.5,
							anchorY = 0.5,
							sizeX = 0.4035966,
							sizeY = 0.2535312,
							text = "大陆东部  X，Y",
							color = "FF419679",
							fontSize = 24,
							vTextAlign = 1,
						},
					},
					{
						prop = {
							etype = "Label",
							name = "yb2",
							varName = "money_count",
							posX = 0.8445842,
							posY = 0.3616597,
							anchorX = 0.5,
							anchorY = 0.5,
							sizeX = 0.1484772,
							sizeY = 0.2535312,
							text = "100",
							color = "FFFEDB45",
							fontSize = 22,
							vTextAlign = 1,
						},
					},
					{
						prop = {
							etype = "Image",
							name = "yb1",
							posX = 0.7426637,
							posY = 0.3699119,
							anchorX = 0.5,
							anchorY = 0.5,
							lockHV = true,
							sizeX = 0.05306096,
							sizeY = 0.2283094,
							image = "tb#tb_yuanbao.png",
						},
						children = {
						{
							prop = {
								etype = "Image",
								name = "suo",
								posX = 0.6530856,
								posY = 0.3467875,
								anchorX = 0.5,
								anchorY = 0.5,
								lockHV = true,
								sizeX = 0.5475028,
								sizeY = 0.5475027,
								image = "tb#suo",
							},
						},
						},
					},
					{
						prop = {
							etype = "Label",
							name = "zzm",
							varName = "masterName_label",
							posX = 0.5572293,
							posY = 0.5046494,
							anchorX = 0.5,
							anchorY = 0.5,
							sizeX = 0.2292502,
							sizeY = 0.2535313,
							text = "宗主名字",
							color = "FFA2FAE0",
							fontSize = 24,
							vTextAlign = 1,
						},
					},
					{
						prop = {
							etype = "Button",
							name = "an1",
							varName = "move_btn",
							posX = 0.7643645,
							posY = 0.1587787,
							anchorX = 0.5,
							anchorY = 0.5,
							sizeX = 0.1591996,
							sizeY = 0.24,
							image = "w#w_qq4.png",
							imageNormal = "w#w_qq4.png",
							soundEffectClick = "audio/rxjh/UI/anniu.ogg",
						},
						children = {
						{
							prop = {
								etype = "Label",
								name = "anz1",
								posX = 0.5,
								posY = 0.5,
								anchorX = 0.5,
								anchorY = 0.5,
								sizeX = 0.7309601,
								sizeY = 0.8735464,
								text = "迁 徙",
								color = "FFB0FFD9",
								fontSize = 24,
								fontOutlineEnable = true,
								fontOutlineColor = "FF145A4F",
								fontOutlineSize = 2,
								hTextAlign = 1,
								vTextAlign = 1,
							},
						},
						},
					},
					{
						prop = {
							etype = "Image",
							name = "zs1",
							posX = 0.3178504,
							posY = 0.9991816,
							anchorX = 0.5,
							anchorY = 0.5,
							sizeX = 0.1324727,
							sizeY = 0.045,
							image = "w#w_zhuangshixian.png",
						},
					},
					{
						prop = {
							etype = "Image",
							name = "zs2",
							posX = 0.7088162,
							posY = 0.9991817,
							anchorX = 0.5,
							anchorY = 0.5,
							sizeX = 0.1324727,
							sizeY = 0.045,
							image = "w#w_zhuangshixian.png",
							flippedX = true,
						},
					},
					{
						prop = {
							etype = "Image",
							name = "zs3",
							posX = 0.5150836,
							posY = 0.9891959,
							anchorX = 0.5,
							anchorY = 0.5,
							sizeX = 0.2173017,
							sizeY = 0.225,
							image = "zm#zm_xinxi.png",
						},
					},
					{
						prop = {
							etype = "Label",
							name = "zmm4",
							posX = 0.3782,
							posY = 0.745366,
							anchorX = 0.5,
							anchorY = 0.5,
							sizeX = 0.1136931,
							sizeY = 0.2535315,
							text = "宗门：",
							color = "FF419679",
							fontSize = 24,
							hTextAlign = 2,
							vTextAlign = 1,
						},
					},
					{
						prop = {
							etype = "Label",
							name = "zmm5",
							posX = 0.3782,
							posY = 0.5046496,
							anchorX = 0.5,
							anchorY = 0.5,
							sizeX = 0.1136931,
							sizeY = 0.2535315,
							text = "宗主：",
							color = "FF419679",
							fontSize = 24,
							hTextAlign = 2,
							vTextAlign = 1,
						},
					},
					{
						prop = {
							etype = "Label",
							name = "zmm6",
							posX = 0.7279736,
							posY = 0.7453658,
							anchorX = 0.5,
							anchorY = 0.5,
							sizeX = 0.1136931,
							sizeY = 0.2535315,
							text = "宗门ID：",
							color = "FF419679",
							fontSize = 24,
							hTextAlign = 2,
							vTextAlign = 1,
						},
					},
					},
				},
				{
					prop = {
						etype = "Image",
						name = "dw1",
						varName = "enemy_root",
						posX = 0.2663621,
						posY = 0.2635361,
						anchorX = 0.5,
						anchorY = 0.5,
						sizeX = 0.4669349,
						sizeY = 0.4144935,
						image = "w#w_smd3.png",
						scale9 = true,
						scale9Left = 0.3,
						scale9Right = 0.3,
						scale9Top = 0.3,
						scale9Bottom = 0.3,
						alpha = 0.6,
					},
					children = {
					{
						prop = {
							etype = "Image",
							name = "zmk2",
							varName = "enemy_lvl_icon",
							posX = 0.2304438,
							posY = 0.3963918,
							anchorX = 0.5,
							anchorY = 0.5,
							lockHV = true,
							sizeX = 0.2174882,
							sizeY = 0.4909911,
							image = "zm#33",
						},
						children = {
						{
							prop = {
								etype = "Image",
								name = "sz3",
								varName = "enemy_first_lvl",
								posX = 0.366067,
								posY = 0.4010431,
								anchorX = 0.5,
								anchorY = 0.5,
								sizeX = 0.2622894,
								sizeY = 0.3603451,
								image = "zm#sz8",
							},
						},
						{
							prop = {
								etype = "Image",
								name = "sz5",
								varName = "enemy_second_lvl",
								posX = 0.6339008,
								posY = 0.4010431,
								anchorX = 0.5,
								anchorY = 0.5,
								sizeX = 0.2622894,
								sizeY = 0.3603451,
								image = "zm#sz8",
							},
						},
						{
							prop = {
								etype = "Image",
								name = "nv2",
								varName = "enemy_girl_icon",
								posX = 0.5,
								posY = 0.3108194,
								anchorX = 0.5,
								anchorY = 0.5,
								sizeX = 1.019163,
								sizeY = 0.5439557,
								image = "zm#nv",
							},
						},
						},
					},
					{
						prop = {
							etype = "Label",
							name = "zmm2",
							varName = "enemy_clan_name",
							posX = 0.7397314,
							posY = 0.5044687,
							anchorX = 0.5,
							anchorY = 0.5,
							sizeX = 0.4068835,
							sizeY = 0.206273,
							text = "宗门名称",
							color = "FFDA3615",
							fontSize = 24,
							vTextAlign = 1,
						},
					},
					{
						prop = {
							etype = "Label",
							name = "zzm2",
							varName = "enemy_clan_user",
							posX = 0.7397313,
							posY = 0.3076782,
							anchorX = 0.5,
							anchorY = 0.5,
							sizeX = 0.4068835,
							sizeY = 0.2131081,
							text = "宗主名字",
							color = "FF419679",
							fontSize = 24,
							vTextAlign = 1,
						},
					},
					{
						prop = {
							etype = "Image",
							name = "df1",
							posX = 0.4279209,
							posY = 0.8552637,
							anchorX = 0.5,
							anchorY = 0.5,
							sizeX = 0.8193483,
							sizeY = 0.2522523,
							image = "zm#zm_zuigao.png",
						},
					},
					{
						prop = {
							etype = "Label",
							name = "zmm7",
							posX = 0.4001604,
							posY = 0.5044687,
							anchorX = 0.5,
							anchorY = 0.5,
							sizeX = 0.2212949,
							sizeY = 0.206273,
							text = "宗门：",
							color = "FF419679",
							fontSize = 24,
							hTextAlign = 2,
							vTextAlign = 1,
						},
					},
					{
						prop = {
							etype = "Label",
							name = "zmm9",
							posX = 0.4001605,
							posY = 0.3076782,
							anchorX = 0.5,
							anchorY = 0.5,
							sizeX = 0.2212949,
							sizeY = 0.206273,
							text = "宗主：",
							color = "FF419679",
							fontSize = 24,
							hTextAlign = 2,
							vTextAlign = 1,
						},
					},
					},
				},
				{
					prop = {
						etype = "Image",
						name = "dw2",
						varName = "friend_root",
						posX = 0.7336025,
						posY = 0.2635361,
						anchorX = 0.5,
						anchorY = 0.5,
						sizeX = 0.4669349,
						sizeY = 0.4144935,
						image = "w#w_smd3.png",
						scale9 = true,
						scale9Left = 0.3,
						scale9Right = 0.3,
						scale9Top = 0.3,
						scale9Bottom = 0.3,
						alpha = 0.6,
					},
					children = {
					{
						prop = {
							etype = "Image",
							name = "zmk3",
							varName = "firend_clan_icon",
							posX = 0.2304438,
							posY = 0.3963918,
							anchorX = 0.5,
							anchorY = 0.5,
							lockHV = true,
							sizeX = 0.2174882,
							sizeY = 0.4909911,
							image = "zm#33",
						},
						children = {
						{
							prop = {
								etype = "Image",
								name = "sz4",
								varName = "firend_first_lvl",
								posX = 0.366067,
								posY = 0.4010431,
								anchorX = 0.5,
								anchorY = 0.5,
								sizeX = 0.2622894,
								sizeY = 0.3603451,
								image = "zm#sz8",
							},
						},
						{
							prop = {
								etype = "Image",
								name = "sz6",
								varName = "firend_second_lvl",
								posX = 0.6339008,
								posY = 0.4010431,
								anchorX = 0.5,
								anchorY = 0.5,
								sizeX = 0.2622894,
								sizeY = 0.3603451,
								image = "zm#sz8",
							},
						},
						{
							prop = {
								etype = "Image",
								name = "nv3",
								varName = "friend_girl_icon",
								posX = 0.5,
								posY = 0.3108194,
								anchorX = 0.5,
								anchorY = 0.5,
								sizeX = 1.019163,
								sizeY = 0.5439557,
								image = "zm#nv",
							},
						},
						},
					},
					{
						prop = {
							etype = "Label",
							name = "zmm3",
							varName = "friend_clan_name",
							posX = 0.7397314,
							posY = 0.5044687,
							anchorX = 0.5,
							anchorY = 0.5,
							sizeX = 0.4068835,
							sizeY = 0.206273,
							text = "宗门名称",
							color = "FF44BFD5",
							fontSize = 24,
							vTextAlign = 1,
						},
					},
					{
						prop = {
							etype = "Label",
							name = "zzm3",
							varName = "friend_clan_user",
							posX = 0.7397313,
							posY = 0.3076782,
							anchorX = 0.5,
							anchorY = 0.5,
							sizeX = 0.4068835,
							sizeY = 0.2131081,
							text = "宗主名字",
							color = "FF419679",
							fontSize = 24,
							vTextAlign = 1,
						},
					},
					{
						prop = {
							etype = "Image",
							name = "df2",
							posX = 0.4279209,
							posY = 0.8552637,
							anchorX = 0.5,
							anchorY = 0.5,
							sizeX = 0.8193484,
							sizeY = 0.2522523,
							image = "zm#zm_zuidi.png",
						},
					},
					{
						prop = {
							etype = "Label",
							name = "zmm8",
							posX = 0.4001604,
							posY = 0.5044687,
							anchorX = 0.5,
							anchorY = 0.5,
							sizeX = 0.2212949,
							sizeY = 0.206273,
							text = "宗门：",
							color = "FF419679",
							fontSize = 24,
							hTextAlign = 2,
							vTextAlign = 1,
						},
					},
					{
						prop = {
							etype = "Label",
							name = "zmm10",
							posX = 0.4001605,
							posY = 0.3076782,
							anchorX = 0.5,
							anchorY = 0.5,
							sizeX = 0.2212949,
							sizeY = 0.206273,
							text = "宗主：",
							color = "FF419679",
							fontSize = 24,
							hTextAlign = 2,
							vTextAlign = 1,
						},
					},
					},
				},
				{
					prop = {
						etype = "Label",
						name = "id",
						varName = "clan_id",
						posX = 0.8553815,
						posY = 0.7652642,
						anchorX = 0.5,
						anchorY = 0.5,
						sizeX = 0.1955356,
						sizeY = 0.09467304,
						text = "64684",
						color = "FFA2FAE0",
						fontSize = 24,
						vTextAlign = 1,
					},
				},
				},
			},
			{
				prop = {
					etype = "Image",
					name = "y1",
					posX = 0.03167748,
					posY = 0.961136,
					anchorX = 0.5,
					anchorY = 0.5,
					sizeX = 0.1339901,
					sizeY = 0.1706897,
					image = "w#w_yun.png",
				},
			},
			{
				prop = {
					etype = "Image",
					name = "y2",
					posX = 0.9692256,
					posY = 0.02142051,
					anchorX = 0.5,
					anchorY = 0.5,
					sizeX = 0.1339901,
					sizeY = 0.1706897,
					image = "w#w_yun.png",
					flippedX = true,
				},
			},
			{
				prop = {
					etype = "Button",
					name = "gb",
					varName = "close_btn",
					posX = 0.9817872,
					posY = 0.9699091,
					anchorX = 0.5,
					anchorY = 0.5,
					lockHV = true,
					sizeX = 0.07684729,
					sizeY = 0.1362069,
					image = "chu1#gb",
					imageNormal = "chu1#gb",
				},
			},
			},
		},
		{
			prop = {
				etype = "Image",
				name = "top",
				posX = 0.5,
				posY = 0.8960159,
				anchorX = 0.5,
				anchorY = 0.5,
				sizeX = 0.3796875,
				sizeY = 0.08472222,
				image = "e#top2",
				scale9Left = 0.4,
				scale9Right = 0.4,
				scale9Top = 0.2,
				scale9Bottom = 0.2,
			},
			children = {
			{
				prop = {
					etype = "Image",
					name = "td2",
					posX = 0.4988506,
					posY = 0.5163934,
					anchorX = 0.5,
					anchorY = 0.5,
					lockHV = true,
					sizeX = 0.2757201,
					sizeY = 0.4754098,
					image = "zm#zm_zmxs.png",
				},
			},
			},
		},
		{
			prop = {
				etype = "Button",
				name = "yq1",
				varName = "pos_btn",
				posX = 0.8868724,
				posY = 0.6704882,
				anchorX = 0.5,
				anchorY = 0.5,
				sizeX = 0.03984375,
				sizeY = 0.1736111,
				image = "w#w_yyq4.png",
				imageNormal = "w#w_yyq4.png",
				imagePressed = "w#w_yyq2.png",
				imageDisable = "w#w_yyq4.png",
				disablePressScale = true,
				soundEffectClick = "audio/rxjh/UI/anniu.ogg",
			},
			children = {
			{
				prop = {
					etype = "Label",
					name = "yz1",
					posX = 0.5,
					posY = 0.5,
					anchorX = 0.5,
					anchorY = 0.5,
					sizeX = 0.7153199,
					sizeY = 0.837881,
					text = "位置",
					color = "FFFBFFCC",
					fontSize = 26,
					fontOutlineEnable = true,
					fontOutlineColor = "FF51361C",
					fontOutlineSize = 2,
					hTextAlign = 1,
					vTextAlign = 1,
				},
			},
			},
		},
		{
			prop = {
				etype = "Button",
				name = "yq2",
				varName = "around_btn",
				posX = 0.8868713,
				posY = 0.491921,
				anchorX = 0.5,
				anchorY = 0.5,
				sizeX = 0.03984375,
				sizeY = 0.1736111,
				image = "w#w_yyq4.png",
				imageNormal = "w#w_yyq4.png",
				imagePressed = "w#w_yyq2.png",
				imageDisable = "w#w_yyq4.png",
				disablePressScale = true,
				soundEffectClick = "audio/rxjh/UI/anniu.ogg",
			},
			children = {
			{
				prop = {
					etype = "Label",
					name = "yz2",
					posX = 0.5,
					posY = 0.5,
					anchorX = 0.5,
					anchorY = 0.5,
					sizeX = 0.7153199,
					sizeY = 0.837881,
					text = "周围",
					color = "FFFBFFCC",
					fontSize = 26,
					fontOutlineEnable = true,
					fontOutlineColor = "FF51361C",
					fontOutlineSize = 2,
					hTextAlign = 1,
					vTextAlign = 1,
				},
			},
			},
		},
		},
	},
	},
}
--EDITOR elements end tag
--EDITOR animations start tag
local l_animations =
{
}
--EDITOR animations end tag
local function create()
return UIUtil.createNode(l_fileType, eleRoot, l_animations)
end
return create
