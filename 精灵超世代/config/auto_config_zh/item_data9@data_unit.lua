-- this file is generated by program!
-- don't change it manaully.
-- source file: item_data9.xls

Config = Config or {}
Config.ItemData9 = Config.ItemData9 or {}
Config.ItemData9.data_unit_key_depth = 1
Config.ItemData9.data_unit_length = 85
Config.ItemData9.data_unit_lan = "zh"
Config.ItemData9.data_unit_cache = {}
Config.ItemData9.data_unit = function(key)
	if Config.ItemData9.data_unit_cache[key] == nil then
		local base = Config.ItemData9.data_unit_table[key]
		if not base then return end
		Config.ItemData9.data_unit_cache[key] = {
			id = base[1], --预留注释
			icon = base[2], --预留注释
			type = base[3], --预留注释
			sub_type = base[4], --预留注释
			use_type = base[5], --预留注释
			camp_type = base[6], --预留注释
			can_share = base[7], --预留注释
			career = base[8], --预留注释
			client_effect = base[9], --预留注释
			effect = base[10], --预留注释
			eqm_jie = base[11], --预留注释
			expire_type = base[12], --预留注释
			ext = base[13], --预留注释
			fast_use = base[14], --预留注释
			gain_type = base[15], --预留注释
			is_effect = base[16], --预留注释
			lev = base[17], --预留注释
			overlap = base[18], --预留注释
			quality = base[19], --预留注释
			sex = base[20], --预留注释
			source = base[21], --预留注释
			tips_btn = base[22], --预留注释
			value = base[23], --预留注释
			desc = base[24], --预留注释
			name = base[25], --预留注释
			type_desc = base[26], --预留注释
			use_desc = base[27], --预留注释
		}
	end
	return Config.ItemData9.data_unit_cache[key] 
end

