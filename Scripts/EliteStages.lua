-- make sure in elites window on chapter 1 screen 

-- global variables 
loopTime = 0; 
isStageRunning = true; -- checks to see if the level is still being played 

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

-- starts and sets loop time of stage 
startElite = function ()

end 


-- elite play 
-- first start the stage 
-- then check to see if finished 
elitePlay = function() 
-- define xy coordinate values, can be easily changed 
local replayTest1x = 54;
local replayTest1y = 770; 
local replayTest2x = 44; 
local replayTest2y = 763; 

local nextTest1x = 56; 
local nextTest1y = 930;
local nextTest2x = 56; 
local nextTest2y = 899;  


-- get color for two replay button points 
local replayButtonRgb1 = getColor(replayTest1x,replayTest1y); 
local replayButtonRgb2 = getColor(replayTest2x,replayTest2y); 

-- get color for two next button points 
local nextButtonRgb1 = getColor(nextTest1x,nextTest1y); 
local nextButtonRgb2 = getColor(nextTest2x,nextTest2y); 


-- test to see if gameplay is done. by checking all colors 





usleep(1000000);
tap(114.5,949.5); -- tap start button 

-- finished check 

	
end 
-- stage 1 
-- wait 1 second after pressing start, incase delay from device 
usleep(1000000); 
dailyChecker(); 