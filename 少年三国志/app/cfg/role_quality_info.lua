

---@classdef record_role_quality_info
local record_role_quality_info = {}
  
record_role_quality_info.id = 0 --id  
record_role_quality_info.pre_knight_id = "" --原武将ID  
record_role_quality_info.condition_type = "" --条件类型  
record_role_quality_info.condition_value = "" --条件类型值  
record_role_quality_info.result_id = "" --变更后武将ID  
record_role_quality_info.is_up = "" --是否可以继续升品质


role_quality_info = {
   _data = {
    [1] = {1,1,2,10,45,1,},
    [2] = {2,5,2,10,46,1,},
    [3] = {3,6,2,10,47,1,},
    [4] = {4,7,2,10,48,1,},
    [5] = {5,8,2,10,49,1,},
    [6] = {6,9,2,10,50,1,},
    [7] = {7,10,2,10,51,1,},
    [8] = {8,11,2,10,52,1,},
    [9] = {9,12,2,10,53,1,},
    [10] = {10,13,2,10,54,1,},
    [11] = {11,14,2,10,55,1,},
    [12] = {12,2,2,10,56,1,},
    [13] = {13,15,2,10,57,1,},
    [14] = {14,16,2,10,58,1,},
    [15] = {15,17,2,10,59,1,},
    [16] = {16,18,2,10,60,1,},
    [17] = {17,19,2,10,61,1,},
    [18] = {18,20,2,10,62,1,},
    [19] = {19,21,2,10,63,1,},
    [20] = {20,22,2,10,64,1,},
    [21] = {21,23,2,10,65,1,},
    [22] = {22,24,2,10,66,1,},
    [23] = {23,3,2,10,67,1,},
    [24] = {24,25,2,10,68,1,},
    [25] = {25,26,2,10,69,1,},
    [26] = {26,27,2,10,70,1,},
    [27] = {27,28,2,10,71,1,},
    [28] = {28,29,2,10,72,1,},
    [29] = {29,30,2,10,73,1,},
    [30] = {30,31,2,10,74,1,},
    [31] = {31,32,2,10,75,1,},
    [32] = {32,33,2,10,76,1,},
    [33] = {33,34,2,10,77,1,},
    [34] = {34,4,2,10,78,1,},
    [35] = {35,35,2,10,79,1,},
    [36] = {36,36,2,10,80,1,},
    [37] = {37,37,2,10,81,1,},
    [38] = {38,38,2,10,82,1,},
    [39] = {39,39,2,10,83,1,},
    [40] = {40,40,2,10,84,1,},
    [41] = {41,41,2,10,85,1,},
    [42] = {42,42,2,10,86,1,},
    [43] = {43,43,2,10,87,1,},
    [44] = {44,44,2,10,88,1,},
    [45] = {45,45,2,25,89,1,},
    [46] = {46,46,2,25,90,1,},
    [47] = {47,47,2,25,91,1,},
    [48] = {48,48,2,25,92,1,},
    [49] = {49,49,2,25,93,1,},
    [50] = {50,50,2,25,94,1,},
    [51] = {51,51,2,25,95,1,},
    [52] = {52,52,2,25,96,1,},
    [53] = {53,53,2,25,97,1,},
    [54] = {54,54,2,25,98,1,},
    [55] = {55,55,2,25,99,1,},
    [56] = {56,56,2,25,100,1,},
    [57] = {57,57,2,25,101,1,},
    [58] = {58,58,2,25,102,1,},
    [59] = {59,59,2,25,103,1,},
    [60] = {60,60,2,25,104,1,},
    [61] = {61,61,2,25,105,1,},
    [62] = {62,62,2,25,106,1,},
    [63] = {63,63,2,25,107,1,},
    [64] = {64,64,2,25,108,1,},
    [65] = {65,65,2,25,109,1,},
    [66] = {66,66,2,25,110,1,},
    [67] = {67,67,2,25,111,1,},
    [68] = {68,68,2,25,112,1,},
    [69] = {69,69,2,25,113,1,},
    [70] = {70,70,2,25,114,1,},
    [71] = {71,71,2,25,115,1,},
    [72] = {72,72,2,25,116,1,},
    [73] = {73,73,2,25,117,1,},
    [74] = {74,74,2,25,118,1,},
    [75] = {75,75,2,25,119,1,},
    [76] = {76,76,2,25,120,1,},
    [77] = {77,77,2,25,121,1,},
    [78] = {78,78,2,25,122,1,},
    [79] = {79,79,2,25,123,1,},
    [80] = {80,80,2,25,124,1,},
    [81] = {81,81,2,25,125,1,},
    [82] = {82,82,2,25,126,1,},
    [83] = {83,83,2,25,127,1,},
    [84] = {84,84,2,25,128,1,},
    [85] = {85,85,2,25,129,1,},
    [86] = {86,86,2,25,130,1,},
    [87] = {87,87,2,25,131,1,},
    [88] = {88,88,2,25,132,1,},
    [89] = {89,89,2,40,133,1,},
    [90] = {90,90,2,40,134,1,},
    [91] = {91,91,2,40,135,1,},
    [92] = {92,92,2,40,136,1,},
    [93] = {93,93,2,40,137,1,},
    [94] = {94,94,2,40,138,1,},
    [95] = {95,95,2,40,139,1,},
    [96] = {96,96,2,40,140,1,},
    [97] = {97,97,2,40,141,1,},
    [98] = {98,98,2,40,142,1,},
    [99] = {99,99,2,40,143,1,},
    [100] = {100,100,2,40,144,1,},
    [101] = {101,101,2,40,145,1,},
    [102] = {102,102,2,40,146,1,},
    [103] = {103,103,2,40,147,1,},
    [104] = {104,104,2,40,148,1,},
    [105] = {105,105,2,40,149,1,},
    [106] = {106,106,2,40,150,1,},
    [107] = {107,107,2,40,151,1,},
    [108] = {108,108,2,40,152,1,},
    [109] = {109,109,2,40,153,1,},
    [110] = {110,110,2,40,154,1,},
    [111] = {111,111,2,40,155,1,},
    [112] = {112,112,2,40,156,1,},
    [113] = {113,113,2,40,157,1,},
    [114] = {114,114,2,40,158,1,},
    [115] = {115,115,2,40,159,1,},
    [116] = {116,116,2,40,160,1,},
    [117] = {117,117,2,40,161,1,},
    [118] = {118,118,2,40,162,1,},
    [119] = {119,119,2,40,163,1,},
    [120] = {120,120,2,40,164,1,},
    [121] = {121,121,2,40,165,1,},
    [122] = {122,122,2,40,166,1,},
    [123] = {123,123,2,40,167,1,},
    [124] = {124,124,2,40,168,1,},
    [125] = {125,125,2,40,169,1,},
    [126] = {126,126,2,40,170,1,},
    [127] = {127,127,2,40,171,1,},
    [128] = {128,128,2,40,172,1,},
    [129] = {129,129,2,40,173,1,},
    [130] = {130,130,2,40,174,1,},
    [131] = {131,131,2,40,175,1,},
    [132] = {132,132,2,40,176,1,},
    [133] = {133,133,2,60,177,1,},
    [134] = {134,134,2,60,178,1,},
    [135] = {135,135,2,60,179,1,},
    [136] = {136,136,2,60,180,1,},
    [137] = {137,137,2,60,181,1,},
    [138] = {138,138,2,60,182,1,},
    [139] = {139,139,2,60,183,1,},
    [140] = {140,140,2,60,184,1,},
    [141] = {141,141,2,60,185,1,},
    [142] = {142,142,2,60,186,1,},
    [143] = {143,143,2,60,187,1,},
    [144] = {144,144,2,60,188,1,},
    [145] = {145,145,2,60,189,1,},
    [146] = {146,146,2,60,190,1,},
    [147] = {147,147,2,60,191,1,},
    [148] = {148,148,2,60,192,1,},
    [149] = {149,149,2,60,193,1,},
    [150] = {150,150,2,60,194,1,},
    [151] = {151,151,2,60,195,1,},
    [152] = {152,152,2,60,196,1,},
    [153] = {153,153,2,60,197,1,},
    [154] = {154,154,2,60,198,1,},
    [155] = {155,155,2,60,199,1,},
    [156] = {156,156,2,60,200,1,},
    [157] = {157,157,2,60,201,1,},
    [158] = {158,158,2,60,202,1,},
    [159] = {159,159,2,60,203,1,},
    [160] = {160,160,2,60,204,1,},
    [161] = {161,161,2,60,205,1,},
    [162] = {162,162,2,60,206,1,},
    [163] = {163,163,2,60,207,1,},
    [164] = {164,164,2,60,208,1,},
    [165] = {165,165,2,60,209,1,},
    [166] = {166,166,2,60,210,1,},
    [167] = {167,167,2,60,211,1,},
    [168] = {168,168,2,60,212,1,},
    [169] = {169,169,2,60,213,1,},
    [170] = {170,170,2,60,214,1,},
    [171] = {171,171,2,60,215,1,},
    [172] = {172,172,2,60,216,1,},
    [173] = {173,173,2,60,217,1,},
    [174] = {174,174,2,60,218,1,},
    [175] = {175,175,2,60,219,1,},
    [176] = {176,176,2,60,220,1,},
    [177] = {177,177,0,0,0,0,},
    [178] = {178,178,0,0,0,0,},
    [179] = {179,179,0,0,0,0,},
    [180] = {180,180,0,0,0,0,},
    [181] = {181,181,0,0,0,0,},
    [182] = {182,182,0,0,0,0,},
    [183] = {183,183,0,0,0,0,},
    [184] = {184,184,0,0,0,0,},
    [185] = {185,185,0,0,0,0,},
    [186] = {186,186,0,0,0,0,},
    [187] = {187,187,0,0,0,0,},
    [188] = {188,188,0,0,0,0,},
    [189] = {189,189,0,0,0,0,},
    [190] = {190,190,0,0,0,0,},
    [191] = {191,191,0,0,0,0,},
    [192] = {192,192,0,0,0,0,},
    [193] = {193,193,0,0,0,0,},
    [194] = {194,194,0,0,0,0,},
    [195] = {195,195,0,0,0,0,},
    [196] = {196,196,0,0,0,0,},
    [197] = {197,197,0,0,0,0,},
    [198] = {198,198,0,0,0,0,},
    [199] = {199,199,0,0,0,0,},
    [200] = {200,200,0,0,0,0,},
    [201] = {201,201,0,0,0,0,},
    [202] = {202,202,0,0,0,0,},
    [203] = {203,203,0,0,0,0,},
    [204] = {204,204,0,0,0,0,},
    [205] = {205,205,0,0,0,0,},
    [206] = {206,206,0,0,0,0,},
    [207] = {207,207,0,0,0,0,},
    [208] = {208,208,0,0,0,0,},
    [209] = {209,209,0,0,0,0,},
    [210] = {210,210,0,0,0,0,},
    [211] = {211,211,0,0,0,0,},
    [212] = {212,212,0,0,0,0,},
    [213] = {213,213,0,0,0,0,},
    [214] = {214,214,0,0,0,0,},
    [215] = {215,215,0,0,0,0,},
    [216] = {216,216,0,0,0,0,},
    [217] = {217,217,0,0,0,0,},
    [218] = {218,218,0,0,0,0,},
    [219] = {219,219,0,0,0,0,},
    [220] = {220,220,0,0,0,0,},
    [221] = {221,251,2,10,259,1,},
    [222] = {222,259,2,25,267,1,},
    [223] = {223,267,2,40,275,1,},
    [224] = {224,275,2,60,283,1,},
    [225] = {225,257,2,10,265,1,},
    [226] = {226,265,2,25,273,1,},
    [227] = {227,273,2,40,281,1,},
    [228] = {228,281,2,60,289,1,},
    [229] = {229,252,2,10,260,1,},
    [230] = {230,260,2,25,268,1,},
    [231] = {231,268,2,40,276,1,},
    [232] = {232,276,2,60,284,1,},
    [233] = {233,258,2,10,266,1,},
    [234] = {234,266,2,25,274,1,},
    [235] = {235,274,2,40,282,1,},
    [236] = {236,282,2,60,290,1,},
    [237] = {237,283,0,0,0,0,},
    [238] = {238,284,0,0,0,0,},
    [239] = {239,289,0,0,0,0,},
    [240] = {240,290,0,0,0,0,},
    [241] = {241,291,2,10,295,1,},
    [242] = {242,295,2,25,299,1,},
    [243] = {243,299,2,40,303,1,},
    [244] = {244,303,2,60,307,1,},
    [245] = {245,294,2,10,298,1,},
    [246] = {246,298,2,25,302,1,},
    [247] = {247,302,2,40,306,1,},
    [248] = {248,306,2,60,310,1,},
    [249] = {249,311,2,10,315,1,},
    [250] = {250,315,2,25,319,1,},
    [251] = {251,319,2,40,323,1,},
    [252] = {252,323,2,60,327,1,},
    [253] = {253,314,2,10,318,1,},
    [254] = {254,318,2,25,322,1,},
    [255] = {255,322,2,40,326,1,},
    [256] = {256,326,2,60,330,1,},
    [257] = {257,331,2,10,335,1,},
    [258] = {258,335,2,25,339,1,},
    [259] = {259,339,2,40,343,1,},
    [260] = {260,343,2,60,347,1,},
    [261] = {261,334,2,10,338,1,},
    [262] = {262,338,2,25,342,1,},
    [263] = {263,342,2,40,346,1,},
    [264] = {264,346,2,60,350,1,},
    [265] = {265,307,0,0,0,0,},
    [266] = {266,327,0,0,0,0,},
    [267] = {267,347,0,0,0,0,},
    [268] = {268,310,0,0,0,0,},
    [269] = {269,330,0,0,0,0,},
    [270] = {270,350,0,0,0,0,},
    }
}



