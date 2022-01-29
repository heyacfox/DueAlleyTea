/// @DnDAction : YoYo Games.Common.Temp_Variable
/// @DnDVersion : 1
/// @DnDHash : 0BFD2D22
/// @DnDArgument : "var" "me"
/// @DnDArgument : "value" "id"
var me = id;

/// @DnDAction : YoYo Games.Common.Temp_Variable
/// @DnDVersion : 1
/// @DnDHash : 0369D25B
/// @DnDArgument : "var" "sh"
/// @DnDArgument : "value" "sprite_get_height(sBat)"
var sh = sprite_get_height(sBat);

/// @DnDAction : YoYo Games.Common.Apply_To
/// @DnDVersion : 1
/// @DnDHash : 208D5A5B
/// @DnDApplyTo : other
with(other) {
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 2AD565C2
	/// @DnDParent : 208D5A5B
	/// @DnDArgument : "var" "dy"
	/// @DnDArgument : "op" "2"
	if(dy > 0)
	{
		/// @DnDAction : YoYo Games.Movement.Jump_To_Point
		/// @DnDVersion : 1
		/// @DnDHash : 0F68E637
		/// @DnDParent : 2AD565C2
		/// @DnDArgument : "y" "me.y - 3"
		
		y = me.y - 3;
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 42C159F5
	/// @DnDParent : 208D5A5B
	else
	{
		/// @DnDAction : YoYo Games.Movement.Jump_To_Point
		/// @DnDVersion : 1
		/// @DnDHash : 5EF04400
		/// @DnDParent : 42C159F5
		/// @DnDArgument : "y" "me.y + sh + 3"
		
		y = me.y + sh + 3;
	}

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 67DA3E8F
	/// @DnDParent : 208D5A5B
	/// @DnDArgument : "expr" "-dy"
	/// @DnDArgument : "var" "dy"
	dy = -dy;
}