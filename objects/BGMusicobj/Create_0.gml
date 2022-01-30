/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 0600E05B
/// @DnDArgument : "code" "/// @description Insert description here$(13_10)// You can write your code in this editor$(13_10)"
/// @description Insert description here
// You can write your code in this editor

/// @DnDAction : YoYo Games.Audio.If_Audio_Playing
/// @DnDVersion : 1
/// @DnDHash : 74361BF3
/// @DnDArgument : "soundid" "BGmusic"
/// @DnDArgument : "not" "1"
/// @DnDSaveInfo : "soundid" "BGmusic"
var l74361BF3_0 = BGmusic;
if (!audio_is_playing(l74361BF3_0))
{
	/// @DnDAction : YoYo Games.Audio.Play_Audio
	/// @DnDVersion : 1
	/// @DnDHash : 44FDB947
	/// @DnDParent : 74361BF3
	/// @DnDArgument : "soundid" "BGmusic"
	/// @DnDArgument : "loop" "1"
	/// @DnDSaveInfo : "soundid" "BGmusic"
	audio_play_sound(BGmusic, 0, 1);
}