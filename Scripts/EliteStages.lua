-- make sure in elites window on chapter 1 screen 

-- global variables 
loopTime = 0; 

-- -- daily entry counter check 
dailyChecker = function () 
local test1x = 121; 
local test1y = 171; 
local test2x = 108; 
local test2y = 163; 
local rgb1 = 0; 
local rgb2 = 0; 


-- gets the pixel color and sets it to a variable 
rgb1 = getColor(test1x,test1y);
log("rgb1" .. rgb1); 
rgb2 = getColor(test2x,test2y); 
log("rgb2" .. rgb2); 

-- sets the loop time based off daily counter 
	if (rgb1 == 1053729 and rgb2 == 15688993) then
		loopTime = 3; 
		log(loopTime);
	elseif (rgb1 == 3219489 and rgb2 == 15164705) then
		loopTime = 2; 
		log(loopTime);
	elseif(rgb1 == 1053729 and rgb2 == 529441) then
		loopTime = 1; 
		log(loopTime);
	elseif(rgb1 == 2694177 and rgb2 == 15164705) then 
		loopTime = 0; 
		log(loopTime);
	end 
end 

startElite = function ()

end 
-- stage 1 
-- wait 1 second after pressing start, incase delay from device 
usleep(1000000); 
dailyChecker(); 