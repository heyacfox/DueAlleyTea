/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 306B2965
/// @DnDArgument : "code" "/// @description Insert description here$(13_10)// You can write your code in this editor$(13_10)"
/// @description Insert description here
// You can write your code in this editor

/// @DnDAction : YoYo Games.Movement.Set_Gravity_Force
/// @DnDVersion : 1
/// @DnDHash : 55D175FA
/// @DnDArgument : "force" "0"
gravity = 0;

/// @DnDAction : YoYo Games.Paths.Start_Path
/// @DnDVersion : 1.1
/// @DnDHash : 35CF886D
/// @DnDArgument : "path" "Path4"
/// @DnDArgument : "atend" "path_action_continue"
/// @DnDSaveInfo : "path" "Path4"
path_start(Path4, 1, path_action_continue, false);