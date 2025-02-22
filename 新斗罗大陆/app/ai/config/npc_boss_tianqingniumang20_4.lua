--斗罗AI：BOSS天青牛蟒
--普通副本
--id 3246  2-4
--[[
半屏聚怪
aoe，加击飞
随机控制：水龙卷
近战爆气  击退周围的敌人
]]
--创建人：庞圣峰
--创建时间：2018-3-22

local npc_boss_tianqingniumang20_4 = {    
    CLASS = "composite.QAISelector",
    ARGS = 
    {
    	{
			CLASS = "composite.QAISequence",
			ARGS = 
			{
				{
					CLASS = "action.QAITimer",
					OPTIONS = {interval = 60, first_interval=6},
				},
				{
					CLASS = "action.QAIIsUsingSkill",
					OPTIONS = {reverse_result = true , check_skill_id = 50533},
				}, 
				{
					CLASS = "action.QAIAttackEnemyOutOfDistance",
					OPTIONS = {distance = 3},
				},
				{
					CLASS = "action.QAIUseSkill",
					OPTIONS = {skill_id = 50217},--水牢
				},
			},
		},
		{
			CLASS = "composite.QAISequence",
			ARGS = 
			{
				{
					CLASS = "action.QAITimer",
					OPTIONS = {interval = 60, first_interval=12},
				},
				{
					CLASS = "action.QAIIsUsingSkill",
					OPTIONS = {reverse_result = true , check_skill_id = 50533},
				}, 
				{
					CLASS = "action.QAIUseSkill",
					OPTIONS = {skill_id = 50213},--森罗万象
				},
			},
		},
		{
			CLASS = "composite.QAISequence",
			ARGS = 
			{
				{
					CLASS = "action.QAITimer",
					OPTIONS = {interval = 60, first_interval=16.5},
				},
				{
					CLASS = "action.QAIIsUsingSkill",
					OPTIONS = {reverse_result = true , check_skill_id = 50533},
				}, 
				{
					CLASS = "action.QAIUseSkill",
					OPTIONS = {skill_id = 50216},--无限水柱
				},
			},
		},
		-- {
		-- 	CLASS = "composite.QAISequence",
		-- 	ARGS = 
		-- 	{
		-- 		{
		-- 			CLASS = "action.QAITimer",
		-- 			OPTIONS = {interval = 60, first_interval=23},
		-- 		},
		-- 		{
		-- 			CLASS = "action.QAIIsUsingSkill",
		-- 			OPTIONS = {reverse_result = true , check_skill_id = 50533},
		-- 		}, 
		-- 		{
		-- 			CLASS = "action.QAIAttackEnemyOutOfDistance",
		-- 			OPTIONS = {distance = 3},
		-- 		},
		-- 		{
		-- 			CLASS = "action.QAIUseSkill",
		-- 			OPTIONS = {skill_id = 50217},--水牢
		-- 		},
		-- 	},
		-- },
    	{
			CLASS = "composite.QAISequence",
			ARGS = 
			{
				{
					CLASS = "action.QAITimer",
					OPTIONS = {interval = 300, first_interval=24},
				},
				{
					CLASS = "action.QAIUseSkill",
					OPTIONS = {skill_id = 50533},--浪花舞蹈
				},
			},
		},
		{
			CLASS = "composite.QAISequence",
			ARGS = 
			{
				{
					CLASS = "action.QAITimer",
					OPTIONS = {interval = 60, first_interval=79},
				},
				{
					CLASS = "action.QAIIsUsingSkill",
					OPTIONS = {reverse_result = true , check_skill_id = 50533},
				}, 
				{
					CLASS = "action.QAIAttackEnemyOutOfDistance",
					OPTIONS = {distance = 3},
				},
				{
					CLASS = "action.QAIUseSkill",
					OPTIONS = {skill_id = 50217},--水牢
				},
			},
		},
		{
			CLASS = "composite.QAISequence",
			ARGS = 
			{
				{
					CLASS = "action.QAITimer",
					OPTIONS = {interval = 60, first_interval=86},
				},
				{
					CLASS = "action.QAIIsUsingSkill",
					OPTIONS = {reverse_result = true , check_skill_id = 50533},
				}, 
				{
					CLASS = "action.QAIUseSkill",
					OPTIONS = {skill_id = 50213},--森罗万象
				},
			},
		},
		{
			CLASS = "composite.QAISequence",
			ARGS = 
			{
				{
					CLASS = "action.QAITimer",
					OPTIONS = {interval = 60, first_interval=90.5},
				},
				{
					CLASS = "action.QAIIsUsingSkill",
					OPTIONS = {reverse_result = true , check_skill_id = 50533},
				}, 
				{
					CLASS = "action.QAIUseSkill",
					OPTIONS = {skill_id = 50216},--无限水柱
				},
			},
		},
		{
			CLASS = "composite.QAISequence",
			ARGS = 
			{
				{
					CLASS = "action.QAITimer",
					OPTIONS = {interval = 60, first_interval=100},
				},
				{
					CLASS = "action.QAIIsUsingSkill",
					OPTIONS = {reverse_result = true , check_skill_id = 50533},
				}, 
				{
					CLASS = "action.QAIUseSkill",
					OPTIONS = {skill_id = 50213},--森罗万象
				},
			},
		},
		{
			CLASS = "composite.QAISequence",
			ARGS = 
			{
				{
					CLASS = "action.QAITimer",
					OPTIONS = {interval = 60, first_interval=104.5},
				},
				{
					CLASS = "action.QAIIsUsingSkill",
					OPTIONS = {reverse_result = true , check_skill_id = 50533},
				}, 
				{
					CLASS = "action.QAIUseSkill",
					OPTIONS = {skill_id = 50216},--无限水柱
				},
			},
		},
  --   	{
		-- 	CLASS = "composite.QAISequence",
		-- 	ARGS = 
		-- 	{
		-- 		{
		-- 			CLASS = "action.QAITimer",
		-- 			OPTIONS = {interval = 500, first_interval=55},
		-- 		},
		-- 		{
		-- 			CLASS = "action.QAIUseSkill",
		-- 			OPTIONS = {skill_id = 50533},--浪花舞蹈
		-- 		},
		-- 	},
		-- },
		-- {
		-- 	CLASS = "composite.QAISequence",
		-- 	ARGS = 
		-- 	{
		-- 		{
		-- 			CLASS = "action.QAITimer",
		-- 			OPTIONS = {interval = 300, first_interval=7},
		-- 		},
		-- 		{
		-- 			CLASS = "action.QAIIsUsingSkill",
		-- 			OPTIONS = {reverse_result = true , check_skill_id = 50533},
		-- 		}, 
		-- 		{
		-- 			CLASS = "action.QAIAttackEnemyOutOfDistance",
		-- 			OPTIONS = {distance = 3},
		-- 		},
		-- 		{
		-- 			CLASS = "action.QAIUseSkill",
		-- 			OPTIONS = {skill_id = 50217},--水牢
		-- 		},
		-- 	},
		-- },
		-- {
		-- 	CLASS = "composite.QAISequence",
		-- 	ARGS = 
		-- 	{
		-- 		{
		-- 			CLASS = "action.QAITimer",
		-- 			OPTIONS = {interval = 300, first_interval=32},
		-- 		},
		-- 		{
		-- 			CLASS = "action.QAIIsUsingSkill",
		-- 			OPTIONS = {reverse_result = true , check_skill_id = 50533},
		-- 		}, 
		-- 		{
		-- 			CLASS = "action.QAIAttackEnemyOutOfDistance",
		-- 			OPTIONS = {distance = 3},
		-- 		},
		-- 		{
		-- 			CLASS = "action.QAIUseSkill",
		-- 			OPTIONS = {skill_id = 50217},--水牢
		-- 		},
		-- 	},
		-- },
		-- {
		-- 	CLASS = "composite.QAISequence",
		-- 	ARGS = 
		-- 	{
		-- 		{
		-- 			CLASS = "action.QAITimer",
		-- 			OPTIONS = {interval = 300, first_interval=90},
		-- 		},
		-- 		{
		-- 			CLASS = "action.QAIIsUsingSkill",
		-- 			OPTIONS = {reverse_result = true , check_skill_id = 50533},
		-- 		}, 
		-- 		{
		-- 			CLASS = "action.QAIAttackEnemyOutOfDistance",
		-- 			OPTIONS = {distance = 3},
		-- 		},
		-- 		{
		-- 			CLASS = "action.QAIUseSkill",
		-- 			OPTIONS = {skill_id = 50217},--水牢
		-- 		},
		-- 	},
		-- },
		-- {
		-- 	CLASS = "composite.QAISequence",
		-- 	ARGS = 
		-- 	{
		-- 		{
		-- 			CLASS = "action.QAITimer",
		-- 			OPTIONS = {interval = 300, first_interval=12.5},
		-- 		},
		-- 		{
		-- 			CLASS = "action.QAIIsUsingSkill",
		-- 			OPTIONS = {reverse_result = true , check_skill_id = 50533},
		-- 		}, 
		-- 		{
		-- 			CLASS = "action.QAIUseSkill",
		-- 			OPTIONS = {skill_id = 50213},--森罗万象
		-- 		},
		-- 	},
		-- },
		-- {
		-- 	CLASS = "composite.QAISequence",
		-- 	ARGS = 
		-- 	{
		-- 		{
		-- 			CLASS = "action.QAITimer",
		-- 			OPTIONS = {interval = 300, first_interval=37.5},
		-- 		},
		-- 		{
		-- 			CLASS = "action.QAIIsUsingSkill",
		-- 			OPTIONS = {reverse_result = true , check_skill_id = 50533},
		-- 		}, 
		-- 		{
		-- 			CLASS = "action.QAIUseSkill",
		-- 			OPTIONS = {skill_id = 50213},--森罗万象
		-- 		},
		-- 	},
		-- },
		-- {
		-- 	CLASS = "composite.QAISequence",
		-- 	ARGS = 
		-- 	{
		-- 		{
		-- 			CLASS = "action.QAITimer",
		-- 			OPTIONS = {interval = 300, first_interval=95},
		-- 		},
		-- 		{
		-- 			CLASS = "action.QAIIsUsingSkill",
		-- 			OPTIONS = {reverse_result = true , check_skill_id = 50533},
		-- 		}, 
		-- 		{
		-- 			CLASS = "action.QAIUseSkill",
		-- 			OPTIONS = {skill_id = 50213},--森罗万象
		-- 		},
		-- 	},
		-- },
		-- {
		-- 	CLASS = "composite.QAISequence",
		-- 	ARGS = 
		-- 	{
		-- 		{
		-- 			CLASS = "action.QAITimer",
		-- 			OPTIONS = {interval = 300, first_interval=16},
		-- 		},
		-- 		{
		-- 			CLASS = "action.QAIIsUsingSkill",
		-- 			OPTIONS = {reverse_result = true , check_skill_id = 50533},
		-- 		}, 
		-- 		{
		-- 			CLASS = "action.QAIUseSkill",
		-- 			OPTIONS = {skill_id = 50216},--无限水柱
		-- 		},
		-- 	},
		-- },
		-- {
		-- 	CLASS = "composite.QAISequence",
		-- 	ARGS = 
		-- 	{
		-- 		{
		-- 			CLASS = "action.QAITimer",
		-- 			OPTIONS = {interval = 300, first_interval=42},
		-- 		},
		-- 		{
		-- 			CLASS = "action.QAIIsUsingSkill",
		-- 			OPTIONS = {reverse_result = true , check_skill_id = 50533},
		-- 		}, 
		-- 		{
		-- 			CLASS = "action.QAIUseSkill",
		-- 			OPTIONS = {skill_id = 50216},--无限水柱
		-- 		},
		-- 	},
		-- },
		-- {
		-- 	CLASS = "composite.QAISequence",
		-- 	ARGS = 
		-- 	{
		-- 		{
		-- 			CLASS = "action.QAITimer",
		-- 			OPTIONS = {interval = 300, first_interval=99.5},
		-- 		},
		-- 		{
		-- 			CLASS = "action.QAIIsUsingSkill",
		-- 			OPTIONS = {reverse_result = true , check_skill_id = 50533},
		-- 		}, 
		-- 		{
		-- 			CLASS = "action.QAIUseSkill",
		-- 			OPTIONS = {skill_id = 50216},--无限水柱
		-- 		},
		-- 	},
		-- },
		-- {
		-- 	CLASS = "composite.QAISequence",
		-- 	ARGS = 
		-- 	{
		-- 		{
		-- 			CLASS = "action.QAITimer",
		-- 			OPTIONS = {interval =20,first_interval=14.5},
		-- 		},
		-- 		{
		-- 			CLASS = "action.QAIAcceptHitLog",
		-- 		},
		-- 	},
		-- },
        {
            CLASS = "action.QAIAttackByHitlog",
        },
        {
            CLASS = "composite.QAISelector",
            ARGS = 
            {
                {
                    CLASS = "action.QAIIsAttacking",
                },
                {
                    CLASS = "action.QAIBeatBack",
                },
                {
                    CLASS = "action.QAIAttackClosestEnemy",
                },
            },
        },
    },
}

return npc_boss_tianqingniumang20_4