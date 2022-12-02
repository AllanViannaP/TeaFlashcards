//Mover para direita
var moveright = keyboard_check_pressed(vk_right) || keyboard_check_pressed(ord("D"));
//Mover para esquerda
var moveleft = keyboard_check_pressed(vk_left) || keyboard_check_pressed(ord("A"));
//Definir para onde mover o estilingue e limitar para não sair pela borda
if(moveright && x<288){
	x+=64;
}
if(moveleft && x>32){
	x-=64;
}
//Método de atirar declarado no create
var tiro =  keyboard_check_pressed(vk_space) || keyboard_check_pressed(vk_enter);
if(image_index==0){
sling_atirar(tiro);}
