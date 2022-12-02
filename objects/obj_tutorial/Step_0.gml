//Seleciona tecla para continuar
var enter = (keyboard_check_pressed(vk_enter)||keyboard_check_pressed(vk_space));
if(room==rm_menu_tutorial){
if(continuar == 0){
if(enter){
es=0;
texto = "Aqui você vai [c_orange][shake]aprender[c_white][/shake] como jogar os [wave][rainbow]minigames!";
continuar++;}}
else if(continuar == 1){
if(enter){
es=0;
texto = "Vamos seguir por todos os [wave][rainbow]minigames \n [/rainbow][/wave]para que você possa [c_yellow]entender[c_white] como cada um funciona!";
continuar++;
}}
else if(continuar == 2){
if(enter){
es=0;
texto = "";
continuar = 0;
room_goto(rm_discursiva_zelda);
}}}

