
#macro NUM_MAX_ROLE_ITEM 4

#macro PACKAGE_COLUMN_ITEM_ID 0
#macro PACKAGE_COLUMN_ITEM_NUM 1

#macro NUM_COLUMN_PACKAGE_INFO 2

grid_package=ds_grid_create(NUM_COLUMN_PACKAGE_INFO,NUM_MAX_ROLE_ITEM);
curWeaponIndex=-1;
curNumItem=0;

//list_buff=noone;



//default
CAN_USE_WEAPON_TYPE[WeaponType.SWORD]=false;

xp=0;

//need to be set for each role
REGIST_NAME=noone;
LOCAL_NAME=noone;
ROLE_TYPE=noone;
MAX_MOVEMENT=-1; 

FIGHT_SPRITE_NORMAL=noone;
FIGHT_SPRITE_ATTACK=noone;
FIGHT_SPRITE_MISS=noone;

ATTACK_HIT_FRAME=-1;

hp=-1;
atk=-1;
def=-1;
dex=-1;
curHp=-1;

lv=-1;


