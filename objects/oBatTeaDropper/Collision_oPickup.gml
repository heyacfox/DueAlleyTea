/// @DnDAction : YoYo Games.Common.Set_Global
/// @DnDVersion : 1
/// @DnDHash : 374AA9B8
/// @DnDArgument : "value" "2000"
/// @DnDArgument : "value_relative" "1"
/// @DnDArgument : "var" "myscore"
global.myscore += 2000;

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 62B656F4
/// @DnDApplyTo : other
with(other) instance_destroy();