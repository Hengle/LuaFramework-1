local formula={
[1]={1,1,354051,'354050_2','1_5000'},
[2]={2,1,354052,'354051_2','1_10000'},
[3]={3,1,354053,'354052_2','1_15000'},
[4]={4,1,354054,'354053_2','1_20000'},
[5]={5,1,354055,'354054_2','1_30000'},
[6]={6,1,354056,'354055_2','1_40000'},
[7]={7,1,354057,'354056_2','1_50000'},
[8]={8,1,354058,'354057_2','1_60000'},
[9]={9,4,352009,'352008_3','1_50000'},
[10]={10,4,352010,'352009_3','1_100000'},
[11]={11,4,352011,'352010_3','1_150000'},
[12]={12,4,352012,'352011_3','1_200000'},
[13]={13,4,352013,'352012_3','1_250000'},
[14]={14,4,352014,'352013_3','1_300000'},
[15]={15,4,352015,'352014_3','1_400000'}
}
local ks={id=1,type=2,target=3,demand_item=4,demand_cost=5}
local base={__index=function(t,k)if k=='cks' then return ks end local ind=ks[k] return ind and t[ind] or nil end}for k,v in pairs(formula)do setmetatable(v,base)end base.__metatable=false
return formula
