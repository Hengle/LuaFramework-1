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
				posY = 0.444444,
				anchorX = 0.5,
				anchorY = 0.5,
				lockHV = true,
				sizeX = 0.6567315,
				sizeY = 0.6671557,
				image = "b#cs",
				scale9 = true,
				scale9Left = 0.45,
				scale9Right = 0.45,
				scale9Top = 0.2,
				scale9Bottom = 0.7,
			},
			children = {
			{
				prop = {
					etype = "Grid",
					name = "jd1",
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
						name = "db1",
						posX = 0.5,
						posY = 0.4860533,
						anchorX = 0.5,
						anchorY = 0.5,
						sizeX = 0.9279884,
						sizeY = 0.8793104,
						scale9 = true,
						scale9Left = 0.45,
						scale9Right = 0.45,
						scale9Top = 0.45,
						scale9Bottom = 0.45,
						alpha = 0.4,
					},
					children = {
					{
						prop = {
							etype = "Image",
							name = "dba",
							posX = 0.5,
							posY = 0.4427519,
							anchorX = 0.5,
							anchorY = 0.5,
							sizeX = 1.000814,
							sizeY = 0.9029181,
							image = "b#d5",
							scale9 = true,
							scale9Left = 0.4,
							scale9Right = 0.4,
							scale9Top = 0.4,
							scale9Bottom = 0.4,
						},
					},
					{
						prop = {
							etype = "Image",
							name = "dah",
							posX = 0.5,
							posY = 0.9367198,
							anchorX = 0.5,
							anchorY = 0.5,
							sizeX = 1,
							sizeY = 0.1420527,
							image = "b#btd",
							scale9 = true,
							scale9Left = 0.3,
							scale9Right = 0.3,
						},
						children = {
						{
							prop = {
								etype = "Image",
								name = "x1",
								posX = 0.2180467,
								posY = 0.5,
								anchorX = 0.5,
								anchorY = 0.5,
								sizeX = 0.004,
								sizeY = 0.9016396,
								image = "b#shuxian",
							},
						},
						{
							prop = {
								etype = "Image",
								name = "x2",
								posX = 0.4780637,
								posY = 0.4999996,
								anchorX = 0.5,
								anchorY = 0.5,
								sizeX = 0.004,
								sizeY = 0.9016396,
								image = "b#shuxian",
							},
						},
						{
							prop = {
								etype = "Image",
								name = "x4",
								posX = 0.736747,
								posY = 0.4999996,
								anchorX = 0.5,
								anchorY = 0.5,
								sizeX = 0.004,
								sizeY = 0.9016396,
								image = "b#shuxian",
							},
						},
						},
					},
					{
						prop = {
							etype = "Image",
							name = "btk",
							posX = 0.5,
							posY = 0.9322965,
							anchorX = 0.5,
							anchorY = 0.5,
							sizeX = 1,
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
								posX = 0.111053,
								posY = 0.5164594,
								anchorX = 0.5,
								anchorY = 0.5,
								sizeX = 0.2234489,
								sizeY = 1.016394,
								scale9 = true,
								scale9Left = 0.4,
								scale9Right = 0.4,
							},
							children = {
							{
								prop = {
									etype = "Label",
									name = "z1",
									posX = 0.5,
									posY = 0.5000004,
									anchorX = 0.5,
									anchorY = 0.5,
									sizeX = 0.740453,
									sizeY = 0.8444229,
									text = "五 绝",
									color = "FF966856",
									fontSize = 22,
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
								posX = 0.3490343,
								posY = 0.5164595,
								anchorX = 0.5,
								anchorY = 0.5,
								sizeX = 0.2679503,
								sizeY = 1.016394,
								scale9 = true,
								scale9Left = 0.4,
								scale9Right = 0.4,
							},
							children = {
							{
								prop = {
									etype = "Label",
									name = "z2",
									posX = 0.5,
									posY = 0.5000004,
									anchorX = 0.5,
									anchorY = 0.5,
									sizeX = 0.740453,
									sizeY = 0.8444229,
									text = "个人记录",
									color = "FF966856",
									fontSize = 22,
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
								posX = 0.6078848,
								posY = 0.5164594,
								anchorX = 0.5,
								anchorY = 0.5,
								sizeX = 0.2679503,
								sizeY = 1.016394,
								scale9 = true,
								scale9Left = 0.4,
								scale9Right = 0.4,
							},
							children = {
							{
								prop = {
									etype = "Label",
									name = "z4",
									posX = 0.5,
									posY = 0.5000004,
									anchorX = 0.5,
									anchorY = 0.5,
									sizeX = 0.740453,
									sizeY = 0.8444229,
									text = "帮派记录",
									color = "FF966856",
									fontSize = 22,
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
								posX = 0.8667353,
								posY = 0.5164594,
								anchorX = 0.5,
								anchorY = 0.5,
								sizeX = 0.2679503,
								sizeY = 1.016394,
								scale9 = true,
								scale9Left = 0.4,
								scale9Right = 0.4,
							},
							children = {
							{
								prop = {
									etype = "Label",
									name = "z5",
									posX = 0.5,
									posY = 0.5,
									anchorX = 0.5,
									anchorY = 0.5,
									sizeX = 0.740453,
									sizeY = 0.8444229,
									text = "全服记录",
									color = "FF966856",
									fontSize = 22,
									fontOutlineColor = "FF143230",
									hTextAlign = 1,
									vTextAlign = 1,
								},
							},
							},
						},
						},
					},
					{
						prop = {
							etype = "Scroll",
							name = "lb",
							varName = "scroll",
							posX = 0.5,
							posY = 0.4320915,
							anchorX = 0.5,
							anchorY = 0.5,
							sizeX = 0.9898912,
							sizeY = 0.8579809,
						},
					},
					},
				},
				},
			},
			{
				prop = {
					etype = "Button",
					name = "gb",
					varName = "close",
					posX = 0.9782451,
					posY = 0.9304363,
					anchorX = 0.5,
					anchorY = 0.5,
					lockHV = true,
					sizeX = 0.07970342,
					sizeY = 0.1582173,
					image = "chu1#gb",
					imageNormal = "chu1#gb",
					soundEffectClick = "audio/rxjh/UI/ui_guanbi.ogg",
				},
			},
			},
		},
		{
			prop = {
				etype = "Image",
				name = "top",
				posX = 0.5,
				posY = 0.7793483,
				anchorX = 0.5,
				anchorY = 0.5,
				sizeX = 0.20625,
				sizeY = 0.07222223,
				image = "chu1#top",
				scale9Left = 0.45,
				scale9Right = 0.45,
			},
			children = {
			{
				prop = {
					etype = "Image",
					name = "td2",
					posX = 0.4988506,
					posY = 0.5,
					anchorX = 0.5,
					anchorY = 0.5,
					lockHV = true,
					sizeX = 0.5151515,
					sizeY = 0.4807692,
					image = "biaoti#lszj",
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
