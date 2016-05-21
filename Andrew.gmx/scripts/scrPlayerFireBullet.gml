///scrPlayerFireBullet(weaponType,upperState,spriteDirection);
var weaponType = argument0;
var upperState = argument1;
var spriteDirection = argument2;

//check weapon type
var bullObj = objProjectile;
var bullspeed = 10;

switch(weaponType){
    case "potato": bullObj = objProjPotato; break;
    case "catalyst": bullObj = objProjCatalyst; break;
    case "alkalyst": bullObj = objProjAlkalyst; break;
    case "paralyst": bullObj = objProjParalyst; break;
    case "lazaryst": bullObj = objProjLazaryst; break;
}

//fire and create bullet
switch(upperState){
    case "idle": 
        upperState = "level";
    case "down":
        if spriteDirection == "left" scr_create_position_speed_direction(bullObj,x+12,y+26,bullspeed,225,spriteDirection);
        if spriteDirection == "right" scr_create_position_speed_direction(bullObj,x+32,y+26,bullspeed,315,spriteDirection);
        break;
    case "level":
        if spriteDirection == "left" scr_create_position_speed_direction(bullObj,x+12,y+14,bullspeed,180,spriteDirection);
        if spriteDirection == "right" scr_create_position_speed_direction(bullObj,x+32,y+14,bullspeed,0,spriteDirection);
        break;
    case "angle":
        if spriteDirection == "left" scr_create_position_speed_direction(bullObj,x+11,y+6,bullspeed,135,spriteDirection);
        if spriteDirection == "right" scr_create_position_speed_direction(bullObj,x+32,y+6,bullspeed,45,spriteDirection);
        break;
    case "up":
        if spriteDirection == "left" scr_create_position_speed_direction(bullObj,x+16,y+6,bullspeed,90,spriteDirection);
        if spriteDirection == "right" scr_create_position_speed_direction(bullObj,x+27,y+6,bullspeed,90,spriteDirection);
        break;
}
