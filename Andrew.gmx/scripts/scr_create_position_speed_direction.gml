///scr_create_position_speed_direction(object,x,y,speed,angle,sprdir);
//used ofr projectiles with 8 images
newInstance = instance_create(argument1,argument2,argument0);
newInstance.speed = argument3;
newInstance.direction = argument4;
newInstance.image_index = floor(argument4/45);
newInstance.image_speed = 0;
newInstance.movedir = argument5;
