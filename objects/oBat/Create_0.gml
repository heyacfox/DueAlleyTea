/// @DnDAction : YoYo Games.Rooms.Get_Current_Room
/// @DnDVersion : 1
/// @DnDHash : 17DB75B6
/// @DnDArgument : "var" "rm"
/// @DnDArgument : "var_temp" "1"
var rm = room;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 5D6E07F0
/// @DnDArgument : "var" "rm"
/// @DnDArgument : "value" "rTitleScreen"
if(rm == rTitleScreen)
{
	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 2133402A
	/// @DnDParent : 5D6E07F0
	instance_destroy();

	/// @DnDAction : YoYo Games.Common.Exit_Event
	/// @DnDVersion : 1
	/// @DnDHash : 3A3E1862
	/// @DnDParent : 5D6E07F0
	exit;
}

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 683A5E26
/// @DnDArgument : "expr" "3"
/// @DnDArgument : "var" "Balls"
Balls = 3;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 1B0E1887
/// @DnDArgument : "var" "state"
state = 0;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 73E6D525
/// @DnDArgument : "expr" "false"
/// @DnDArgument : "var" "EndOfLevel"
EndOfLevel = false;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 5E7080CD
/// @DnDArgument : "expr" "false"
/// @DnDArgument : "var" "EndOfGame"
EndOfGame = false;

/// @DnDAction : YoYo Games.Common.Temp_Variable
/// @DnDVersion : 1
/// @DnDHash : 596E41E9
/// @DnDArgument : "var" "found"
/// @DnDArgument : "value" "false"
var found = false;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 179191DA
/// @DnDArgument : "expr" "layer_tilemap_get_id("Bricks")"
/// @DnDArgument : "var" "bricks"
bricks = layer_tilemap_get_id("Bricks");

/// @DnDAction : YoYo Games.Common.Temp_Variable
/// @DnDVersion : 1
/// @DnDHash : 0271E50F
/// @DnDArgument : "var" "ww"
/// @DnDArgument : "value" "tilemap_get_width(bricks)"
var ww = tilemap_get_width(bricks);

/// @DnDAction : YoYo Games.Common.Temp_Variable
/// @DnDVersion : 1
/// @DnDHash : 40128E9F
/// @DnDArgument : "var" "hh"
/// @DnDArgument : "value" "tilemap_get_height(bricks)"
var hh = tilemap_get_height(bricks);

/// @DnDAction : YoYo Games.Data Structures.Create_Grid
/// @DnDVersion : 1
/// @DnDHash : 5ACC14EC
/// @DnDArgument : "var" "hits"
/// @DnDArgument : "var_temp" "1"
/// @DnDArgument : "width" "ww"
/// @DnDArgument : "height" "hh"
var hits = ds_grid_create(ww, hh);

/// @DnDAction : YoYo Games.Common.Set_Global
/// @DnDVersion : 1
/// @DnDHash : 7EEF6F62
/// @DnDArgument : "value" "hits"
/// @DnDArgument : "var" "hits"
global.hits = hits;

/// @DnDAction : YoYo Games.Common.Temp_Variable
/// @DnDVersion : 1
/// @DnDHash : 20CCDD62
/// @DnDArgument : "var" "yy"
/// @DnDArgument : "value" "0"
var yy = 0;

/// @DnDAction : YoYo Games.Loops.Repeat
/// @DnDVersion : 1
/// @DnDHash : 60768860
/// @DnDArgument : "times" "hh - 1"
repeat(hh - 1)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 3A3BDB8D
	/// @DnDParent : 60768860
	/// @DnDArgument : "expr" "1"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "yy"
	yy += 1;

	/// @DnDAction : YoYo Games.Common.Temp_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 4B5034E9
	/// @DnDParent : 60768860
	/// @DnDArgument : "var" "xx"
	/// @DnDArgument : "value" "0"
	var xx = 0;

	/// @DnDAction : YoYo Games.Loops.Repeat
	/// @DnDVersion : 1
	/// @DnDHash : 0FF483EF
	/// @DnDParent : 60768860
	/// @DnDArgument : "times" "ww - 1"
	repeat(ww - 1)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 07551431
		/// @DnDParent : 0FF483EF
		/// @DnDArgument : "expr" "1"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "var" "xx"
		xx += 1;
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 584FAC8E
		/// @DnDParent : 0FF483EF
		/// @DnDArgument : "expr" "tilemap_get(bricks, xx, yy)"
		/// @DnDArgument : "var" "t"
		t = tilemap_get(bricks, xx, yy);
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 52FAD1EF
		/// @DnDParent : 0FF483EF
		/// @DnDArgument : "expr" "t & tile_index_mask"
		/// @DnDArgument : "var" "t"
		t = t & tile_index_mask;
	
		/// @DnDAction : YoYo Games.Common.Temp_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 482D9099
		/// @DnDParent : 0FF483EF
		/// @DnDArgument : "var" "hit"
		/// @DnDArgument : "value" "1"
		var hit = 1;
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 71C61D7F
		/// @DnDParent : 0FF483EF
		/// @DnDArgument : "var" "t"
		/// @DnDArgument : "value" "4"
		if(t == 4)
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 23B8CF9F
			/// @DnDParent : 71C61D7F
			/// @DnDArgument : "expr" "2"
			/// @DnDArgument : "var" "hit"
			hit = 2;
		}
	
		/// @DnDAction : YoYo Games.Data Structures.Grid_Set_Value
		/// @DnDVersion : 1
		/// @DnDHash : 3DE65EC4
		/// @DnDParent : 0FF483EF
		/// @DnDArgument : "var" "hits"
		/// @DnDArgument : "x" "xx"
		/// @DnDArgument : "y" "yy"
		/// @DnDArgument : "value" "hit"
		ds_grid_set(hits, xx, yy, hit);
	}
}