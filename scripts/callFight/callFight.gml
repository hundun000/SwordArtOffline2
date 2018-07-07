var manager=global.thisGame.fightManager;

manager.visible=true;
//blind l-b,r-a
manager.normalSprite[L_SIDE]=manager.ins_role[L_SIDE].FIGHT_SPRITE_NORMAL;
manager.normalSprite[R_SIDE]=manager.ins_role[R_SIDE].FIGHT_SPRITE_NORMAL;
		
manager.attackSprite[L_SIDE]=manager.ins_role[L_SIDE].FIGHT_SPRITE_ATTACK;
manager.attackSprite[R_SIDE]=manager.ins_role[R_SIDE].FIGHT_SPRITE_ATTACK;
		
manager.missSprite[L_SIDE]=manager.ins_role[L_SIDE].FIGHT_SPRITE_MISS;
manager.missSprite[R_SIDE]=manager.ins_role[R_SIDE].FIGHT_SPRITE_MISS;
		
manager.groundSprite[L_SIDE]=spr_ground_grass_adjoin;
manager.groundSprite[R_SIDE]=spr_ground_grass_adjoin;

manager.backgroundSprite=spr_background_grassland;

//first turn init
manager.curRoleSprite[L_SIDE]=normalSprite[L_SIDE];
manager.curRoleSprite[R_SIDE]=normalSprite[R_SIDE];

manager.curAttackSide=priorSide;
manager.fightState=FightState.READY;
manager.numFrameToNextState=10;
manager.frameCounter=0;
//debug set
manager.curIsMiss=true;