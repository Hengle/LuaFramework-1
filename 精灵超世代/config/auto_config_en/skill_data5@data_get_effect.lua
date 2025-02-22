-- this file is generated by program!
-- don't change it manaully.
-- source file: skill_data5.xls

Config = Config or {}
Config.SkillData5 = Config.SkillData5 or {}
Config.SkillData5.data_get_effect_key_depth = 1
Config.SkillData5.data_get_effect_length = 79
Config.SkillData5.data_get_effect_lan = "en"
Config.SkillData5.data_get_effect_cache = {}
Config.SkillData5.data_get_effect = function(key)
	if Config.SkillData5.data_get_effect_cache[key] == nil then
		local base = Config.SkillData5.data_get_effect_table[key]
		if not base then return end
		Config.SkillData5.data_get_effect_cache[key] = {
			act_effect_list = base[1], --出手点特效
			act_hurt_type = base[2], --受击表现
			action_list = base[3], --动作列表
			anime_res = base[4], --模型id
			anime_user_atk = base[5], --动作id
			area_effect_list = base[6], --范围人物特效
			attack_sound = base[7], --攻击音效
			bact_effect_list = base[8], --施法特效
			bid = base[9], --预留注释
			effect_desc = base[10], --描述
			effect_type = base[11], --效果类型，客户端未使用
			group = base[12], --分组id
			hit_action = base[13], --受击回调函数
			hit_effect_list = base[14], --打击特效列表
			hit_sound = base[15], --受击音效
			hurt_effect_list = base[16], --客户端未使用
			is_move_map = base[17], --是否移动地图，和动画帧事件有关
			is_must_die = base[18], --是否需要移除尸体
			is_play_hit_sound = base[19], --未使用
			play_stand = base[20], --群攻动作播放完回到站立动作
			ready_sound = base[21], --起手音效
			shake_id = base[22], --震屏id，见data_get_shake_data
			shout_trick = base[23], --喊招音效
			split_hurt = base[24], --多段攻击次数
			target_type = base[25], --客户端未使用
			trc_effect_list = base[26], --弹道特效
		}
	end
	return Config.SkillData5.data_get_effect_cache[key] 
end

