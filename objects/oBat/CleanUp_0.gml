/// @DnDAction : YoYo Games.Rooms.Get_Current_Room
/// @DnDVersion : 1
/// @DnDHash : 6A718FFF
/// @DnDArgument : "var" "rm"
/// @DnDArgument : "var_temp" "1"
var rm = room;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 282CE318
/// @DnDArgument : "var" "rm"
/// @DnDArgument : "value" "rTitleScreen"
if(rm == rTitleScreen)
{
	/// @DnDAction : YoYo Games.Common.Exit_Event
	/// @DnDVersion : 1
	/// @DnDHash : 6C49A0F8
	/// @DnDParent : 282CE318
	exit;
}

/// @DnDAction : YoYo Games.Common.Get_Global
/// @DnDVersion : 1
/// @DnDHash : 5AD8B250
/// @DnDArgument : "output" "grid"
/// @DnDArgument : "output_temp" "1"
/// @DnDArgument : "var" "hits"
var grid = global.hits;

/// @DnDAction : YoYo Games.Data Structures.DS_Free
/// @DnDVersion : 1
/// @DnDHash : 0164E971
/// @DnDArgument : "ds" "2"
/// @DnDArgument : "var" "grid"
ds_grid_destroy(grid);