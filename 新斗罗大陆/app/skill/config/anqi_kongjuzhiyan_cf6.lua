	local anqi_kongjuzhiyan_cf6 ={
	    CLASS = "composite.QSBSequence",
	    ARGS = {
			{
				CLASS = "action.QSBRemoveBuff",
				OPTIONS = {buff_id = "anqi_kongjuzhiyan_js1"},
			},
			{
				CLASS = "action.QSBDelayTime",
				OPTIONS = {delay_frame = 5},
			},
			{
                CLASS = "action.QSBApplyBuff",
                OPTIONS = {buff_id = "anqi_kongjuzhiyan_js1"},
            },	
            {
                CLASS = "composite.QSBSequence",
                ARGS = {
		         	{
			            CLASS = "action.QSBArgsConditionSelector",
			            OPTIONS = {
			                failed_select = 2,
			                {expression = "self:aptitude>22", select = 1},
							{expression = "self:aptitude=22", select = 1},
			                {expression = "self:aptitude<22", select = 2},

			            }
			        },
			        {
			            CLASS = "composite.QSBSelector",
			            ARGS = {
				            {
				                CLASS = "action.QSBApplyBuff",
				                OPTIONS = {buff_id = "kongjuzhiyan_dot_ganran5",is_target = true,multiple_target_with_skill = true},
				            },	
				            {
				                CLASS = "action.QSBApplyBuff",
				                OPTIONS = {buff_id = "kongjuzhiyan_dot_lowganran5",is_target = true,multiple_target_with_skill = true},
				            },	
			         	}
			        },
		       	}
	       	},
			{
                CLASS = "action.QSBApplyBuff",
                OPTIONS = {buff_id = "kongjuzhiyan_debuff_ganran5",is_target = true,multiple_target_with_skill = true},
            },   
			{
                CLASS = "action.QSBApplyBuff",
                OPTIONS = {buff_id = "kongjuzhiyan_ganran_jiannu5",is_target = true,multiple_target_with_skill = true},
            },   
         	-- {
          --       CLASS = "action.QSBHitTarget",
          --   },
         -- {
            -- CLASS = "action.QSBPlayMountSkillAnimation",
        -- },
	    	{
	            CLASS = "action.QSBAttackFinish"
	        },
	    },
	}

return anqi_kongjuzhiyan_cf6




