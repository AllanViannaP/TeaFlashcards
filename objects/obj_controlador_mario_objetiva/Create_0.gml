//Variaveis de posicionamento do tutorial na tela
ximg=room_height*1.7;
yimg=room_width;
texto = "";
//Verificação de movimento
dg = false;
//Velocidade do texto sendo digitado
es=0;
//Variavel de controle do tutorial
continuar = 0;


//Garante que o endereço da memoria será randomico.
randomize();
//Inicia o array das imagens 
imagepos[0] = 31;

for(c=1;c<5;c++){
imagepos[c] = imagepos[c-1]+64;	
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
instance_create_layer(imagepos[0],34,"Instances",obj_bloco_pergunta);
instance_create_layer(imagepos[1],34,"Instances",obj_bloco_pergunta2);
instance_create_layer(imagepos[2],34,"Instances",obj_bloco_pergunta3);
instance_create_layer(imagepos[3],34,"Instances",obj_bloco_pergunta4);
instance_create_layer(imagepos[4],34,"Instances",obj_bloco_pergunta5);
pode = true;
if(global.tutorial!=true){
pergunta = global.resps[global.c].pergunta;
}
if(global.tutorial==true){
pergunta = "Como é a palavra Yellow em português?";
}