///enable_movement_run_vertical_axis(acceleration, max_speed, vertical_axis);
/*
    Call this function in order to enable vertical
    running on a movement entity. (For top down games)
*/

var acc = argument[0]; // Acceleration value
var max_spd = argument[1]; // Maximum run speed
var vaxis = argument[2]; // Vertical input axis
var vacc = (vaxis)*acc;
max_spd = max_spd*abs(vaxis);

vertical_move_input = vacc != 0;

// Move but only if we aren't already moving too fast
if ((sign(vacc) == -1 && vspd > -max_spd) || (sign(vacc) == 1 && vspd < max_spd)) {
    vspd += vacc;
}
