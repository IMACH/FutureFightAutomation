

-- -- daily entry counter check 
dailyChecker = function () 
local test1x = 19; 
local test1y = 85; 
local test2x = 17; 
local test2y = 88; 
local rgb1 = 0; 
local rgb2 = 0; 


-- gets the pixel color and sets it to a variable 
rgb1 = getColor(test1x,test1y);
log("rgb1" .. rgb1); 
rgb2 = getColor(test2x,test2y); 
log("rgb2" .. rgb2); 

-- sets the loop time based off daily counter 
	if (rgb1 ==4335649  and rgb2 == 15688993  ) then
		loopTime = 3; 
		log("Loop Time:_" .. loopTime);
	elseif (rgb1 == 10241313 and rgb2 == 15687969 ) then
		loopTime = 2; 
		log("Loop Time:_" .. loopTime);
	elseif (rgb1 == 1053729 and rgb2 == 8075297) then
		loopTime = 1; 
		log("Loop Time:_" .. loopTime);
	elseif(rgb1 == 16213281 and rgb2 == 15688993) then 
		loopTime = 0; 
		log("Loop Time:_" .. loopTime);
	end 
end 


dailyChecker();




























