-- iPhone5/5s Resolution
SCREEN_RESOLUTION="640x1136"; 
-- global variables 
loopTime = 0; 
replayX = 29; 
replayY = 429; 
nextX = 28; 
nextY = 0508;
startX = 22; 
startY = 506; 
stageNextX = 266; -- next stage on stage menu screen 
stageNexyY = 240; -- next stage on stage menu screen 
isStageRunning = true; -- checks to see if the level is still being played 

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


-- Stage Clear Checker, returns true or false on isStageRunning variable 
-- first start the stage 
-- then check to see if finished by using 4 pixel coordinates found on the replay 
-- button and next button on the finish stage screen 
stageClearChecker = function() 

-- define xy coordinate values, can be easily changed 
local replayTest1x = 29;
local replayTest1y = 424; 
local replayTest2x = 29; 
local replayTest2y = 436; 

local nextTest1x = 29; 
local nextTest1y = 503;
local nextTest2x = 29; 
local nextTest2y = 517;  


-- get color for two replay button points 
local replayButtonRgb1 = getColor(replayTest1x,replayTest1y); 
local replayButtonRgb2 = getColor(replayTest2x,replayTest2y); 

-- get color for two next button points 
local nextButtonRgb1 = getColor(nextTest1x,nextTest1y); 
local nextButtonRgb2 = getColor(nextTest2x,nextTest2y); 


-- test to see if gameplay is done. by checking all colors 

	if (replayButtonRgb1 == 4369127 and replayButtonRgb2 == 9754607 and nextButtonRgb1 == 4366038 and nextButtonRgb2 == 10279919) then 
		isStageRunning = false; 
		log("Stage Finished");
	end 
	
end 


-- starts and sets loop time of stage 
-- main function run this 



--working as of 9/2/2015
startElitev2 = function ()
-- once stage is selected click start 
usleep(1000000); 
tap(startX, startY);

-- delay for stage load time 
usleep(10000000); 

-- check if stage is finished 
	while isStageRunning == true do 
		stageClearChecker(); 
	end 

-- delay for stage finish animation 2-3 seconds 
usleep(2000000); 
-- click replay 
tap(replayX,replayY);

-- delay for loading screen 
usleep(10000000); 

-- run dailyChecker, if 0 then move on to next stage if not press start 
dailyChecker(); 

	if (loopTime == 0) then 
		usleep(1000000); 
		tap(stageNextX,stageNexyY);
	else 
		tap(startX,startY); 
	end 
end 

startElitev2();






























