//Garante que o endereço da memoria será randomico.
randomize();
//Textos iniciais
text="A professora Milk trouxe uma prova surpresa!"

//Import das perguntas no save.
if(room==rm_correlacione_pokemon){
texto_perg = global.resps[global.c].cor_a;
texto_resps = [global.resps[global.c].core_a,global.resps[global.c].core_b,global.resps[global.c].core_c,global.resps[global.c].core_d,global.resps[global.c].core_e];
textb=global.resps[global.c].pergunta;
}
else{
textb=""
texto_perg=global.resps[global.c].pergunta;
texto_resps = [global.resps[global.c].respostacerta,global.resps[global.c].respostae,global.resps[global.c].respostae2,global.resps[global.c].respostae3,global.resps[global.c].respostae4];
}


//Ordena aleatoriamente o array
r = array_length_1d(texto_resps) - 1;
for(var i = 0; i < r; i += 1){
    j = irandom_range(i,r);
    temp = texto_resps[i];
    texto_resps[i] = texto_resps[j];
    texto_resps[j] = temp;
}


//Variaveis de animação
milkv = false;
timer_in = false;
fd = false;
alarm[1]=room_speed*4.5;

//Variaveis para o texto.
texto_atual = "";
texto_limite = 1;
texto_limiteb = 1;
ind = 0;

//Opções de seleção
opcoes = ["A","B","C","D","E"];
sel = 0;
espaco = 0;
rainbow = "[/wave]";