local width, height = getScreenSize(); 
log("Width" .. width); 
log("Height" .. height); 
local region = {}; 

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

region = {coordinateH,coordinateW,regionHeight,regionWidth}; 
-- screenshot not working atm 
screenshot("FutureFight/mission.png",nil);

return region;

end 

f1 = function (width)
log (width); 
log("Mission"); 
end 

keepFindingImage = function ()
local exit = false; 

keepFindingImage("FutureFight/mission.png", 1, 0.5, nil, region, f1, 1000, exit )
usleep(10000000); 
exit = true; 
end 

regionCalculate(0.63,0.15,0.23,0.15); 
keepFindingImage(); 