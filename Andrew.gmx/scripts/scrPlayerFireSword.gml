///scrPlayerFireSword(weaponType,spriteDirection);
var weaponType = argument0;
var spriteDirection = argument1;

//check weapon type
var bullObj = objProjectile;
var bullspeed = 10;

switch(weaponType){
    case "potato": bullObj = objSwordPotato; break;
    case "catalyst": bullObj = objSwordCatalyst; break;
    case "alkalyst": bullObj = objSwordAlkalyst; break;
    case "paralyst": bullObj = objSwordParalyst; break;
    case "lazaryst": bullObj = objSwordLazaryst; break;
}

//fire and create bullet
switch(spriteDirection){
    case "left": scr_create_swordobj(bullObj,x-24,y-8,1,0.5);
        break;
    case "right": scr_create_swordobj(bullObj,x+72,y-8,-1,0.5);
        break;
}
