battleDistance = {};

battleDistance.MAP_WIDTH = 7;
battleDistance.MAP_HEIGHT = 3;
battleDistance.MAP_SIZE = battleDistance.MAP_WIDTH * battleDistance.MAP_HEIGHT;

battleDistance.distanceMatrix = {
0, 1, 2, 3, 4, 5, 6, 1, 1, 2, 3, 4, 5, 6, 2, 2, 3, 4, 5, 6, 7, 
1, 0, 1, 2, 3, 4, 5, 2, 1, 1, 2, 3, 4, 5, 2, 2, 2, 3, 4, 5, 6, 
2, 1, 0, 1, 2, 3, 4, 3, 2, 1, 1, 2, 3, 4, 3, 2, 2, 2, 3, 4, 5, 
3, 2, 1, 0, 1, 2, 3, 4, 3, 2, 1, 1, 2, 3, 4, 3, 2, 2, 2, 3, 4, 
4, 3, 2, 1, 0, 1, 2, 5, 4, 3, 2, 1, 1, 2, 5, 4, 3, 2, 2, 2, 3, 
5, 4, 3, 2, 1, 0, 1, 6, 5, 4, 3, 2, 1, 1, 6, 5, 4, 3, 2, 2, 2, 
6, 5, 4, 3, 2, 1, 0, 7, 6, 5, 4, 3, 2, 1, 7, 6, 5, 4, 3, 2, 2, 
1, 2, 3, 4, 5, 6, 7, 0, 1, 2, 3, 4, 5, 6, 1, 2, 3, 4, 5, 6, 7, 
1, 1, 2, 3, 4, 5, 6, 1, 0, 1, 2, 3, 4, 5, 1, 1, 2, 3, 4, 5, 6, 
2, 1, 1, 2, 3, 4, 5, 2, 1, 0, 1, 2, 3, 4, 2, 1, 1, 2, 3, 4, 5, 
3, 2, 1, 1, 2, 3, 4, 3, 2, 1, 0, 1, 2, 3, 3, 2, 1, 1, 2, 3, 4, 
4, 3, 2, 1, 1, 2, 3, 4, 3, 2, 1, 0, 1, 2, 4, 3, 2, 1, 1, 2, 3, 
5, 4, 3, 2, 1, 1, 2, 5, 4, 3, 2, 1, 0, 1, 5, 4, 3, 2, 1, 1, 2, 
6, 5, 4, 3, 2, 1, 1, 6, 5, 4, 3, 2, 1, 0, 6, 5, 4, 3, 2, 1, 1, 
2, 2, 3, 4, 5, 6, 7, 1, 1, 2, 3, 4, 5, 6, 0, 1, 2, 3, 4, 5, 6, 
2, 2, 2, 3, 4, 5, 6, 2, 1, 1, 2, 3, 4, 5, 1, 0, 1, 2, 3, 4, 5, 
3, 2, 2, 2, 3, 4, 5, 3, 2, 1, 1, 2, 3, 4, 2, 1, 0, 1, 2, 3, 4, 
4, 3, 2, 2, 2, 3, 4, 4, 3, 2, 1, 1, 2, 3, 3, 2, 1, 0, 1, 2, 3, 
5, 4, 3, 2, 2, 2, 3, 5, 4, 3, 2, 1, 1, 2, 4, 3, 2, 1, 0, 1, 2, 
6, 5, 4, 3, 2, 2, 2, 6, 5, 4, 3, 2, 1, 1, 5, 4, 3, 2, 1, 0, 1, 
7, 6, 5, 4, 3, 2, 2, 7, 6, 5, 4, 3, 2, 1, 6, 5, 4, 3, 2, 1, 0, 
};

function battleDistance.distance(x1, y1, x2, y2)
	local i1 = y1 * battleDistance.MAP_WIDTH + x1;
	local i2 = y2 * battleDistance.MAP_WIDTH + x2;
	local im = i1 * battleDistance.MAP_SIZE + i2 + 1;
	if (im <= battleDistance.MAP_SIZE * battleDistance.MAP_SIZE) then
		return battleDistance.distanceMatrix[im];
	else
		return nil;
	end
end


