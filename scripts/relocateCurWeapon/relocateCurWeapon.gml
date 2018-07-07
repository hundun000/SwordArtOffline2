///@argument0 role
var role=argument0;

if(role.curWeaponIndex==-1){
	for(var i=0;i<role.curNumItem;i++){
		var isSuccess=tryUseWeapon(role,i);
		if(isSuccess){
			return;
		}
	}
}