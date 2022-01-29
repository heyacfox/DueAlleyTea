/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 5C8A0857
/// @DnDArgument : "code" "/// @description Insert description here$(13_10)// You can write your code in this editor$(13_10)"
/// @description Insert description here
// You can write your code in this editor

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 744F5EF2
/// @DnDArgument : "var" "teaReady"
/// @DnDArgument : "value" "true"
if(teaReady == true)
{
	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 4A555445
	/// @DnDParent : 744F5EF2
	/// @DnDArgument : "xpos" "x"
	/// @DnDArgument : "ypos" "y"
	/// @DnDArgument : "objectid" "HotTea"
	/// @DnDSaveInfo : "objectid" "HotTea"
	instance_create_layer(x, y, "Instances", HotTea);

	/// @DnDAction : YoYo Games.Instances.Set_Alarm
	/// @DnDVersion : 1
	/// @DnDHash : 2B2530AC
	/// @DnDParent : 744F5EF2
	/// @DnDArgument : "steps" "cooldownTime"
	/// @DnDArgument : "alarm" "2"
	alarm_set(2, cooldownTime);

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 68B49CB9
	/// @DnDParent : 744F5EF2
	/// @DnDArgument : "expr" "false"
	/// @DnDArgument : "var" "teaReady"
	teaReady = false;
}