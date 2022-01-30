/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 68DF2FAD
/// @DnDArgument : "code" "/// @description Insert description here$(13_10)// You can write your code in this editor$(13_10)"
/// @description Insert description here
// You can write your code in this editor

/// @DnDAction : YoYo Games.Instances.Instance_Get_Count
/// @DnDVersion : 1
/// @DnDHash : 74EBE157
/// @DnDArgument : "var" "people"
/// @DnDArgument : "object" "PersonObj"
/// @DnDSaveInfo : "object" "PersonObj"
people = instance_number(PersonObj);

/// @DnDAction : YoYo Games.Instance Variables.Get_Score
/// @DnDVersion : 1
/// @DnDHash : 5D987C7B
/// @DnDApplyTo : {oBatTeaDropper}
/// @DnDArgument : "var" "scoretemp"
/// @DnDArgument : "var_temp" "1"
with(oBatTeaDropper) {
if(!variable_instance_exists(id, "__dnd_score")) __dnd_score = 0;
var scoretemp = __dnd_score;
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 1C313D81
/// @DnDArgument : "var" "scoretemp"
/// @DnDArgument : "op" "4"
/// @DnDArgument : "value" "scoreNeeded"
if(scoretemp >= scoreNeeded)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 6193FA4A
	/// @DnDParent : 1C313D81
	/// @DnDArgument : "expr" "true"
	/// @DnDArgument : "var" "levelOver"
	levelOver = true;
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 368BA536
/// @DnDArgument : "var" "people"
if(people == 0)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 473B6A65
	/// @DnDParent : 368BA536
	/// @DnDArgument : "expr" "true"
	/// @DnDArgument : "var" "levelOver"
	levelOver = true;
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 62C88D99
/// @DnDArgument : "var" "levelOver"
/// @DnDArgument : "value" "true"
if(levelOver == true)
{
	/// @DnDAction : YoYo Games.Instance Variables.Get_Score
	/// @DnDVersion : 1
	/// @DnDHash : 0FC5F90A
	/// @DnDApplyTo : {oBatTeaDropper}
	/// @DnDParent : 62C88D99
	/// @DnDArgument : "var" "scoretemp"
	/// @DnDArgument : "var_temp" "1"
	with(oBatTeaDropper) {
	if(!variable_instance_exists(id, "__dnd_score")) __dnd_score = 0;
	var scoretemp = __dnd_score;
	}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 50BE65B3
	/// @DnDParent : 62C88D99
	/// @DnDArgument : "var" "scoretemp"
	/// @DnDArgument : "value" "scoreNeeded"
	if(scoretemp == scoreNeeded)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 737EDDA1
		/// @DnDParent : 50BE65B3
		/// @DnDArgument : "expr" "true"
		/// @DnDArgument : "var" "levelWon"
		levelWon = true;
	}
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 42B393B9
/// @DnDArgument : "var" "levelOverSingleFlag"
/// @DnDArgument : "value" "false"
if(levelOverSingleFlag == false)
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 290131DA
	/// @DnDParent : 42B393B9
	/// @DnDArgument : "var" "levelOver"
	/// @DnDArgument : "value" "true"
	if(levelOver == true)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 12CC2418
		/// @DnDParent : 290131DA
		/// @DnDArgument : "expr" "true"
		/// @DnDArgument : "var" "levelOverSingleFlag"
		levelOverSingleFlag = true;
	
		/// @DnDAction : YoYo Games.Instances.Set_Alarm
		/// @DnDVersion : 1
		/// @DnDHash : 7D639264
		/// @DnDParent : 290131DA
		/// @DnDArgument : "steps" "TimeToRestartOrNext"
		/// @DnDArgument : "alarm" "3"
		alarm_set(3, TimeToRestartOrNext);
	}
}