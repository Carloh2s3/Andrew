///enable_movement_run_horizontal_axis(acceleration, max_speed, horizontal_axis)
/*
    Call this function in order to enable horizontal
    running on a movement entity.
*/

var acc = argument[0]; // Acceleration value
var max_spd = argument[1]; // Maximum run speed
var haxis = argument[2]; // Horizontal input axis
var hacc = (haxis)*acc;
max_spd = max_spd*abs(haxis);

horizontal_move_input = hacc != 0;

// Move but only if we aren't already moving too fast
if ((sign(hacc) == -1 && hspd > -max_spd) || (sign(hacc) == 1 && hspd < max_spd)) {
    hspd += hacc;
}
