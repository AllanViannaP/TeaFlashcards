switch(count){
case 1:
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
}break;
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
case 2:
//Pega o tamanho do array das opções do menu
var n = array_length_1d(opcoes_criar);
var h = string_height(opcoes_criar[0]);
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
draw_text_scribble(550+espaco,130*1.3+i*h+espaco,rainbow+opcoes_criar[i]);
}break;
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
case 3:
//Pega o tamanho do array das opções do menu
var n = array_length_1d(opcoes_tipojogo);
var h = string_height(opcoes_tipojogo[0]);
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
draw_text_scribble(480+espaco,130*1.3+i*h,rainbow+opcoes_tipojogo[i]);
}break;
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
case 4:
//Pega o tamanho do array das opções do menu
var n = array_length_1d(opcoes_objetiva);
var h = string_height(opcoes_objetiva[0]);
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
draw_text_scribble(580+espaco,130*1.3+i*h,rainbow+opcoes_objetiva[i]);
}break;
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
case 5:
//Pega o tamanho do array das opções do menu
var n = array_length_1d(opcoes_discursiva);
var h = string_height(opcoes_discursiva[0]);
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
draw_text_scribble(460+espaco,130*1.3+i*h,rainbow+opcoes_discursiva[i]);
}break;
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
case 6:
//Pega o tamanho do array das opções do menu
var n = array_length_1d(opcoes_correlacione);
var h = string_height(opcoes_correlacione[0]);
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
draw_set_font(fnt_corr);
//Da cor aos textos e cria eles na tela.
draw_set_color(cor);
draw_text_scribble(625+espaco,110*1.3+i*h,rainbow+opcoes_correlacione[i]);
}break;
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
//                                  MENU EDIÇÃO
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
case 7:
//Pega o tamanho do array das opções do menu
var n = array_length_1d(opcoes_editar);
var h = string_height(opcoes_editar[0]);
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
draw_set_font(fnt_edit26);
draw_set_halign(fa_center);
//Da cor aos textos e cria eles na tela.
draw_set_color(cor);
draw_text_scribble(550+espaco,130*1.3+i*h+espaco,rainbow+opcoes_editar[i]);
}break;
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
case 8:
//Pega o tamanho do array das opções do menu
var n = array_length_1d(opcoes_editar_sn);
var h = string_height(opcoes_editar_sn[0]);
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
draw_text_scribble(450+espaco,130*1.3+i*h+espaco,rainbow+opcoes_editar_sn[i]);
}break;
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
case 9:

//Pega o tamanho do array das opções do menu
var n = array_length_1d(opcoes_editar_deck);
var h = string_height(opcoes_editar_deck[0]);
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
draw_set_halign(fa_center);
//Da cor aos textos e cria eles na tela.
draw_set_color(cor);
draw_set_font(fnt_edit10);
draw_text_scribble(250+espaco,10*1.3+i*h+espaco,rainbow+opcoes_editar_deck[i]);
}break;
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
case 10:
//Pega o tamanho do array das opções do menu
var n = array_length_1d(opcoes_editar_objetiva);
var h = string_height(opcoes_editar_objetiva[0]);
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
draw_set_font(fnt_edit16);
draw_set_halign(-1);
//Da cor aos textos e cria eles na tela.
draw_set_color(cor);
draw_text_scribble(50+espaco,30*1.3+i*h+espaco,rainbow+opcoes_editar_objetiva[i]);
switch(sel){
case 0:
draw_text_scribble(40,400,perg_resp[0]);
break;
case 1:
draw_text_scribble(40,400,perg_resp[1]);
break;
case 2:
draw_text_scribble(40,400,perg_resp[2]);
break;
case 3:
draw_text_scribble(40,400,perg_resp[3]);
break;
case 4:
draw_text_scribble(40,400,perg_resp[4]);
break;
case 5:
draw_text_scribble(40,400,perg_resp[5]);
break;
}
}break;
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
case 11:
//Pega o tamanho do array das opções do menu
var n = array_length_1d(opcoes_editar_discursiva);
var h = string_height(opcoes_editar_discursiva[0]);
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
draw_set_font(fnt_edit16);
draw_set_halign(-1);
//Da cor aos textos e cria eles na tela.
draw_set_color(cor);
draw_text_scribble(50+espaco,30*1.3+i*h+espaco,rainbow+opcoes_editar_discursiva[i]);

switch(sel){
case 0:
draw_text_scribble(40,400,perg_resp[0]);
break;
case 1:
draw_text_scribble(40,400,perg_resp[1]);
break;
}

}break;
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
case 12:
//Pega o tamanho do array das opções do menu
var n = array_length_1d(opcoes_editar_correlacione);
var h = string_height(opcoes_editar_correlacione[0]);
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
draw_set_font(fnt_edit16);
draw_set_halign(-1);
//Da cor aos textos e cria eles na tela.
draw_set_color(cor);
draw_text_scribble(25+espaco,10*1.3+i*h+espaco,rainbow+opcoes_editar_correlacione[i]);
switch(sel){
case 0:
draw_text_scribble(40,450,perg_resp[0]);
break;
case 1:
draw_text_scribble(40,450,perg_resp[1]);
break;
case 2:
draw_text_scribble(40,450,perg_resp[2]);
break;
case 3:
draw_text_scribble(40,450,perg_resp[3]);
break;
case 4:
draw_text_scribble(40,450,perg_resp[4]);
break;
case 5:
draw_text_scribble(40,450,perg_resp[5]);
break;
case 6:
draw_text_scribble(40,450,perg_resp[6]);
break;
case 7:
draw_text_scribble(40,450,perg_resp[7]);
break;
case 8:
draw_text_scribble(40,450,perg_resp[8]);
break;
case 9:
draw_text_scribble(40,450,perg_resp[9]);
break;
case 10:
draw_text_scribble(40,450,perg_resp[10]);
break;
}
}break;
}