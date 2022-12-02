//Garante que o endereço da memoria será randomico.
randomize();
//Inicia o array das imagens 
imagepos[0] = 92;
//Preenche a posição x das imagens dentro do array
for(c=1;c<5;c++){
imagepos[c] = imagepos[c-1]+32;	
}
//Ordena aleatoriamente o array
r = array_length_1d(imagepos) - 1;
for(var i = 0; i < r; i += 1) {
    j = irandom_range(i,r);
    temp = imagepos[i];
    imagepos[i] = imagepos[j];
   imagepos[j] = temp;
}
//Cria as imagens na tela na posição aleatoria do array
instance_create_layer(imagepos[0],135,"Respostas",obj_respostas_zd);
instance_create_layer(imagepos[1],135,"Respostas",obj_respostas_zd2);
instance_create_layer(imagepos[2],135,"Respostas",obj_respostas_zd3);
instance_create_layer(imagepos[3],135,"Respostas",obj_respostas_zd4);
instance_create_layer(imagepos[4],135,"Respostas",obj_respostas_zd5);

if(global.tutorial!=true){
texto_cima = global.resps[global.c].pergunta;}
else{
texto_cima = "Correlacione as respostas matemáticas."
}
texto_baixo= "Pegue um bloco para correlacionar!";
com_bloco = false;

//Variaveis de posicionamento do tutorial na tela
ximg=room_height*1.7;
yimg=room_width;
//Velocidade do texto sendo digitado
es=0;
//Variavel de controle do tutorial
continuar =0;
//Se não está no tutorial pega a pergunta do deck.
