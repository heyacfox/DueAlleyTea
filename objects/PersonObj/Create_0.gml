/// @DnDAction : YoYo Games.Random.Randomize
/// @DnDVersion : 1
/// @DnDHash : 129E0A29
randomize();

/// @DnDAction : YoYo Games.Random.Choose
/// @DnDVersion : 1
/// @DnDHash : 1277228F
/// @DnDInput : 4
/// @DnDArgument : "var" "personindex"
/// @DnDArgument : "option" "Person"
/// @DnDArgument : "option_1" "Person2"
/// @DnDArgument : "option_2" "Person3"
/// @DnDArgument : "option_3" "Person4"
personindex = choose(Person, Person2, Person3, Person4);

/// @DnDAction : YoYo Games.Instances.Set_Sprite
/// @DnDVersion : 1
/// @DnDHash : 575F0892
/// @DnDArgument : "spriteind" "personindex"
sprite_index = personindex;
image_index = 0;

/// @DnDAction : YoYo Games.Paths.Start_Path
/// @DnDVersion : 1.1
/// @DnDHash : 38392330
/// @DnDArgument : "path" "Path2"
/// @DnDArgument : "speed" "moveSpeed"
/// @DnDSaveInfo : "path" "Path2"
path_start(Path2, moveSpeed, path_action_stop, false);

/// @DnDAction : YoYo Games.Random.Choose
/// @DnDVersion : 1
/// @DnDHash : 0985242C
/// @DnDInput : 2
/// @DnDArgument : "var" "varRNDDir"
/// @DnDArgument : "option_1" "1"
varRNDDir = choose(0, 1);

/// @DnDAction : YoYo Games.Random.Choose
/// @DnDVersion : 1
/// @DnDHash : 731DB909
/// @DnDInput : 2
/// @DnDArgument : "var" "TeaType"
/// @DnDArgument : "option" ""Hot Tea""
/// @DnDArgument : "option_1" ""Iced Tea""
TeaType = choose("Hot Tea", "Iced Tea");

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 2600E1F3
/// @DnDArgument : "var" "varRNDDir"
if(varRNDDir == 0)
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
	/// @DnDArgument : "speed" "10"
	/// @DnDArgument : "speed_relative" "1"
	/// @DnDArgument : "type" "1"
	hspeed += 10;

	/// @DnDAction : YoYo Games.Instances.Sprite_Scale
	/// @DnDVersion : 1
	/// @DnDHash : 1DF3337E
	/// @DnDParent : 2600E1F3
	/// @DnDArgument : "xscale" "3"
	/// @DnDArgument : "yscale" "3"
	image_xscale = 3;
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
	/// @DnDArgument : "speed" "10"
	/// @DnDArgument : "speed_relative" "1"
	/// @DnDArgument : "type" "1"
	hspeed += 10;

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