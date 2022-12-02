//Variaveis de teste
var esc = keyboard_check_released(vk_escape);
var moveseta = (keyboard_check_pressed(vk_up)||keyboard_check_pressed(vk_down)||keyboard_check_pressed(vk_left)||keyboard_check_pressed(vk_right));
var movewasd = (keyboard_check_pressed(ord("W"))||keyboard_check_pressed(ord("S"))||keyboard_check_pressed(ord("A"))||keyboard_check_pressed(ord("D")));
var porta = instance_exists(obj_animacao_porta); 
var enter = (keyboard_check_pressed(vk_enter)||keyboard_check_pressed(vk_space));
//Se está no tutorial insere o novo texto.
if(global.tutorial){
if(esc){
room_goto(rm_menu);
}	
	
	
if(continuar == 0 ){
es=0;
texto ="Está é uma [c_aqua]questão discursiva";
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
//Ao se mover apaga o texto da tela.
else if((moveseta|| movewasd) && continuar ==2){
es=0;
texto ="";
txtenter ="";
continuar++;
}
//Após um tempo depois de apagar o texto de andar insere um novo texto
else if(continuar ==3){
es=0;
texto ="Aperte [c_orange][shake]enter[/shake][c_white] na frente da porta para responder a pergunta discusiva";
txtenter ="";
continuar++;
}
//Se apertar enter ou responder a pergunta na porta apaga o texto.
else if(continuar ==4 && enter||porta){
porta=true;
es=0;
texto="";
txtenter="";
//Declara um tempo para aparecer a continuação do texto
alarm[0]=room_speed;
}
//Após o tempo declarado acabar irá inserir o novo texto
else if(continuar==5){
es=0;
texto="Pegue sua [wave][rainbow]recompensa[/wave][/rainbow] para prosseguirmos ao próximo [wave][rainbow]minigame";
txtenter="";
continuar++;
}
//Caso aperte enter o texto será apagado
else if(continuar==6&&enter){
es=0;
texto="";
txtenter="";
}
}