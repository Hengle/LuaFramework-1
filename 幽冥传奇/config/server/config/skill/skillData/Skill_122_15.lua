return {
{
	actions=
	{
		{act=1,effect=0,sound=41,delay=0,},
	},
	desc=Lang.Skill.s122L15Desc,
	iconID=11,
	actRange=
	{
		{
		xStart=0,
		xEnd=0,
		yStart=-0,
		yEnd=0,
		rangeType=0,
		rangeCenter=1,
		acts=
			{
				{
					conds=
					{
						{cond=3,value=1},
						{cond = 13,value =1},
					},
					results=
					{
					},
					specialEffects=
					{
						{type=4,mj=0,id=107,keepTime=1000,delay=500,always=false},
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
						{mj=0,timeParam=1,type=67},
					},
					 specialEffects=
					{
						{type=4,mj=0,id=107,keepTime=1000,delay=500,always=false},
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
			rangeCenter=1,
			acts=
			{
				{
					conds=
					{
						{cond = 3,value =1},
						{cond = 17,value =119,param=145},
					},
					results=
					{
						{timeParam=1,type=1,delay=300,id=898,rate=0,intervalRate=3000,maxDur=300,intervalAddType=0,rateType=4},
					},
					specialEffects=
					{
						{type=4,mj=0,id=108,keepTime=300,delay=0,always=false},
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
			rangeCenter=1,
			acts=
			{
				{
					conds=
					{
						{cond = 3,value =1},
						{cond = 17,value =156,param=146},
					},
					results=
					{
						{timeParam=1,type=1,delay=300,id=904,rate=0,intervalRate=3000,maxDur=300,intervalAddType=0,rateType=4},
					},
					specialEffects=
					{
					},
				},
			},
		},
	},
	trainConds=
	{
		{cond=1,value=300,consume=false},
	},
	spellConds=
	{
	},
	singTime=0,
	cooldownTime=18000,
},
}