local __index_id = {
    [1] = 1,
    [10] = 10,
    [100] = 100,
    [101] = 101,
    [102] = 102,
    [103] = 103,
    [104] = 104,
    [105] = 105,
    [106] = 106,
    [107] = 107,
    [108] = 108,
    [109] = 109,
    [11] = 11,
    [110] = 110,
    [111] = 111,
    [112] = 112,
    [113] = 113,
    [114] = 114,
    [115] = 115,
    [116] = 116,
    [117] = 117,
    [118] = 118,
    [119] = 119,
    [12] = 12,
    [120] = 120,
    [121] = 121,
    [122] = 122,
    [123] = 123,
    [124] = 124,
    [125] = 125,
    [126] = 126,
    [127] = 127,
    [128] = 128,
    [129] = 129,
    [13] = 13,
    [130] = 130,
    [131] = 131,
    [132] = 132,
    [133] = 133,
    [134] = 134,
    [135] = 135,
    [136] = 136,
    [137] = 137,
    [138] = 138,
    [139] = 139,
    [14] = 14,
    [140] = 140,
    [141] = 141,
    [142] = 142,
    [143] = 143,
    [144] = 144,
    [145] = 145,
    [146] = 146,
    [147] = 147,
    [148] = 148,
    [149] = 149,
    [15] = 15,
    [150] = 150,
    [151] = 151,
    [152] = 152,
    [153] = 153,
    [154] = 154,
    [155] = 155,
    [156] = 156,
    [157] = 157,
    [158] = 158,
    [159] = 159,
    [16] = 16,
    [160] = 160,
    [161] = 161,
    [162] = 162,
    [163] = 163,
    [164] = 164,
    [165] = 165,
    [166] = 166,
    [167] = 167,
    [168] = 168,
    [169] = 169,
    [17] = 17,
    [170] = 170,
    [171] = 171,
    [172] = 172,
    [173] = 173,
    [174] = 174,
    [175] = 175,
    [176] = 176,
    [177] = 177,
    [178] = 178,
    [179] = 179,
    [18] = 18,
    [180] = 180,
    [181] = 181,
    [182] = 182,
    [183] = 183,
    [184] = 184,
    [185] = 185,
    [186] = 186,
    [187] = 187,
    [188] = 188,
    [189] = 189,
    [19] = 19,
    [190] = 190,
    [191] = 191,
    [192] = 192,
    [193] = 193,
    [194] = 194,
    [195] = 195,
    [196] = 196,
    [197] = 197,
    [198] = 198,
    [199] = 199,
    [2] = 2,
    [20] = 20,
    [200] = 200,
    [201] = 201,
    [202] = 202,
    [203] = 203,
    [204] = 204,
    [205] = 205,
    [206] = 206,
    [207] = 207,
    [208] = 208,
    [209] = 209,
    [21] = 21,
    [210] = 210,
    [211] = 211,
    [212] = 212,
    [213] = 213,
    [214] = 214,
    [215] = 215,
    [216] = 216,
    [217] = 217,
    [218] = 218,
    [219] = 219,
    [22] = 22,
    [220] = 220,
    [221] = 221,
    [222] = 222,
    [223] = 223,
    [224] = 224,
    [225] = 225,
    [226] = 226,
    [227] = 227,
    [228] = 228,
    [229] = 229,
    [23] = 23,
    [230] = 230,
    [231] = 231,
    [232] = 232,
    [233] = 233,
    [234] = 234,
    [235] = 235,
    [236] = 236,
    [237] = 237,
    [238] = 238,
    [239] = 239,
    [24] = 24,
    [240] = 240,
    [241] = 241,
    [242] = 242,
    [243] = 243,
    [244] = 244,
    [245] = 245,
    [246] = 246,
    [247] = 247,
    [248] = 248,
    [249] = 249,
    [25] = 25,
    [250] = 250,
    [251] = 251,
    [252] = 252,
    [253] = 253,
    [254] = 254,
    [255] = 255,
    [256] = 256,
    [257] = 257,
    [258] = 258,
    [259] = 259,
    [26] = 26,
    [260] = 260,
    [261] = 261,
    [262] = 262,
    [263] = 263,
    [264] = 264,
    [265] = 265,
    [266] = 266,
    [267] = 267,
    [268] = 268,
    [269] = 269,
    [27] = 27,
    [270] = 270,
    [28] = 28,
    [29] = 29,
    [3] = 3,
    [30] = 30,
    [31] = 31,
    [32] = 32,
    [33] = 33,
    [34] = 34,
    [35] = 35,
    [36] = 36,
    [37] = 37,
    [38] = 38,
    [39] = 39,
    [4] = 4,
    [40] = 40,
    [41] = 41,
    [42] = 42,
    [43] = 43,
    [44] = 44,
    [45] = 45,
    [46] = 46,
    [47] = 47,
    [48] = 48,
    [49] = 49,
    [5] = 5,
    [50] = 50,
    [51] = 51,
    [52] = 52,
    [53] = 53,
    [54] = 54,
    [55] = 55,
    [56] = 56,
    [57] = 57,
    [58] = 58,
    [59] = 59,
    [6] = 6,
    [60] = 60,
    [61] = 61,
    [62] = 62,
    [63] = 63,
    [64] = 64,
    [65] = 65,
    [66] = 66,
    [67] = 67,
    [68] = 68,
    [69] = 69,
    [7] = 7,
    [70] = 70,
    [71] = 71,
    [72] = 72,
    [73] = 73,
    [74] = 74,
    [75] = 75,
    [76] = 76,
    [77] = 77,
    [78] = 78,
    [79] = 79,
    [8] = 8,
    [80] = 80,
    [81] = 81,
    [82] = 82,
    [83] = 83,
    [84] = 84,
    [85] = 85,
    [86] = 86,
    [87] = 87,
    [88] = 88,
    [89] = 89,
    [9] = 9,
    [90] = 90,
    [91] = 91,
    [92] = 92,
    [93] = 93,
    [94] = 94,
    [95] = 95,
    [96] = 96,
    [97] = 97,
    [98] = 98,
    [99] = 99,

}

