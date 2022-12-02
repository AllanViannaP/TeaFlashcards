//Se a transição não está sendo realizada aumenta a opacidade
if(!escuro){
	alpha+=.02;}
//Caso acabe o efeito diminui a opacidade
	else{
	alpha-=.02;}
//Determina o fim do efeito
if(alpha >= 1 && !escuro){
	room_goto(destino);
}