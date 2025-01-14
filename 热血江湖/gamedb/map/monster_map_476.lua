----------------- auto generate db file ------------------------
module(..., package.seeall)

local require = require

local map = 
{
	[95224] = {pos = { x = -83.47554, y = -0.2187813, z = -124.5708 }, mapid = 75005},
	[95237] = {pos = { x = 123.7292, y = 5.437775, z = -8.961662 }, mapid = 75006},
	[95245] = {pos = { x = -18.80024, y = 17.43777, z = 129.0807 }, mapid = 75006},
	[95249] = {pos = { x = -83.47554, y = -0.2187813, z = -124.5708 }, mapid = 75006},
	[95255] = {pos = { x = 63.42863, y = 2.55319, z = -53.446 }, mapid = 75007},
	[95256] = {pos = { x = -51.17645, y = 2.608981, z = -4.290406 }, mapid = 75007},
	[95258] = {pos = { x = -62.06096, y = -0.2260634, z = -131.1275 }, mapid = 75007},
	[95263] = {pos = { x = 104.3519, y = 5.576923, z = -8.273216 }, mapid = 75007},
	[95265] = {pos = { x = 77.92979, y = 2.437775, z = -89.7606 }, mapid = 75007},
	[95268] = {pos = { x = 117.1589, y = 5.437775, z = -31.113 }, mapid = 75007},
	[95269] = {pos = { x = -20.77203, y = 2.442804, z = -23.21571 }, mapid = 75007},
	[95274] = {pos = { x = -83.47554, y = -0.2187813, z = -124.5708 }, mapid = 75007},
	[95200] = {pos = { x = -62.91354, y = -0.3220101, z = -111.3723 }, mapid = 75004},
	[95206] = {pos = { x = -51.17645, y = 2.608981, z = -4.290406 }, mapid = 75005},
	[95216] = {pos = { x = 81.28889, y = 2.437775, z = -69.98118 }, mapid = 75005},
	[95217] = {pos = { x = 134.0891, y = 5.437775, z = -29.33382 }, mapid = 75005},
	[95230] = {pos = { x = 63.42863, y = 2.55319, z = -53.446 }, mapid = 75006},
	[95240] = {pos = { x = 77.92979, y = 2.437775, z = -89.7606 }, mapid = 75006},
	[95259] = {pos = { x = -85.97826, y = -0.2267488, z = -100.1897 }, mapid = 75007},
	[95267] = {pos = { x = 134.0891, y = 5.437775, z = -29.33382 }, mapid = 75007},
	[95201] = {pos = { x = 24.45045, y = 17.54279, z = 128.5948 }, mapid = 75005},
	[95202] = {pos = { x = 63.31155, y = 6.437775, z = 68.73338 }, mapid = 75005},
	[95203] = {pos = { x = 18.68359, y = 6.513145, z = 21.29534 }, mapid = 75005},
	[95204] = {pos = { x = -16.11778, y = 5.136825, z = 9.348601 }, mapid = 75005},
	[95205] = {pos = { x = 63.42863, y = 2.55319, z = -53.446 }, mapid = 75005},
	[95207] = {pos = { x = 24.51685, y = 2.437775, z = -63.57752 }, mapid = 75005},
	[95208] = {pos = { x = -62.06096, y = -0.2260634, z = -131.1275 }, mapid = 75005},
	[95209] = {pos = { x = -85.97826, y = -0.2267488, z = -100.1897 }, mapid = 75005},
	[95210] = {pos = { x = 158.6804, y = 9.268195, z = 68.37466 }, mapid = 75005},
	[95211] = {pos = { x = 131.992, y = 9.237778, z = 112.3761 }, mapid = 75005},
	[95212] = {pos = { x = 123.7292, y = 5.437775, z = -8.961662 }, mapid = 75005},
	[95213] = {pos = { x = 104.3519, y = 5.576923, z = -8.273216 }, mapid = 75005},
	[95214] = {pos = { x = 36.91079, y = 2.507999, z = -86.18491 }, mapid = 75005},
	[95215] = {pos = { x = 77.92979, y = 2.437775, z = -89.7606 }, mapid = 75005},
	[95218] = {pos = { x = 117.1589, y = 5.437775, z = -31.113 }, mapid = 75005},
	[95219] = {pos = { x = -20.77203, y = 2.442804, z = -23.21571 }, mapid = 75005},
	[95220] = {pos = { x = -18.80024, y = 17.43777, z = 129.0807 }, mapid = 75005},
	[95221] = {pos = { x = -27.21642, y = 11.12196, z = 59.43844 }, mapid = 75005},
	[95222] = {pos = { x = 50.45377, y = 6.611368, z = 14.62858 }, mapid = 75005},
	[95223] = {pos = { x = -47.68567, y = 2.528438, z = -50.6581 }, mapid = 75005},
	[95225] = {pos = { x = -62.91354, y = -0.3220101, z = -111.3723 }, mapid = 75005},
	[95226] = {pos = { x = 24.45045, y = 17.54279, z = 128.5948 }, mapid = 75006},
	[95227] = {pos = { x = 63.31155, y = 6.437775, z = 68.73338 }, mapid = 75006},
	[95228] = {pos = { x = 18.68359, y = 6.513145, z = 21.29534 }, mapid = 75006},
	[95229] = {pos = { x = -16.11778, y = 5.136825, z = 9.348601 }, mapid = 75006},
	[95231] = {pos = { x = -51.17645, y = 2.608981, z = -4.290406 }, mapid = 75006},
	[95232] = {pos = { x = 24.51685, y = 2.437775, z = -63.57752 }, mapid = 75006},
	[95233] = {pos = { x = -62.06096, y = -0.2260634, z = -131.1275 }, mapid = 75006},
	[95234] = {pos = { x = -85.97826, y = -0.2267488, z = -100.1897 }, mapid = 75006},
	[95235] = {pos = { x = 158.6804, y = 9.268195, z = 68.37466 }, mapid = 75006},
	[95236] = {pos = { x = 131.992, y = 9.237778, z = 112.3761 }, mapid = 75006},
	[95238] = {pos = { x = 104.3519, y = 5.576923, z = -8.273216 }, mapid = 75006},
	[95239] = {pos = { x = 36.91079, y = 2.507999, z = -86.18491 }, mapid = 75006},
	[95241] = {pos = { x = 81.28889, y = 2.437775, z = -69.98118 }, mapid = 75006},
	[95242] = {pos = { x = 134.0891, y = 5.437775, z = -29.33382 }, mapid = 75006},
	[95243] = {pos = { x = 117.1589, y = 5.437775, z = -31.113 }, mapid = 75006},
	[95244] = {pos = { x = -20.77203, y = 2.442804, z = -23.21571 }, mapid = 75006},
	[95246] = {pos = { x = -27.21642, y = 11.12196, z = 59.43844 }, mapid = 75006},
	[95247] = {pos = { x = 50.45377, y = 6.611368, z = 14.62858 }, mapid = 75006},
	[95248] = {pos = { x = -47.68567, y = 2.528438, z = -50.6581 }, mapid = 75006},
	[95250] = {pos = { x = -62.91354, y = -0.3220101, z = -111.3723 }, mapid = 75006},
	[95251] = {pos = { x = 24.45045, y = 17.54279, z = 128.5948 }, mapid = 75007},
	[95252] = {pos = { x = 63.31155, y = 6.437775, z = 68.73338 }, mapid = 75007},
	[95253] = {pos = { x = 18.68359, y = 6.513145, z = 21.29534 }, mapid = 75007},
	[95254] = {pos = { x = -16.11778, y = 5.136825, z = 9.348601 }, mapid = 75007},
	[95257] = {pos = { x = 24.51685, y = 2.437775, z = -63.57752 }, mapid = 75007},
	[95260] = {pos = { x = 158.6804, y = 9.268195, z = 68.37466 }, mapid = 75007},
	[95261] = {pos = { x = 131.992, y = 9.237778, z = 112.3761 }, mapid = 75007},
	[95262] = {pos = { x = 123.7292, y = 5.437775, z = -8.961662 }, mapid = 75007},
	[95264] = {pos = { x = 36.91079, y = 2.507999, z = -86.18491 }, mapid = 75007},
	[95266] = {pos = { x = 81.28889, y = 2.437775, z = -69.98118 }, mapid = 75007},
	[95270] = {pos = { x = -18.80024, y = 17.43777, z = 129.0807 }, mapid = 75007},
	[95271] = {pos = { x = -27.21642, y = 11.12196, z = 59.43844 }, mapid = 75007},
	[95272] = {pos = { x = 50.45377, y = 6.611368, z = 14.62858 }, mapid = 75007},
	[95273] = {pos = { x = -47.68567, y = 2.528438, z = -50.6581 }, mapid = 75007},
	[95275] = {pos = { x = -62.91354, y = -0.3220101, z = -111.3723 }, mapid = 75007},
	[95276] = {pos = { x = 24.45045, y = 17.54279, z = 128.5948 }, mapid = 75008},
	[95278] = {pos = { x = 18.68359, y = 6.513145, z = 21.29534 }, mapid = 75008},
	[95279] = {pos = { x = -16.11778, y = 5.136825, z = 9.348601 }, mapid = 75008},
	[95280] = {pos = { x = 63.42863, y = 2.55319, z = -53.446 }, mapid = 75008},
	[95281] = {pos = { x = -51.17645, y = 2.608981, z = -4.290406 }, mapid = 75008},
	[95282] = {pos = { x = 24.51685, y = 2.437775, z = -63.57752 }, mapid = 75008},
	[95284] = {pos = { x = -85.97826, y = -0.2267488, z = -100.1897 }, mapid = 75008},
	[95285] = {pos = { x = 158.6804, y = 9.268195, z = 68.37466 }, mapid = 75008},
	[95286] = {pos = { x = 131.992, y = 9.237778, z = 112.3761 }, mapid = 75008},
	[95287] = {pos = { x = 123.7292, y = 5.437775, z = -8.961662 }, mapid = 75008},
	[95288] = {pos = { x = 104.3519, y = 5.576923, z = -8.273216 }, mapid = 75008},
	[95289] = {pos = { x = 36.91079, y = 2.507999, z = -86.18491 }, mapid = 75008},
	[95290] = {pos = { x = 77.92979, y = 2.437775, z = -89.7606 }, mapid = 75008},
	[95291] = {pos = { x = 81.28889, y = 2.437775, z = -69.98118 }, mapid = 75008},
	[95292] = {pos = { x = 134.0891, y = 5.437775, z = -29.33382 }, mapid = 75008},
	[95293] = {pos = { x = 117.1589, y = 5.437775, z = -31.113 }, mapid = 75008},
	[95294] = {pos = { x = -20.77203, y = 2.442804, z = -23.21571 }, mapid = 75008},
	[95295] = {pos = { x = -18.80024, y = 17.43777, z = 129.0807 }, mapid = 75008},
	[95296] = {pos = { x = -27.21642, y = 11.12196, z = 59.43844 }, mapid = 75008},
	[95297] = {pos = { x = 50.45377, y = 6.611368, z = 14.62858 }, mapid = 75008},
	[95298] = {pos = { x = -47.68567, y = 2.528438, z = -50.6581 }, mapid = 75008},
	[95299] = {pos = { x = -83.47554, y = -0.2187813, z = -124.5708 }, mapid = 75008},
	[95300] = {pos = { x = -62.91354, y = -0.3220101, z = -111.3723 }, mapid = 75008},
	[95277] = {pos = { x = 63.31155, y = 6.437775, z = 68.73338 }, mapid = 75008},
	[95283] = {pos = { x = -62.06096, y = -0.2260634, z = -131.1275 }, mapid = 75008},

};
function get_db_table()
	return map;
end
