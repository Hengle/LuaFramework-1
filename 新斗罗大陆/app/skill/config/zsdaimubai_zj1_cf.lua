local cnxiaowu_jipao = 
{
    CLASS = "composite.QSBSequence",
    ARGS = 
    {
        {
            CLASS = "action.QSBArgsIsUnderStatus",
            OPTIONS = {is_attacker = true,status = "zsdaimubai_zj"},
        },
        {
            CLASS = "composite.QSBSelector",
            ARGS = 
            {
                {
                    CLASS = "composite.QSBParallel",
                    ARGS = 
                    {
                        {
                            CLASS = "action.QSBAttackFinish"
                        },
                        {
                            CLASS = "composite.QSBSequence",
                            ARGS = 
                            {
                                {
                                    CLASS = "action.QSBArgsIsDirectionLeft",
                                    OPTIONS = {is_attacker = true},
                                },
                                {
                                    CLASS = "composite.QSBSelector",
                                    ARGS = 
                                    {   
                                        {
                                            CLASS = "composite.QSBSequence",
                                            ARGS = 
                                            {
                                                {
                                                    CLASS = "action.QSBArgsPosition",
                                                    OPTIONS = {is_attackee = true},
                                                },
                                                {
                                                    CLASS = "action.QSBDelayTime",
                                                    OPTIONS = {delay_time = 0 / 30 ,pass_key = {"pos"}},
                                                },
                                                {
                                                    CLASS = "composite.QSBParallel",
                                                    ARGS =
                                                    {
                                                        {
                                                            CLASS = "action.QSBMultipleTrap",
                                                            OPTIONS = {trapId = "zsdaimubai_liuxing1",count = 1},
                                                        },
                                                    },
                                                },
                                                {
                                                    CLASS = "action.QSBDelayTime",
                                                    OPTIONS = {delay_time = 6 / 30 },
                                                },
                                                {
                                                  CLASS = "action.QSBHitTarget",
                                                },
                                            },
                                        },
                                        {
                                            CLASS = "composite.QSBSequence",
                                            ARGS = 
                                            {
                                                {
                                                    CLASS = "action.QSBArgsPosition",
                                                    OPTIONS = {is_attackee = true},
                                                },
                                                {
                                                    CLASS = "action.QSBDelayTime",
                                                    OPTIONS = {delay_time = 0 / 30 ,pass_key = {"pos"}},
                                                },
                                                {
                                                    CLASS = "composite.QSBParallel",
                                                    ARGS =
                                                    {
                                                        {
                                                            CLASS = "action.QSBMultipleTrap",
                                                            OPTIONS = {trapId = "zsdaimubai_liuxing1_1",count = 1},
                                                        },
                                                    },
                                                },
                                                {
                                                    CLASS = "action.QSBDelayTime",
                                                    OPTIONS = {delay_time = 6 / 30 },
                                                },
                                                {
                                                  CLASS = "action.QSBHitTarget",
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
    },
}

return cnxiaowu_jipao