//Colisão com chao 
chao = place_meeting(x,y+1,obj_plat_corr);
//Controles
var left = (keyboard_check(vk_left)||keyboard_check(ord("A")));
var right = (keyboard_check(vk_right)||keyboard_check(ord("D")));
var jump = (keyboard_check_pressed(vk_up)||keyboard_check_pressed(vk_space));
//Controle da sala para discursiva
if(room==rm_discursiva_mario && x>=118 && dis==true){
left=false;
right=false;
jump=false;
}
//Variaveis de movimentação
var mov_h = (right-left)*max_velh;
if(chao) acel=acel_chao;
else acel=acel_pulo;
//State machine para movimentação
switch(estado){
case state_mario.parado:
//Deixando parado
velh=0; velv=0; action="idle";
//Pulo no estado parado
if(jump && chao){
	velv = -max_velv;}
//Gravidade parado
if(!chao){ velv+=gravidade;}
//Sair do estado parado
if(abs(velh)>0||abs(velv)>0||left||right||jump){
estado = state_mario.movendo}
break;

case state_mario.movendo:
action = "andar";
//Movimentação aplicada na variavel
velh = lerp(velh,mov_h,acel);
//Gravidade aplicada
if(!chao) velv+=gravidade; 
//Pulo no estado movendo
if(chao&&jump) velv = -max_velv; 
break;
}
//Limitando as velocidades
velv = clamp(velv,-max_velv,max_velv);

//Colisão horizontal
if(place_meeting(x+velh,y,obj_plat_corr)){
while(!place_meeting(x+sign(velh),y,obj_plat_corr)){
	x+= sign(velh);
}
velh=0;
}
x+=velh;

//Colisão vertical
if(place_meeting(x,y+velv,obj_plat_corr)){
while(!place_meeting(x,y+sign(velv),obj_plat_corr)){
	y+= sign(velv);
}
velv=0;
}
y+=velv;

//Mudando as Sprites para a direção certa
//Movimentando para  esquerda
if(left && action=="andar" && velv==0){
dir = "left";
image_xscale= -1
sprite_index =  spr_run_side;
}
//Movimentando para direita
else if(right && action=="andar" && velv==0){
dir = "right";
image_xscale= 1
sprite_index = spr_run_side;}


//Animação de parado referente a posição 
else if(y>=75){
action="idle"
if(dir == "left"){image_xscale= -1; sprite_index = spr_mario_idle; image_speed = 0.9}
if(dir == "right"){image_xscale= 1; sprite_index = spr_mario_idle;image_speed = 0.9}
}


















