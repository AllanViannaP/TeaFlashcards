
certas = (global.n+1) - global.erradas;
texto = "Você acertou: "+ string(certas) + " de " + string(global.n+1);
dm=false;
perfeito = "";

if(certas == (global.n+1)){
texto_milk = "Estou orgulhosa de você! Continue assim!";
perfeito = "[rainbow][wave] PERFEITO![/rainbow][/wave]"
}

else if(certas >= (global.n+1)*0.7   && certas < (global.n+1)){
texto_milk	= "Você foi muito bem!";}

else if(certas >=(global.n+1)*0.5  && certas < (global.n+1)*0.7){
texto_milk	= "Não esqueça de revisar a matéria!";}

else if(certas < (global.n+1)*0.5 ){
texto_milk	= "Que tal estudarmos juntos mais uma vez?";}





alarm[1]=room_speed*2;

alarm[0]=room_speed*10;

