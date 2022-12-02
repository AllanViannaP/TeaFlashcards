if(certas != (global.n+1)){
draw_set_halign(fa_center);
draw_set_font(fnt_pixmen);
draw_set_color(c_maroon);
draw_text(650,40,"As perguntas que você errou:");
draw_set_color(-1);
draw_text(630,110,string(count+1)+"/"+string(global.erradas));
draw_set_font(fnt_edit12);
draw_text_scribble(850,680,"[blink]Aperte enter ou espaço para retornar ao menu[/blink]");
draw_set_halign(-1);

var xx = 70;
var yy = 200;


var temp = global.armazena[count];

global.resps[temp].tipo_jogo = ini_read_real(global.ordem[temp],"tipo_jogo",0);


if(global.resps[temp].tipo_jogo == 1){
textoper = ini_read_string(global.ordem[temp],"pergunta",0);
texto1  = ini_read_string(global.ordem[temp],"respostacerta",0);
texto2  = ini_read_string(global.ordem[temp],"respostae",0);
texto3  =  ini_read_string(global.ordem[temp],"respostae2",0);
texto4  = ini_read_string(global.ordem[temp],"respostae3",0);
texto5 =  ini_read_string(global.ordem[temp],"respostae4",0);	
texto6= "";
texto7= "";
texto8= "";
texto9= "";
texto10= "";
}

if(global.resps[temp].tipo_jogo ==2){
textoper = ini_read_string(global.ordem[temp],"pergunta",0);
texto1  = ini_read_string(global.ordem[temp],"respostacerta",0);
texto2  = ini_read_string(global.ordem[temp],"respostae",0);
texto3  =  ini_read_string(global.ordem[temp],"respostae2",0);
texto4  = ini_read_string(global.ordem[temp],"respostae3",0);
texto5 =  ini_read_string(global.ordem[temp],"respostae4",0);	
texto6= "";
texto7= "";
texto8= "";
texto9= "";
texto10= "";
}

if(global.resps[temp].tipo_jogo ==3){
textoper = ini_read_string(global.ordem[temp],"pergunta",0);
texto1  = ini_read_string(global.ordem[temp],"respostacerta",0);
texto2= "";
texto3= "";
texto4= "";
texto5= "";
texto6= "";
texto7= "";
texto8= "";
texto9= "";
texto10= "";
}

if(global.resps[temp].tipo_jogo ==4){
textoper = ini_read_string(global.ordem[temp],"pergunta",0);
texto1  = ini_read_string(global.ordem[temp],"respostacerta",0);
texto2= "";
texto3= "";
texto4= "";
texto5= "";
texto6= "";
texto7= "";
texto8= "";
texto9= "";
texto10= "";
}

if(global.resps[temp].tipo_jogo ==5){
textoper = ini_read_string(global.ordem[temp],"pergunta",0);
var aux = ini_read_string(global.ordem[temp],"cor_a",0);
texto1  = "a. " + aux;
var aux = ini_read_string(global.ordem[temp],"core_a",0);
texto2  = "(a) "+ aux;
var aux = ini_read_string(global.ordem[temp],"cor_b",0);
texto3  = "b. " + aux;
var aux = ini_read_string(global.ordem[temp],"core_b",0);
texto4  = "(b) " + aux;
var aux = ini_read_string(global.ordem[temp],"cor_c",0);
texto5  = "c. " + aux;
var aux = ini_read_string(global.ordem[temp],"core_c",0);
texto6  = "(c) " + aux;
var aux = ini_read_string(global.ordem[temp],"cor_d",0);
texto7  = "d. " + aux;
var aux = ini_read_string(global.ordem[temp],"core_d",0);
texto8  = "(d) "+ aux;
var aux = ini_read_string(global.ordem[temp],"cor_e",0);
texto9  = "e. " + aux;
var aux = ini_read_string(global.ordem[temp],"core_e",0);
texto10  = "(e) "+ aux;
}

if(global.resps[temp].tipo_jogo ==6){
textoper = ini_read_string(global.ordem[temp],"pergunta",0);
var aux = ini_read_string(global.ordem[temp],"cor_a",0);
texto1  = "a. " + aux;
var aux = ini_read_string(global.ordem[temp],"core_a",0);
texto2  = "(a) "+ aux;
var aux = ini_read_string(global.ordem[temp],"cor_b",0);
texto3  = "b. " + aux;
var aux = ini_read_string(global.ordem[temp],"core_b",0);
texto4  = "(b) " + aux;
var aux = ini_read_string(global.ordem[temp],"cor_c",0);
texto5  = "c. " + aux;
var aux = ini_read_string(global.ordem[temp],"core_c",0);
texto6  = "(c) " + aux;
var aux = ini_read_string(global.ordem[temp],"cor_d",0);
texto7  = "d. " + aux;
var aux = ini_read_string(global.ordem[temp],"core_d",0);
texto8  = "(d) "+ aux;
var aux = ini_read_string(global.ordem[temp],"cor_e",0);
texto9  = "e. " + aux;
var aux = ini_read_string(global.ordem[temp],"core_e",0);
texto10  = "(e) "+ aux;
}

draw_text(xx,yy,textoper);
draw_set_color(c_green);
if(global.resps[temp].tipo_jogo == 5 ||global.resps[temp].tipo_jogo == 6 ){
draw_set_color(-1);}
draw_text(xx,yy+30,texto1);
draw_set_color(-1);
draw_text(xx,yy+60,texto2);
draw_text(xx,yy+90,texto3);
draw_text(xx,yy+120,texto4);
draw_text(xx,yy+150,texto5);
draw_text(xx,yy+180,texto6);
draw_text(xx,yy+210,texto7);
draw_text(xx,yy+240,texto8);
draw_text(xx,yy+270,texto9);
draw_text(xx,yy+300,texto10);}