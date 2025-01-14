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
			name = "aaa",
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
				name = "bbb",
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
				etype = "Grid",
				name = "y1",
				posX = 0.5,
				posY = 0.5,
				anchorX = 0.5,
				anchorY = 0.5,
				sizeX = 0.5987273,
				sizeY = 0.6607206,
			},
			children = {
			{
				prop = {
					etype = "Image",
					name = "p1",
					posX = 0.5,
					posY = 0.5,
					anchorX = 0.5,
					anchorY = 0.5,
					sizeX = 1.67021,
					sizeY = 1.513499,
					image = "bpgz#dt",
					scale9 = true,
					scale9Left = 0.45,
					scale9Right = 0.45,
					scale9Top = 0.25,
					scale9Bottom = 0.7,
				},
				children = {
				{
					prop = {
						etype = "Image",
						name = "p11",
						posX = 0.5,
						posY = 0.5811167,
						anchorX = 0.5,
						anchorY = 0.5,
						sizeX = 0.553777,
						sizeY = 0.2454309,
						image = "b#d2",
						scale9 = true,
						scale9Left = 0.45,
						scale9Right = 0.45,
						scale9Top = 0.45,
						scale9Bottom = 0.45,
					},
					children = {
					{
						prop = {
							etype = "Scroll",
							name = "lb",
							varName = "scroll",
							posX = 0.5,
							posY = 0.5,
							anchorX = 0.5,
							anchorY = 0.5,
							sizeX = 0.9837044,
							sizeY = 0.9307104,
						},
					},
					},
				},
				{
					prop = {
						etype = "Image",
						name = "p12",
						posX = 0.6941036,
						posY = 0.3027279,
						anchorX = 0.5,
						anchorY = 0.5,
						sizeX = 0.6498159,
						sizeY = 0.5822768,
						image = "hua1#hua1",
					},
				},
				},
			},
			{
				prop = {
					etype = "Button",
					name = "b1",
					varName = "donateBtn",
					posX = 0.5,
					posY = -0.01121795,
					anchorX = 0.5,
					anchorY = 0.5,
					sizeX = 0.2270441,
					sizeY = 0.1387374,
					image = "chu1#an1",
					imageNormal = "chu1#an1",
				},
				children = {
				{
					prop = {
						etype = "Label",
						name = "w12",
						varName = "btnDesc",
						posX = 0.5,
						posY = 0.5,
						anchorX = 0.5,
						anchorY = 0.5,
						sizeX = 1,
						sizeY = 1,
						text = "驻地捐献",
						fontSize = 26,
						fontOutlineEnable = true,
						fontOutlineColor = "FFD2691E",
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
					name = "b2",
					varName = "closeBtn",
					posX = 1.11978,
					posY = 0.6955885,
					anchorX = 0.5,
					anchorY = 0.5,
					sizeX = 0.05871831,
					sizeY = 0.0819812,
					image = "bpgz#gb",
					imageNormal = "bpgz#gb",
				},
			},
			},
		},
		{
			prop = {
				etype = "Grid",
				name = "y2",
				posX = 0.4984414,
				posY = 0.3128242,
				anchorX = 0.5,
				anchorY = 0.5,
				sizeX = 0.6,
				sizeY = 0.3050857,
			},
			children = {
			{
				prop = {
					etype = "Image",
					name = "p21",
					posX = 0.5,
					posY = 0.7960692,
					anchorX = 0.5,
					anchorY = 0.5,
					sizeX = 0.8177083,
					sizeY = 0.1684408,
					image = "d#bt",
					alpha = 0.5,
				},
				children = {
				{
					prop = {
						etype = "Image",
						name = "p211",
						varName = "condition1",
						posX = 0.2735572,
						posY = 0.5,
						anchorX = 0.5,
						anchorY = 0.5,
						sizeX = 0.06050955,
						sizeY = 0.9189191,
						image = "chu1#dj",
					},
				},
				{
					prop = {
						etype = "Image",
						name = "dt1",
						posX = 0.6226053,
						posY = 0.5,
						anchorX = 0.5,
						anchorY = 0.5,
						sizeX = 0.6417198,
						sizeY = 0.9189191,
						image = "bpgz#dt1",
					},
				},
				{
					prop = {
						etype = "RichText",
						name = "w211",
						varName = "conditionDesc1",
						posX = 0.7634291,
						posY = 0.5,
						anchorX = 0.5,
						anchorY = 0.5,
						sizeX = 0.8827729,
						sizeY = 1,
						text = "帮派等级（10/15）",
						color = "FF966856",
						vTextAlign = 1,
					},
				},
				},
			},
			{
				prop = {
					etype = "Image",
					name = "p22",
					posX = 0.5,
					posY = 0.6162075,
					anchorX = 0.5,
					anchorY = 0.5,
					sizeX = 0.8177083,
					sizeY = 0.1684408,
					image = "d#bt",
					alpha = 0.5,
				},
				children = {
				{
					prop = {
						etype = "Image",
						name = "p212",
						varName = "condition2",
						posX = 0.2735572,
						posY = 0.5,
						anchorX = 0.5,
						anchorY = 0.5,
						sizeX = 0.06050956,
						sizeY = 0.9189191,
						image = "chu1#dj",
					},
				},
				{
					prop = {
						etype = "RichText",
						name = "w212",
						varName = "conditionDesc2",
						posX = 0.8793612,
						posY = 0.5,
						anchorX = 0.5,
						anchorY = 0.5,
						sizeX = 1.114637,
						sizeY = 1,
						text = "帮派活跃（50万/150万）",
						color = "FF966856",
						vTextAlign = 1,
					},
				},
				},
			},
			{
				prop = {
					etype = "Image",
					name = "p23",
					posX = 0.5,
					posY = 0.4363459,
					anchorX = 0.5,
					anchorY = 0.5,
					sizeX = 0.8177083,
					sizeY = 0.1684408,
					image = "d#bt",
					alpha = 0.5,
				},
				children = {
				{
					prop = {
						etype = "Image",
						name = "p213",
						varName = "condition3",
						posX = 0.2735572,
						posY = 0.5,
						anchorX = 0.5,
						anchorY = 0.5,
						sizeX = 0.06050956,
						sizeY = 0.9189191,
						image = "chu1#dj",
					},
				},
				{
					prop = {
						etype = "Image",
						name = "dt2",
						posX = 0.6226053,
						posY = 0.5,
						anchorX = 0.5,
						anchorY = 0.5,
						sizeX = 0.6417198,
						sizeY = 0.9189191,
						image = "bpgz#dt1",
					},
				},
				{
					prop = {
						etype = "RichText",
						name = "w213",
						varName = "conditionDesc3",
						posX = 0.8793612,
						posY = 0.5,
						anchorX = 0.5,
						anchorY = 0.5,
						sizeX = 1.114637,
						sizeY = 1,
						text = "驻地资料捐献（60/1000）",
						color = "FF966856",
						vTextAlign = 1,
					},
				},
				},
			},
			{
				prop = {
					etype = "Image",
					name = "jd21",
					posX = 0.5,
					posY = 0.267044,
					anchorX = 0.5,
					anchorY = 0.5,
					sizeX = 0.659074,
					sizeY = 0.1567646,
					image = "chu1#jdd",
					scale9 = true,
					scale9Left = 0.4,
					scale9Right = 0.4,
				},
				children = {
				{
					prop = {
						etype = "LoadingBar",
						name = "jd211",
						varName = "donateProgress",
						posX = 0.4999371,
						posY = 0.4926521,
						anchorX = 0.5,
						anchorY = 0.5,
						sizeX = 0.9784126,
						sizeY = 0.6667832,
						image = "tong#jdt",
						percent = 60,
					},
				},
				{
					prop = {
						etype = "Label",
						name = "w214",
						varName = "donateProDesc",
						posX = 0.4980244,
						posY = 0.5,
						anchorX = 0.5,
						anchorY = 0.5,
						sizeX = 1,
						sizeY = 1,
						text = "总进度（60%）",
						fontOutlineEnable = true,
						fontOutlineColor = "FF5B7838",
						fontOutlineSize = 2,
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
				etype = "Image",
				name = "top",
				posX = 0.5,
				posY = 0.7892119,
				anchorX = 0.5,
				anchorY = 0.5,
				sizeX = 0.1320313,
				sizeY = 0.075,
				image = "bpgz#bpzd",
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
