///@arg role
///@arg indexTarget
var role=argument0;
var indexTarget=argument1;
var weaponGrid=global.thisGame.grid_weapon_Info;

var itemIdTarget=role.grid_package[# PACKAGE_COLUMN_ITEM_ID,indexTarget];
var weaponIndex=getWeaponIndexById(itemIdTarget);
if(weaponIndex!=-1){
	var weaponType=weaponGrid[# WEAPON_COLUMN_TYPE,weaponIndex];
	if(role.CAN_USE_WEAPON_TYPE[weaponType])
		return true;
}

return false;