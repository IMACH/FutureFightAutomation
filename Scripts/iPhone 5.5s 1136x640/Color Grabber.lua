-- Test Script 
-- used to get colors at coordinates 

dailyColor =function()
--Daily Counter 3/3 
local rgb1 = getColor(19,85); 
log("daily" .. "rgb1_" .. rgb1); 

local rgb2 = getColor(17,88); 
log("daily" .. "rgb2_" .. rgb2);
end 

stageFinishColor = function()
--Stage Finish 
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
log("ReplayButtonRgb1:_" .. replayButtonRgb1);
local replayButtonRgb2 = getColor(replayTest2x,replayTest2y); 
log("ReplayButtonRgb2:_" .. replayButtonRgb2);

-- get color for two next button points 
local nextButtonRgb1 = getColor(nextTest1x,nextTest1y); 
log("nextButtonRgb1:_" .. nextButtonRgb1);
local nextButtonRgb2 = getColor(nextTest2x,nextTest2y);
log("nextButtonRgb2:_" .. nextButtonRgb2); 
end 

dailyColor(); 
