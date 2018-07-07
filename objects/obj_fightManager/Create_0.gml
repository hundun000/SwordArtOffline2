#macro L_SIDE 0
#macro R_SIDE 1

var resouceWidth=720;
FRAME_STEP=15;


FIGHT_SCALE=GAME_WIDTH/resouceWidth;

enum FightState{
	READY,
	ATTACK_STAGE_BRFORE_MISS,
	ATTACK_STAGE_MISS,
	ATTACK_STAGE_AFTER_MISS,
}
fightState=noone;
numFrameToNextState=-1;

//unnecessary
curRoleSprite[L_SIDE]=noone;
curRoleSprite[R_SIDE]=noone;
curRoleFrame[L_SIDE]=-1;
curRoleFrame[R_SIDE]=-1;
ins_role[L_SIDE]=noone;
ins_role[R_SIDE]=noone;

normalSprite[L_SIDE]=noone;
normalSprite[R_SIDE]=noone;
		
attackSprite[L_SIDE]=noone;
attackSprite[R_SIDE]=noone;
		
missSprite[L_SIDE]=noone;
missSprite[R_SIDE]=noone;

groundSprite[L_SIDE]=noone;
groundSprite[R_SIDE]=noone;

backgroundSprite=noone;
		
fightState=noone;
numFrameToNextState=-1;
curAttackSide=-1;

curIsMiss=-1;

frameCounter=-1;

queue_attackSides=ds_queue_create();

//preview part
priorSide=noone;
attackTimes[L_SIDE]=-1;
attackTimes[R_SIDE]=-1;
weaponName[L_SIDE]=noone;
weaponName[R_SIDE]=noone;
weaponIndex[L_SIDE]=noone;
weaponIndex[R_SIDE]=noone;





