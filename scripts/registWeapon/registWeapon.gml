///@arg itemId
///@arg itemName
///@arg itemDescription
///@arg itemCapability
///@arg weaponPower
///@arg weaponWeight
///@arg weaponType

var itemId=argument0;
var itemName=argument1;
var itemDescription=argument2;
var itemCapability=argument3;
var weaponPower=argument4;
var weaponWeight=argument5;
var weaponType=argument6;

registItem(itemId,itemName,itemDescription,itemCapability);

var grid_weapon_Info=global.thisGame.grid_weapon_Info;

var height=ds_grid_height(grid_weapon_Info);
ds_grid_resize(grid_weapon_Info,NUM_COLUMN_WEAPON_INFO,height+1);

grid_weapon_Info[# WEAPON_COLUMN_ID,height]=itemId;	
grid_weapon_Info[# WEAPON_COLUMN_POWER,height]=weaponPower;	
grid_weapon_Info[# WEAPON_COLUMN_WEIGHT,height]=weaponWeight;
grid_weapon_Info[# WEAPON_COLUMN_TYPE,height]=weaponType;
		