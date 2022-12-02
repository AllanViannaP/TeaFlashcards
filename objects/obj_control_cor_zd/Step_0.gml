var enter = ( keyboard_check_released(vk_enter)|| keyboard_check_released(vk_space));
var esc = keyboard_check_released(vk_escape);
var moveseta = (keyboard_check_pressed(vk_up)||keyboard_check_pressed(vk_down)||keyboard_check_pressed(vk_left)||keyboard_check_pressed(vk_right));
var movewasd = (keyboard_check_pressed(ord("W"))||keyboard_check_pressed(ord("S"))||keyboard_check_pressed(ord("A"))||keyboard_check_pressed(ord("D")));

if(esc && global.tutorial==true){room_goto(rm_menu);}

if(obj_respostas_zd.solid == false && obj_respostas_zd.visible == true ||obj_respostas_zd2.solid == false && obj_respostas_zd2.visible == true||obj_respostas_zd3.solid == false && obj_respostas_zd3.visible == true||obj_respostas_zd4.solid == false && obj_respostas_zd4.visible == true||obj_respostas_zd5.solid == false && obj_respostas_zd5.visible == true){
com_bloco = true;
}
else{
com_bloco= false;
}

if(obj_caixa_de_perguntasa.image_index > 0 && obj_caixa_de_perguntasb.image_index > 0 && obj_caixa_de_perguntasc.image_index > 0 && obj_caixa_de_perguntasd.image_index > 0 && obj_caixa_de_perguntase.image_index > 0 && obj_hp_zd.image_index < 3){
if(global.tutorial!=true){
room_goto(rm_menu_intervalos_win);}
if(global.tutorial==true){
room_goto(rm_menu_tutorial_concluido);
}
}


if(global.tutorial){
if(esc){
room_goto(rm_menu);
}	
	
if(continuar == 0 ){
es=0;
texto ="Está é uma [c_aqua]questão de correlacionar!";
continuar++;
}
//Após apertar enter insere o novo texto.
else if(continuar == 1 ){
if(enter){
es=0;
texto ="Use as [c_orange][shake]setas[c_white][/shake] ou as teclas [shake][c_orange]W[/shake][c_white],[shake][c_orange]A[/shake][c_white],[shake][c_orange]S[/shake][c_white],[shake][c_orange]D[/shake][c_white] para se mover";
txtenter ="";
continuar++;}
}
//
else if((moveseta|| movewasd) && continuar ==2){
es=0;
texto ="Pegue os [c_aqua]blocos[c_white] e entregue eles nas [rainbow]caixas[/rainbow] corretas";
txtenter ="";
continuar=3;
}
 if(obj_hp_zd.image_index>0){
texto ="Fique atento aos seus corações de [c_red]vida[c_white], caso erre irá [c_red][shake]perder um[/shake][c_white], você so pode perder 3!";
continuar++;
}}