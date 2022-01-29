/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 4C964798
/// @DnDArgument : "code" "/// @description Draw the bat and shadow$(13_10)draw_sprite_ext(sprite_index,image_index,x+8,y+8,1,1,0,c_black,0.5);$(13_10)$(13_10)//	The "draw_sprite_ext()" command has not converted to DnD as it currently has $(13_10)//  no equivalent action at the time of creating this port$(13_10)"
/// @description Draw the bat and shadow
draw_sprite_ext(sprite_index,image_index,x+8,y+8,1,1,0,c_black,0.5);

//	The "draw_sprite_ext()" command has not converted to DnD as it currently has 
//  no equivalent action at the time of creating this port

/// @DnDAction : YoYo Games.Drawing.Draw_Self
/// @DnDVersion : 1
/// @DnDHash : 3F44B419
draw_self();

/// @DnDAction : YoYo Games.Instance Variables.Get_Score
/// @DnDVersion : 1
/// @DnDHash : 056CF0A7
/// @DnDArgument : "var" "curscore"
/// @DnDArgument : "var_temp" "1"
if(!variable_instance_exists(id, "__dnd_score")) __dnd_score = 0;
var curscore = __dnd_score;

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 495A3693
/// @DnDArgument : "x" "100"
/// @DnDArgument : "y" "10"
/// @DnDArgument : "caption" ""Score: ""
/// @DnDArgument : "var" "curscore"
draw_text(100, 10, string("Score: ") + string(curscore));