local ssqianshitangsan_pugong1 = 
{
    CLASS = "composite.QSBParallel",
    ARGS = 
    {
        {
            CLASS = "action.QSBApplyBuff",
            OPTIONS = {buff_id = "pf3_sspqianrenxue_sj2_buff3",is_target = false},
        },
        {
            CLASS = "action.QSBChangeRecoverHpLimitResistance",
            OPTIONS = {is_attacker = true, percent = 0.29},
        },
        {
            CLASS = "action.QSBAttackFinish",
        },   
    },
}

return ssqianshitangsan_pugong1