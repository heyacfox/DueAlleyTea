/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 0FE1DD91
/// @DnDArgument : "code" "/// @description Insert description here$(13_10)// You can write your code in this editor$(13_10)"
/// @description Insert description here
// You can write your code in this editor

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 139491F6
/// @DnDArgument : "var" "TeaType"
/// @DnDArgument : "value" ""Iced Tea""
if(TeaType == "Iced Tea")
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 60729C7E
	/// @DnDParent : 139491F6
	/// @DnDArgument : "var" "satisfied"
	/// @DnDArgument : "value" "false"
	if(satisfied == false)
	{
		/// @DnDAction : YoYo Games.Instance Variables.Set_Score
		/// @DnDVersion : 1
		/// @DnDHash : 5490F7AE
		/// @DnDApplyTo : {oBatTeaDropper}
		/// @DnDParent : 60729C7E
		/// @DnDArgument : "score" "1"
		/// @DnDArgument : "score_relative" "1"
		with(oBatTeaDropper) {
		if(!variable_instance_exists(id, "__dnd_score")) __dnd_score = 0;
		__dnd_score += real(1);
		}
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 3D830F99
		/// @DnDParent : 60729C7E
		/// @DnDArgument : "expr" "true"
		/// @DnDArgument : "var" "satisfied"
		satisfied = true;
	
		/// @DnDAction : YoYo Games.Instances.Destroy_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 3FD146FB
		/// @DnDApplyTo : other
		/// @DnDParent : 60729C7E
		with(other) instance_destroy();
	}
}