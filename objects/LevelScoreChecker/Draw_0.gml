/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 02777694
/// @DnDArgument : "code" "/// @description Insert description here$(13_10)// You can write your code in this editor$(13_10)"
/// @description Insert description here
// You can write your code in this editor

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 4BEAAF7D
/// @DnDArgument : "var" "levelOver"
/// @DnDArgument : "value" "true"
if(levelOver == true)
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 612E9CEF
	/// @DnDParent : 4BEAAF7D
	/// @DnDArgument : "var" "levelWon"
	/// @DnDArgument : "value" "true"
	if(levelWon == true)
	{
		/// @DnDAction : YoYo Games.Drawing.Draw_Value
		/// @DnDVersion : 1
		/// @DnDHash : 0B05F73D
		/// @DnDParent : 612E9CEF
		/// @DnDArgument : "x" "x"
		/// @DnDArgument : "y" "y"
		/// @DnDArgument : "caption" ""LevelOver: ""
		/// @DnDArgument : "var" ""You Win!""
		draw_text(x, y, string("LevelOver: ") + string("You Win!"));
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 4D866BA2
	/// @DnDParent : 4BEAAF7D
	else
	{
		/// @DnDAction : YoYo Games.Drawing.Draw_Value
		/// @DnDVersion : 1
		/// @DnDHash : 120A27E6
		/// @DnDParent : 4D866BA2
		/// @DnDArgument : "x" "x"
		/// @DnDArgument : "y" "y"
		/// @DnDArgument : "caption" ""LevelOver: ""
		/// @DnDArgument : "var" ""You Lose""
		draw_text(x, y, string("LevelOver: ") + string("You Lose"));
	}
}

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 1B0F1EFB
/// @DnDArgument : "x" "room_width - 100"
/// @DnDArgument : "y" "30"
/// @DnDArgument : "caption" ""
/// @DnDArgument : "var" "LevelName"
draw_text(room_width - 100, 30,  + string(LevelName));

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 4FFB731A
/// @DnDArgument : "x" "room_width - 180"
/// @DnDArgument : "y" "70"
/// @DnDArgument : "caption" ""Get a score of: ""
/// @DnDArgument : "var" "scoreNeeded"
draw_text(room_width - 180, 70, string("Get a score of: ") + string(scoreNeeded));