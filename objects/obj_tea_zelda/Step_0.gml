
//Verifica as teclas de movimentação
var up=(keyboard_check(vk_up)||keyboard_check(ord("W")))
var down=(keyboard_check(vk_down)||keyboard_check(ord("S")))
var left=(keyboard_check(vk_left)||keyboard_check(ord("A")))
var right=(keyboard_check(vk_right)||keyboard_check(ord("D")))

//Cria a movimentação
velh = (right-left)*vel;
velv = (down-up)*vel;
x+=velh;
y+=velv;

//Mudando as Sprites para a direção certa
//Movimentando para cima
if(up){
dir = "up";
action = "andando";
sprite_index = spr_walk_up;
image_speed = img_vel;
}
//Movimentando para baixo
else if(down){
dir = "down";
action = "andando";
sprite_index = spr_walk_down;
image_speed = img_vel;
}
//Movimentando para  esquerda
else if(left){
dir = "left";
action = "andando";
image_xscale= -1
sprite_index = spr_walk_side;
image_speed = img_vel;
}
//Movimentando para direita
else if(right){
dir = "right";
action = "andando";
image_xscale= 1
sprite_index = spr_walk_side;
image_speed = img_vel; 
}
//Animação de parado referente a posição 
else{
action="idle";
if(dir == "up"){sprite_index = spr_idle_up; image_speed = 0.9} 
if(dir == "down"){sprite_index = spr_idle_down; image_speed = 0.9}
if(dir == "left"){image_xscale= -1; sprite_index = spr_idle_side; image_speed = 0.9}
if(dir == "right"){image_xscale= 1; sprite_index = spr_idle_side;image_speed = 0.9}
}
if(room==rm_discursiva_zelda){
//Variaveis locais para controlar o if
var enter = keyboard_check_pressed(vk_enter);
var posy = (y<=280&&y>=255);
var posx = (x>=126&&x<=192);
var porte = (instance_exists(obj_porta_zelda));
var posy2 = (y<=123&&y>=66);
var posx2 = (x>=132&&x<=182);
//Se está na frente da porta:
if(enter && posy && posx && porte){
//Pega resposta do user
var resposta = get_string(obj_controlador_zd.perg,"");
//Tira as maiusculas
resposta = scr_convertMN(resposta);
//Compara para ver se está certo, se estiver abre a porta, se não mostra erro
if(resposta == obj_controlador_zd.resp){
instance_destroy(obj_porta_zelda);
}
else{
if(global.tutorial==false){
room_goto(rm_menu_intervalos_lose)}
else{
show_message("Está errado tente novamente");
}
}}
//Permite abrir o bau para ir para prox area.
if(enter && posy2 && posx2 && baun){
baun = false;
obj_bau_zelda.image_speed = 1.6;
}
}