Config.ItemData9.data_unit_table = {
	[111001] = {111001, 111001, 36, 6, 3, 0, 0, 0, {}, {}, 1, 0, {}, 0, 1, 0, 1, 99, 2, 2, {}, {1,6}, {{10040,4}}, "学习器描述", "TM-13", "学习器", "单体眩晕"},
	[111002] = {111002, 111002, 36, 6, 3, 0, 0, 0, {}, {}, 1, 0, {}, 0, 1, 0, 1, 99, 2, 2, {}, {1,6}, {{10040,4}}, "学习器描述", "TM-14", "学习器", "群攻破甲"},
	[111003] = {111003, 111003, 36, 6, 3, 0, 0, 0, {}, {}, 1, 0, {}, 0, 1, 0, 1, 99, 2, 2, {}, {1,6}, {{10040,4}}, "学习器描述", "TM-15", "学习器", "暴击增益"},
	[111004] = {111004, 111004, 36, 6, 3, 0, 0, 0, {}, {}, 1, 0, {}, 0, 1, 0, 1, 99, 2, 2, {}, {1,6}, {{10040,4}}, "学习器描述", "TM-16", "学习器", "单体回复"},
	[111005] = {111005, 111005, 36, 6, 3, 0, 0, 0, {}, {}, 1, 0, {}, 0, 1, 0, 1, 99, 2, 2, {}, {1,6}, {{10040,4}}, "学习器描述", "TM-17", "学习器", "单体降攻"},
	[111101] = {111101, 111001, 36, 6, 3, 0, 0, 0, {}, {}, 2, 0, {}, 0, 1, 0, 1, 99, 2, 2, {}, {1,6}, {{10040,18}}, "学习器描述", "TM-13", "学习器", "单体眩晕"},
	[111102] = {111102, 111002, 36, 6, 3, 0, 0, 0, {}, {}, 2, 0, {}, 0, 1, 0, 1, 99, 2, 2, {}, {1,6}, {{10040,18}}, "学习器描述", "TM-14", "学习器", "群攻破甲"},
	[111103] = {111103, 111003, 36, 6, 3, 0, 0, 0, {}, {}, 2, 0, {}, 0, 1, 0, 1, 99, 2, 2, {}, {1,6}, {{10040,18}}, "学习器描述", "TM-15", "学习器", "暴击增益"},
	[111104] = {111104, 111004, 36, 6, 3, 0, 0, 0, {}, {}, 2, 0, {}, 0, 1, 0, 1, 99, 2, 2, {}, {1,6}, {{10040,18}}, "学习器描述", "TM-16", "学习器", "单体回复"},
	[111105] = {111105, 111005, 36, 6, 3, 0, 0, 0, {}, {}, 2, 0, {}, 0, 1, 0, 1, 99, 2, 2, {}, {1,6}, {{10040,18}}, "学习器描述", "TM-17", "学习器", "单体降攻"},
	[111201] = {111201, 111001, 36, 6, 3, 0, 0, 0, {}, {}, 3, 0, {}, 0, 1, 0, 1, 99, 2, 2, {}, {1,6}, {{10040,66}}, "学习器描述", "TM-13", "学习器", "单体眩晕"},
	[111202] = {111202, 111002, 36, 6, 3, 0, 0, 0, {}, {}, 3, 0, {}, 0, 1, 0, 1, 99, 2, 2, {}, {1,6}, {{10040,66}}, "学习器描述", "TM-14", "学习器", "群攻破甲"},
	[111203] = {111203, 111003, 36, 6, 3, 0, 0, 0, {}, {}, 3, 0, {}, 0, 1, 0, 1, 99, 2, 2, {}, {1,6}, {{10040,66}}, "学习器描述", "TM-15", "学习器", "暴击增益"},
	[111204] = {111204, 111004, 36, 6, 3, 0, 0, 0, {}, {}, 3, 0, {}, 0, 1, 0, 1, 99, 2, 2, {}, {1,6}, {{10040,66}}, "学习器描述", "TM-16", "学习器", "单体回复"},
	[111205] = {111205, 111005, 36, 6, 3, 0, 0, 0, {}, {}, 3, 0, {}, 0, 1, 0, 1, 99, 2, 2, {}, {1,6}, {{10040,66}}, "学习器描述", "TM-17", "学习器", "单体降攻"},
	[111301] = {111301, 111001, 36, 6, 3, 0, 0, 0, {}, {}, 4, 0, {}, 0, 1, 0, 1, 99, 2, 2, {}, {1,6}, {{10040,198}}, "学习器描述", "TM-13", "学习器", "单体眩晕"},
	[111302] = {111302, 111002, 36, 6, 3, 0, 0, 0, {}, {}, 4, 0, {}, 0, 1, 0, 1, 99, 2, 2, {}, {1,6}, {{10040,198}}, "学习器描述", "TM-14", "学习器", "群攻破甲"},
	[111303] = {111303, 111003, 36, 6, 3, 0, 0, 0, {}, {}, 4, 0, {}, 0, 1, 0, 1, 99, 2, 2, {}, {1,6}, {{10040,198}}, "学习器描述", "TM-15", "学习器", "暴击增益"},
	[111304] = {111304, 111004, 36, 6, 3, 0, 0, 0, {}, {}, 4, 0, {}, 0, 1, 0, 1, 99, 2, 2, {}, {1,6}, {{10040,198}}, "学习器描述", "TM-16", "学习器", "单体回复"},
	[111305] = {111305, 111005, 36, 6, 3, 0, 0, 0, {}, {}, 4, 0, {}, 0, 1, 0, 1, 99, 2, 2, {}, {1,6}, {{10040,198}}, "学习器描述", "TM-17", "学习器", "单体降攻"},
	[111401] = {111401, 111001, 36, 6, 3, 0, 0, 0, {}, {}, 5, 0, {}, 0, 1, 0, 1, 99, 2, 2, {}, {1,6}, {{10040,454}}, "学习器描述", "TM-13", "学习器", "单体眩晕"},
	[111402] = {111402, 111002, 36, 6, 3, 0, 0, 0, {}, {}, 5, 0, {}, 0, 1, 0, 1, 99, 2, 2, {}, {1,6}, {{10040,454}}, "学习器描述", "TM-14", "学习器", "群攻破甲"},
	[111403] = {111403, 111003, 36, 6, 3, 0, 0, 0, {}, {}, 5, 0, {}, 0, 1, 0, 1, 99, 2, 2, {}, {1,6}, {{10040,454}}, "学习器描述", "TM-15", "学习器", "暴击增益"},
	[111404] = {111404, 111004, 36, 6, 3, 0, 0, 0, {}, {}, 5, 0, {}, 0, 1, 0, 1, 99, 2, 2, {}, {1,6}, {{10040,454}}, "学习器描述", "TM-16", "学习器", "单体回复"},
	[111405] = {111405, 111005, 36, 6, 3, 0, 0, 0, {}, {}, 5, 0, {}, 0, 1, 0, 1, 99, 2, 2, {}, {1,6}, {{10040,454}}, "学习器描述", "TM-17", "学习器", "单体降攻"},
	[112001] = {112001, 112001, 36, 6, 3, 0, 0, 0, {}, {}, 1, 0, {}, 0, 1, 0, 1, 99, 3, 2, {}, {1,6}, {{10040,20}}, "学习器描述", "TM-09", "学习器", "单体吸血"},
	[112002] = {112002, 112002, 36, 6, 3, 0, 0, 0, {}, {}, 1, 0, {}, 0, 1, 0, 1, 99, 3, 2, {}, {1,6}, {{10040,20}}, "学习器描述", "TM-10", "学习器", "灼烧增伤"},
	[112003] = {112003, 112003, 36, 6, 3, 0, 0, 0, {}, {}, 1, 0, {}, 0, 1, 0, 1, 99, 3, 2, {}, {1,6}, {{10040,20}}, "学习器描述", "TM-11", "学习器", "减速冰冻"},
	[112004] = {112004, 112004, 36, 6, 3, 0, 0, 0, {}, {}, 1, 0, {}, 0, 1, 0, 1, 99, 3, 2, {}, {1,6}, {{10040,20}}, "学习器描述", "TM-12", "学习器", "群疗增益"},
	[112101] = {112101, 112001, 36, 6, 3, 0, 0, 0, {}, {}, 2, 0, {}, 0, 1, 0, 1, 99, 3, 2, {}, {1,6}, {{10040,50}}, "学习器描述", "TM-09", "学习器", "单体吸血"},
	[112102] = {112102, 112002, 36, 6, 3, 0, 0, 0, {}, {}, 2, 0, {}, 0, 1, 0, 1, 99, 3, 2, {}, {1,6}, {{10040,50}}, "学习器描述", "TM-10", "学习器", "灼烧增伤"},
	[112103] = {112103, 112003, 36, 6, 3, 0, 0, 0, {}, {}, 2, 0, {}, 0, 1, 0, 1, 99, 3, 2, {}, {1,6}, {{10040,50}}, "学习器描述", "TM-11", "学习器", "减速冰冻"},
	[112104] = {112104, 112004, 36, 6, 3, 0, 0, 0, {}, {}, 2, 0, {}, 0, 1, 0, 1, 99, 3, 2, {}, {1,6}, {{10040,50}}, "学习器描述", "TM-12", "学习器", "群疗增益"},
	[112201] = {112201, 112001, 36, 6, 3, 0, 0, 0, {}, {}, 3, 0, {}, 0, 1, 0, 1, 99, 3, 2, {}, {1,6}, {{10040,130}}, "学习器描述", "TM-09", "学习器", "单体吸血"},
	[112202] = {112202, 112002, 36, 6, 3, 0, 0, 0, {}, {}, 3, 0, {}, 0, 1, 0, 1, 99, 3, 2, {}, {1,6}, {{10040,130}}, "学习器描述", "TM-10", "学习器", "灼烧增伤"},
	[112203] = {112203, 112003, 36, 6, 3, 0, 0, 0, {}, {}, 3, 0, {}, 0, 1, 0, 1, 99, 3, 2, {}, {1,6}, {{10040,130}}, "学习器描述", "TM-11", "学习器", "减速冰冻"},
	[112204] = {112204, 112004, 36, 6, 3, 0, 0, 0, {}, {}, 3, 0, {}, 0, 1, 0, 1, 99, 3, 2, {}, {1,6}, {{10040,130}}, "学习器描述", "TM-12", "学习器", "群疗增益"},
	[112301] = {112301, 112001, 36, 6, 3, 0, 0, 0, {}, {}, 4, 0, {}, 0, 1, 0, 1, 99, 3, 2, {}, {1,6}, {{10040,310}}, "学习器描述", "TM-09", "学习器", "单体吸血"},
	[112302] = {112302, 112002, 36, 6, 3, 0, 0, 0, {}, {}, 4, 0, {}, 0, 1, 0, 1, 99, 3, 2, {}, {1,6}, {{10040,310}}, "学习器描述", "TM-10", "学习器", "灼烧增伤"},
	[112303] = {112303, 112003, 36, 6, 3, 0, 0, 0, {}, {}, 4, 0, {}, 0, 1, 0, 1, 99, 3, 2, {}, {1,6}, {{10040,310}}, "学习器描述", "TM-11", "学习器", "减速冰冻"},
	[112304] = {112304, 112004, 36, 6, 3, 0, 0, 0, {}, {}, 4, 0, {}, 0, 1, 0, 1, 99, 3, 2, {}, {1,6}, {{10040,310}}, "学习器描述", "TM-12", "学习器", "群疗增益"},
	[112401] = {112401, 112001, 36, 6, 3, 0, 0, 0, {}, {}, 5, 0, {}, 0, 1, 0, 1, 99, 3, 2, {}, {1,6}, {{10040,630}}, "学习器描述", "TM-09", "学习器", "单体吸血"},
	[112402] = {112402, 112002, 36, 6, 3, 0, 0, 0, {}, {}, 5, 0, {}, 0, 1, 0, 1, 99, 3, 2, {}, {1,6}, {{10040,630}}, "学习器描述", "TM-10", "学习器", "灼烧增伤"},
	[112403] = {112403, 112003, 36, 6, 3, 0, 0, 0, {}, {}, 5, 0, {}, 0, 1, 0, 1, 99, 3, 2, {}, {1,6}, {{10040,630}}, "学习器描述", "TM-11", "学习器", "减速冰冻"},
	[112404] = {112404, 112004, 36, 6, 3, 0, 0, 0, {}, {}, 5, 0, {}, 0, 1, 0, 1, 99, 3, 2, {}, {1,6}, {{10040,630}}, "学习器描述", "TM-12", "学习器", "群疗增益"},
	[113001] = {113001, 113001, 36, 6, 3, 0, 0, 0, {}, {}, 1, 0, {}, 0, 1, 0, 1, 99, 4, 2, {}, {1,6}, {{10040,60}}, "学习器描述", "TM-01", "学习器", "单体爆发"},
	[113002] = {113002, 113002, 36, 6, 3, 0, 0, 0, {}, {}, 1, 0, {}, 0, 1, 0, 1, 99, 4, 2, {}, {1,6}, {{10040,60}}, "学习器描述", "TM-02", "学习器", "群疗不屈"},
	[113003] = {113003, 113003, 36, 6, 3, 0, 0, 0, {}, {}, 1, 0, {}, 0, 1, 0, 1, 99, 4, 2, {}, {1,6}, {{10040,60}}, "学习器描述", "TM-03", "学习器", "灼烧叠伤"},
	[113004] = {113004, 113004, 36, 6, 3, 0, 0, 0, {}, {}, 1, 0, {}, 0, 1, 0, 1, 99, 4, 2, {}, {1,6}, {{10040,60}}, "学习器描述", "TM-04", "学习器", "群伤眩晕"},
	[113005] = {113005, 113005, 36, 6, 3, 0, 0, 0, {}, {}, 1, 0, {}, 0, 1, 0, 1, 99, 4, 2, {}, {1,6}, {{10040,60}}, "学习器描述", "TM-05", "学习器", "群伤加速"},
	[113006] = {113006, 113006, 36, 6, 3, 0, 0, 0, {}, {}, 1, 0, {}, 0, 1, 0, 1, 99, 4, 2, {}, {1,6}, {{10040,60}}, "学习器描述", "TM-06", "学习器", "魔魂降临"},
	[113007] = {113007, 113007, 36, 6, 3, 0, 0, 0, {}, {}, 1, 0, {}, 0, 1, 0, 1, 99, 4, 2, {}, {1,6}, {{10040,60}}, "学习器描述", "TM-07", "学习器", "冰霜守护"},
	[113008] = {113008, 113008, 36, 6, 3, 0, 0, 0, {}, {}, 1, 0, {}, 0, 1, 0, 1, 99, 4, 2, {}, {1,6}, {{10040,60}}, "学习器描述", "TM-08", "学习器", "净化解控"},
	[113101] = {113101, 113001, 36, 6, 3, 0, 0, 0, {}, {}, 2, 0, {}, 0, 1, 0, 1, 99, 4, 2, {}, {1,6}, {{10040,130}}, "学习器描述", "TM-01", "学习器", "单体爆发"},
	[113102] = {113102, 113002, 36, 6, 3, 0, 0, 0, {}, {}, 2, 0, {}, 0, 1, 0, 1, 99, 4, 2, {}, {1,6}, {{10040,130}}, "学习器描述", "TM-02", "学习器", "群疗不屈"},
	[113103] = {113103, 113003, 36, 6, 3, 0, 0, 0, {}, {}, 2, 0, {}, 0, 1, 0, 1, 99, 4, 2, {}, {1,6}, {{10040,130}}, "学习器描述", "TM-03", "学习器", "灼烧叠伤"},
	[113104] = {113104, 113004, 36, 6, 3, 0, 0, 0, {}, {}, 2, 0, {}, 0, 1, 0, 1, 99, 4, 2, {}, {1,6}, {{10040,130}}, "学习器描述", "TM-04", "学习器", "群伤眩晕"},
	[113105] = {113105, 113005, 36, 6, 3, 0, 0, 0, {}, {}, 2, 0, {}, 0, 1, 0, 1, 99, 4, 2, {}, {1,6}, {{10040,130}}, "学习器描述", "TM-05", "学习器", "群伤加速"},
	[113106] = {113106, 113006, 36, 6, 3, 0, 0, 0, {}, {}, 2, 0, {}, 0, 1, 0, 1, 99, 4, 2, {}, {1,6}, {{10040,130}}, "学习器描述", "TM-06", "学习器", "魔魂降临"},
	[113107] = {113107, 113007, 36, 6, 3, 0, 0, 0, {}, {}, 2, 0, {}, 0, 1, 0, 1, 99, 4, 2, {}, {1,6}, {{10040,130}}, "学习器描述", "TM-07", "学习器", "冰霜守护"},
	[113108] = {113108, 113008, 36, 6, 3, 0, 0, 0, {}, {}, 2, 0, {}, 0, 1, 0, 1, 99, 4, 2, {}, {1,6}, {{10040,130}}, "学习器描述", "TM-08", "学习器", "净化解控"},
	[113201] = {113201, 113001, 36, 6, 3, 0, 0, 0, {}, {}, 3, 0, {}, 0, 1, 0, 1, 99, 4, 2, {}, {1,6}, {{10040,290}}, "学习器描述", "TM-01", "学习器", "单体爆发"},
	[113202] = {113202, 113002, 36, 6, 3, 0, 0, 0, {}, {}, 3, 0, {}, 0, 1, 0, 1, 99, 4, 2, {}, {1,6}, {{10040,290}}, "学习器描述", "TM-02", "学习器", "群疗不屈"},
	[113203] = {113203, 113003, 36, 6, 3, 0, 0, 0, {}, {}, 3, 0, {}, 0, 1, 0, 1, 99, 4, 2, {}, {1,6}, {{10040,290}}, "学习器描述", "TM-03", "学习器", "灼烧叠伤"},
	[113204] = {113204, 113004, 36, 6, 3, 0, 0, 0, {}, {}, 3, 0, {}, 0, 1, 0, 1, 99, 4, 2, {}, {1,6}, {{10040,290}}, "学习器描述", "TM-04", "学习器", "群伤眩晕"},
	[113205] = {113205, 113005, 36, 6, 3, 0, 0, 0, {}, {}, 3, 0, {}, 0, 1, 0, 1, 99, 4, 2, {}, {1,6}, {{10040,290}}, "学习器描述", "TM-05", "学习器", "群伤加速"},
	[113206] = {113206, 113006, 36, 6, 3, 0, 0, 0, {}, {}, 3, 0, {}, 0, 1, 0, 1, 99, 4, 2, {}, {1,6}, {{10040,290}}, "学习器描述", "TM-06", "学习器", "魔魂降临"},
	[113207] = {113207, 113007, 36, 6, 3, 0, 0, 0, {}, {}, 3, 0, {}, 0, 1, 0, 1, 99, 4, 2, {}, {1,6}, {{10040,290}}, "学习器描述", "TM-07", "学习器", "冰霜守护"},
	[113208] = {113208, 113008, 36, 6, 3, 0, 0, 0, {}, {}, 3, 0, {}, 0, 1, 0, 1, 99, 4, 2, {}, {1,6}, {{10040,290}}, "学习器描述", "TM-08", "学习器", "净化解控"},
	[113301] = {113301, 113001, 36, 6, 3, 0, 0, 0, {}, {}, 4, 0, {}, 0, 1, 0, 1, 99, 4, 2, {}, {1,6}, {{10040,590}}, "学习器描述", "TM-01", "学习器", "单体爆发"},
	[113302] = {113302, 113002, 36, 6, 3, 0, 0, 0, {}, {}, 4, 0, {}, 0, 1, 0, 1, 99, 4, 2, {}, {1,6}, {{10040,590}}, "学习器描述", "TM-02", "学习器", "群疗不屈"},
	[113303] = {113303, 113003, 36, 6, 3, 0, 0, 0, {}, {}, 4, 0, {}, 0, 1, 0, 1, 99, 4, 2, {}, {1,6}, {{10040,590}}, "学习器描述", "TM-03", "学习器", "灼烧叠伤"},
	[113304] = {113304, 113004, 36, 6, 3, 0, 0, 0, {}, {}, 4, 0, {}, 0, 1, 0, 1, 99, 4, 2, {}, {1,6}, {{10040,590}}, "学习器描述", "TM-04", "学习器", "群伤眩晕"},
	[113305] = {113305, 113005, 36, 6, 3, 0, 0, 0, {}, {}, 4, 0, {}, 0, 1, 0, 1, 99, 4, 2, {}, {1,6}, {{10040,590}}, "学习器描述", "TM-05", "学习器", "群伤加速"},
	[113306] = {113306, 113006, 36, 6, 3, 0, 0, 0, {}, {}, 4, 0, {}, 0, 1, 0, 1, 99, 4, 2, {}, {1,6}, {{10040,590}}, "学习器描述", "TM-06", "学习器", "魔魂降临"},
	[113307] = {113307, 113007, 36, 6, 3, 0, 0, 0, {}, {}, 4, 0, {}, 0, 1, 0, 1, 99, 4, 2, {}, {1,6}, {{10040,590}}, "学习器描述", "TM-07", "学习器", "冰霜守护"},
	[113308] = {113308, 113008, 36, 6, 3, 0, 0, 0, {}, {}, 4, 0, {}, 0, 1, 0, 1, 99, 4, 2, {}, {1,6}, {{10040,590}}, "学习器描述", "TM-08", "学习器", "净化解控"},
	[113401] = {113401, 113001, 36, 6, 3, 0, 0, 0, {}, {}, 5, 0, {}, 0, 1, 0, 1, 99, 4, 2, {}, {1,6}, {{10040,1070}}, "学习器描述", "TM-01", "学习器", "单体爆发"},
	[113402] = {113402, 113002, 36, 6, 3, 0, 0, 0, {}, {}, 5, 0, {}, 0, 1, 0, 1, 99, 4, 2, {}, {1,6}, {{10040,1070}}, "学习器描述", "TM-02", "学习器", "群疗不屈"},
	[113403] = {113403, 113003, 36, 6, 3, 0, 0, 0, {}, {}, 5, 0, {}, 0, 1, 0, 1, 99, 4, 2, {}, {1,6}, {{10040,1070}}, "学习器描述", "TM-03", "学习器", "灼烧叠伤"},
	[113404] = {113404, 113004, 36, 6, 3, 0, 0, 0, {}, {}, 5, 0, {}, 0, 1, 0, 1, 99, 4, 2, {}, {1,6}, {{10040,1070}}, "学习器描述", "TM-04", "学习器", "群伤眩晕"},
	[113405] = {113405, 113005, 36, 6, 3, 0, 0, 0, {}, {}, 5, 0, {}, 0, 1, 0, 1, 99, 4, 2, {}, {1,6}, {{10040,1070}}, "学习器描述", "TM-05", "学习器", "群伤加速"},
	[113406] = {113406, 113006, 36, 6, 3, 0, 0, 0, {}, {}, 5, 0, {}, 0, 1, 0, 1, 99, 4, 2, {}, {1,6}, {{10040,1070}}, "学习器描述", "TM-06", "学习器", "魔魂降临"},
	[113407] = {113407, 113007, 36, 6, 3, 0, 0, 0, {}, {}, 5, 0, {}, 0, 1, 0, 1, 99, 4, 2, {}, {1,6}, {{10040,1070}}, "学习器描述", "TM-07", "学习器", "冰霜守护"},
	[113408] = {113408, 113008, 36, 6, 3, 0, 0, 0, {}, {}, 5, 0, {}, 0, 1, 0, 1, 99, 4, 2, {}, {1,6}, {{10040,1070}}, "学习器描述", "TM-08", "学习器", "净化解控"},
}
