/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 63A99D25
/// @DnDArgument : "code" "/// @description Insert description here$(13_10)// You can write your code in this editor$(13_10)"
/// @description Insert description here
// You can write your code in this editor

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 7DDD1D47
/// @DnDArgument : "var" "TeaType"
/// @DnDArgument : "value" ""Hot Tea""
if(TeaType == "Hot Tea")
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 067DF7E0
	/// @DnDParent : 7DDD1D47
	/// @DnDArgument : "var" "satisfied"
	/// @DnDArgument : "not" "1"
	/// @DnDArgument : "value" "true"
	if(!(satisfied == true))
	{
		/// @DnDAction : YoYo Games.Instance Variables.Set_Score
		/// @DnDVersion : 1
		/// @DnDHash : 20990359
		/// @DnDApplyTo : {oBatTeaDropper}
		/// @DnDParent : 067DF7E0
		/// @DnDArgument : "score" "1"
		/// @DnDArgument : "score_relative" "1"
		with(oBatTeaDropper) {
		if(!variable_instance_exists(id, "__dnd_score")) __dnd_score = 0;
		__dnd_score += real(1);
		}
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 6D6F1F9C
		/// @DnDParent : 067DF7E0
		/// @DnDArgument : "expr" "true"
		/// @DnDArgument : "var" "satisfied"
		satisfied = true;
	
		/// @DnDAction : YoYo Games.Instances.Destroy_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 03CEA1BD
		/// @DnDApplyTo : other
		/// @DnDParent : 067DF7E0
		with(other) instance_destroy();
	}
}