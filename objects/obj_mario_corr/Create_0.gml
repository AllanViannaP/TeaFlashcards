//Gravidade 
gravidade = .5;
//Aceleração no chão e durante pulo
acel_chao = .1;
acel_pulo = .08;
acel = acel_chao;
//Velocidades 
velh = 0;
velv = 0;
//Controle de movimento na discursiva
dis=true;
//Limitando as velocidades
max_velh = 4;
max_velv = 8;
//Variavel de controle do chao
chao = false;
//Controle de animação
dir = "direita";
action = "idle";
//State machine de movimentação
enum state_mario{
parado,movendo
}
estado = state_mario.parado;