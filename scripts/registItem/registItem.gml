///@arg itemType
///@arg itemName
///@arg itemDescription
///@arg itemCapability
var itemType=argument0;
var itemName=argument1;
var itemDescription=argument2;
var itemCapability=argument3;

var grid_item_Info=global.thisGame.grid_item_Info;

grid_item_Info[# ITEM_COLUMN_NAME,itemType]=itemName;	
grid_item_Info[# ITEM_COLUMN_DESCRIPTION,itemType]=itemDescription;	
grid_item_Info[# ITEM_COLUMN_CAPABILITY,itemType]=itemCapability;	