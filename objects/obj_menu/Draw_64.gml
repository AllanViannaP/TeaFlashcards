//Se está no menu
if(room==rm_menu){
//Pega o tamanho do array das opções do menu
var n = array_length_1d(opcoes);
var h = string_height(opcoes[0]);
//Se clica para cima move para cima
if(keyboard_check_released(vk_up)||keyboard_check_released(ord("W"))){
if(sel>0){sel--}
else sel = n-1;}
//Se clica para baixo vai para baixo
if(keyboard_check_released(vk_down)||keyboard_check_released(ord("S"))){
if(sel<n-1){sel++;}
else sel=0;}
//Da efeito de cores, pulo e espaçamento para seleção correspondente
for(var i = 0; i<n;i++){
if(sel==i){
rainbow= "[rainbow][wave]";
espaco=+3
}
//Volta ao normal
else{
rainbow= "";
espaco=0;}

//Seleciona fonte e tipo de formatação
draw_set_font(fnt_pixmen);
draw_set_halign(fa_center);
//Da cor aos textos e cria eles na tela.
draw_set_color(cor);
draw_text_scribble(280+espaco,130*1.3+i*h,rainbow+opcoes[i]);
}}
