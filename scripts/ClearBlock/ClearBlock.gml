/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 1D17729A
/// @DnDInput : 2
/// @DnDArgument : "funcName" "ClearBlock"
/// @DnDArgument : "arg" "argument0"
/// @DnDArgument : "arg_1" "argument1"
function ClearBlock(argument0, argument1) 
{
	/// @DnDAction : YoYo Games.Common.Temp_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 3A4CD544
	/// @DnDParent : 1D17729A
	/// @DnDArgument : "var" "xx"
	/// @DnDArgument : "value" "(argument0 - 16) & ~31"
	var xx = (argument0 - 16) & ~31;

	/// @DnDAction : YoYo Games.Common.Temp_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 473E506C
	/// @DnDParent : 1D17729A
	/// @DnDArgument : "var" "yy"
	/// @DnDArgument : "value" "argument1 & ~15"
	var yy = argument1 & ~15;

	/// @DnDAction : YoYo Games.Common.Get_Global
	/// @DnDVersion : 1
	/// @DnDHash : 6571411A
	/// @DnDParent : 1D17729A
	/// @DnDArgument : "output" "grid"
	/// @DnDArgument : "output_temp" "1"
	/// @DnDArgument : "var" "hits"
	var grid = global.hits;

	/// @DnDAction : YoYo Games.Data Structures.Grid_Get_Value
	/// @DnDVersion : 1
	/// @DnDHash : 29C56555
	/// @DnDParent : 1D17729A
	/// @DnDArgument : "assignee" "count"
	/// @DnDArgument : "assignee_temp" "1"
	/// @DnDArgument : "x" "argument0 >> 5"
	/// @DnDArgument : "y" "argument1 >> 4"
	var count = ds_grid_get(grid, argument0 >> 5, argument1 >> 4);

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 79AA4DB9
	/// @DnDParent : 1D17729A
	/// @DnDArgument : "expr" "-1"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "count"
	count += -1;

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 4C674F2B
	/// @DnDParent : 1D17729A
	/// @DnDArgument : "var" "count"
	/// @DnDArgument : "op" "3"
	if(count <= 0)
	{
		/// @DnDAction : YoYo Games.Tiles.Tile_Set_At_Pixel
		/// @DnDVersion : 1
		/// @DnDHash : 45786165
		/// @DnDParent : 4C674F2B
		/// @DnDArgument : "x" "argument0"
		/// @DnDArgument : "y" "argument1"
		/// @DnDArgument : "layername" ""Bricks""
		var l45786165_0 = layer_tilemap_get_id("Bricks");
		if(l45786165_0 > -1) {
			var l45786165_1 = tilemap_get_at_pixel(l45786165_0, argument0, argument1);
			if(l45786165_1 > -1) {
				l45786165_1 = tile_set_index(l45786165_1, 0);
				if(l45786165_1 > -1) tilemap_set_at_pixel(l45786165_0, l45786165_1, argument0, argument1);
			}
		}
	
		/// @DnDAction : YoYo Games.Tiles.Tile_Set_At_Pixel
		/// @DnDVersion : 1
		/// @DnDHash : 2C417708
		/// @DnDParent : 4C674F2B
		/// @DnDArgument : "x" "argument0 + 16"
		/// @DnDArgument : "y" "argument1 + 16"
		/// @DnDArgument : "layername" ""Shadows""
		var l2C417708_0 = layer_tilemap_get_id("Shadows");
		if(l2C417708_0 > -1) {
			var l2C417708_1 = tilemap_get_at_pixel(l2C417708_0, argument0 + 16, argument1 + 16);
			if(l2C417708_1 > -1) {
				l2C417708_1 = tile_set_index(l2C417708_1, 0);
				if(l2C417708_1 > -1) tilemap_set_at_pixel(l2C417708_0, l2C417708_1, argument0 + 16, argument1 + 16);
			}
		}
	
		/// @DnDAction : YoYo Games.Common.Set_Global
		/// @DnDVersion : 1
		/// @DnDHash : 6E7C0B7B
		/// @DnDParent : 4C674F2B
		/// @DnDArgument : "value" "80"
		/// @DnDArgument : "value_relative" "1"
		/// @DnDArgument : "var" "myscore"
		global.myscore += 80;
	
		/// @DnDAction : YoYo Games.Random.Get_Random_Number
		/// @DnDVersion : 1
		/// @DnDHash : 6E788E82
		/// @DnDParent : 4C674F2B
		/// @DnDArgument : "var" "chance"
		/// @DnDArgument : "var_temp" "1"
		/// @DnDArgument : "type" "1"
		/// @DnDArgument : "max" "100"
		var chance = floor(random_range(0, 100 + 1));
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 5C4B1EF9
		/// @DnDParent : 4C674F2B
		/// @DnDArgument : "var" "chance"
		/// @DnDArgument : "op" "1"
		/// @DnDArgument : "value" "20"
		if(chance < 20)
		{
			/// @DnDAction : YoYo Games.Common.Temp_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 170AF8B9
			/// @DnDParent : 5C4B1EF9
			/// @DnDArgument : "var" "pickup"
			var pickup;
		
			/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 07C917B7
			/// @DnDParent : 5C4B1EF9
			/// @DnDArgument : "var" "chance"
			/// @DnDArgument : "op" "1"
			/// @DnDArgument : "value" "10"
			if(chance < 10)
			{
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 07807222
				/// @DnDParent : 07C917B7
				/// @DnDArgument : "expr" "oPickup"
				/// @DnDArgument : "var" "pickup"
				pickup = oPickup;
			}
		
			/// @DnDAction : YoYo Games.Common.Else
			/// @DnDVersion : 1
			/// @DnDHash : 69D3C8BD
			/// @DnDParent : 5C4B1EF9
			else
			{
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 28FA5022
				/// @DnDParent : 69D3C8BD
				/// @DnDArgument : "expr" "oMultiBall"
				/// @DnDArgument : "var" "pickup"
				pickup = oMultiBall;
			}
		
			/// @DnDAction : YoYo Games.Instances.Create_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 6D3403CC
			/// @DnDParent : 5C4B1EF9
			/// @DnDArgument : "xpos" "xx + 16"
			/// @DnDArgument : "ypos" "yy"
			/// @DnDArgument : "objectid" "pickup"
			/// @DnDArgument : "layer" ""Pickups""
			instance_create_layer(xx + 16, yy, "Pickups", pickup);
		}
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 3E0373E5
	/// @DnDParent : 1D17729A
	else
	{
		/// @DnDAction : YoYo Games.Tiles.Tile_Get_At_Pixel
		/// @DnDVersion : 1
		/// @DnDHash : 1EE6E965
		/// @DnDParent : 3E0373E5
		/// @DnDArgument : "x" "argument0"
		/// @DnDArgument : "y" "argument1"
		/// @DnDArgument : "var" "t"
		/// @DnDArgument : "var_temp" "1"
		/// @DnDArgument : "layername" ""Bricks""
		var l1EE6E965_0 = layer_tilemap_get_id("Bricks");
		var t = undefined;
		if(l1EE6E965_0 > -1) {
			var l1EE6E965_1 = tilemap_get_at_pixel(l1EE6E965_0, argument0, argument1);
			if(l1EE6E965_1 > -1) t = tile_get_index(l1EE6E965_1);
		}
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 6DAF27B5
		/// @DnDParent : 3E0373E5
		/// @DnDArgument : "expr" "t & tile_index_mask"
		/// @DnDArgument : "var" "t"
		t = t & tile_index_mask;
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 7A1A4875
		/// @DnDParent : 3E0373E5
		/// @DnDArgument : "var" "t"
		/// @DnDArgument : "value" "4"
		if(t == 4)
		{
			/// @DnDAction : YoYo Games.Instances.Create_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 7B73DC61
			/// @DnDParent : 7A1A4875
			/// @DnDArgument : "xpos" "xx + 16"
			/// @DnDArgument : "ypos" "yy"
			/// @DnDArgument : "objectid" "oBlockStrike"
			/// @DnDArgument : "layer" ""Pickups""
			/// @DnDSaveInfo : "objectid" "oBlockStrike"
			instance_create_layer(xx + 16, yy, "Pickups", oBlockStrike);
		}
	
		/// @DnDAction : YoYo Games.Data Structures.Grid_Set_Value
		/// @DnDVersion : 1
		/// @DnDHash : 2B76FDD8
		/// @DnDParent : 3E0373E5
		/// @DnDArgument : "x" "argument0 >> 5"
		/// @DnDArgument : "y" "argument1 >> 4"
		/// @DnDArgument : "value" "count"
		ds_grid_set(grid, argument0 >> 5, argument1 >> 4, count);
	}
}