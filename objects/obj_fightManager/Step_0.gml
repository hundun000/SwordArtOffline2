if(keyboard_check_pressed(ord("F"))){
	var debug_ins_asuna=instance_find(obj_role_asuna,0);
	var debug_ins_boar=instance_find(obj_role_boar,0);	
	generateFightPreview(debug_ins_boar,debug_ins_asuna,R_SIDE);
	callFight();
}

if(!visible)	exit;

frameCounter++;
var frame_arrive=false;
if(frameCounter==FRAME_STEP){
	frameCounter=0;
	frame_arrive=true;
}

if(frame_arrive){
	
	#region handle current state
	
	switch(fightState){
		case FightState.READY:
			curRoleFrame[curAttackSide]=0;
			curRoleFrame[!curAttackSide]=0;
			break;
		case FightState.ATTACK_STAGE_BRFORE_MISS:
			curRoleFrame[!curAttackSide]=0;
			curRoleFrame[curAttackSide]++;	
			break;
		case FightState.ATTACK_STAGE_MISS:
			curRoleFrame[!curAttackSide]++;
			curRoleFrame[curAttackSide]++;
			break;
		case FightState.ATTACK_STAGE_AFTER_MISS:
			curRoleFrame[!curAttackSide]=0;
			curRoleFrame[curAttackSide]++;	
			break;
	}
	

	
	
	#endregion
	
	#region set next state
	
	numFrameToNextState--;
	
	switch(fightState){
		case FightState.READY:
			if(numFrameToNextState==0){
				if(!ds_queue_empty(queue_attackSides)){
					curAttackSide=ds_queue_dequeue(queue_attackSides);
					curRoleSprite[curAttackSide]=attackSprite[curAttackSide];
					curRoleSprite[!curAttackSide]=normalSprite[!curAttackSide];
				
					fightState=FightState.ATTACK_STAGE_BRFORE_MISS;
					numFrameToNextState=ins_role[curAttackSide].ATTACK_HIT_FRAME;
				}
				else{
					visible=false;
					exit;
				}
			}
			break;
		case FightState.ATTACK_STAGE_BRFORE_MISS:
			if(numFrameToNextState==0){
				if(curIsMiss){
					//curRoleSprite[curAttackSide] keep
					curRoleSprite[!curAttackSide]=missSprite[!curAttackSide];
					
					fightState=FightState.ATTACK_STAGE_MISS;
					numFrameToNextState=sprite_get_number(missSprite[!curAttackSide]);
				}
				else{
					//curRoleSprite[curAttackSide] keep
					//curRoleSprite[!curAttackSide] keep
					
					fightState=FightState.ATTACK_STAGE_AFTER_MISS;
					numFrameToNextState=sprite_get_number(attackSprite[curAttackSide])-ins_role[curAttackSide].ATTACK_HIT_FRAME;
				}
			}
			break;
		case FightState.ATTACK_STAGE_MISS:
			if(numFrameToNextState==0){
				//curRoleSprite[curAttackSide] keep
				curRoleSprite[!curAttackSide]=normalSprite[!curAttackSide];
					
				fightState=FightState.ATTACK_STAGE_AFTER_MISS;
				numFrameToNextState=sprite_get_number(attackSprite[curAttackSide])-ins_role[curAttackSide].ATTACK_HIT_FRAME-sprite_get_number(missSprite[!curAttackSide]);
				var breakpoint=1;
			}
			break;
		case FightState.ATTACK_STAGE_AFTER_MISS:
			if(numFrameToNextState<=0){
				curRoleSprite[curAttackSide]=normalSprite[curAttackSide];
				curRoleSprite[!curAttackSide]=normalSprite[!curAttackSide];
				
				fightState=FightState.READY;	
				numFrameToNextState=10;
			}
			break;
	
	}

	#endregion





}