/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 29FA9180
/// @DnDArgument : "code" "// Set gui size$(13_10)display_set_gui_size(544, 576);"
// Set gui size
display_set_gui_size(544, 576);

/// @DnDAction : YoYo Games.Common.Temp_Variable
/// @DnDVersion : 1
/// @DnDHash : 3B311FE4
/// @DnDArgument : "var" "sw"
/// @DnDArgument : "value" "sprite_get_width(sBall)"
var sw = sprite_get_width(sBall);

/// @DnDAction : YoYo Games.Drawing.Set_Color
/// @DnDVersion : 1
/// @DnDHash : 0D09654C
/// @DnDArgument : "color" "$FF000000"
/// @DnDArgument : "alpha" "false"
draw_set_colour($FF000000 & $ffffff);draw_set_alpha(1);

/// @DnDAction : YoYo Games.Drawing.Draw_Rectangle
/// @DnDVersion : 1
/// @DnDHash : 293ACB8F
/// @DnDArgument : "x1" "-1"
/// @DnDArgument : "x2" "room_width + 1"
/// @DnDArgument : "y2" "64"
draw_rectangle(-1, 0, room_width + 1, 64, 1);

/// @DnDAction : YoYo Games.Drawing.Set_Font
/// @DnDVersion : 1
/// @DnDHash : 7B4860FB
/// @DnDArgument : "font" "font_0"
/// @DnDSaveInfo : "font" "font_0"
draw_set_font(font_0);

/// @DnDAction : YoYo Games.Drawing.Set_Color
/// @DnDVersion : 1
/// @DnDHash : 372E46AC
/// @DnDArgument : "alpha" "false"
draw_set_colour($FFFFFFFF & $ffffff);draw_set_alpha(1);

/// @DnDAction : YoYo Games.Common.Get_Global
/// @DnDVersion : 1
/// @DnDHash : 3A3A2208
/// @DnDArgument : "output" "s"
/// @DnDArgument : "output_temp" "1"
/// @DnDArgument : "var" "myscore"
var s = global.myscore;

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 66EB9A45
/// @DnDArgument : "x" "10"
/// @DnDArgument : "y" "10"
/// @DnDArgument : "caption" ""Score: ""
/// @DnDArgument : "var" "s"
draw_text(10, 10, string("Score: ") + string(s));

/// @DnDAction : YoYo Games.Common.Temp_Variable
/// @DnDVersion : 1
/// @DnDHash : 6517CA13
/// @DnDArgument : "var" "i"
/// @DnDArgument : "value" "0"
var i = 0;

/// @DnDAction : YoYo Games.Loops.Repeat
/// @DnDVersion : 1
/// @DnDHash : 2080D184
/// @DnDArgument : "times" "Balls"
repeat(Balls)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 0FDF7340
	/// @DnDParent : 2080D184
	/// @DnDArgument : "expr" "1"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "i"
	i += 1;

	/// @DnDAction : YoYo Games.Drawing.Draw_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 5AD869CC
	/// @DnDParent : 2080D184
	/// @DnDArgument : "x" "15 + sw * i"
	/// @DnDArgument : "y" "35"
	/// @DnDArgument : "sprite" "sBall"
	/// @DnDSaveInfo : "sprite" "sBall"
	draw_sprite(sBall, 0, 15 + sw * i, 35);
}