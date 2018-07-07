#macro GAME_WIDTH 1280
#macro GAME_FPS 60
room_goto_next();

#macro DEPTH_MANAGER -1

global.thisGame=id;
game_set_speed(GAME_FPS,gamespeed_fps);

fightManager=instance_create_depth(0,0,DEPTH_MANAGER,obj_fightManager);

global.font_CN_NORMAL=font_add("ARIALUNI_fixed.ttf",32,0,0,32,128);


#region Role
enum Role{
	ASUNA,
	
	
	
	
	BOAR,
	
	
	
}

enum RoleType{
	PLAYER,
	ENEMY
	
	
}
#endregion

#region Item
#macro ITEMS_ID_START_MEDICINE 0
#macro ITEMS_ID_START_WEAPON 10
enum ItemId{
	SMALL_HEALING	=ITEMS_ID_START_MEDICINE+0,
	MEDICINE_MAX_ID	=ITEMS_ID_START_MEDICINE+1,
	
	IRONY_SWORD		=ITEMS_ID_START_WEAPON+0,	
	WEAPON_MAX_ID	=ITEMS_ID_START_WEAPON+1,
	
	MAX				=ItemId.WEAPON_MAX_ID+1
}

enum WeaponType{
	SWORD	
}

#macro ITEM_COLUMN_NAME 0
#macro ITEM_COLUMN_DESCRIPTION 1
#macro ITEM_COLUMN_CAPABILITY 2
#macro NUM_COLUMN_ITEM_INFO 3
grid_item_Info=ds_grid_create(NUM_COLUMN_WEAPON_INFO,ItemId.MAX);

#macro WEAPON_COLUMN_ID 0
#macro WEAPON_COLUMN_POWER 1
#macro WEAPON_COLUMN_WEIGHT 2
#macro WEAPON_COLUMN_TYPE 3
#macro NUM_COLUMN_WEAPON_INFO 4
grid_weapon_Info=ds_grid_create(NUM_COLUMN_WEAPON_INFO,0);

registItem(ItemId.SMALL_HEALING,"小回复药","回复少量[生命值]",3);

registWeapon(ItemId.IRONY_SWORD,"铁剑","铁质剑类武器",40,5,3,WeaponType.SWORD);



#endregion