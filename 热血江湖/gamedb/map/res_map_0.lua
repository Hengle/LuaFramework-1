----------------- auto generate db file ------------------------
module(..., package.seeall)

local require = require

local map = 
{
	[207] = {resPosId = 2071, pos = { x = -96.97684, y = 0.2000002, z = -92.25456 }, mapid = 2},
	[207] = {resPosId = 2072, pos = { x = -96.76985, y = 0.2000002, z = -87.98041 }, mapid = 2},
	[105] = {resPosId = 108, pos = { x = 8.186661, y = 3.53669, z = 20.1756 }, mapid = 1},
	[106] = {resPosId = 111, pos = { x = 7.809984, y = 3.567216, z = -2.872729 }, mapid = 1},
	[107] = {resPosId = 114, pos = { x = -97.13176, y = 3.386841, z = -13.71169 }, mapid = 1},
	[108] = {resPosId = 116, pos = { x = -42.30682, y = 7.386841, z = 93.16768 }, mapid = 1},
	[109] = {resPosId = 117, pos = { x = 27.323, y = 5.186829, z = 57.13277 }, mapid = 1},
	[110] = {resPosId = 118, pos = { x = -1.665871, y = 0.9517429, z = 33.45314 }, mapid = 1},
	[111] = {resPosId = 119, pos = { x = -44.85781, y = 7.445802, z = 82.36517 }, mapid = 1},
	[112] = {resPosId = 120, pos = { x = -21.13709, y = 3.54301, z = -31.22193 }, mapid = 1},
	[113] = {resPosId = 121, pos = { x = -14.47672, y = 3.48468, z = -35.25272 }, mapid = 1},
	[114] = {resPosId = 122, pos = { x = -38.16864, y = 3.48468, z = -24.6984 }, mapid = 1},
	[115] = {resPosId = 123, pos = { x = -37.86855, y = 3.558446, z = -44.85327 }, mapid = 1},
	[116] = {resPosId = 124, pos = { x = -44.31248, y = 3.48468, z = -34.4032 }, mapid = 1},
	[117] = {resPosId = 125, pos = { x = 3.452412, y = 3.48468, z = 8.896323 }, mapid = 1},
	[118] = {resPosId = 126, pos = { x = 10.50982, y = 3.48468, z = 3.981678 }, mapid = 1},
	[119] = {resPosId = 127, pos = { x = 10.56353, y = 3.529303, z = 22.29186 }, mapid = 1},
	[120] = {resPosId = 128, pos = { x = 9.624285, y = 2.732172, z = 42.74356 }, mapid = 1},
	[121] = {resPosId = 129, pos = { x = 8.185556, y = 1.953328, z = 34.97203 }, mapid = 1},
	[705] = {resPosId = 705, pos = { x = 57.77118, y = 20.85855, z = 58.21172 }, mapid = 7},
	[201] = {resPosId = 201, pos = { x = -76.05261, y = 0.2000002, z = -115.7544 }, mapid = 2},
	[202] = {resPosId = 202, pos = { x = 40.26838, y = 0.2000002, z = -96.60931 }, mapid = 2},
	[203] = {resPosId = 203, pos = { x = -63.08935, y = 7.103966, z = -11.02868 }, mapid = 2},
	[204] = {resPosId = 204, pos = { x = -28.40083, y = 7.0, z = 23.71535 }, mapid = 2},
	[205] = {resPosId = 205, pos = { x = 14.78546, y = 13.22242, z = 47.8282 }, mapid = 2},
	[206] = {resPosId = 206, pos = { x = -23.01962, y = 0.2000002, z = -114.01 }, mapid = 2},
	[301] = {resPosId = 301, pos = { x = 10.80356, y = 3.120884, z = -66.98363 }, mapid = 3},
	[302] = {resPosId = 304, pos = { x = 94.09351, y = 3.127414, z = -51.72931 }, mapid = 3},
	[303] = {resPosId = 307, pos = { x = -9.65646, y = 13.87585, z = 40.07717 }, mapid = 3},
	[304] = {resPosId = 310, pos = { x = 10.34408, y = 3.075851, z = -40.64251 }, mapid = 3},
	[312] = {resPosId = 312, pos = { x = 26.13729, y = 9.236191, z = 70.87608 }, mapid = 3},
	[401] = {resPosId = 401, pos = { x = 9.093983, y = 11.17469, z = -72.57309 }, mapid = 4},
	[402] = {resPosId = 402, pos = { x = 52.96485, y = 16.69722, z = -37.87872 }, mapid = 4},
	[403] = {resPosId = 403, pos = { x = -62.41803, y = 8.128604, z = 71.65457 }, mapid = 19},
	[507] = {resPosId = 507, pos = { x = -145.6103, y = -6.556763, z = -15.29611 }, mapid = 5},
	[508] = {resPosId = 508, pos = { x = -50.16539, y = 5.443237, z = 1.831955 }, mapid = 5},
	[510] = {resPosId = 510, pos = { x = 45.59256, y = 12.64325, z = 53.27709 }, mapid = 5},
	[603] = {resPosId = 603, pos = { x = 88.30327, y = 0.1638422, z = -25.25 }, mapid = 6},
	[604] = {resPosId = 604, pos = { x = -146.0301, y = 4.163841, z = -127.0792 }, mapid = 6},
	[703] = {resPosId = 703, pos = { x = 73.3101, y = 12.35855, z = 14.74084 }, mapid = 7},
	[704] = {resPosId = 704, pos = { x = 19.06412, y = 11.35855, z = -78.60751 }, mapid = 7},
	[503] = {resPosId = 503, pos = { x = 10.88989, y = 7.880358, z = -36.75221 }, mapid = 5},
	[801] = {resPosId = 801, pos = { x = 97.90649, y = 17.43447, z = -9.299672 }, mapid = 8},
	[802] = {resPosId = 804, pos = { x = -1.787171, y = 7.490889, z = 106.7315 }, mapid = 8},
	[803] = {resPosId = 805, pos = { x = 94.36143, y = 17.47952, z = -2.28236 }, mapid = 8},
	[804] = {resPosId = 807, pos = { x = 136.5675, y = 7.533151, z = 19.07337 }, mapid = 8},
	[805] = {resPosId = 808, pos = { x = 53.3074, y = 7.434466, z = 145.1432 }, mapid = 8},
	[806] = {resPosId = 809, pos = { x = 82.09126, y = 17.33463, z = 29.01764 }, mapid = 8},
	[807] = {resPosId = 810, pos = { x = 136.5675, y = 7.533151, z = 19.07337 }, mapid = 8},
	[808] = {resPosId = 811, pos = { x = 136.5675, y = 7.533151, z = 19.07337 }, mapid = 8},
	[809] = {resPosId = 812, pos = { x = -5.9127, y = 16.63, z = -99.43 }, mapid = 8},
	[701] = {resPosId = 701, pos = { x = 12.2542, y = 13.35855, z = -52.29273 }, mapid = 7},
	[506] = {resPosId = 506, pos = { x = 13.61719, y = 7.64325, z = 40.21219 }, mapid = 5},
	[901] = {resPosId = 901, pos = { x = 89.84551, y = 11.57796, z = 35.21975 }, mapid = 9},
	[902] = {resPosId = 902, pos = { x = -103.3583, y = 7.52653, z = -70.00331 }, mapid = 9},
	[903] = {resPosId = 903, pos = { x = -112.3181, y = 7.52653, z = -82.80508 }, mapid = 9},
	[501] = {resPosId = 501, pos = { x = -6.711247, y = 8.511273, z = 76.17466 }, mapid = 5},
	[502] = {resPosId = 502, pos = { x = 75.40741, y = 13.05272, z = 81.74235 }, mapid = 5},
	[509] = {resPosId = 509, pos = { x = -80.98092, y = 8.043243, z = 130.3942 }, mapid = 5},
	[601] = {resPosId = 601, pos = { x = 134.1603, y = 3.025645, z = -72.7633 }, mapid = 6},
	[602] = {resPosId = 602, pos = { x = -94.15569, y = 4.205931, z = -66.78179 }, mapid = 6},
	[605] = {resPosId = 605, pos = { x = 4.476179, y = 0.1638422, z = -86.51608 }, mapid = 6},
	[405] = {resPosId = 405, pos = { x = 7.192923, y = 11.16542, z = -100.0969 }, mapid = 4},
	[406] = {resPosId = 406, pos = { x = 9.393322, y = 11.16542, z = -67.30891 }, mapid = 4},
	[504] = {resPosId = 504, pos = { x = 14.5895, y = 7.833646, z = 27.962 }, mapid = 5},
	[407] = {resPosId = 407, pos = { x = 126.3076, y = 22.39366, z = -20.11514 }, mapid = 4},
	[408] = {resPosId = 408, pos = { x = 127.5667, y = 22.22243, z = -12.69834 }, mapid = 4},

};
function get_db_table()
	return map;
end
