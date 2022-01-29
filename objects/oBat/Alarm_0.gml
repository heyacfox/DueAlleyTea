/// @DnDAction : YoYo Games.Rooms.Get_Current_Room
/// @DnDVersion : 1
/// @DnDHash : 704D2D1C
/// @DnDArgument : "var" "rm"
/// @DnDArgument : "var_temp" "1"
var rm = room;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 55422557
/// @DnDArgument : "var" "rm"
/// @DnDArgument : "not" "1"
/// @DnDArgument : "value" "rLevel3"
if(!(rm == rLevel3))
{
	/// @DnDAction : YoYo Games.Rooms.Next_Room
	/// @DnDVersion : 1
	/// @DnDHash : 7A556788
	/// @DnDParent : 55422557
	room_goto_next();
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 48C7DBE3
else
{
	/// @DnDAction : YoYo Games.Rooms.Go_To_Room
	/// @DnDVersion : 1
	/// @DnDHash : 63DA14C5
	/// @DnDParent : 48C7DBE3
	/// @DnDArgument : "room" "rTitleScreen"
	/// @DnDSaveInfo : "room" "rTitleScreen"
	room_goto(rTitleScreen);
}