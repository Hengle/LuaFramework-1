-- this file is generated by program!
-- don't change it manaully.
-- source file: sprite_data.xls

Config = Config or {} 
Config.SpriteData = Config.SpriteData or {}
Config.SpriteData.data_hatch_data_key_depth = 1
Config.SpriteData.data_hatch_data_length = 6
Config.SpriteData.data_hatch_data_lan = "zh"
Config.SpriteData.data_hatch_data = {
	[1] = {desc1="",desc2="",expend={},hatch_cond={"lev",45},name="第一制造机",res_id=1,sort=1},
	[2] = {desc1="特权激活",desc2="激活制造特权开启",expend={},hatch_cond={"privilege",5},name="特权制造机",res_id=2,sort=5},
	[3] = {desc1="特权激活",desc2="激活制造特权开启",expend={},hatch_cond={"privilege",5},name="特权制造机",res_id=2,sort=6},
	[4] = {desc1="洛托姆15级",desc2="洛托姆达15级开启",expend={{3,50}},hatch_cond={"sprite_tree_lv",15},name="第二制造机",res_id=1,sort=2},
	[5] = {desc1="3星橙色学习器",desc2="获得一个3星橙色学习器开启",expend={{3,100}},hatch_cond={"has_any_sprite",{113201,113202,113203,113204,113205,113206,113207,113208}},name="第三制造机",res_id=1,sort=3},
	[6] = {desc1="学习器总评分",desc2="上阵学习器总评分达1200开启",expend={{3,200}},hatch_cond={"sprite_power",1200},name="第四制造机",res_id=1,sort=4},
}
