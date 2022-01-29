/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 147AC5D6
/// @DnDArgument : "expr" "EndOfGame"
if(EndOfGame)
{
	/// @DnDAction : YoYo Games.Common.Exit_Event
	/// @DnDVersion : 1
	/// @DnDHash : 2CF49554
	/// @DnDParent : 147AC5D6
	exit;
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 207ABEC4
/// @DnDArgument : "var" "state"
if(state == 0)
{
	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 35420A76
	/// @DnDParent : 207ABEC4
	/// @DnDArgument : "xpos_relative" "1"
	/// @DnDArgument : "ypos" "-8"
	/// @DnDArgument : "ypos_relative" "1"
	/// @DnDArgument : "var" "i"
	/// @DnDArgument : "var_temp" "1"
	/// @DnDArgument : "objectid" "oBall"
	/// @DnDSaveInfo : "objectid" "oBall"
	var i = instance_create_layer(x + 0, y + -8, "Instances", oBall);

	/// @DnDAction : YoYo Games.Random.Get_Random_Number
	/// @DnDVersion : 1
	/// @DnDHash : 59AF487E
	/// @DnDParent : 207ABEC4
	/// @DnDArgument : "var" "ran"
	/// @DnDArgument : "var_temp" "1"
	/// @DnDArgument : "type" "1"
	/// @DnDArgument : "max" "10"
	var ran = floor(random_range(0, 10 + 1));

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 60029F27
	/// @DnDParent : 207ABEC4
	/// @DnDArgument : "var" "ran"
	/// @DnDArgument : "op" "1"
	/// @DnDArgument : "value" "5"
	if(ran < 5)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 08F6F9FF
		/// @DnDApplyTo : i
		/// @DnDParent : 60029F27
		/// @DnDArgument : "expr" "-dx"
		/// @DnDArgument : "var" "dx"
		with(i) {
		dx = -dx;
		
		}
	}

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 6224E624
	/// @DnDParent : 207ABEC4
	/// @DnDArgument : "expr" "1"
	/// @DnDArgument : "var" "state"
	state = 1;
}