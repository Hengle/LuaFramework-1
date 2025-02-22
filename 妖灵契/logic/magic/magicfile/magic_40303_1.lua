module(...)
--magic editor build
DATA={
	atk_stophit=false,
	cmds={
		[1]={
			args={
				alive_time=0.65,
				begin_pos={base_pos=[[atk]],depth=1,relative_angle=0,relative_dis=0,},
				delay_time=0.05,
				ease_type=[[Linear]],
				effect={
					is_cached=false,
					magic_layer=[[center]],
					path=[[Effect/Magic/magic_eff_403/Prefabs/magic_eff_40301_fly.prefab]],
					preload=true,
				},
				end_pos={base_pos=[[vic]],depth=0.55,relative_angle=0,relative_dis=0,},
				excutor=[[vicobjs]],
				move_time=0.6,
			},
			func_name=[[ShootEffect]],
			start_time=0,
		},
		[2]={
			args={
				alive_time=2,
				effect={
					is_cached=true,
					magic_layer=[[center]],
					path=[[Effect/Magic/magic_eff_403/Prefabs/magic_eff_40303_hit.prefab]],
					preload=true,
				},
				effect_dir_type=[[forward]],
				effect_pos={base_pos=[[vic]],depth=0,relative_angle=0,relative_dis=0,},
				excutor=[[vicobj]],
			},
			func_name=[[StandEffect]],
			start_time=0.55,
		},
		[3]={args={},func_name=[[MagcAnimEnd]],start_time=0.9,},
		[4]={
			args={
				consider_hight=false,
				damage_follow=true,
				face_atk=false,
				hurt_delta=0,
				play_anim=false,
			},
			func_name=[[VicHitInfo]],
			start_time=1.4,
		},
		[5]={args={},func_name=[[End]],start_time=1.7,},
	},
	group_cmds={},
	magic_anim_end_time=0.9,
	pre_load_res={
		[1]=[[Effect/Magic/magic_eff_403/Prefabs/magic_eff_40301_fly.prefab]],
		[2]=[[Effect/Magic/magic_eff_403/Prefabs/magic_eff_40303_hit.prefab]],
	},
	run_env=[[war]],
	type=1,
	wait_goback=true,
}
