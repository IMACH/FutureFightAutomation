-- iPad Mini 1 Resoltion 
SCREEN_RESOLUTION="768x1027"; 
-- global variables 
loopTime = 0; 
replayX = 56; 
replayY = 770; 
nextX = 56; 
nextY = 909;
startX = 114; 
startY = 949; 
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
		log("Loop Time:_" .. loopTime);
	elseif (rgb1 == 3219489 and rgb2 == 15164705) then
		loopTime = 2; 
		log("Loop Time:_" .. loopTime);
	elseif(rgb1 == 1053729 and rgb2 == 529441) then
		loopTime = 1; 
		log("Loop Time:_" .. loopTime);
	elseif(rgb1 == 2694177 and rgb2 == 15164705) then 
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

	if (replayButtonRgb1 == 8701935 and replayButtonRgb2 == 2727646 and nextButtonRgb1 == 4883117 and nextButtonRgb2 == 4366038) then 
		isStageRunning = false; 
		log("Stage Finished");
	end 
	
end 


-- starts and sets loop time of stage 
-- main function run this 
startElite = function ()
	-- run dailyChecker to get loop count 
	dailyChecker(); 
	log("Daily Checker"); 
	
	--gameplay loop 
	for i=1,loopTime,1 do 
		
		--log loop Number 
		log("Loop Number:_" .. i); 
		-- tap start 
		tap(startX,startY); 
		log("Tap Pressed"); 
		
		--delay time for loading stage 10 sec 
		usleep(10000000); 
		log("Loading: 10 seconds"); 
		
		-- check if stage is finished 
		while isStageRunning == true do 
			stageClearChecker(); 
		end 
		
		-- when finished click replay button 
		usleep(3000000); 
		tap(replayX,replayY);
		log("Tapped Replay");	
		
		--delay for replay to start screen 
		usleep(10000000);
		
		
		if (i == loopTime) then 
			break; 
		end 
	end 
	
	-- tap stage clear next button 
	tap(nextX,nextY); 
	log("Tapped next stage");
	
end 

startElite(); 