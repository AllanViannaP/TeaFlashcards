//Posição inicial do estilingue 
x=32;
y=167;
//Travar a animação no frame 0
image_speed=0
image_index = 0;

// Método de Atirar 
///@method sling_atirar(tiro);
sling_atirar = function(tiro){
if(tiro){
image_speed=room_speed/20;
alarm[0]=5;
}
}