Config.SkillData5.data_get_effect_table = {
	[500001] = {{}, 0, {20001}, "", "", {}, "", {}, 500001, "", 2, 5000, "hurt", {}, "", {}, 0, 0, 0, 1, "", 0, "", 1, 44, {}},
	[500002] = {{}, 0, {20001}, "", "", {}, "", {}, 500002, "", 2, 5000, "hurt", {}, "", {}, 0, 0, 0, 1, "", 0, "", 1, 44, {}},
	[500003] = {{}, 0, {20001}, "", "", {}, "", {}, 500003, "", 2, 5000, "hurt", {}, "", {}, 0, 0, 0, 1, "", 0, "", 1, 44, {}},
	[501001] = {{}, 0, {20001}, "", "", {}, "", {}, 501001, "", 2, 5010, "hurt", {}, "", {}, 0, 0, 0, 1, "", 0, "", 1, 44, {}},
	[501002] = {{}, 0, {20001}, "", "", {}, "", {}, 501002, "", 2, 5010, "hurt", {}, "", {}, 0, 0, 0, 1, "", 0, "", 1, 44, {}},
	[501003] = {{}, 0, {20001}, "", "", {}, "", {}, 501003, "", 2, 5010, "hurt", {}, "", {}, 0, 0, 0, 1, "", 0, "", 1, 44, {}},
	[502001] = {{}, 0, {20001}, "", "", {}, "", {}, 502001, "", 9, 5020, "hurt", {}, "", {}, 0, 0, 0, 1, "", 0, "", 1, 4, {}},
	[502002] = {{}, 0, {20001}, "", "", {}, "", {}, 502002, "", 9, 5020, "hurt", {}, "", {}, 0, 0, 0, 1, "", 0, "", 1, 4, {}},
	[502003] = {{}, 0, {20001}, "", "", {}, "", {}, 502003, "", 9, 5020, "hurt", {}, "", {}, 0, 0, 0, 1, "", 0, "", 1, 4, {}},
	[503001] = {{}, 0, {20001}, "", "", {}, "", {}, 503001, "", 2, 5030, "hurt", {}, "", {}, 0, 0, 0, 1, "", 0, "", 1, 4, {}},
	[503002] = {{}, 0, {20001}, "", "", {}, "", {}, 503002, "", 2, 5030, "hurt", {}, "", {}, 0, 0, 0, 1, "", 0, "", 1, 4, {}},
	[503003] = {{}, 0, {20001}, "", "", {}, "", {}, 503003, "", 2, 5030, "hurt", {}, "", {}, 0, 0, 0, 1, "", 0, "", 1, 4, {}},
	[504001] = {{}, 0, {20001}, "", "", {}, "", {}, 504001, "", 9, 5040, "hurt", {}, "", {}, 0, 0, 0, 1, "", 0, "", 1, 4, {}},
	[504002] = {{}, 0, {20001}, "", "", {}, "", {}, 504002, "", 9, 5040, "hurt", {}, "", {}, 0, 0, 0, 1, "", 0, "", 1, 4, {}},
	[504003] = {{}, 0, {20001}, "", "", {}, "", {}, 504003, "", 9, 5040, "hurt", {}, "", {}, 0, 0, 0, 1, "", 0, "", 1, 4, {}},
	[505001] = {{}, 0, {20001}, "", "", {}, "", {}, 505001, "", 2, 5050, "hurt", {}, "", {}, 0, 0, 0, 1, "", 0, "", 1, 44, {}},
	[505002] = {{}, 0, {20001}, "", "", {}, "", {}, 505002, "", 2, 5050, "hurt", {}, "", {}, 0, 0, 0, 1, "", 0, "", 1, 44, {}},
	[505003] = {{}, 0, {20001}, "", "", {}, "", {}, 505003, "", 2, 5050, "hurt", {}, "", {}, 0, 0, 0, 1, "", 0, "", 1, 44, {}},
	[506001] = {{}, 0, {20001}, "", "", {}, "", {}, 506001, "", 9, 5060, "hurt", {}, "", {}, 0, 0, 0, 1, "", 0, "", 1, 4, {}},
	[506002] = {{}, 0, {20001}, "", "", {}, "", {}, 506002, "", 9, 5060, "hurt", {}, "", {}, 0, 0, 0, 1, "", 0, "", 1, 4, {}},
	[506003] = {{}, 0, {20001}, "", "", {}, "", {}, 506003, "", 9, 5060, "hurt", {}, "", {}, 0, 0, 0, 1, "", 0, "", 1, 4, {}},
	[507001] = {{}, 0, {20001}, "", "", {}, "", {}, 507001, "", 2, 5070, "hurt", {}, "", {}, 0, 0, 0, 1, "", 0, "", 1, 4, {}},
	[507002] = {{}, 0, {20001}, "", "", {}, "", {}, 507002, "", 2, 5070, "hurt", {}, "", {}, 0, 0, 0, 1, "", 0, "", 1, 4, {}},
	[507003] = {{}, 0, {20001}, "", "", {}, "", {}, 507003, "", 2, 5070, "hurt", {}, "", {}, 0, 0, 0, 1, "", 0, "", 1, 4, {}},
	[508001] = {{}, 0, {20001}, "", "", {}, "", {}, 508001, "Vitality", 12, 5080, "hurt", {}, "", {}, 0, 0, 0, 1, "", 0, "", 1, 4, {}},
	[508002] = {{}, 0, {20001}, "", "", {}, "", {}, 508002, "Vitality", 12, 5080, "hurt", {}, "", {}, 0, 0, 0, 1, "", 0, "", 1, 4, {}},
	[508003] = {{}, 0, {20001}, "", "", {}, "", {}, 508003, "Vitality", 12, 5080, "hurt", {}, "", {}, 0, 0, 0, 1, "", 0, "", 1, 4, {}},
	[509001] = {{}, 0, {20001}, "", "", {}, "", {}, 509001, "", 2, 5090, "hurt", {}, "", {}, 0, 0, 0, 1, "", 0, "", 1, 44, {}},
	[509002] = {{}, 0, {20001}, "", "", {}, "", {}, 509002, "", 2, 5090, "hurt", {}, "", {}, 0, 0, 0, 1, "", 0, "", 1, 44, {}},
	[509003] = {{}, 0, {20001}, "", "", {}, "", {}, 509003, "", 2, 5090, "hurt", {}, "", {}, 0, 0, 0, 1, "", 0, "", 1, 44, {}},
	[510002] = {{}, 0, {20001}, "", "", {}, "", {}, 510002, "", 12, 5100, "hurt", {}, "", {}, 0, 0, 0, 1, "", 0, "", 1, 44, {}},
	[510003] = {{}, 0, {20001}, "", "", {}, "", {}, 510003, "", 12, 5100, "hurt", {}, "", {}, 0, 0, 0, 1, "", 0, "", 1, 44, {}},
	[511002] = {{}, 0, {20001}, "", "", {}, "", {}, 511002, "", 2, 5110, "no-hurt", {}, "", {}, 0, 0, 0, 1, "", 0, "", 1, 1, {}},
	[511003] = {{}, 0, {20001}, "", "", {}, "", {}, 511003, "", 2, 5110, "no-hurt", {}, "", {}, 0, 0, 0, 1, "", 0, "", 1, 1, {}},
	[512002] = {{}, 0, {20001}, "", "", {}, "", {}, 512002, "", 2, 5120, "hurt", {}, "", {}, 0, 0, 0, 1, "", 0, "", 1, 44, {}},
	[512003] = {{}, 0, {20001}, "", "", {}, "", {}, 512003, "", 2, 5120, "hurt", {}, "", {}, 0, 0, 0, 1, "", 0, "", 1, 44, {}},
	[513002] = {{}, 0, {20001}, "", "", {}, "", {}, 513002, "", 12, 5130, "hurt", {}, "", {}, 0, 0, 0, 1, "", 0, "", 1, 44, {}},
	[513003] = {{}, 0, {20001}, "", "", {}, "", {}, 513003, "", 12, 5130, "hurt", {}, "", {}, 0, 0, 0, 1, "", 0, "", 1, 44, {}},
	[514002] = {{}, 0, {20001}, "", "", {}, "", {}, 514002, "", 2, 5140, "no-hurt", {}, "", {}, 0, 0, 0, 1, "", 0, "", 1, 4, {}},
	[514003] = {{}, 0, {20001}, "", "", {}, "", {}, 514003, "", 2, 5140, "no-hurt", {}, "", {}, 0, 0, 0, 1, "", 0, "", 1, 4, {}},
	[515002] = {{}, 0, {20001}, "", "", {}, "", {}, 515002, "", 2, 5150, "hurt", {}, "", {}, 0, 0, 0, 1, "", 0, "", 1, 44, {}},
	[515003] = {{}, 0, {20001}, "", "", {}, "", {}, 515003, "", 2, 5150, "hurt", {}, "", {}, 0, 0, 0, 1, "", 0, "", 1, 44, {}},
	[516002] = {{}, 0, {20001}, "", "", {}, "", {}, 516002, "", 12, 5160, "no-hurt", {}, "", {}, 0, 0, 0, 1, "", 0, "", 1, 44, {}},
	[516003] = {{}, 0, {20001}, "", "", {}, "", {}, 516003, "", 12, 5160, "no-hurt", {}, "", {}, 0, 0, 0, 1, "", 0, "", 1, 44, {}},
	[517002] = {{}, 0, {20001}, "", "", {}, "", {}, 517002, "", 2, 5170, "no-hurt", {}, "", {}, 0, 0, 0, 1, "", 0, "", 1, 4, {}},
	[517003] = {{}, 0, {20001}, "", "", {}, "", {}, 517003, "", 2, 5170, "no-hurt", {}, "", {}, 0, 0, 0, 1, "", 0, "", 1, 4, {}},
	[601001] = {{}, 0, {20001}, "", "", {}, "", {}, 601001, "", 16, 75020, "no-hurt", {}, "", {}, 0, 0, 0, 1, "", 0, "", 1, 1, {}},
	[601002] = {{}, 0, {20001}, "", "", {}, "", {}, 601002, "", 16, 75020, "no-hurt", {}, "", {}, 0, 0, 0, 1, "", 0, "", 1, 1, {}},
	[601003] = {{}, 0, {20001}, "", "", {}, "", {}, 601003, "", 16, 75020, "no-hurt", {}, "", {}, 0, 0, 0, 1, "", 0, "", 1, 1, {}},
	[602001] = {{}, 0, {20001}, "", "", {}, "", {}, 602001, "", 5, 70003, "hurt", {}, "", {}, 0, 0, 0, 1, "", 0, "", 1, 3, {}},
	[602002] = {{}, 0, {20001}, "", "", {}, "", {}, 602002, "", 5, 70003, "hurt", {}, "", {}, 0, 0, 0, 1, "", 0, "", 1, 3, {}},
	[602003] = {{}, 0, {20001}, "", "", {}, "", {}, 602003, "", 5, 70003, "hurt", {}, "", {}, 0, 0, 0, 1, "", 0, "", 1, 3, {}},
	[603001] = {{}, 0, {20001}, "", "", {}, "", {}, 603001, "", 12, 70031, "no-hurt", {}, "", {}, 0, 0, 0, 1, "", 0, "", 1, 1, {}},
	[603002] = {{}, 0, {20001}, "", "", {}, "", {}, 603002, "", 12, 70031, "no-hurt", {}, "", {}, 0, 0, 0, 1, "", 0, "", 1, 1, {}},
	[603003] = {{}, 0, {20001}, "", "", {}, "", {}, 603003, "", 12, 70031, "no-hurt", {}, "", {}, 0, 0, 0, 1, "", 0, "", 1, 1, {}},
	[611001] = {{}, 0, {20001}, "", "", {}, "", {}, 611001, "", 16, 75000, "no-hurt", {}, "", {}, 0, 0, 0, 1, "", 0, "", 1, 1, {}},
	[611002] = {{}, 0, {20001}, "", "", {}, "", {}, 611002, "", 16, 75000, "no-hurt", {}, "", {}, 0, 0, 0, 1, "", 0, "", 1, 1, {}},
	[611003] = {{}, 0, {20001}, "", "", {}, "", {}, 611003, "", 16, 75000, "no-hurt", {}, "", {}, 0, 0, 0, 1, "", 0, "", 1, 1, {}},
	[612001] = {{}, 0, {20001}, "", "", {}, "", {}, 612001, "", 2, 70014, "no-hurt", {}, "", {}, 0, 0, 0, 1, "", 0, "", 1, 3, {}},
	[612002] = {{}, 0, {20001}, "", "", {}, "", {}, 612002, "", 2, 70014, "no-hurt", {}, "", {}, 0, 0, 0, 1, "", 0, "", 1, 3, {}},
	[612003] = {{}, 0, {20001}, "", "", {}, "", {}, 612003, "", 2, 70014, "no-hurt", {}, "", {}, 0, 0, 0, 1, "", 0, "", 1, 3, {}},
	[613001] = {{}, 0, {20001}, "", "", {}, "", {}, 613001, "", 12, 70041, "no-hurt", {}, "", {}, 0, 0, 0, 1, "", 0, "", 1, 44, {}},
	[613002] = {{}, 0, {20001}, "", "", {}, "", {}, 613002, "", 12, 70041, "no-hurt", {}, "", {}, 0, 0, 0, 1, "", 0, "", 1, 44, {}},
	[613003] = {{}, 0, {20001}, "", "", {}, "", {}, 613003, "", 12, 70041, "no-hurt", {}, "", {}, 0, 0, 0, 1, "", 0, "", 1, 44, {}},
	[621001] = {{}, 0, {20001}, "", "", {}, "", {}, 621001, "", 9, 70022, "no-hurt", {}, "", {}, 0, 0, 0, 1, "", 0, "", 1, 4, {}},
	[621002] = {{}, 0, {20001}, "", "", {}, "", {}, 621002, "", 9, 70022, "hurt", {}, "", {}, 0, 0, 0, 1, "", 0, "", 1, 4, {}},
	[621003] = {{}, 0, {20001}, "", "", {}, "", {}, 621003, "", 9, 70022, "hurt", {}, "", {}, 0, 0, 0, 1, "", 0, "", 1, 4, {}},
	[622001] = {{}, 0, {20003}, "", "", {}, "", {}, 622001, "", 14, 70023, "no-hurt", {20052}, "", {}, 0, 0, 0, 1, "", 0, "", 1, 4, {}},
	[622002] = {{}, 0, {20003}, "", "", {}, "", {}, 622002, "", 14, 70023, "no-hurt", {20052}, "", {}, 0, 0, 0, 1, "", 0, "", 1, 4, {}},
	[622003] = {{}, 0, {20003}, "", "", {}, "", {}, 622003, "", 14, 70023, "no-hurt", {20052}, "", {}, 0, 0, 0, 1, "", 0, "", 1, 4, {}},
	[623001] = {{}, 0, {20003}, "", "", {}, "", {}, 623001, "", 14, 70024, "no-hurt", {20052}, "", {}, 0, 0, 0, 1, "", 0, "", 1, 4, {}},
	[623002] = {{}, 0, {20003}, "", "", {}, "", {}, 623002, "", 14, 70024, "no-hurt", {20052}, "", {}, 0, 0, 0, 1, "", 0, "", 1, 4, {}},
	[623003] = {{}, 0, {20003}, "", "", {}, "", {}, 623003, "", 14, 70024, "no-hurt", {20052}, "", {}, 0, 0, 0, 1, "", 0, "", 1, 4, {}},
	[631001] = {{}, 0, {20001}, "", "", {}, "", {}, 631001, "", 2, 70010, "hurt", {}, "", {}, 0, 0, 0, 1, "", 0, "", 1, 3, {}},
	[631002] = {{}, 0, {20001}, "", "", {}, "", {}, 631002, "", 2, 70010, "hurt", {}, "", {}, 0, 0, 0, 1, "", 0, "", 1, 3, {}},
	[631003] = {{}, 0, {20001}, "", "", {}, "", {}, 631003, "", 2, 70010, "hurt", {}, "", {}, 0, 0, 0, 1, "", 0, "", 1, 3, {}},
	[632001] = {{}, 0, {20001}, "", "", {}, "", {}, 632001, "", 10, 70020, "no-hurt", {}, "", {}, 0, 0, 0, 1, "", 0, "", 1, 4, {}},
	[632002] = {{}, 0, {20001}, "", "", {}, "", {}, 632002, "", 10, 70020, "no-hurt", {}, "", {}, 0, 0, 0, 1, "", 0, "", 1, 4, {}},
	[632003] = {{}, 0, {20001}, "", "", {}, "", {}, 632003, "", 10, 70020, "no-hurt", {}, "", {}, 0, 0, 0, 1, "", 0, "", 1, 4, {}},
}
