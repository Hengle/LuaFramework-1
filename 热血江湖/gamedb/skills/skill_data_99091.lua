----------------- auto generate db file ------------------------
module(..., package.seeall)

local require = require

local level = 
{
	[99091] = {
		[1] = {events = {},},
	},

};
function get_db_table()
	return level;
end
