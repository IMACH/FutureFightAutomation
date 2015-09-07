local width, height = getScreenSize(); 
log("Width" .. width); 
log("Height" .. height); 

regionCalculate = function (topLeftHP,topLeftWP,heightP, widthP) 
-- P represents Percentage, 
-- heightP and widthP are found by find the distance of upper percentage to lower percentage 
local coordinateH = 0; 
local coordinateW = 0; 
local regionHeight = 0; 
local regionWidth = 0; 

coordinateH = (height * topLeftHP); 
coordinateW = (width * topLeftWP); 
log("CoordinateH: " .. coordinateH); 
log("CoordinateW: " .. coordinateW); 

regionHeight = (height * heightP);
log("Height: " .. regionHeight);  
regionWidth = (width * widthP); 
log("Width: " .. regionWidth); 

local region = {coordinateH,coordinateW,regionHeight,regionWidth}; 
-- screenshot not working atm 
screenshot("FutureFight/mission.png",nil);

end 



regionCalculate(.63,.15,.23,.15);