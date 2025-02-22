return {
{
	actions=
	{
		{act=1,effect=9,sound=42,delay=0,},
		{act=1,effect=0,sound=43,delay=0,},
	},
	desc=Lang.Skill.s17L11Desc,
	iconID=17,
	actRange=
	{
		{
			xStart=0,
			xEnd=0,
			yStart=0,
			yEnd=0,
			rangeType=3,
			rangeCenter=1,
			acts=
			{
				{
					conds=
					{
						{cond=3,value=1},
					},
					results=
					{
					},
					specialEffects=
					{
						{type=5,mj=0,id=9,keepTime=0,delay=0,always=false},
					},
				},
			},
		},
		{
			xStart=0,
			xEnd=0,
			yStart=0,
			yEnd=0,
			rangeType=3,
			rangeCenter=0,
			acts=
			{
				{
					targetType=1,
					conds=
					{
					},
					results=
					{
					},
					specialEffects=
					{
						{type=4,mj=0,id=10,keepTime=400,delay=250,always=true},
					},
				},
			},
		},
		{
			xStart=-2,
			xEnd=2,
			yStart=-2,
			yEnd=2,
			rangeType=3,
			rangeCenter=0,
			acts=
			{
				{
					targetType=0,
					conds=
					{
						{cond = 13,value =1},
					},
					results=
					{
						{mj=0,timeParam=1,type=4,delay=350, rate=10500,rateType=1,value=8800},
												{mj=0,timeParam=1,type=66,id=91},
						{mj=0,timeParam=1,type=66,id=92},
						{mj=0,timeParam=1,type=66,id=93},
						{mj=0,timeParam=1,type=66,id=94},
						{mj=0,timeParam=1,type=66,id=95},
						{mj=0,timeParam=1,type=66,id=99},
					},
					specialEffects=
					{
					},
				},
			},
		},
	},
	trainConds=
	{{cond=43,value=1,consume=false},
	},
	spellConds=
	{
		{cond=8,value=666,consume=true},
		{cond=13,value=12,consume=true},
	},
	singTime=0,
	cooldownTime=700,
},
}