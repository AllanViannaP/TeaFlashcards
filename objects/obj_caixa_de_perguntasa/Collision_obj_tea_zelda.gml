if(global.tutorial == true){
obj_control_cor_zd.texto_cima = "2+2";
}
else{
obj_control_cor_zd.texto_cima= global.resps[global.c].cor_a}

var enter = keyboard_check_released(vk_enter);
if(enter && obj_control_cor_zd.com_bloco==true){
insert = true;
}