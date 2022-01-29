/// @DnDAction : YoYo Games.Random.Randomize
/// @DnDVersion : 1
/// @DnDHash : 129E0A29
randomize();

/// @DnDAction : YoYo Games.Random.Choose
/// @DnDVersion : 1
/// @DnDHash : 0985242C
/// @DnDInput : 2
/// @DnDArgument : "var" "varRND"
/// @DnDArgument : "var_temp" "1"
/// @DnDArgument : "option_1" "1"
var varRND = choose(0, 1);

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 2600E1F3
/// @DnDArgument : "var" "varRND"
if(varRND == 0)
{
	/// @DnDAction : YoYo Games.Movement.Set_Direction_Fixed
	/// @DnDVersion : 1.1
	/// @DnDHash : 2ED4871B
	/// @DnDParent : 2600E1F3
	/// @DnDArgument : "direction" "180"
	direction = 180;

	/// @DnDAction : YoYo Games.Movement.Set_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 1B1DDAD8
	/// @DnDParent : 2600E1F3
	/// @DnDArgument : "speed" "1"
	speed = 1;

	/// @DnDAction : YoYo Games.Instances.Sprite_Scale
	/// @DnDVersion : 1
	/// @DnDHash : 1DF3337E
	/// @DnDParent : 2600E1F3
	/// @DnDArgument : "xscale" "-3"
	/// @DnDArgument : "yscale" "3"
	image_xscale = -3;
	image_yscale = 3;
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 3FD7F9C1
else
{
	/// @DnDAction : YoYo Games.Movement.Set_Direction_Fixed
	/// @DnDVersion : 1.1
	/// @DnDHash : 268D6E70
	/// @DnDParent : 3FD7F9C1
	/// @DnDArgument : "direction" "0"
	direction = 0;

	/// @DnDAction : YoYo Games.Movement.Set_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 64162D30
	/// @DnDParent : 3FD7F9C1
	/// @DnDArgument : "speed" "1"
	speed = 1;

	/// @DnDAction : YoYo Games.Instances.Sprite_Scale
	/// @DnDVersion : 1
	/// @DnDHash : 713BEB0C
	/// @DnDParent : 3FD7F9C1
	/// @DnDArgument : "xscale" "3"
	/// @DnDArgument : "yscale" "3"
	image_xscale = 3;
	image_yscale = 3;
}

/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 517998F8
/// @DnDArgument : "code" "/// @description Insert description here$(13_10)// You can write your code in this editor$(13_10)"
/// @description Insert description here
// You can write your code in this editor