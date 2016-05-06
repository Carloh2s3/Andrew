///scrPlayerFireBullet(weaponType,upperState);
var weaponType = argument0;
var upperState = argument1;

//check weapon type
var bullObj = objProjectile;
var bullspeed = 10;

switch(weaponType){
    case "potato": bullObj = objProjPotatoMed; break;
    case "catalyst": bullObj = objProjCatalystMed; break;
    case "alkalyst": bullObj = objProjAlkalystMed; break;
    case "paralyst": bullObj = objProjParalystMed; break;
    case "lazaryst": bullObj = objProjLazarystMed; break;
}

//fire and create bullet
switch(upperState){
    case "idle": 
        upperState = "level";
    case "level":
        if spriteDirection == "left" scr_create_position_speed_direction(bullObj,x+12,y+14,bullspeed,180);
        if spriteDirection == "right" scr_create_position_speed_direction(bullObj,x+32,y+14,bullspeed,0);
        break;
    case "angle":
        if spriteDirection == "left" scr_create_position_speed_direction(bullObj,x+11,y+6,bullspeed,135);
        if spriteDirection == "right" scr_create_position_speed_direction(bullObj,x+32,y+6,bullspeed,45);
        break;
    case "up":
        if spriteDirection == "left" scr_create_position_speed_direction(bullObj,x+16,y+6,bullspeed,90);
        if spriteDirection == "right" scr_create_position_speed_direction(bullObj,x+27,y+6,bullspeed,90);
        break;
}
