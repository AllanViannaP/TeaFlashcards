//Seleciona tecla para continuar
var enter = (keyboard_check_released(vk_enter)||keyboard_check_released(vk_space));
if(continuar == 0){
if(enter){
es=0;
texto = "Agora você pode criar seus proprios [shake][rainbow]DECKS[/rainbow][/shake] e jogar todos os outros tipos de jogos!";
continuar++;}}
else if(continuar == 1){
if(enter){
es=0;
texto = "";
continuar = 0;
global.tutorial=false;
room_goto(rm_menu);
}}

