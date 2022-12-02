//Se esta no menu
if(room==rm_menu){
//Usar o enter ou space para selecionar.
var enter = (keyboard_check_released(vk_enter)||keyboard_check_released(vk_space));
//Se pode escolher e utiliza o enter
if(enter && !escolha){
escolha=true;
//Vai para a area dos jogos.
switch(sel){
case 0: 
var transicao = instance_create_layer(0,0,"trans",obj_tran);
transicao.destino=rm_menu_jogo;
break;
//Vai para o tutorial
case 1:
global.tutorial=true;
var transicao = instance_create_layer(0,0,"trans",obj_tran);
transicao.destino=rm_menu_tutorial;
break;
//Vai para a area de criar perguntas
case 2: 
var transicao = instance_create_layer(0,0,"trans",obj_tran);
transicao.destino=rm_menu_perguntas;
break;
//Finaliza o jogo
case 3:
game_end();

break;
}}}
