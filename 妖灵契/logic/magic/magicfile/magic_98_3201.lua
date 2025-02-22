module(...)
--magic editor build
DATA={
	atk_stophit=true,
	cmds={
		[1]={args={time=1.8,},func_name=[[HideUI]],start_time=0,},
		[2]={args={player_swipe=false,},func_name=[[CameraLock]],start_time=0,},
		[3]={
			args={sound_path=[[Magic/sound_magic_3201_1.wav]],sound_rate=1,},
			func_name=[[PlaySound]],
			start_time=0.1,
		},
		[4]={
			args={
				alive_time=1,
				effect={
					is_cached=true,
					magic_layer=[[center]],
					path=[[Effect/Magic/magic_eff_3201/Prefabs/magic_eff_3201_att.prefab]],
					preload=true,
				},
				effect_dir_type=[[relative]],
				effect_pos={base_pos=[[atk]],depth=0,relative_angle=0,relative_dis=0,},
				excutor=[[vicobj]],
				relative_dir={base_pos=[[atk]],depth=0,relative_angle=0,relative_dis=1,},
			},
			func_name=[[StandEffect]],
			start_time=0.2,
		},
		[5]={
			args={action_name=[[attack1]],excutor=[[atkobj]],},
			func_name=[[PlayAction]],
			start_time=0.2,
		},
		[6]={args={},func_name=[[MagcAnimStart]],start_time=0.33,},
		[7]={
			args={
				alive_time=0.6,
				begin_pos={base_pos=[[atk]],depth=0.6,relative_angle=0,relative_dis=0,},
				delay_time=0,
				ease_type=[[Linear]],
				effect={
					is_cached=true,
					magic_layer=[[center]],
					path=[[Effect/Magic/magic_eff_3201/Prefabs/magic_eff_3201_fly.prefab]],
					preload=true,
				},
				end_pos={base_pos=[[atk]],depth=0.6,relative_angle=0,relative_dis=5,},
				excutor=[[atkobj]],
				move_time=0.6,
			},
			func_name=[[ShootEffect]],
			start_time=0.55,
		},
		[8]={
			args={
				alive_time=0.5,
				begin_pos={base_pos=[[atk]],depth=0.6,relative_angle=0,relative_dis=0,},
				delay_time=0,
				ease_type=[[Linear]],
				effect={
					is_cached=true,
					magic_layer=[[center]],
					path=[[Effect/Magic/magic_eff_3201/Prefabs/magic_eff_3201_fly.prefab]],
					preload=true,
				},
				end_pos={base_pos=[[atk]],depth=0.6,relative_angle=0,relative_dis=5,},
				excutor=[[vicobj]],
				move_time=0.5,
			},
			func_name=[[ShootEffect]],
			start_time=0.8,
		},
		[9]={args={player_swipe=true,},func_name=[[CameraLock]],start_time=1.79,},
		[10]={args={},func_name=[[End]],start_time=1.8,},
	},
	group_cmds={},
	magic_anim_start_time=0.33,
	pre_load_res={
		[1]=[[Effect/Magic/magic_eff_3201/Prefabs/magic_eff_3201_att.prefab]],
		[2]=[[Effect/Magic/magic_eff_3201/Prefabs/magic_eff_3201_fly.prefab]],
		[3]=[[Effect/Magic/magic_eff_3201/Prefabs/magic_eff_3201_fly.prefab]],
	},
	run_env=[[createrole]],
	type=1,
	wait_goback=false,
}
