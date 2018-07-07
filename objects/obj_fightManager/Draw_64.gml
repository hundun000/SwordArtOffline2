
//-----ground-----
var DRAW_GROUND_L_X=GAME_WIDTH/2;
var DRAW_GROUND_R_X=GAME_WIDTH/2;
var DRAW_GROUND_Y=0;
draw_sprite_ext(backgroundSprite,0,0,0,FIGHT_SCALE,FIGHT_SCALE,0,c_white,1);
draw_sprite_ext(groundSprite[L_SIDE],0,DRAW_GROUND_L_X,DRAW_GROUND_Y,-FIGHT_SCALE,FIGHT_SCALE,0,c_white,1);
draw_sprite_ext(groundSprite[R_SIDE],0,DRAW_GROUND_R_X,DRAW_GROUND_Y,FIGHT_SCALE,FIGHT_SCALE,0,c_white,1);
//-----role-----
var DRAW_ROLE_X=GAME_WIDTH/2;
var DRAW_ROLE_Y=0;
draw_sprite_ext(curRoleSprite[L_SIDE],curRoleFrame[L_SIDE],DRAW_ROLE_X,DRAW_ROLE_Y,-FIGHT_SCALE,FIGHT_SCALE,0,c_white,1);
draw_sprite_ext(curRoleSprite[R_SIDE],curRoleFrame[R_SIDE],DRAW_ROLE_X,DRAW_ROLE_Y,FIGHT_SCALE,FIGHT_SCALE,0,c_white,1);
//-----info-----
var DRAW_INFO_BOARD_X=0;
var DRAW_INFO_BOARD_Y=0;
draw_sprite_ext(spr_fightInfoBoard,0,DRAW_INFO_BOARD_X,DRAW_INFO_BOARD_Y,FIGHT_SCALE,FIGHT_SCALE,0,c_white,1);
//-----role name----
var ROLE_NAME_TO_BORDER=10*FIGHT_SCALE;
var DRAW_ROLE_NAME_L_X=ROLE_NAME_TO_BORDER;
var DRAW_ROLE_NAME_R_X=GAME_WIDTH-ROLE_NAME_TO_BORDER;
var DRAW_ROLE_NAME_Y=33*FIGHT_SCALE;
draw_set_font(global.font_CN_NORMAL);
draw_set_color(c_white);

draw_set_halign(fa_right);
draw_text(DRAW_ROLE_NAME_R_X,DRAW_ROLE_NAME_Y,ins_role[R_SIDE].LOCAL_NAME);
draw_set_halign(fa_left);
draw_text(DRAW_ROLE_NAME_L_X,DRAW_ROLE_NAME_Y,ins_role[L_SIDE].LOCAL_NAME);
//-----weapon name-----
var DRAW_WEAPON_NAME_L_X=140*FIGHT_SCALE;
var DRAW_WEAPON_NAME_R_X=375*FIGHT_SCALE;
var DRAW_WEAPON_NAME_Y=350*FIGHT_SCALE;
draw_set_font(global.font_CN_NORMAL);
draw_set_color(c_black);

draw_text(DRAW_WEAPON_NAME_R_X,DRAW_WEAPON_NAME_Y,weaponName[R_SIDE]);
draw_text(DRAW_WEAPON_NAME_L_X,DRAW_WEAPON_NAME_Y,weaponName[L_SIDE]);