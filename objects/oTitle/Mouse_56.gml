/// @DnDAction : YoYo Games.Rooms.If_First_Room
/// @DnDVersion : 1
/// @DnDHash : 1D1DBC2F
if(room == room_first)
{
	/// @DnDAction : YoYo Games.Rooms.Go_To_Room
	/// @DnDVersion : 1
	/// @DnDHash : 2D76C313
	/// @DnDParent : 1D1DBC2F
	/// @DnDArgument : "room" "Alley"
	/// @DnDSaveInfo : "room" "Alley"
	room_goto(Alley);
}

/// @DnDAction : YoYo Games.Rooms.If_Last_Room
/// @DnDVersion : 1
/// @DnDHash : 3B86C547
if(room == room_last)
{
	/// @DnDAction : YoYo Games.Rooms.Go_To_Room
	/// @DnDVersion : 1
	/// @DnDHash : 7B0C3950
	/// @DnDParent : 3B86C547
	/// @DnDArgument : "room" "rTitleScreen"
	/// @DnDSaveInfo : "room" "rTitleScreen"
	room_goto(rTitleScreen);
}