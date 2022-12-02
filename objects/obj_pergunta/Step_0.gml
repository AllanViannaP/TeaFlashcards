//Usar o enter ou space para selecionar.
var enter = (keyboard_check_released(vk_enter)||keyboard_check_released(vk_space));

//Controle do menu de perguntas
switch(count){
//	Caso esteja na primeira parte das perguntas
case 1:
if(enter){
//Vai para menu de nome e senha
switch(sel){
case 0: 
count=2;
sel=0;
break;
//Vai para menu de edições
case 1:
count=7;
sel=0;
break;
//Retorna ao menu inicial
case 2: 
room_goto(rm_menu);
break;
}}
break;
//Caso esteja no menu de nome e senha
//-------------------------------------------------------------------------------
//-------------------------------------------------------------------------------
case 2:
if(enter){
switch(sel){
//Pega o nome do deck	
case 0: 
if(!escolha[sel]){
nome_deck = get_string("ATENÇÃO: Se colocar nome igual a outro deck, o outro será excluído","");
escolha[sel]=true}
break;
//Pega a senha do deck
case 1:
if(!escolha[sel]){
senha_deck = get_string("Insira uma senha para evitar que pessoas sem autorização editem o deck. Deixe em branco caso não queira senha.","");
escolha[sel]=true}
break;
//Vai para pagina de seleção de jogo
case 2:
if(file_exists(nome_deck + ".deck")) file_delete(nome_deck + ".deck");
ini_open(nome_deck + ".deck");
ini_write_string("senha","senha usuario",senha_deck);
for(i=0; i<=12; i++;){
escolha[i]=false;}
sel=0;
count = 3;
break;
//Voltar a pagina anterior.
case 3:
for(i=0; i<=12; i++;){
escolha[i]=false;}
sel=0;
count = 1;
break;
}} 
break;
//Caso esteja na pagina de seleção de jogo
//-------------------------------------------------------------------------------
//-------------------------------------------------------------------------------
case 3:
if(c>40){
count=-1;
sel=0;
pelo_men=true;}

if(enter){
switch(sel){
//Objetiva + pokemon
case 0: 
sel=0;
count = 4;
global.resps[c].tipo_jogo = 1;
break;
//Objetiva + mario
case 1:
sel=0;
count = 4;
global.resps[c].tipo_jogo = 2;
break;
//Discursiva + zelda
case 2:
sel=0;
count = 5;
global.resps[c].tipo_jogo = 3;
break;
// Discursiva mario
case 3:
sel=0;
count = 5;
global.resps[c].tipo_jogo = 4;
break;
// correlacione pokemon
case 4:
sel=0;
count = 6;
global.resps[c].tipo_jogo = 5;
break;
// correlacione zelda
case 5:
sel=0;
count = 6;
global.resps[c].tipo_jogo = 6;
break;
//Finalizar
// Realizar save.
case 6:
sel=0;
pelo_men=true;
count = -1;
break;
}} 
break;
//-------------------------------------------------------------------------------
//-------------------------------------------------------------------------------

case 4:
if(enter){

switch(sel){
case 0: 
if(!escolha[sel]){
global.resps[c].pergunta = get_string("Insira sua pergunta","");
escolha[sel]=true}
break;

case 1:
if(!escolha[sel]){
global.resps[c].respostacerta = get_string("Insira a resposta certa","");
escolha[sel]=true}
break;

case 2:
if(!escolha[sel]){
global.resps[c].respostae = get_string("Insira a resposta errada","");
escolha[sel]=true}
break;

case 3:
if(!escolha[sel]){
global.resps[c].respostae2 = get_string("Insira a resposta errada","");
escolha[sel]=true}
break;

case 4:
if(!escolha[sel]){
global.resps[c].respostae3 = get_string("Insira a resposta errada","");
escolha[sel]=true}
break;

case 5:
if(!escolha[sel]){
global.resps[c].respostae4 = get_string("Insira a resposta errada","");
escolha[sel]=true}
break;

case 6:

ini_write_real("Quest"+string(c),"tipo_jogo",global.resps[c].tipo_jogo);
ini_write_string("Quest"+string(c),"pergunta",global.resps[c].pergunta);
ini_write_string("Quest"+string(c),"respostacerta",global.resps[c].respostacerta);
ini_write_string("Quest"+string(c),"respostae",global.resps[c].respostae);
ini_write_string("Quest"+string(c),"respostae2",global.resps[c].respostae2);
ini_write_string("Quest"+string(c),"respostae3",global.resps[c].respostae3);
ini_write_string("Quest"+string(c),"respostae4",global.resps[c].respostae4);

c++;
sel=0;
global.resps[c] = global.estrutura
for(i=0; i<=12; i++;){
escolha[i]=false;}
count = 3;

break;

//FINALIZAR
//Realizar save
case 7:
ini_write_real("Quest"+string(c),"tipo_jogo",global.resps[c].tipo_jogo);
ini_write_string("Quest"+string(c),"pergunta",global.resps[c].pergunta);
ini_write_string("Quest"+string(c),"respostacerta",global.resps[c].respostacerta);
ini_write_string("Quest"+string(c),"respostae",global.resps[c].respostae);
ini_write_string("Quest"+string(c),"respostae2",global.resps[c].respostae2);
ini_write_string("Quest"+string(c),"respostae3",global.resps[c].respostae3);
ini_write_string("Quest"+string(c),"respostae4",global.resps[c].respostae4);
sel=0;
count = -1;
break;

}} 
break;
//-------------------------------------------------------------------------------
//-------------------------------------------------------------------------------

case 5:
if(enter){

switch(sel){
case 0: 
if(!escolha[sel]){
global.resps[c].pergunta = get_string("Insira sua pergunta","");
escolha[sel]=true}
break;

case 1:
if(!escolha[sel]){
global.resps[c].respostacerta = get_string("Insira a resposta certa","");
escolha[sel]=true}
break;

case 2:
ini_write_real("Quest" + string(c),"tipo_jogo",global.resps[c].tipo_jogo);
ini_write_string("Quest" + string(c),"pergunta",global.resps[c].pergunta);
ini_write_string("Quest" + string(c),"respostacerta",global.resps[c].respostacerta);
c++;
sel=0;
global.resps[c] = global.estrutura
for(i=0; i<=12; i++;){
escolha[i]=false;}
count = 3;
break;

//FINALIZAR
//Realizar save
case 3:
ini_write_real("Quest"+string(c),"tipo_jogo",global.resps[c].tipo_jogo);
ini_write_string("Quest"+string(c),"pergunta",global.resps[c].pergunta);
ini_write_string("Quest"+string(c),"respostacerta",global.resps[c].respostacerta);
sel=0;
count = -1;
break;

}} 
break;
//-------------------------------------------------------------------------------
//-------------------------------------------------------------------------------

case 6:
if(enter){

switch(sel){
case 0: 
if(!escolha[sel]){
global.resps[c].pergunta = get_string("Insira sua pergunta","");
escolha[sel]=true}
break;

case 1:
if(!escolha[sel]){
global.resps[c].cor_a = get_string("Insira a alternativa A","");
escolha[sel]=true}
break;

case 2:
if(!escolha[sel]){
global.resps[c].core_a = get_string("Insira o que será correlaciondo com a alternativa A","");
escolha[sel]=true}
break;

case 3:
if(!escolha[sel]){
global.resps[c].cor_b = get_string("Insira a alternativa B","");
escolha[sel]=true}
break;

case 4:
if(!escolha[sel]){
global.resps[c].core_b = get_string("Insira o que será correlaciondo com a alternativa B","");
escolha[sel]=true}
break;

case 5:
if(!escolha[sel]){
global.resps[c].cor_c = get_string("Insira a alternativa C","");
escolha[sel]=true}
break;

case 6:
if(!escolha[sel]){
global.resps[c].core_c = get_string("Insira o que será correlaciondo com a alternativa C","");
escolha[sel]=true}
break;

case 7:
if(!escolha[sel]){
global.resps[c].cor_d = get_string("Insira a alternativa D","");
escolha[sel]=true}
break;

case 8:
if(!escolha[sel]){
global.resps[c].core_d = get_string("Insira o que será correlaciondo com a alternativa D","");
escolha[sel]=true}
break;

case 9:
if(!escolha[sel]){
global.resps[c].cor_e = get_string("Insira a alternativa E","");
escolha[sel]=true}
break;

case 10:
if(!escolha[sel]){
global.resps[c].core_e = get_string("Insira o que será correlaciondo com a alternativa E","");
escolha[sel]=true}
break;

case 11:
ini_write_real("Quest"+string(c),"tipo_jogo",global.resps[c].tipo_jogo);
ini_write_string("Quest"+string(c),"pergunta",global.resps[c].pergunta);
ini_write_string("Quest"+string(c),"cor_a",global.resps[c].cor_a);
ini_write_string("Quest"+string(c),"core_a",global.resps[c].core_a);
ini_write_string("Quest"+string(c),"cor_b",global.resps[c].cor_b);
ini_write_string("Quest"+string(c),"core_b",global.resps[c].core_b);
ini_write_string("Quest"+string(c),"cor_c",global.resps[c].cor_c);
ini_write_string("Quest"+string(c),"core_c",global.resps[c].core_c);
ini_write_string("Quest"+string(c),"cor_d",global.resps[c].cor_d);
ini_write_string("Quest"+string(c),"core_d",global.resps[c].core_d);
ini_write_string("Quest"+string(c),"cor_e",global.resps[c].cor_e);
ini_write_string("Quest"+string(c),"core_e",global.resps[c].core_e);
c++;
sel=0;
global.resps[c] = global.estrutura
for(i=0; i<=12; i++;){
escolha[i]=false;}
count = 3;
break;

//Finalizar
//Salvar
case 12:
ini_write_real("Quest"+string(c),"tipo_jogo",global.resps[c].tipo_jogo);
ini_write_string("Quest"+string(c),"pergunta",global.resps[c].pergunta);
ini_write_string("Quest"+string(c),"cor_a",global.resps[c].cor_a);
ini_write_string("Quest"+string(c),"core_a",global.resps[c].core_a);
ini_write_string("Quest"+string(c),"cor_b",global.resps[c].cor_b);
ini_write_string("Quest"+string(c),"core_b",global.resps[c].core_b);
ini_write_string("Quest"+string(c),"cor_c",global.resps[c].cor_c);
ini_write_string("Quest"+string(c),"core_c",global.resps[c].core_c);
ini_write_string("Quest"+string(c),"cor_d",global.resps[c].cor_d);
ini_write_string("Quest"+string(c),"core_d",global.resps[c].core_d);
ini_write_string("Quest"+string(c),"cor_e",global.resps[c].cor_e);
ini_write_string("Quest"+string(c),"core_e",global.resps[c].core_e);
sel=0;
count = -1;
break;
}}
break;

//------------------------------------------------------------------------------\\
//------------------------------------------------------------------------------\\
//                               MENU EDIÇÃO                                    \\
//------------------------------------------------------------------------------\\
//------------------------------------------------------------------------------\\

case 7:
if(enter){

switch(sel){
case 0: 
nome_edit=get_string("Insira o nome do deck que queira editar. Se atente a espaços e acentos!","") +(".deck");
if(file_exists(nome_edit)){
ini_open(nome_edit);
count=8;
}
else{
show_message("Arquivo inválido! Por favor insira o nome correto.");
}
break;

case 1:
count = 1;
break;

}} 
break;

//-------------------------------------------------------------------------------
//-------------------------------------------------------------------------------

case 8:
if(enter){

switch(sel){
case 0:
senha_edit=get_string("Insira a senha de edição do Deck. Caso não tenha senha, deixe em branco.","");
var teste_senha = ini_read_string("senha","senha usuario","");
if(senha_edit ==  teste_senha){
count = 9;
}
else{
show_message("Senha incorreta! Por favor insira a senha correta.");
}
break;

case 1:
count = 1;
break;

}}
break;

//-------------------------------------------------------------------------------
//-------------------------------------------------------------------------------

case 9:
if(autoriza==false && c2==true){
c2=false;
alarm[0]=room_speed;}

var n = ini_read_real("Tamanho", "vetor",0);
for(i=0;i<=n;i++){
global.resps[i] = global.estrutura	
global.resps[i].tipo_jogo = ini_read_real("Quest"+string(i),"tipo_jogo",0);

switch(global.resps[i].tipo_jogo){

case 1 :
opcoes_editar_deck[i] = "Questão " + string(i) + " objetiva em batalha";
global.resps[i].pergunta = ini_read_string("Quest"+string(i),"pergunta",0);
global.resps[i].respostacerta = ini_read_string("Quest"+string(i),"respostacerta",0);
global.resps[i].respostae = ini_read_string("Quest"+string(i),"respostae",0);
global.resps[i].respostae2 = ini_read_string("Quest"+string(i),"respostae2",0);
global.resps[i].respostae3 = ini_read_string("Quest"+string(i),"respostae3",0);
global.resps[i].respostae4 = ini_read_string("Quest"+string(i),"respostae4",0);
break;

case 2:
opcoes_editar_deck[i] = "Questão " + string(i) + " objetiva em plataforma";
global.resps[i].pergunta = ini_read_string("Quest"+string(i),"pergunta",0);
global.resps[i].respostacerta = ini_read_string("Quest"+string(i),"respostacerta",0);
global.resps[i].respostae = ini_read_string("Quest"+string(i),"respostae",0);
global.resps[i].respostae2 = ini_read_string("Quest"+string(i),"respostae2",0);
global.resps[i].respostae3 = ini_read_string("Quest"+string(i),"respostae3",0);
global.resps[i].respostae4 = ini_read_string("Quest"+string(i),"respostae4",0);
break;

case 3:
opcoes_editar_deck[i] = "Questão " + string(i) + " discursiva em puzzle";
global.resps[i].pergunta = ini_read_string("Quest"+string(i),"pergunta",0);
global.resps[i].respostacerta = ini_read_string("Quest"+string(i),"respostacerta",0);
break;

case 4:
opcoes_editar_deck[i] = "Questão " + string(i) + " discursiva em plataforma";
global.resps[i].pergunta = ini_read_string("Quest"+string(i),"pergunta",0);
global.resps[i].respostacerta = ini_read_string("Quest"+string(i),"respostacerta",0);
break;

case 5:
opcoes_editar_deck[i] = "Questão " + string(i) + " correlacione em batalha";
global.resps[i].pergunta =ini_read_string("Quest"+string(i),"pergunta",0);
global.resps[i].cor_a = ini_read_string("Quest"+string(i),"cor_a",0);
global.resps[i].core_a = ini_read_string("Quest"+string(i),"core_a",0);
global.resps[i].cor_b = ini_read_string("Quest"+string(i),"cor_b",0);
global.resps[i].core_b = ini_read_string("Quest"+string(i),"core_b",0);
global.resps[i].cor_c = ini_read_string("Quest"+string(i),"cor_c",0);
global.resps[i].core_c = ini_read_string("Quest"+string(i),"core_c",0);
global.resps[i].cor_d = ini_read_string("Quest"+string(i),"cor_d",0);
global.resps[i].core_d = ini_read_string("Quest"+string(i),"core_d",0);
global.resps[i].cor_e = ini_read_string("Quest"+string(i),"cor_e",0);
global.resps[i].core_e = ini_read_string("Quest"+string(i),"core_e",0);
break;

case 6:
opcoes_editar_deck[i] = "Questão " + string(i) + " correlacione em puzzle";
global.resps[i].pergunta =ini_read_string("Quest"+string(i),"pergunta",0);
global.resps[i].cor_a = ini_read_string("Quest"+string(i),"cor_a",0);
global.resps[i].core_a = ini_read_string("Quest"+string(i),"core_a",0);
global.resps[i].cor_b = ini_read_string("Quest"+string(i),"cor_b",0);
global.resps[i].core_b = ini_read_string("Quest"+string(i),"core_b",0);
global.resps[i].cor_c = ini_read_string("Quest"+string(i),"cor_c",0);
global.resps[i].core_c = ini_read_string("Quest"+string(i),"core_c",0);
global.resps[i].cor_d = ini_read_string("Quest"+string(i),"cor_d",0);
global.resps[i].core_d = ini_read_string("Quest"+string(i),"core_d",0);
global.resps[i].cor_e = ini_read_string("Quest"+string(i),"cor_e",0);
global.resps[i].core_e = ini_read_string("Quest"+string(i),"core_e",0);
break;
}


//  //\\
//  \\//

if (enter && autoriza==true){

if(opcoes_editar_deck[sel] == "Questão " + string(i) + " objetiva em batalha"){c=sel;
perg_resp[0] = global.resps[c].pergunta;
perg_resp[1] = global.resps[c].respostacerta;
perg_resp[2] = global.resps[c].respostae;
perg_resp[3] = global.resps[c].respostae2;
perg_resp[4] = global.resps[c].respostae3;
perg_resp[5] = global.resps[c].respostae4;
count = 10;
	}

else if(opcoes_editar_deck[sel] == "Questão " + string(i) + " objetiva em plataforma"){ c=sel;
perg_resp[0] = global.resps[c].pergunta;
perg_resp[1] = global.resps[c].respostacerta;
perg_resp[2] = global.resps[c].respostae;
perg_resp[3] = global.resps[c].respostae2;
perg_resp[4] = global.resps[c].respostae3;
perg_resp[5] = global.resps[c].respostae4;		
count = 10;}

else if(opcoes_editar_deck[sel] == "Questão " + string(i) + " discursiva em puzzle"){ c=sel;
perg_resp[0] = global.resps[c].pergunta;
perg_resp[1] = global.resps[c].respostacerta;
count = 11; }

else if(opcoes_editar_deck[sel] == "Questão " + string(i) + " discursiva em plataforma"){c=sel;
perg_resp[0] = global.resps[c].pergunta;
perg_resp[1] = global.resps[c].respostacerta;
count = 11; }

else if(opcoes_editar_deck[sel] == "Questão " + string(i) + " correlacione em batalha"){ c=sel;
perg_resp[0] = global.resps[c].pergunta;
perg_resp[1] = global.resps[c].cor_a;
perg_resp[2] = global.resps[c].core_a;
perg_resp[3] = global.resps[c].cor_b;
perg_resp[4] = global.resps[c].core_b;
perg_resp[5] = global.resps[c].cor_c;
perg_resp[6] = global.resps[c].core_c;
perg_resp[7] = global.resps[c].cor_d;
perg_resp[8] = global.resps[c].core_d;
perg_resp[9] = global.resps[c].cor_e;
perg_resp[10] = global.resps[c].core_e;
count = 12;}

else if(opcoes_editar_deck[sel] == "Questão " + string(i) + " correlacione em puzzle"){ c=sel;
perg_resp[0] = global.resps[c].pergunta;
perg_resp[1] = global.resps[c].cor_a;
perg_resp[2] = global.resps[c].core_a;
perg_resp[3] = global.resps[c].cor_b;
perg_resp[4] = global.resps[c].core_b;
perg_resp[5] = global.resps[c].cor_c;
perg_resp[6] = global.resps[c].core_c;
perg_resp[7] = global.resps[c].cor_d;
perg_resp[8] = global.resps[c].core_d;
perg_resp[9] = global.resps[c].cor_e;
perg_resp[10] = global.resps[c].core_e;
count = 12;}
}}
break;

//-------------------------------------------------------------------------------
//-------------------------------------------------------------------------------

case 10:

if(enter){

switch(sel){
case 0: 
if(!escolha[sel]){
global.resps[c].pergunta = get_string("Insira sua pergunta",perg_resp[0]);
ini_write_string("Quest"+string(c),"pergunta",global.resps[c].pergunta);
escolha[sel]=true}
break;

case 1:
if(!escolha[sel]){
global.resps[c].respostacerta = get_string("Insira a resposta certa",perg_resp[1]);
ini_write_string("Quest"+string(c),"respostacerta",global.resps[c].respostacerta);
escolha[sel]=true}
break;

case 2:
if(!escolha[sel]){
global.resps[c].respostae = get_string("Insira a resposta errada",perg_resp[2]);
ini_write_string("Quest"+string(c),"respostae",global.resps[c].respostae);

escolha[sel]=true}
break;

case 3:
if(!escolha[sel]){
global.resps[c].respostae2 = get_string("Insira a resposta errada",perg_resp[3]);
ini_write_string("Quest"+string(c),"respostae2",global.resps[c].respostae2);
escolha[sel]=true}
break;

case 4:
if(!escolha[sel]){
global.resps[c].respostae3 = get_string("Insira a resposta errada",perg_resp[4]);
ini_write_string("Quest"+string(c),"respostae3",global.resps[c].respostae3);
escolha[sel]=true}
break;

case 5:
if(!escolha[sel]){
global.resps[c].respostae4 = get_string("Insira a resposta errada",perg_resp[5]);
ini_write_string("Quest"+string(c),"respostae4",global.resps[c].respostae4);
escolha[sel]=true}
break;

case 6:
sel=0;
for(i=0; i<=12; i++;){
escolha[i]=false;}
count = 9;
break;

//FINALIZAR
//Realizar save
case 7:
sel=0;
ini_close();
room_goto(rm_menu);
break;

}
} 
break;
//-------------------------------------------------------------------------------
//-------------------------------------------------------------------------------
case 11:


if(enter){

switch(sel){
case 0: 
if(!escolha[sel]){
global.resps[c].pergunta = get_string("Insira sua pergunta",perg_resp[0]);
ini_write_string("Quest" + string(c),"pergunta",global.resps[c].pergunta);
escolha[sel]=true}
break;

case 1:
if(!escolha[sel]){
global.resps[c].respostacerta = get_string("Insira a resposta certa",perg_resp[1]);
ini_write_string("Quest" + string(c),"respostacerta",global.resps[c].respostacerta);
escolha[sel]=true}
break;

case 2:
sel=0;
for(i=0; i<=12; i++;){
escolha[i]=false;}
count = 9;
break;

//FINALIZAR
//Realizar save
case 3:
sel=0;
ini_close();
room_goto(rm_menu);
break;

}} 
break;

//-------------------------------------------------------------------------------
//-------------------------------------------------------------------------------

case 12:

if(enter){

switch(sel){
case 0: 
if(!escolha[sel]){
global.resps[c].pergunta = get_string("Insira sua pergunta",perg_resp[0]);
ini_write_string("Quest"+string(c),"pergunta",global.resps[c].pergunta);
escolha[sel]=true}
break;

case 1:
if(!escolha[sel]){
global.resps[c].cor_a = get_string("Insira a alternativa A",perg_resp[1]);
ini_write_string("Quest"+string(c),"cor_a",global.resps[c].cor_a);
escolha[sel]=true}
break;

case 2:
if(!escolha[sel]){
global.resps[c].core_a = get_string("Insira o que será correlaciondo com a alternativa A",perg_resp[2]);
ini_write_string("Quest"+string(c),"core_a",global.resps[c].core_a);
escolha[sel]=true}
break;

case 3:
if(!escolha[sel]){
global.resps[c].cor_b = get_string("Insira a alternativa B",perg_resp[3]);
ini_write_string("Quest"+string(c),"cor_b",global.resps[c].cor_b);
escolha[sel]=true}
break;

case 4:
if(!escolha[sel]){
global.resps[c].core_b = get_string("Insira o que será correlaciondo com a alternativa B",perg_resp[4]);
ini_write_string("Quest"+string(c),"core_b",global.resps[c].core_b);
escolha[sel]=true}
break;

case 5:
if(!escolha[sel]){
global.resps[c].cor_c = get_string("Insira a alternativa C",perg_resp[5]);
ini_write_string("Quest"+string(c),"cor_c",global.resps[c].cor_c);
escolha[sel]=true}
break;

case 6:
if(!escolha[sel]){
global.resps[c].core_c = get_string("Insira o que será correlaciondo com a alternativa C",perg_resp[6]);
ini_write_string("Quest"+string(c),"core_c",global.resps[c].core_c);
escolha[sel]=true}
break;

case 7:
if(!escolha[sel]){
global.resps[c].cor_d = get_string("Insira a alternativa D",perg_resp[7]);
ini_write_string("Quest"+string(c),"cor_d",global.resps[c].cor_d);
escolha[sel]=true}
break;

case 8:
if(!escolha[sel]){
global.resps[c].core_d = get_string("Insira o que será correlaciondo com a alternativa D",perg_resp[8]);
ini_write_string("Quest"+string(c),"core_d",global.resps[c].core_d);
escolha[sel]=true}
break;

case 9:
if(!escolha[sel]){
global.resps[c].cor_e = get_string("Insira a alternativa E",perg_resp[9]);
ini_write_string("Quest"+string(c),"cor_e",global.resps[c].cor_e);
escolha[sel]=true}
break;

case 10:
if(!escolha[sel]){
global.resps[c].core_e = get_string("Insira o que será correlaciondo com a alternativa E",perg_resp[10]);
ini_write_string("Quest"+string(c),"core_e",global.resps[c].core_e);
escolha[sel]=true}
break;

case 11:
sel=0;
for(i=0; i<=12; i++;){
escolha[i]=false;}
count = 9;
break;

//Finalizar
//Salvar
case 12:
sel=0;
ini_close();
room_goto(rm_menu);
break;
}}
break;
//-------------------------------------------------------------------------------\\
//-------------------------------------------------------------------------------\\
//                       SISTEMA DE FECHAR E SALVAR                              \\
//-------------------------------------------------------------------------------\\
//-------------------------------------------------------------------------------\\

case -1:

if(pelo_men){ini_write_real("Tamanho", "vetor", c-1);
if((c-1) < 0){ file_delete(nome_deck + ".deck");}}

else if(!pelo_men){ini_write_real("Tamanho", "vetor", c);}
	 
ini_close();

room_goto(rm_menu);
break;}