local __key_map = {
  id = 1,
  pre_knight_id = 2,
  condition_type = 3,
  condition_value = 4,
  result_id = 5,
  is_up = 6,

}



local m = { 
    __index = function(t, k) 
        if k == "toObject" then
            return function()  
                local o = {}
                for key, v in pairs (__key_map) do 
                    o[key] = t._raw[v]
                end
                return o
            end 
        end
        
        assert(__key_map[k], "cannot find " .. k .. " in record_role_quality_info")
        
        
        return t._raw[__key_map[k]]
    end
}


function role_quality_info.getLength()
    return #role_quality_info._data
end



function role_quality_info.hasKey(k)
  if __key_map[k] == nil then
    return false
  else
    return true
  end
end


---
--@return @class record_role_quality_info
function role_quality_info.indexOf(index)
    if index == nil then
        return nil
    end
    
    return setmetatable({_raw = role_quality_info._data[index]}, m)
    
end

---
--@return @class record_role_quality_info
function role_quality_info.get(id)
    
    return role_quality_info.indexOf(__index_id[id])
        
end



function role_quality_info.set(id, key, value)
    local record = role_quality_info.get(id)
    if record then
        local keyIndex = __key_map[key]
        if keyIndex then
            record._raw[keyIndex] = value
        end
    end
end




function role_quality_info.get_index_data()
    return __index_id
end