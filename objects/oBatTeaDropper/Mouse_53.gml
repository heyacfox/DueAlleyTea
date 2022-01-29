/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 485DDC88
/// @DnDArgument : "code" "/// @description Insert description here$(13_10)// You can write your code in this editor$(13_10)"
/// @description Insert description here
// You can write your code in this editor

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 4F8FE28C
/// @DnDArgument : "var" "teaReady"
/// @DnDArgument : "value" "true"
if(teaReady == true)
{
	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 49939B8B
	/// @DnDParent : 4F8FE28C
	/// @DnDArgument : "xpos" "x"
	/// @DnDArgument : "ypos" "y"
	/// @DnDArgument : "objectid" "IcedTeaObj"
	/// @DnDSaveInfo : "objectid" "IcedTeaObj"
	instance_create_layer(x, y, "Instances", IcedTeaObj);

	/// @DnDAction : YoYo Games.Instances.Set_Alarm
	/// @DnDVersion : 1
	/// @DnDHash : 42D4E3E8
	/// @DnDParent : 4F8FE28C
	/// @DnDArgument : "steps" "cooldownTime"
	/// @DnDArgument : "alarm" "2"
	alarm_set(2, cooldownTime);

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 39B2846F
	/// @DnDParent : 4F8FE28C
	/// @DnDArgument : "expr" "false"
	/// @DnDArgument : "var" "teaReady"
	teaReady = false;
}