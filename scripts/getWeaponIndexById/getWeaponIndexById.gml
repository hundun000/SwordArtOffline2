///@arg itemId
var itemId=argument0;
var weaponGrid=global.thisGame.grid_weapon_Info;

var height=ds_grid_height(weaponGrid);
for(var i=0;i<height;i++){
	if(weaponGrid[# WEAPON_COLUMN_ID,i]==itemId)
		return i;
}
return -1;