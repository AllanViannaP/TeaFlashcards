
//Controle de resposta
ver = false;
//Variaveis de posicionamento do tutorial na tela
ximg=room_height*1.7;
yimg=room_width;
//Verificação de movimento
dg = false;
//Velocidade do texto sendo digitado
es=0;
//Variavel de controle do tutorial
continuar =0;
//Se não está no tutorial pega a pergunta do deck.
if(!global.tutorial){
perg = global.resps[global.c].pergunta;
resp = global.resps[global.c].respostacerta;
resp = scr_convertMN(resp);}
//Se estiver declara a pergunta 1+1? Com resposta 2
else{
perg="Quanto é 1+1?";
resp = "2";
}