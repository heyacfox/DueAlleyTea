/// @DnDAction : YoYo Games.Common.Temp_Variable
/// @DnDVersion : 1
/// @DnDHash : 0FC7918C
/// @DnDArgument : "var" "sw"
/// @DnDArgument : "value" "sprite_get_width(sBat) * 0.5"
var sw = sprite_get_width(sBat) * 0.5;

/// @DnDAction : YoYo Games.Movement.Jump_To_Point
/// @DnDVersion : 1
/// @DnDHash : 0F71D1A2
/// @DnDArgument : "x" "mouse_x"
x = mouse_x;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 2E1949C9
/// @DnDArgument : "var" "x"
/// @DnDArgument : "op" "2"
/// @DnDArgument : "value" "room_width - sw - 16"
if(x > room_width - sw - 16)
{
	/// @DnDAction : YoYo Games.Movement.Jump_To_Point
	/// @DnDVersion : 1
	/// @DnDHash : 1CF5C0D4
	/// @DnDParent : 2E1949C9
	/// @DnDArgument : "x" "room_width - sw - 16"
	x = room_width - sw - 16;
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 24FC1B77
else
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 1BE6B18F
	/// @DnDParent : 24FC1B77
	/// @DnDArgument : "var" "x"
	/// @DnDArgument : "op" "1"
	/// @DnDArgument : "value" "16 + sw"
	if(x < 16 + sw)
	{
		/// @DnDAction : YoYo Games.Movement.Jump_To_Point
		/// @DnDVersion : 1
		/// @DnDHash : 777AB0F0
		/// @DnDParent : 1BE6B18F
		/// @DnDArgument : "x" "16 + sw"
		x = 16 + sw;
	}
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 6D45D77F
/// @DnDArgument : "var" "state"
/// @DnDArgument : "value" "1"
if(state == 1)
{
	/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
	/// @DnDVersion : 1
	/// @DnDHash : 0AA9DD1C
	/// @DnDParent : 6D45D77F
	/// @DnDArgument : "obj" "oBall"
	/// @DnDArgument : "not" "1"
	/// @DnDSaveInfo : "obj" "oBall"
	var l0AA9DD1C_0 = false;
	l0AA9DD1C_0 = instance_exists(oBall);
	if(!l0AA9DD1C_0)
	{
		/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
		/// @DnDVersion : 1
		/// @DnDHash : 6914BA72
		/// @DnDParent : 0AA9DD1C
		/// @DnDArgument : "obj" "oMultiBall"
		/// @DnDArgument : "not" "1"
		/// @DnDSaveInfo : "obj" "oMultiBall"
		var l6914BA72_0 = false;
		l6914BA72_0 = instance_exists(oMultiBall);
		if(!l6914BA72_0)
		{
			/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
			/// @DnDVersion : 1
			/// @DnDHash : 4C2C6F4B
			/// @DnDParent : 6914BA72
			/// @DnDArgument : "obj" "oPickup"
			/// @DnDArgument : "not" "1"
			/// @DnDSaveInfo : "obj" "oPickup"
			var l4C2C6F4B_0 = false;
			l4C2C6F4B_0 = instance_exists(oPickup);
			if(!l4C2C6F4B_0)
			{
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 161753EF
				/// @DnDParent : 4C2C6F4B
				/// @DnDArgument : "var" "state"
				state = 0;
			
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 2298FD11
				/// @DnDParent : 4C2C6F4B
				/// @DnDArgument : "expr" "-1"
				/// @DnDArgument : "expr_relative" "1"
				/// @DnDArgument : "var" "Balls"
				Balls += -1;
			
				/// @DnDAction : YoYo Games.Common.If_Variable
				/// @DnDVersion : 1
				/// @DnDHash : 1BF494D2
				/// @DnDParent : 4C2C6F4B
				/// @DnDArgument : "var" "Balls"
				if(Balls == 0)
				{
					/// @DnDAction : YoYo Games.Common.If_Expression
					/// @DnDVersion : 1
					/// @DnDHash : 55F139E6
					/// @DnDParent : 1BF494D2
					/// @DnDArgument : "expr" "EndOfGame"
					/// @DnDArgument : "not" "1"
					if(!(EndOfGame))
					{
						/// @DnDAction : YoYo Games.Common.Variable
						/// @DnDVersion : 1
						/// @DnDHash : 2840C538
						/// @DnDParent : 55F139E6
						/// @DnDArgument : "expr" "true"
						/// @DnDArgument : "var" "EndOfGame"
						EndOfGame = true;
					
						/// @DnDAction : YoYo Games.Instances.Set_Alarm
						/// @DnDVersion : 1
						/// @DnDHash : 321E1342
						/// @DnDParent : 55F139E6
						/// @DnDArgument : "steps" "120"
						/// @DnDArgument : "alarm" "2"
						alarm_set(2, 120);
					}
				}
			}
		}
	}
}

/// @DnDAction : YoYo Games.Common.Temp_Variable
/// @DnDVersion : 1
/// @DnDHash : 60460F9E
/// @DnDArgument : "var" "ww"
/// @DnDArgument : "value" "tilemap_get_width(bricks)"
var ww = tilemap_get_width(bricks);

/// @DnDAction : YoYo Games.Common.Temp_Variable
/// @DnDVersion : 1
/// @DnDHash : 0EFB07D1
/// @DnDArgument : "var" "hh"
/// @DnDArgument : "value" "tilemap_get_height(bricks)"
var hh = tilemap_get_height(bricks);

/// @DnDAction : YoYo Games.Common.Temp_Variable
/// @DnDVersion : 1
/// @DnDHash : 075B8EA1
/// @DnDArgument : "var" "found"
/// @DnDArgument : "value" "false"
var found = false;

/// @DnDAction : YoYo Games.Common.Temp_Variable
/// @DnDVersion : 1
/// @DnDHash : 3303D5CC
/// @DnDArgument : "var" "yy"
/// @DnDArgument : "value" "0"
var yy = 0;

/// @DnDAction : YoYo Games.Loops.Repeat
/// @DnDVersion : 1
/// @DnDHash : 3690AE8D
/// @DnDArgument : "times" "hh - 1"
repeat(hh - 1)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 206389B1
	/// @DnDParent : 3690AE8D
	/// @DnDArgument : "expr" "1"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "yy"
	yy += 1;

	/// @DnDAction : YoYo Games.Common.Temp_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 4353BD9A
	/// @DnDParent : 3690AE8D
	/// @DnDArgument : "var" "xx"
	/// @DnDArgument : "value" "0"
	var xx = 0;

	/// @DnDAction : YoYo Games.Loops.Repeat
	/// @DnDVersion : 1
	/// @DnDHash : 2837EEA8
	/// @DnDParent : 3690AE8D
	/// @DnDArgument : "times" "ww - 1"
	repeat(ww - 1)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 0F11ACCE
		/// @DnDParent : 2837EEA8
		/// @DnDArgument : "expr" "1"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "var" "xx"
		xx += 1;
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 52112418
		/// @DnDParent : 2837EEA8
		/// @DnDArgument : "expr" "tilemap_get(bricks, xx, yy)"
		/// @DnDArgument : "var" "t"
		t = tilemap_get(bricks, xx, yy);
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 6A7939DF
		/// @DnDParent : 2837EEA8
		/// @DnDArgument : "expr" "t & tile_index_mask"
		/// @DnDArgument : "var" "t"
		t = t & tile_index_mask;
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 1D2969E3
		/// @DnDParent : 2837EEA8
		/// @DnDArgument : "var" "t"
		/// @DnDArgument : "not" "1"
		if(!(t == 0))
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 364BF120
			/// @DnDParent : 1D2969E3
			/// @DnDArgument : "expr" "true"
			/// @DnDArgument : "var" "found"
			found = true;
		
			/// @DnDAction : YoYo Games.Loops.Break
			/// @DnDVersion : 1
			/// @DnDHash : 41FE1397
			/// @DnDParent : 1D2969E3
			break;
		}
	}

	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 554A7A44
	/// @DnDParent : 3690AE8D
	/// @DnDArgument : "expr" "found"
	if(found)
	{
		/// @DnDAction : YoYo Games.Loops.Break
		/// @DnDVersion : 1
		/// @DnDHash : 7BC3D432
		/// @DnDParent : 554A7A44
		break;
	}
}

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 5EEA1F1D
/// @DnDArgument : "expr" "found"
/// @DnDArgument : "not" "1"
if(!(found))
{
	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 10DA69D0
	/// @DnDParent : 5EEA1F1D
	/// @DnDArgument : "expr" "EndOfLevel"
	/// @DnDArgument : "not" "1"
	if(!(EndOfLevel))
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 37C393A7
		/// @DnDParent : 10DA69D0
		/// @DnDArgument : "expr" "true"
		/// @DnDArgument : "var" "EndOfLevel"
		EndOfLevel = true;
	
		/// @DnDAction : YoYo Games.Instances.Set_Alarm
		/// @DnDVersion : 1
		/// @DnDHash : 0A65F8CF
		/// @DnDParent : 10DA69D0
		/// @DnDArgument : "steps" "120"
		alarm_set(0, 120);
	}
}