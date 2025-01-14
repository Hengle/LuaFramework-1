-- this file is generated by program!
-- don't change it manaully.
-- source file: formation_data.xls

Config = Config or {} 
Config.FormationData = Config.FormationData or {}
Config.FormationData.data_form_cost_key_depth = 1
Config.FormationData.data_form_cost_length = 8
Config.FormationData.data_form_cost_lan = "en"
Config.FormationData.data_form_cost = {
	["exp_a"] = {code="exp_a",val=200,desc=""},
	["exp_b"] = {code="exp_b",val=100,desc=""},
	["item_zf"] = {code="item_zf",val=10130,desc=""},
	["lineup"] = {code="lineup",val=3,desc=""},
	["lineup_max"] = {code="lineup_max",val=5,desc=""},
	["lineup_unit"] = {code="lineup_unit",val=5,desc=""},
	["restrain_des"] = {code="restrain_des",val=0,desc="1. Different formations, Pokémon <div fontcolor=#249003>stations</div> are different, front, middle, and back rows have different bonus effects\n2, formations <div fontcolor=#249003>levels</div> The higher the div>, the higher the attribute bonus.\n3. There is a restraint effect between the formations. The restraint increases the damage caused by <div fontcolor=#249003> to the enemy by 5%</div>, and at the same time <div fontcolor=# 249003>The damage received by the enemy is reduced by 5%</div>"},
	["restrain_effect"] = {code="restrain_effect",val={{"dam",0},{"res",0}},desc="Restrain all parties<div fontcolor=249003>Injury +0%, Injury-free +0%</div>"},
}
