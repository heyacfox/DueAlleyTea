/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 4462916B
/// @DnDArgument : "code" "// Set gui size$(13_10)display_set_gui_size(544,576);"
// Set gui size
display_set_gui_size(544,576);

/// @DnDAction : YoYo Games.Drawing.Set_Color
/// @DnDVersion : 1
/// @DnDHash : 0CA18AB5
/// @DnDArgument : "color" "$FF000000"
/// @DnDArgument : "alpha" "false"
draw_set_colour($FF000000 & $ffffff);draw_set_alpha(1);

/// @DnDAction : YoYo Games.Drawing.Draw_Rectangle
/// @DnDVersion : 1
/// @DnDHash : 7E948C9A
/// @DnDArgument : "x2" "room_width"
/// @DnDArgument : "y2" "room_height"
/// @DnDArgument : "fill" "1"
draw_rectangle(0, 0, room_width, room_height, 0);

/// @DnDAction : YoYo Games.Drawing.Set_Font
/// @DnDVersion : 1
/// @DnDHash : 4B683E28
/// @DnDArgument : "font" "font_0"
/// @DnDSaveInfo : "font" "font_0"
draw_set_font(font_0);

/// @DnDAction : YoYo Games.Drawing.Set_Color
/// @DnDVersion : 1
/// @DnDHash : 40D19B3B
/// @DnDArgument : "alpha" "false"
draw_set_colour($FFFFFFFF & $ffffff);draw_set_alpha(1);

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 4DB6412F
/// @DnDArgument : "x" "200"
/// @DnDArgument : "y" "250"
/// @DnDArgument : "caption" ""Press fire to start""
draw_text(200, 250, string("Press fire to start") + "");