//Usar o enter ou space para selecionar.

switch(count){
case 0:
if(room==rm_menu_jogo){	
var enter = (keyboard_check_released(vk_enter)||keyboard_check_released(vk_space));
if(enter){
//Inseri nome do deck para jogar
switch(sel){
case 0: 
nome_edit=get_string("Insira o nome do deck que queira jogar. Se atente a espaços e acentos!","") +(".deck");
if(file_exists(nome_edit)){
ini_open(nome_edit);
count = 1;
}
else{
show_message("Arquivo inválido! Por favor insira o nome correto.");
}
break;
//Volta ao menu inicial
case 1:
room_goto(rm_menu);
break;

}}}
break;

//-----------------------------------------------------------------------\\
//-----------------------------------------------------------------------\\

case 1:

global.n = ini_read_real("Tamanho", "vetor",0);

for(i=0;i<=global.n;i++){
global.resps[i] = global.estrutura;
global.ordem[i]="Quest"+string(i);}

//embaralha
for( i = 0; i < global.n; i++){
    j = irandom_range(i,global.n);
    temp = global.ordem[i];
    global.ordem[i] = global.ordem[j];
    global.ordem[j] = temp;
}
count = 2;
break;

//-----------------------------------------------------------------------\\
//-----------------------------------------------------------------------\\
case 2:

if(global.c<=global.n){
	
global.resps[global.c].tipo_jogo = ini_read_real(global.ordem[global.c],"tipo_jogo",0);

switch(global.resps[global.c].tipo_jogo){
case 1 :
global.resps[global.c].pergunta = ini_read_string(global.ordem[global.c],"pergunta",0);
global.resps[global.c].respostacerta = ini_read_string(global.ordem[global.c],"respostacerta",0);
global.resps[global.c].respostae = ini_read_string(global.ordem[global.c],"respostae",0);
global.resps[global.c].respostae2 = ini_read_string(global.ordem[global.c],"respostae2",0);
global.resps[global.c].respostae3 = ini_read_string(global.ordem[global.c],"respostae3",0);
global.resps[global.c].respostae4 = ini_read_string(global.ordem[global.c],"respostae4",0);
break;

case 2 :
global.resps[global.c].pergunta = ini_read_string(global.ordem[global.c],"pergunta",0);
global.resps[global.c].respostacerta = ini_read_string(global.ordem[global.c],"respostacerta",0);
global.resps[global.c].respostae = ini_read_string(global.ordem[global.c],"respostae",0);
global.resps[global.c].respostae2 = ini_read_string(global.ordem[global.c],"respostae2",0);
global.resps[global.c].respostae3 = ini_read_string(global.ordem[global.c],"respostae3",0);
global.resps[global.c].respostae4 = ini_read_string(global.ordem[global.c],"respostae4",0);
break;


case 3:
global.resps[global.c].pergunta = ini_read_string(global.ordem[global.c],"pergunta",0);
global.resps[global.c].respostacerta = ini_read_string(global.ordem[global.c],"respostacerta",0);
break;

case 4:
global.resps[global.c].pergunta = ini_read_string(global.ordem[global.c],"pergunta",0);
global.resps[global.c].respostacerta = ini_read_string(global.ordem[global.c],"respostacerta",0);
break;

case 5:
global.resps[global.c].pergunta = ini_read_string(global.ordem[global.c],"pergunta",0);
global.resps[global.c].cor_a = ini_read_string(global.ordem[global.c],"cor_a",0);
global.resps[global.c].core_a = ini_read_string(global.ordem[global.c],"core_a",0);
global.resps[global.c].cor_b = ini_read_string(global.ordem[global.c],"cor_b",0);
global.resps[global.c].core_b = ini_read_string(global.ordem[global.c],"core_b",0);
global.resps[global.c].cor_c = ini_read_string(global.ordem[global.c],"cor_c",0);
global.resps[global.c].core_c = ini_read_string(global.ordem[global.c],"core_c",0);
global.resps[global.c].cor_d = ini_read_string(global.ordem[global.c],"cor_d",0);
global.resps[global.c].core_d = ini_read_string(global.ordem[global.c],"core_d",0);
global.resps[global.c].cor_e = ini_read_string(global.ordem[global.c],"cor_e",0);
global.resps[global.c].core_e = ini_read_string(global.ordem[global.c],"core_e",0);
break;

case 6:
global.resps[global.c].pergunta = ini_read_string(global.ordem[global.c],"pergunta",0);
global.resps[global.c].cor_a = ini_read_string(global.ordem[global.c],"cor_a",0);
global.resps[global.c].core_a = ini_read_string(global.ordem[global.c],"core_a",0);
global.resps[global.c].cor_b = ini_read_string(global.ordem[global.c],"cor_b",0);
global.resps[global.c].core_b = ini_read_string(global.ordem[global.c],"core_b",0);
global.resps[global.c].cor_c = ini_read_string(global.ordem[global.c],"cor_c",0);
global.resps[global.c].core_c = ini_read_string(global.ordem[global.c],"core_c",0);
global.resps[global.c].cor_d = ini_read_string(global.ordem[global.c],"cor_d",0);
global.resps[global.c].core_d = ini_read_string(global.ordem[global.c],"core_d",0);
global.resps[global.c].cor_e = ini_read_string(global.ordem[global.c],"cor_e",0);
global.resps[global.c].core_e = ini_read_string(global.ordem[global.c],"core_e",0);
break;}}


count = 3;
break;
//-----------------------------------------------------------------------------
//------------------------------------------------------------------------------
case 3:
draw_set_halign(-1);
/*Tipo jogo
1 é objetiva pokemon
2 é objetiva mario
3 é discursiva zelda
4 é discursiva mario
5 é correlacione pokemon
6 é correlacione zelda
*/
if(global.c<=global.n){
switch(global.resps[global.c].tipo_jogo){
case 1:
room_goto(rm_objetiva_pokemon);
break;
case 2:
room_goto(rm_objetiva_mario);
break;
case 3:
room_goto(rm_discursiva_zelda);
break;
case 4:
room_goto(rm_discursiva_mario);
draw_set_halign(fa_center);
break;
case 5:
room_goto(rm_correlacione_pokemon);
break;
case 6:
room_goto(rm_correlacione_zelda);
break;}}
else{
draw_set_halign(fa_center);
room_goto(rm_menu_final_quadro);
}
break;}

