local t = {
	白日门治愈术 = {
		"普通技能",
		"治愈术",
		"白日门治愈术",
		"释放精神之力恢复自己或者他人的体力A~B点。",
		"",
		"14*(<SkillLv>+1)/4+0+<SC>*2",
		"20*(<SkillLv>+1)/4+0+<maxSC>*2+1",
		"",
		"",
		"14*(<SkillLv>+1)/4+0+<heroSC>*2",
		"20*(<SkillLv>+1)/4+0+<heromaxSC>*2+1",
		"",
		"",
		"7",
		"11",
		"16",
		"",
		"",
		""
	},
	白日门冰天雪地 = {
		"普通技能",
		"冰天雪地",
		"白日门冰天雪地",
		"蓄力重击瞬间冻裂地面，形成冰刺，对锁定的目标及周围3*3范围内造成A~B点基础技能伤害，受到随风术的加成，并随机推动比自己等级低的敌人，0-6级分别需比自己低60/50/40/30/15/1/0级才可推动。",
		"",
		"<MC>*(0.2*<SkillLv>+1)+(30*<SkillLv>+200)",
		"<maxMC>*(0.2*<SkillLv>+1)+(30*<SkillLv>+200)",
		"",
		"",
		"",
		"",
		"",
		"104",
		"119",
		"149",
		"203",
		"248",
		"312",
		"327"
	},
	白日门追心刺 = {
		"普通技能",
		"追心刺",
		"白日门追心刺",
		"以剑气冲撞前方目标，迫使等级比自己低的敌人后退，0-6级分别需比自己低60/50/40/30/15/1/0级才可推动，并对前方3步以内敌人造成A~B点基础技能伤害，提供随影剑法的加成，同时回复自身部分血量。",
		"",
		"@0-1&@<DC>*(0.1*<SkillLv>+1.9)+(20*<SkillLv>+250)&#@2-6&@<DC>*(0.15*(<SkillLv>-1)+2)+(20*<SkillLv>+250)&",
		"@0-1&@<maxDC>*(0.1*<SkillLv>+1.9)+(20*<SkillLv>+250)&#@2-6&@<maxDC>*(0.15*(<SkillLv>-1)+2)+(20*<SkillLv>+250)&",
		"",
		"",
		"",
		"",
		"",
		"104",
		"119",
		"149",
		"203",
		"248",
		"312",
		"327"
	},
	白日门狮子吼 = {
		"普通技能",
		"狮子吼",
		"白日门狮子吼",
		"强烈的吼叫可以使周围的怪物暂时麻痹，无法麻痹人物。",
		"",
		"",
		"",
		"",
		"",
		"",
		"",
		"",
		"",
		"38",
		"41",
		"44",
		"",
		"",
		""
	},
	白日门神兽术 = {
		"普通技能",
		"召唤神兽",
		"白日门神兽术",
		"召唤一只强大神兽作为自己的随从。(神兽等级最高可提升至A级)",
		"",
		"@0-3&@<SkillLv>*2+1&#@4-6&@8&",
		"",
		"",
		"",
		"<SkillLv>*2+1",
		"",
		"",
		"",
		"35",
		"39",
		"43",
		"55",
		"68",
		"85"
	},
	白日门灭天火 = {
		"普通技能",
		"灭天火",
		"白日门灭天火",
		"召唤天火，使单个目标受到A~B点基础技能伤害同时扣除其魔力值，并提供随风术的加成，对怪物和人造成额外伤害。",
		"",
		"20*(<SkillLv>+1)/4+20+<MC>",
		"20*(<SkillLv>+1)/4+20+<maxMC>+1",
		"",
		"",
		"20*(<SkillLv>+1)/4+20+<heroMC>",
		"20*(<SkillLv>+1)/4+20+<heromaxMC>+1",
		"",
		"",
		"38",
		"41",
		"44",
		"",
		"",
		""
	},
	圣言术 = {
		"普通技能",
		"圣言术",
		"白日门圣言术",
		"有机率一击杀死不死生物。",
		"",
		"",
		"",
		"",
		"",
		"",
		"",
		"",
		"",
		"32",
		"35",
		"39",
		"",
		"",
		""
	},
	白日门刺杀 = {
		"普通技能",
		"刺杀剑术",
		"白日门刺杀",
		"造成A~B点基础技能伤害，技能开启后对隔位目标造成C~D点刺杀剑气伤害，并提供随影剑法的加成，刺杀剑气将无视敌人的防御。",
		"",
		"<DC>",
		"<maxDC>",
		"<DC>/5*(<SkillLv>+2)",
		"<maxDC>/5*(<SkillLv>+2)",
		"<heroDC>",
		"<heromaxDC>",
		"<heroDC>/5*(<SkillLv>+2)",
		"<heromaxDC>/5*(<SkillLv>+2)",
		"25",
		"27",
		"29",
		"",
		"",
		""
	},
	狮子吼 = {
		"普通技能",
		"狮子吼",
		"白日门狮子吼",
		"强烈的吼叫可以使周围的怪物暂时麻痹，无法麻痹人物。",
		"",
		"",
		"",
		"",
		"",
		"",
		"",
		"",
		"",
		"38",
		"41",
		"44",
		"",
		"",
		""
	},
	白日门群隐 = {
		"普通技能",
		"集体隐身术",
		"白日门群隐",
		"通过大量释放精神之力，能够隐藏范围内的人。",
		"",
		"",
		"",
		"",
		"",
		"",
		"",
		"",
		"",
		"21",
		"25",
		"29",
		"",
		"",
		""
	},
	白日门战甲术 = {
		"普通技能",
		"神圣战甲术",
		"白日门战甲术",
		"提高范围内非敌方的防御力和魔法防御力。",
		"",
		"",
		"",
		"",
		"",
		"",
		"",
		"",
		"",
		"25",
		"27",
		"29",
		"",
		"",
		""
	},
	白日门地狱火 = {
		"普通技能",
		"地狱火",
		"白日门地狱火",
		"向前挥出一堵火焰墙，使法术区域内的目标受到A~B点基础技能伤害并提供随风术的加成。",
		"",
		"14*(<SkillLv>+1)/4+6+<MC>",
		"14*(<SkillLv>+1)/4+6+<maxMC>+1",
		"",
		"",
		"14*(<SkillLv>+1)/4+6+<heroMC>",
		"14*(<SkillLv>+1)/4+6+<heromaxMC>+1",
		"",
		"",
		"16",
		"21",
		"26",
		"",
		"",
		""
	},
	白日门骷髅术 = {
		"普通技能",
		"召唤骷髅",
		"白日门骷髅术",
		"从地狱的深处召唤骷髅。(骷髅等级最高可提升至A级)",
		"",
		"<SkillLv>*2+1",
		"",
		"",
		"",
		"<SkillLv>*2+1",
		"",
		"",
		"",
		"19",
		"23",
		"26",
		"",
		"",
		""
	},
	瞬息移动 = {
		"普通技能",
		"瞬息移动",
		"白日门瞬移",
		"利用强大魔力打乱空间，从而达到随机传送目的的法术。",
		"",
		"",
		"",
		"",
		"",
		"",
		"",
		"",
		"",
		"19",
		"22",
		"25",
		"",
		"",
		""
	},
	白日门烈火 = {
		"普通技能",
		"烈火剑法",
		"白日门烈火",
		"召唤火精灵附在武器上，对目标造成A~B点基础技能伤害，并提供随影剑法的加成。",
		"",
		"@0-3&@<DC>+20+<DC>*(6+<SkillLv>*4)/10&#@4-6&@<DC>+20+<DC>*1.8+0.2*(<SkillLv>-3)*<DC>&",
		"@0-3&@<maxDC>+20+<maxDC>*(6+<SkillLv>*4)/10&#@4-6&@<maxDC>+20+<maxDC>*1.8+0.2*(<SkillLv>-3)*<maxDC>&",
		"",
		"",
		"{[0]=\"<heroDC>+20+<heroDC>*(6+<SkillLv>*4)/10\",[4]=\"<heroDC>*2.8\"}",
		"{[0]=\"<heromaxDC>+20+<heromaxDC>*(6+<SkillLv>*4)/10\",[4]=\"<heromaxDC>*2.8\"}",
		"",
		"",
		"35",
		"39",
		"43",
		"55",
		"68",
		"85"
	},
	白日门剑术 = {
		