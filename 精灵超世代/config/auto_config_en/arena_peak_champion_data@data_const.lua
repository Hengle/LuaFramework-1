-- this file is generated by program!
-- don't change it manaully.
-- source file: arena_peak_champion_data.xls

Config = Config or {} 
Config.ArenaPeakChampionData = Config.ArenaPeakChampionData or {}
Config.ArenaPeakChampionData.data_const_key_depth = 1
Config.ArenaPeakChampionData.data_const_length = 40
Config.ArenaPeakChampionData.data_const_lan = "en"
Config.ArenaPeakChampionData.data_const = {
	["base_lev"] = {val=60,desc="Basic level of the robot (used when there is no real player)"},
	["base_power"] = {val=100000,desc="Basic combat power of the robot (used when there is no real player)"},
	["base_score"] = {val=400,desc="Robot initial points"},
	["battel_guess"] = {val={0,50000},desc="Guess the minimum combat power difference draw range value"},
	["battel_score"] = {val=80,desc="Round-robin points bonus factor"},
	["battle_members"] = {val=100,desc="Qualifications for the qualifiers (top n in the cross-server arena)"},
	["battle_members1"] = {val=256,desc="Qualifications for the preliminary server qualifiers (top n in the cross-server arena)"},
	["cd_score_start"] = {val=2332800,desc="Season start cooling time (seconds)"},
	["close_time"] = {val=14,desc="Idle duration (days)"},
	["division_members_limit"] = {val=256,desc="The minimum number of players in the competition area"},
	["division_members_normal"] = {val=800,desc="The number of people in the division"},
	["face_list"] = {val={10101,10201,10202,10301,10302,10303,10304,10305,10401,10402,10403,10404,10405,10501,10502,10503,10504,10505,10506,10507,10508,10509,20101,20201,20202,20301,20302,20303,20304,20305,20401,20402,20403,20404,20405,20501,20502,20503,20504,20505,20506,20507,20508,30101,30201,30202,30301,30302,30303,30304,30305,30401,30402,30403,30404,30405,30501,30502,30503,30504,30505,30506,30507,30508,40301,40401,40402,40403,40404,40501,40502,40503,40504,40505,40506,40507,50301,50401,50402,50403,50404,50501,50502,50503,50504,50505,50506,50507},desc="Robot avatar information"},
	["guess_coin"] = {val=666,desc="Guess the amount of coins added or subtracted each time"},
	["guess_lev_limit"] = {val=55,desc="Level 55 can participate in quiz gameplay"},
	["guess_limit"] = {val=2500,desc="Guess the upper limit of a single bet"},
	["guess_number1"] = {val=666,desc="The number of chips given in each round of the qualifiers"},
	["guess_number2"] = {val=666,desc="The number of chips given in each round of the knockout round (promotion round + championship round)"},
	["guess_reward"] = {val={{1,100000}},desc="Additional rewards for successful guessing"},
	["guess_times"] = {val=2000,desc="The multiple of the quiz currency obtained by the quiz successfully"},
	["hallowskin_reward_rank"] = {val=3,desc="Can get the top x name of the trainer\'s appearance Bailu"},
	["like_max"] = {val=3,desc="Maximum number of likes per day"},
	["like_redpoint_limit"] = {val=55,desc="Red dot shows level"},
	["like_reward"] = {val={{38,50}},desc="Like reward"},
	["look_list"] = {val={110401,110402,110403,110404,110405,120401,120402,120403,120404,120405,130401,130402,130403,130404,130405,140401,140402,140403,140404,150401,150402,150403,150404},desc="Robot appearance information"},
	["open_lev_limit"] = {val=60,desc="Personal level 60 open"},
	["open_number_limit"] = {val=256,desc="Number of people required for promotion"},
	["open_time"] = {val=14,desc="Duration of the war (days)"},
	["open_world_lev_limit"] = {val=60,desc="World Class 60 opens"},
	["robot_win_score"] = {val=100,desc="Robot victory integral coefficient"},
	["score_arg"] = {val=1000,desc="Robot initial integral coefficient"},
	["season_start"] = {val={7,6,0},desc="Season start time (day of the week, hour, minute)"},
	["time_champion_end"] = {val={1,23,59,59},desc="End of season"},
	["time_champion_fight"] = {val=180,desc="Top 64 championship battle time"},
	["time_champion_guess"] = {val=90,desc="Top 64 Championship betting time"},
	["time_champion_ready"] = {val=30,desc="Top 64 championship preparation time"},
	["time_score_fight"] = {val={20,30,0},desc="Combat phase"},
	["time_score_guess"] = {val={6,0,0},desc="Guessing stage"},
	["time_score_notice"] = {val={20,25,0},desc="Prompt popup"},
	["time_score_ready"] = {val={20,40,0},desc="Rest phase"},
	["time_score_start"] = {val={7,6,0},desc="Season start time (day of the week, hour, minute)"},
}
