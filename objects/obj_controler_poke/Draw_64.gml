var xx = camera_get_view_x(view_camera[0]);
var yy = camera_get_view_y(view_camera[0]);
var view_h = camera_get_view_height(view_camera[0]);
var caixa_w = sprite_get_width(spr_hud_pura);
var caixa_h = sprite_get_height(spr_hud_pura);
var enter = keyboard_check_released(vk_enter);
draw_set_color(c_black);
draw_set_font(fnt_poke);

//Configurar escrita
texto_atual = string_copy(text,1,ind);
texto_atualb = string_copy(textb,1,ind);
texto_limite = string_length(text)
texto_limiteb = string_length(textb)
if(ind<texto_limite || ind<texto_limiteb){
ind++;}
var sep = string_height(text);
var sepb = string_height(textb);

//Escrita do começo
if(instance_exists(obj_milk_poke)){
draw_text_ext(xx + caixa_h/2.5, yy+view_h*3.94 - caixa_h*3,texto_atual,sepb,caixa_w*4);
if(enter){
milkv = true;
alarm[0]=room_speed*3;
}
}

if(timer_in){
//Pergunta
text= texto_perg;
//Alternativas
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
rainbow= "[wave]";
espaco=+3
}
//Volta ao normal
else{
rainbow= "";
espaco=0;}
//Da cor aos textos e cria eles na tela.
draw_text_scribble(1030+espaco,410*1.3+i*h*1.3,rainbow+opcoes[i]);
}
if(fd){
switch(sel){
//RESPOSTAS

case 0:textb=texto_resps[0];
//Objetiva
if(enter&&textb==global.resps[global.c].respostacerta&&room==rm_objetiva_pokemon){
obj_hp_milk.image_speed=1;}
if(enter&&textb!=global.resps[global.c].respostacerta&&room==rm_objetiva_pokemon){
obj_hp_tea.image_speed=1;}



//Correlacione certas
if(enter&&textb==global.resps[global.c].core_a&&room==rm_correlacione_pokemon&&texto_atual==global.resps[global.c].cor_a){
obj_hp_milk.image_index+=1;
obj_hp_milk.anc=true}
if(enter&&textb==global.resps[global.c].core_b&&room==rm_correlacione_pokemon&&texto_atual==global.resps[global.c].cor_b){
obj_hp_milk.image_index+=1;
obj_hp_milk.anc=true}
if(enter&&textb==global.resps[global.c].core_c&&room==rm_correlacione_pokemon&&texto_atual==global.resps[global.c].cor_c){
obj_hp_milk.image_index+=1;
obj_hp_milk.anc=true}
if(enter&&textb==global.resps[global.c].core_d&&room==rm_correlacione_pokemon&&texto_atual==global.resps[global.c].cor_d){
obj_hp_milk.image_index+=1;
obj_hp_milk.anc=true}
if(enter&&textb==global.resps[global.c].core_e&&room==rm_correlacione_pokemon&&texto_atual==global.resps[global.c].cor_e){
obj_hp_milk.image_index+=1;
obj_hp_milk.anc=true}

//Correlacione erradas

if(enter&&textb!=global.resps[global.c].core_a&&room==rm_correlacione_pokemon&&texto_atual==global.resps[global.c].cor_a){
obj_hp_tea.image_index+=2;
obj_hp_tea.anc=true}
if(enter&&textb!=global.resps[global.c].core_b&&room==rm_correlacione_pokemon&&texto_atual==global.resps[global.c].cor_b){
obj_hp_tea.image_index+=2;
obj_hp_tea.anc=true}
if(enter&&textb!=global.resps[global.c].core_c&&room==rm_correlacione_pokemon&&texto_atual==global.resps[global.c].cor_c){
obj_hp_tea.image_index+=2;
obj_hp_tea.anc=true}
if(enter&&textb!=global.resps[global.c].core_d&&room==rm_correlacione_pokemon&&texto_atual==global.resps[global.c].cor_d){
obj_hp_tea.image_index+=2;
obj_hp_tea.anc=true}
if(enter&&textb!=global.resps[global.c].core_e&&room==rm_correlacione_pokemon&&texto_atual==global.resps[global.c].cor_e){
obj_hp_tea.image_index+=2;
obj_hp_tea.anc=true}
break;

case 1:textb=texto_resps[1];
//Objetiva
if(enter&&textb==global.resps[global.c].respostacerta&&room==rm_objetiva_pokemon){
obj_hp_milk.image_speed=1;}
if(enter&&textb!=global.resps[global.c].respostacerta&&room==rm_objetiva_pokemon){
obj_hp_tea.image_speed=1;}


//Correlacione certas
if(enter&&textb==global.resps[global.c].core_a&&room==rm_correlacione_pokemon&&texto_atual==global.resps[global.c].cor_a){
obj_hp_milk.image_index+=1;
obj_hp_milk.anc=true}
if(enter&&textb==global.resps[global.c].core_b&&room==rm_correlacione_pokemon&&texto_atual==global.resps[global.c].cor_b){
obj_hp_milk.image_index+=1;
obj_hp_milk.anc=true}
if(enter&&textb==global.resps[global.c].core_c&&room==rm_correlacione_pokemon&&texto_atual==global.resps[global.c].cor_c){
obj_hp_milk.image_index+=1;
obj_hp_milk.anc=true}
if(enter&&textb==global.resps[global.c].core_d&&room==rm_correlacione_pokemon&&texto_atual==global.resps[global.c].cor_d){
obj_hp_milk.image_index+=1;
obj_hp_milk.anc=true}
if(enter&&textb==global.resps[global.c].core_e&&room==rm_correlacione_pokemon&&texto_atual==global.resps[global.c].cor_e){
obj_hp_milk.image_index+=1;
obj_hp_milk.anc=true}


//Correlacione erradas

if(enter&&textb!=global.resps[global.c].core_a&&room==rm_correlacione_pokemon&&texto_atual==global.resps[global.c].cor_a){
obj_hp_tea.image_index+=2;
obj_hp_tea.anc=true}
if(enter&&textb!=global.resps[global.c].core_b&&room==rm_correlacione_pokemon&&texto_atual==global.resps[global.c].cor_b){
obj_hp_tea.image_index+=2;
obj_hp_tea.anc=true}
if(enter&&textb!=global.resps[global.c].core_c&&room==rm_correlacione_pokemon&&texto_atual==global.resps[global.c].cor_c){
obj_hp_tea.image_index+=2;
obj_hp_tea.anc=true}
if(enter&&textb!=global.resps[global.c].core_d&&room==rm_correlacione_pokemon&&texto_atual==global.resps[global.c].cor_d){
obj_hp_tea.image_index+=2;
obj_hp_tea.anc=true}
if(enter&&textb!=global.resps[global.c].core_e&&room==rm_correlacione_pokemon&&texto_atual==global.resps[global.c].cor_e){
obj_hp_tea.image_index+=2;
obj_hp_tea.anc=true}
break;


case 2:textb=texto_resps[2];
//Objetiva
if(enter&&textb==global.resps[global.c].respostacerta&&room==rm_objetiva_pokemon){
obj_hp_milk.image_speed=1;}
if(enter&&textb!=global.resps[global.c].respostacerta&&room==rm_objetiva_pokemon){
obj_hp_tea.image_speed=1;}



//Correlacione certas
if(enter&&textb==global.resps[global.c].core_a&&room==rm_correlacione_pokemon&&texto_atual==global.resps[global.c].cor_a){
obj_hp_milk.image_index+=1;
obj_hp_milk.anc=true}
if(enter&&textb==global.resps[global.c].core_b&&room==rm_correlacione_pokemon&&texto_atual==global.resps[global.c].cor_b){
obj_hp_milk.image_index+=1;
obj_hp_milk.anc=true}
if(enter&&textb==global.resps[global.c].core_c&&room==rm_correlacione_pokemon&&texto_atual==global.resps[global.c].cor_c){
obj_hp_milk.image_index+=1;
obj_hp_milk.anc=true}
if(enter&&textb==global.resps[global.c].core_d&&room==rm_correlacione_pokemon&&texto_atual==global.resps[global.c].cor_d){
obj_hp_milk.image_index+=1;
obj_hp_milk.anc=true}
if(enter&&textb==global.resps[global.c].core_e&&room==rm_correlacione_pokemon&&texto_atual==global.resps[global.c].cor_e){
obj_hp_milk.image_index+=1;
obj_hp_milk.anc=true}
//Correlacione erradas

if(enter&&textb!=global.resps[global.c].core_a&&room==rm_correlacione_pokemon&&texto_atual==global.resps[global.c].cor_a){
obj_hp_tea.image_index+=2;
obj_hp_tea.anc=true}
if(enter&&textb!=global.resps[global.c].core_b&&room==rm_correlacione_pokemon&&texto_atual==global.resps[global.c].cor_b){
obj_hp_tea.image_index+=2;
obj_hp_tea.anc=true}
if(enter&&textb!=global.resps[global.c].core_c&&room==rm_correlacione_pokemon&&texto_atual==global.resps[global.c].cor_c){
obj_hp_tea.image_index+=2;
obj_hp_tea.anc=true}
if(enter&&textb!=global.resps[global.c].core_d&&room==rm_correlacione_pokemon&&texto_atual==global.resps[global.c].cor_d){
obj_hp_tea.image_index+=2;
obj_hp_tea.anc=true}
if(enter&&textb!=global.resps[global.c].core_e&&room==rm_correlacione_pokemon&&texto_atual==global.resps[global.c].cor_e){
obj_hp_tea.image_index+=2;
obj_hp_tea.anc=true}
break;

case 3:textb=texto_resps[3];
//Objetiva
if(enter&&textb==global.resps[global.c].respostacerta&&room==rm_objetiva_pokemon){
obj_hp_milk.image_speed=1;}
if(enter&&textb!=global.resps[global.c].respostacerta&&room==rm_objetiva_pokemon){
obj_hp_tea.image_speed=1;}


//Correlacione certas
if(enter&&textb==global.resps[global.c].core_a&&room==rm_correlacione_pokemon&&texto_atual==global.resps[global.c].cor_a){
obj_hp_milk.image_index+=1;
obj_hp_milk.anc=true}
if(enter&&textb==global.resps[global.c].core_b&&room==rm_correlacione_pokemon&&texto_atual==global.resps[global.c].cor_b){
obj_hp_milk.image_index+=1;
obj_hp_milk.anc=true}
if(enter&&textb==global.resps[global.c].core_c&&room==rm_correlacione_pokemon&&texto_atual==global.resps[global.c].cor_c){
obj_hp_milk.image_index+=1;
obj_hp_milk.anc=true}
if(enter&&textb==global.resps[global.c].core_d&&room==rm_correlacione_pokemon&&texto_atual==global.resps[global.c].cor_d){
obj_hp_milk.image_index+=1;
obj_hp_milk.anc=true}
if(enter&&textb==global.resps[global.c].core_e&&room==rm_correlacione_pokemon&&texto_atual==global.resps[global.c].cor_e){
obj_hp_milk.image_index+=1;
obj_hp_milk.anc=true}
//Correlacione erradas

if(enter&&textb!=global.resps[global.c].core_a&&room==rm_correlacione_pokemon&&texto_atual==global.resps[global.c].cor_a){
obj_hp_tea.image_index+=2;
obj_hp_tea.anc=true}
if(enter&&textb!=global.resps[global.c].core_b&&room==rm_correlacione_pokemon&&texto_atual==global.resps[global.c].cor_b){
obj_hp_tea.image_index+=2;
obj_hp_tea.anc=true}
if(enter&&textb!=global.resps[global.c].core_c&&room==rm_correlacione_pokemon&&texto_atual==global.resps[global.c].cor_c){
obj_hp_tea.image_index+=2;
obj_hp_tea.anc=true}
if(enter&&textb!=global.resps[global.c].core_d&&room==rm_correlacione_pokemon&&texto_atual==global.resps[global.c].cor_d){
obj_hp_tea.image_index+=2;
obj_hp_tea.anc=true}
if(enter&&textb!=global.resps[global.c].core_e&&room==rm_correlacione_pokemon&&texto_atual==global.resps[global.c].cor_e){
obj_hp_tea.image_index+=2;
obj_hp_tea.anc=true}
break;


case 4:textb=texto_resps[4];
//Objetiva
if(enter&&textb==global.resps[global.c].respostacerta&&room==rm_objetiva_pokemon){
obj_hp_milk.image_speed=1;}
if(enter&&textb!=global.resps[global.c].respostacerta&&room==rm_objetiva_pokemon){
obj_hp_tea.image_speed=1;}


//Correlacione certas
if(enter&&textb==global.resps[global.c].core_a&&room==rm_correlacione_pokemon&&texto_atual==global.resps[global.c].cor_a){
obj_hp_milk.image_index+=1;
obj_hp_milk.anc=true}
if(enter&&textb==global.resps[global.c].core_b&&room==rm_correlacione_pokemon&&texto_atual==global.resps[global.c].cor_b){
obj_hp_milk.image_index+=1;
obj_hp_milk.anc=true}
if(enter&&textb==global.resps[global.c].core_c&&room==rm_correlacione_pokemon&&texto_atual==global.resps[global.c].cor_c){
obj_hp_milk.image_index+=1;
obj_hp_milk.anc=true}
if(enter&&textb==global.resps[global.c].core_d&&room==rm_correlacione_pokemon&&texto_atual==global.resps[global.c].cor_d){
obj_hp_milk.image_index+=1;
obj_hp_milk.anc=true}
if(enter&&textb==global.resps[global.c].core_e&&room==rm_correlacione_pokemon&&texto_atual==global.resps[global.c].cor_e){
obj_hp_milk.image_index+=1;
obj_hp_milk.anc=true}
//Correlacione erradas

if(enter&&textb!=global.resps[global.c].core_a&&room==rm_correlacione_pokemon&&texto_atual==global.resps[global.c].cor_a){
obj_hp_tea.image_index+=2;
obj_hp_tea.anc=true}
if(enter&&textb!=global.resps[global.c].core_b&&room==rm_correlacione_pokemon&&texto_atual==global.resps[global.c].cor_b){
obj_hp_tea.image_index+=2;
obj_hp_tea.anc=true}
if(enter&&textb!=global.resps[global.c].core_c&&room==rm_correlacione_pokemon&&texto_atual==global.resps[global.c].cor_c){
obj_hp_tea.image_index+=2;
obj_hp_tea.anc=true}
if(enter&&textb!=global.resps[global.c].core_d&&room==rm_correlacione_pokemon&&texto_atual==global.resps[global.c].cor_d){
obj_hp_tea.image_index+=2;
obj_hp_tea.anc=true}
if(enter&&textb!=global.resps[global.c].core_e&&room==rm_correlacione_pokemon&&texto_atual==global.resps[global.c].cor_e){
obj_hp_tea.image_index+=2;
obj_hp_tea.anc=true}
break;}
}
//Texto de cima.
draw_text_ext(xx + caixa_h/2.8, yy+view_h/1.14 - caixa_h/2,texto_atual,sep,caixa_w*4);
//Texto de baixo
draw_text_ext(xx + caixa_h/2.5, yy+view_h*3.94 - caixa_h*3,texto_atualb,sepb,caixa_w*4);
//Texto de cima Pergunta.
draw_text_ext(xx + caixa_h*1.8, yy+view_h/1.5 - caixa_h/2,"PERGUNTA",sep,caixa_w*4);
draw_set_font(-1);
}