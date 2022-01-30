/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 4BA51192
/// @DnDArgument : "var" "satisfied"
/// @DnDArgument : "not" "1"
/// @DnDArgument : "value" "true"
if(!(satisfied == true))
{
	/// @DnDAction : YoYo Games.Drawing.Set_Font
	/// @DnDVersion : 1
	/// @DnDHash : 5F637FE5
	/// @DnDParent : 4BA51192
	draw_set_font(noone);

	/// @DnDAction : YoYo Games.Drawing.Draw_Value
	/// @DnDVersion : 1
	/// @DnDHash : 746399C1
	/// @DnDParent : 4BA51192
	/// @DnDArgument : "x" "x"
	/// @DnDArgument : "y" "y-50"
	/// @DnDArgument : "caption" """"
	/// @DnDArgument : "var" "TeaType"
	draw_text(x, y-50, string("") + string(TeaType));
}

/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 724DB881
/// @DnDArgument : "code" "/// @description Insert description here$(13_10)// You can write your code in this editor$(13_10)"
/// @description Insert description here
// You can write your code in this editor