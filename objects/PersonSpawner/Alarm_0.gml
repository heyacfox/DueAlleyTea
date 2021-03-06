/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 1AC27D7C
/// @DnDArgument : "code" "/// @description Insert description here$(13_10)// You can write your code in this editor$(13_10)"
/// @description Insert description here
// You can write your code in this editor

/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 6BA81B40
/// @DnDArgument : "xpos" "x"
/// @DnDArgument : "ypos" "y"
/// @DnDArgument : "objectid" "PersonObj"
/// @DnDSaveInfo : "objectid" "PersonObj"
instance_create_layer(x, y, "Instances", PersonObj);

/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 16E3F272
/// @DnDArgument : "var" "timervar"
/// @DnDArgument : "var_temp" "1"
/// @DnDArgument : "type" "1"
/// @DnDArgument : "min" "120"
/// @DnDArgument : "max" "300"
var timervar = floor(random_range(120, 300 + 1));

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 2CEA96F7
/// @DnDArgument : "expr" "1"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "var" "peopleSpawned"
peopleSpawned += 1;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 3975B281
/// @DnDArgument : "var" "peopleSpawned"
/// @DnDArgument : "op" "1"
/// @DnDArgument : "value" "peopleToSpawn"
if(peopleSpawned < peopleToSpawn)
{
	/// @DnDAction : YoYo Games.Instances.Set_Alarm
	/// @DnDVersion : 1
	/// @DnDHash : 76F0D6D2
	/// @DnDParent : 3975B281
	/// @DnDArgument : "steps" "timervar"
	alarm_set(0, timervar);
}