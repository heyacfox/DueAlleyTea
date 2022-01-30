/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 4462916B
/// @DnDArgument : "code" ""


/// @DnDAction : YoYo Games.Drawing.Set_Color
/// @DnDVersion : 1
/// @DnDHash : 40D19B3B
/// @DnDArgument : "color" "$FF000000"
/// @DnDArgument : "alpha" "false"
draw_set_colour($FF000000 & $ffffff);draw_set_alpha(1);

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 4DB6412F
/// @DnDArgument : "x" "700"
/// @DnDArgument : "y" "275"
/// @DnDArgument : "caption" ""
/// @DnDArgument : "var" "t1+t2+t3+t4+t4a+t4a2+t4b+t5+t6+t7+t8"
draw_text(700, 275,  + string(t1+t2+t3+t4+t4a+t4a2+t4b+t5+t6+t7+t8));