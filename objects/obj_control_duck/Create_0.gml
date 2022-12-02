//Garante que o endereço da memoria será randomico.
randomize();
//Inicia o array das imagens 
imagepos[0] = 31;
if(global.tutorial){
pergunts = "Qual a bandeira do Brasil?";
}else{
pergunts = global.resultado[0].pergunta;}
//Preenche a posição x das imagens dentro do array
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
instance_create_layer(imagepos[0],118,"Imagem",obj_import_duck1);
instance_create_layer(imagepos[1],118,"Imagem",obj_import_duck2);
instance_create_layer(imagepos[2],118,"Imagem",obj_import_duck3);
instance_create_layer(imagepos[3],118,"Imagem",obj_import_duck4);
instance_create_layer(imagepos[4],118,"Imagem",obj_import_duck_certa);





