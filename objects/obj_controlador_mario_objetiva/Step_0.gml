var esc = keyboard_check_released(vk_escape);

if(esc && global.tutorial==true){
room_goto(rm_menu);
}

//Variaveis de teste
var moveseta = (keyboard_check_pressed(vk_left)||keyboard_check_pressed(vk_right));
var movewasd = (keyboard_check_pressed(ord("A"))||keyboard_check_pressed(ord("D")));
var enter = (keyboard_check_pressed(vk_enter)||keyboard_check_pressed(vk_space));
//Se está no tutorial insere o novo texto.
if(global.tutorial){
if(continuar == 0 ){
es=0;
texto ="Está é uma [c_yellow]questão objetiva.[c_white] Verifique a pergunta na parte de cima da tela!";
continuar++;
}
//Após apertar enter insere o novo texto.
else if(continuar == 1 ){
if(enter){
es=0;
texto ="Use as [c_orange][shake]setas[c_white][/shake] ou as teclas [shake][c_orange]A[/shake][c_white] e [shake][c_orange]D[/shake][c_white] para se mover";
txtenter ="";
continuar++;}
}
//Ao se mover apaga o texto da tela.
else if((moveseta|| movewasd) && continuar ==2){
es=0;
texto ="Use [shake][c_orange] espaço [/shake][c_white] ou [shake] [c_orange]seta para cima [/shake][c_white] para pular!";
txtenter ="";
continuar++;
}
//Se apertar enter ou responder a pergunta na porta apaga o texto.
else if(continuar ==3 && enter||continuar ==3 && moveseta){
es=0;
texto="Destrua o bloco [rainbow]correto[/rainbow] para passar!";
txtenter="";
//Declara um tempo para aparecer a continuação do texto
alarm[0]=room_speed;
}}