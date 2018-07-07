///@arg roleLeft
///@arg roleRight
///@arg priorSide

var role;
role[L_SIDE]=argument0;
role[R_SIDE]=argument1;
var priorSide=argument2;
var followSide=!priorSide;
var manager=global.thisGame.fightManager;
//copy to manager
manager.priorSide=priorSide;
manager.ins_role[L_SIDE]=role[L_SIDE];
manager.ins_role[R_SIDE]=role[R_SIDE];


#region generate fight preview
//-------get weapon------
var weaponWeight;
for(var i=0;i<2;i++){
	//relocateCurWeapon(roleLeft);
	if(role[i].curWeaponIndex!=-1){
		var curWeaponItemId=role[i].grid_package[# PACKAGE_COLUMN_ITEM_ID,role[i].curWeaponIndex];
		manager.weaponIndex[i]=getWeaponIndexById(curWeaponItemId);
		manager.weaponName[i]=global.thisGame.grid_item_Info[# ITEM_COLUMN_NAME,curWeaponItemId];
		
		weaponWeight[i]=global.thisGame.grid_weapon_Info[# WEAPON_COLUMN_WEIGHT,manager.weaponIndex[i]];
	}
	else{
		manager.weaponName[i]="无武器";		
		
		weaponWeight[i]=0;
	}
}
//-------get attack times------
var THRESHOLD_DEX=4;
for(var i=0;i<2;i++){
	var dif=role[i].dex-role[!i].dex-weaponWeight[i];
	manager.attackTimes[i]=1+(dif>=THRESHOLD_DEX);
}

#endregion

#region handle fight preview
//-------handle preDamage------



//-------handle attack times------
while(manager.attackTimes[priorSide]!=0||manager.attackTimes[followSide]!=0){
	if(manager.attackTimes[priorSide]>0){
		ds_queue_enqueue(manager.queue_attackSides,priorSide);
		manager.attackTimes[priorSide]--;
	}
	if(manager.attackTimes[followSide]>0){
		ds_queue_enqueue(manager.queue_attackSides,followSide);
		manager.attackTimes[followSide]--;
	}
}
#endregion



