----------------- auto generate db file ------------------------
module(..., package.seeall)

local require = require

local level = 
{
	[94045] = {
		[1] = {cool = 15000, events = {{triTime = 625, status = {{odds = 10000, buffID = 1508, }, }, }, },},
	},

};
function get_db_table()
	return level;
end
