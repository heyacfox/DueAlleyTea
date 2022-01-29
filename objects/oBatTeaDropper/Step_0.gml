/// @DnDAction : YoYo Games.Common.Temp_Variable
/// @DnDVersion : 1
/// @DnDHash : 0FC7918C
/// @DnDArgument : "var" "sw"
/// @DnDArgument : "value" "sprite_get_width(sBat) * 0.5"
var sw = sprite_get_width(sBat) * 0.5;

/// @DnDAction : YoYo Games.Movement.Jump_To_Point
/// @DnDVersion : 1
/// @DnDHash : 0F71D1A2
/// @DnDArgument : "x" "mouse_x"
x = mouse_x;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 2E1949C9
/// @DnDArgument : "var" "x"
/// @DnDArgument : "op" "2"
/// @DnDArgument : "value" "room_width - sw - 16"
if(x > room_width - sw - 16)
{
	/// @DnDAction : YoYo Games.Movement.Jump_To_Point
	/// @DnDVersion : 1
	/// @DnDHash : 1CF5C0D4
	/// @DnDParent : 2E1949C9
	/// @DnDArgument : "x" "room_width - sw - 16"
	x = room_width - sw - 16;
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 24FC1B77
else
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 1BE6B18F
	/// @DnDParent : 24FC1B77
	/// @DnDArgument : "var" "x"
	/// @DnDArgument : "op" "1"
	/// @DnDArgument : "value" "16 + sw"
	if(x < 16 + sw)
	{
		/// @DnDAction : YoYo Games.Movement.Jump_To_Point
		/// @DnDVersion : 1
		/// @DnDHash : 777AB0F0
		/// @DnDParent : 1BE6B18F
		/// @DnDArgument : "x" "16 + sw"
		x = 16 + sw;
	}
}