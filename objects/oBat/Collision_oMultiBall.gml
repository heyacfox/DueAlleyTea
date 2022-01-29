/// @DnDAction : YoYo Games.Loops.Repeat
/// @DnDVersion : 1
/// @DnDHash : 1947A8AF
/// @DnDArgument : "times" "4"
repeat(4)
{
	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 2EA27A60
	/// @DnDParent : 1947A8AF
	/// @DnDArgument : "xpos" "-16"
	/// @DnDArgument : "xpos_relative" "1"
	/// @DnDArgument : "ypos" "-16"
	/// @DnDArgument : "ypos_relative" "1"
	/// @DnDArgument : "var" "i"
	/// @DnDArgument : "var_temp" "1"
	/// @DnDArgument : "objectid" "oBall"
	/// @DnDSaveInfo : "objectid" "oBall"
	var i = instance_create_layer(x + -16, y + -16, "Instances", oBall);

	/// @DnDAction : YoYo Games.Common.Apply_To
	/// @DnDVersion : 1
	/// @DnDHash : 46A2FDB0
	/// @DnDApplyTo : i
	/// @DnDParent : 1947A8AF
	with(i) {
		/// @DnDAction : YoYo Games.Random.Get_Random_Number
		/// @DnDVersion : 1
		/// @DnDHash : 2C9C7C36
		/// @DnDParent : 46A2FDB0
		/// @DnDArgument : "var" "ran"
		/// @DnDArgument : "var_temp" "1"
		/// @DnDArgument : "type" "1"
		/// @DnDArgument : "max" "4"
		var ran = floor(random_range(0, 4 + 1));
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 207CD0A9
		/// @DnDParent : 46A2FDB0
		/// @DnDArgument : "expr" "ran - 2"
		/// @DnDArgument : "var" "dx"
		dx = ran - 2;
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 4D4CCD4E
		/// @DnDParent : 46A2FDB0
		/// @DnDArgument : "var" "dx"
		if(dx == 0)
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 5EFA8FCF
			/// @DnDParent : 4D4CCD4E
			/// @DnDArgument : "expr" "-2"
			/// @DnDArgument : "var" "dx"
			dx = -2;
		}
	
		/// @DnDAction : YoYo Games.Random.Get_Random_Number
		/// @DnDVersion : 1
		/// @DnDHash : 78CD0385
		/// @DnDParent : 46A2FDB0
		/// @DnDArgument : "var" "ran"
		/// @DnDArgument : "var_temp" "1"
		/// @DnDArgument : "type" "1"
		/// @DnDArgument : "max" "4"
		var ran = floor(random_range(0, 4 + 1));
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 6D4089F8
		/// @DnDParent : 46A2FDB0
		/// @DnDArgument : "expr" "-(ran + 2)"
		/// @DnDArgument : "var" "dx"
		dx = -(ran + 2);
	}
}

/// @DnDAction : YoYo Games.Common.Set_Global
/// @DnDVersion : 1
/// @DnDHash : 3E46134A
/// @DnDArgument : "value" "1000"
/// @DnDArgument : "value_relative" "1"
/// @DnDArgument : "var" "myscore"
global.myscore += 1000;

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 402B1F18
/// @DnDApplyTo : other
with(other) instance_destroy();