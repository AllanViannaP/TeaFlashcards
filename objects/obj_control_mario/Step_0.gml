//Verificação para pular o texto
var enter = keyboard_check_released(vk_enter);
draw_set_font(fnt_pt);
//Verificação da resposta.
if(enter && obj_mario_corr.x>118 && ver==false){
var resposta = get_string(perg,"");
resposta = scr_convertMN(resposta);
if(resposta == resp){
ver = true;
obj_mario_corr.dis = false;
}
else{
room_goto(rm_menu_intervalos_lose);
}
}
if(obj_mario_corr.x>=276){
room_goto(rm_menu_intervalos_win);
}