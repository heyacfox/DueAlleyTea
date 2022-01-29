/// @DnDAction : YoYo Games.Movement.Jump_To_Point
/// @DnDVersion : 1
/// @DnDHash : 7F8F702E
/// @DnDArgument : "x" "dx"
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "dy"
/// @DnDArgument : "y_relative" "1"
x += dx;
y += dy;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 389D96F3
/// @DnDArgument : "var" "x"
/// @DnDArgument : "op" "1"
/// @DnDArgument : "value" "3 + 16"
if(x < 3 + 16)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 218C6A61
	/// @DnDParent : 389D96F3
	/// @DnDArgument : "expr" "-dx"
	/// @DnDArgument : "var" "dx"
	dx = -dx;

	/// @DnDAction : YoYo Games.Movement.Jump_To_Point
	/// @DnDVersion : 1
	/// @DnDHash : 3A55116E
	/// @DnDParent : 389D96F3
	/// @DnDArgument : "x" "3 + 16"
	x = 3 + 16;
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 124B3EA9
else
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 6E1EF456
	/// @DnDParent : 124B3EA9
	/// @DnDArgument : "var" "x"
	/// @DnDArgument : "op" "2"
	/// @DnDArgument : "value" "room_width - 3 - 16"
	if(x > room_width - 3 - 16)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 670F1C11
		/// @DnDParent : 6E1EF456
		/// @DnDArgument : "expr" "-dx"
		/// @DnDArgument : "var" "dx"
		dx = -dx;
	
		/// @DnDAction : YoYo Games.Movement.Jump_To_Point
		/// @DnDVersion : 1
		/// @DnDHash : 68C28A3B
		/// @DnDParent : 6E1EF456
		/// @DnDArgument : "x" "room_width - 3 - 16"
		x = room_width - 3 - 16;
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 17421205
	/// @DnDParent : 124B3EA9
	else
	{
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 69E875C8
		/// @DnDParent : 17421205
		/// @DnDArgument : "var" "y"
		/// @DnDArgument : "op" "1"
		/// @DnDArgument : "value" "64 + 3 + 16"
		if(y < 64 + 3 + 16)
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 18B4DD98
			/// @DnDParent : 69E875C8
			/// @DnDArgument : "expr" "-dy"
			/// @DnDArgument : "var" "dy"
			dy = -dy;
		
			/// @DnDAction : YoYo Games.Movement.Jump_To_Point
			/// @DnDVersion : 1
			/// @DnDHash : 1F85EB17
			/// @DnDParent : 69E875C8
			/// @DnDArgument : "y" "64 + 3 + 16"
			
			y = 64 + 3 + 16;
		}
	
		/// @DnDAction : YoYo Games.Common.Else
		/// @DnDVersion : 1
		/// @DnDHash : 03E79E60
		/// @DnDParent : 17421205
		else
		{
			/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 06F96521
			/// @DnDParent : 03E79E60
			/// @DnDArgument : "var" "y"
			/// @DnDArgument : "not" "1"
			/// @DnDArgument : "op" "2"
			/// @DnDArgument : "value" "room_height - 8"
			if(!(y > room_height - 8))
			{
				/// @DnDAction : YoYo Games.Tiles.Tile_Get_At_Pixel
				/// @DnDVersion : 1
				/// @DnDHash : 28A2C5E6
				/// @DnDParent : 06F96521
				/// @DnDArgument : "x_relative" "1"
				/// @DnDArgument : "y" "-3"
				/// @DnDArgument : "y_relative" "1"
				/// @DnDArgument : "var" "block"
				/// @DnDArgument : "var_temp" "1"
				/// @DnDArgument : "layername" ""Bricks""
				var l28A2C5E6_0 = layer_tilemap_get_id("Bricks");
				var block = undefined;
				if(l28A2C5E6_0 > -1) {
					var l28A2C5E6_1 = tilemap_get_at_pixel(l28A2C5E6_0, x + 0, y + -3);
					if(l28A2C5E6_1 > -1) block = tile_get_index(l28A2C5E6_1);
				}
			
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 02E08CB8
				/// @DnDParent : 06F96521
				/// @DnDArgument : "expr" "block & tile_index_mask"
				/// @DnDArgument : "var" "block"
				block = block & tile_index_mask;
			
				/// @DnDAction : YoYo Games.Common.If_Variable
				/// @DnDVersion : 1
				/// @DnDHash : 72ACCBBF
				/// @DnDParent : 06F96521
				/// @DnDArgument : "var" "block"
				/// @DnDArgument : "not" "1"
				if(!(block == 0))
				{
					/// @DnDAction : YoYo Games.Common.Execute_Script
					/// @DnDVersion : 1.1
					/// @DnDHash : 36B75AE0
					/// @DnDInput : 2
					/// @DnDParent : 72ACCBBF
					/// @DnDArgument : "script" "ClearBlock"
					/// @DnDArgument : "arg" "x"
					/// @DnDArgument : "arg_1" "y - 3"
					/// @DnDSaveInfo : "script" "ClearBlock"
					script_execute(ClearBlock, x, y - 3);
				
					/// @DnDAction : YoYo Games.Common.Variable
					/// @DnDVersion : 1
					/// @DnDHash : 3221E9FD
					/// @DnDParent : 72ACCBBF
					/// @DnDArgument : "expr" "-dy"
					/// @DnDArgument : "var" "dy"
					dy = -dy;
				}
			
				/// @DnDAction : YoYo Games.Tiles.Tile_Get_At_Pixel
				/// @DnDVersion : 1
				/// @DnDHash : 33185D87
				/// @DnDParent : 06F96521
				/// @DnDArgument : "x" "-3"
				/// @DnDArgument : "x_relative" "1"
				/// @DnDArgument : "y_relative" "1"
				/// @DnDArgument : "var" "block"
				/// @DnDArgument : "var_temp" "1"
				/// @DnDArgument : "layername" ""Bricks""
				var l33185D87_0 = layer_tilemap_get_id("Bricks");
				var block = undefined;
				if(l33185D87_0 > -1) {
					var l33185D87_1 = tilemap_get_at_pixel(l33185D87_0, x + -3, y + 0);
					if(l33185D87_1 > -1) block = tile_get_index(l33185D87_1);
				}
			
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 3B08035A
				/// @DnDParent : 06F96521
				/// @DnDArgument : "expr" "block & tile_index_mask"
				/// @DnDArgument : "var" "block"
				block = block & tile_index_mask;
			
				/// @DnDAction : YoYo Games.Common.If_Variable
				/// @DnDVersion : 1
				/// @DnDHash : 7178966A
				/// @DnDParent : 06F96521
				/// @DnDArgument : "var" "block"
				/// @DnDArgument : "not" "1"
				if(!(block == 0))
				{
					/// @DnDAction : YoYo Games.Common.Execute_Script
					/// @DnDVersion : 1.1
					/// @DnDHash : 42A7097B
					/// @DnDInput : 2
					/// @DnDParent : 7178966A
					/// @DnDArgument : "script" "ClearBlock"
					/// @DnDArgument : "arg" "x - 3"
					/// @DnDArgument : "arg_1" "y"
					/// @DnDSaveInfo : "script" "ClearBlock"
					script_execute(ClearBlock, x - 3, y);
				
					/// @DnDAction : YoYo Games.Common.Variable
					/// @DnDVersion : 1
					/// @DnDHash : 041C3FD9
					/// @DnDParent : 7178966A
					/// @DnDArgument : "expr" "-dx"
					/// @DnDArgument : "var" "dx"
					dx = -dx;
				}
			
				/// @DnDAction : YoYo Games.Tiles.Tile_Get_At_Pixel
				/// @DnDVersion : 1
				/// @DnDHash : 0BE4D4E6
				/// @DnDParent : 06F96521
				/// @DnDArgument : "x" "3"
				/// @DnDArgument : "x_relative" "1"
				/// @DnDArgument : "y_relative" "1"
				/// @DnDArgument : "var" "block"
				/// @DnDArgument : "var_temp" "1"
				/// @DnDArgument : "layername" ""Bricks""
				var l0BE4D4E6_0 = layer_tilemap_get_id("Bricks");
				var block = undefined;
				if(l0BE4D4E6_0 > -1) {
					var l0BE4D4E6_1 = tilemap_get_at_pixel(l0BE4D4E6_0, x + 3, y + 0);
					if(l0BE4D4E6_1 > -1) block = tile_get_index(l0BE4D4E6_1);
				}
			
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 13B2ADED
				/// @DnDParent : 06F96521
				/// @DnDArgument : "expr" "block & tile_index_mask"
				/// @DnDArgument : "var" "block"
				block = block & tile_index_mask;
			
				/// @DnDAction : YoYo Games.Common.If_Variable
				/// @DnDVersion : 1
				/// @DnDHash : 215B84EE
				/// @DnDParent : 06F96521
				/// @DnDArgument : "var" "block"
				/// @DnDArgument : "not" "1"
				if(!(block == 0))
				{
					/// @DnDAction : YoYo Games.Common.Execute_Script
					/// @DnDVersion : 1.1
					/// @DnDHash : 3D9933B6
					/// @DnDInput : 2
					/// @DnDParent : 215B84EE
					/// @DnDArgument : "script" "ClearBlock"
					/// @DnDArgument : "arg" "x + 3"
					/// @DnDArgument : "arg_1" "y"
					/// @DnDSaveInfo : "script" "ClearBlock"
					script_execute(ClearBlock, x + 3, y);
				
					/// @DnDAction : YoYo Games.Common.Variable
					/// @DnDVersion : 1
					/// @DnDHash : 65EB6D78
					/// @DnDParent : 215B84EE
					/// @DnDArgument : "expr" "-dx"
					/// @DnDArgument : "var" "dx"
					dx = -dx;
				}
			
				/// @DnDAction : YoYo Games.Tiles.Tile_Get_At_Pixel
				/// @DnDVersion : 1
				/// @DnDHash : 72FC7460
				/// @DnDParent : 06F96521
				/// @DnDArgument : "x_relative" "1"
				/// @DnDArgument : "y" "+3"
				/// @DnDArgument : "y_relative" "1"
				/// @DnDArgument : "var" "block"
				/// @DnDArgument : "var_temp" "1"
				/// @DnDArgument : "layername" ""Bricks""
				var l72FC7460_0 = layer_tilemap_get_id("Bricks");
				var block = undefined;
				if(l72FC7460_0 > -1) {
					var l72FC7460_1 = tilemap_get_at_pixel(l72FC7460_0, x + 0, y + +3);
					if(l72FC7460_1 > -1) block = tile_get_index(l72FC7460_1);
				}
			
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 29F004CD
				/// @DnDParent : 06F96521
				/// @DnDArgument : "expr" "block & tile_index_mask"
				/// @DnDArgument : "var" "block"
				block = block & tile_index_mask;
			
				/// @DnDAction : YoYo Games.Common.If_Variable
				/// @DnDVersion : 1
				/// @DnDHash : 5DA100E3
				/// @DnDParent : 06F96521
				/// @DnDArgument : "var" "block"
				/// @DnDArgument : "not" "1"
				if(!(block == 0))
				{
					/// @DnDAction : YoYo Games.Common.Execute_Script
					/// @DnDVersion : 1.1
					/// @DnDHash : 4FE0B9A5
					/// @DnDInput : 2
					/// @DnDParent : 5DA100E3
					/// @DnDArgument : "script" "ClearBlock"
					/// @DnDArgument : "arg" "x"
					/// @DnDArgument : "arg_1" "y + 3"
					/// @DnDSaveInfo : "script" "ClearBlock"
					script_execute(ClearBlock, x, y + 3);
				
					/// @DnDAction : YoYo Games.Common.Variable
					/// @DnDVersion : 1
					/// @DnDHash : 4FC7DDE7
					/// @DnDParent : 5DA100E3
					/// @DnDArgument : "expr" "-dy"
					/// @DnDArgument : "var" "dy"
					dy = -dy;
				}
			}
		}
	}
}