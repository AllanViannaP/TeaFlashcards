/// @description Insert description here
// You can write your code in this editor
if(obj_control_cor_zd.texto_baixo== perg && insert == true && image_index!=1){
image_index=1;
insert=false;
if(obj_respostas_zd.solid==false){
obj_respostas_zd.visible=false;
obj_parede_cor1.image_index = 1;
obj_parede_cor2.image_index = 1;
obj_control_cor_zd.com_bloco = false;
obj_control_cor_zd.texto_baixo = "Pegue um bloco para correlacionar!"; 
}
if(obj_respostas_zd2.solid==false){
obj_respostas_zd2.visible=false;
obj_parede_cor1.image_index = 1;
obj_parede_cor2.image_index = 1;
obj_control_cor_zd.com_bloco = false;
obj_control_cor_zd.texto_baixo = "Pegue um bloco para correlacionar!"; 
}
if(obj_respostas_zd3.solid==false){
obj_respostas_zd3.visible=false;
obj_parede_cor1.image_index = 1;
obj_parede_cor2.image_index = 1;
obj_control_cor_zd.com_bloco = false;
obj_control_cor_zd.texto_baixo = "Pegue um bloco para correlacionar!"; 
}
if(obj_respostas_zd4.solid==false){
obj_respostas_zd4.visible=false;
obj_parede_cor1.image_index = 1;
obj_parede_cor2.image_index = 1;
obj_control_cor_zd.com_bloco = false;
obj_control_cor_zd.texto_baixo = "Pegue um bloco para correlacionar!"; 
}
if(obj_respostas_zd5.solid==false){
obj_respostas_zd5.visible=false;
obj_parede_cor1.image_index = 1;
obj_parede_cor2.image_index = 1;
obj_control_cor_zd.com_bloco = false;
obj_control_cor_zd.texto_baixo = "Pegue um bloco para correlacionar!"; 
}}

else if(obj_control_cor_zd.texto_baixo!= perg && insert == true && image_index!=1){
image_index=2;
obj_hp_zd.image_index += 1;
insert = false;

if(obj_respostas_zd.solid==false){
obj_respostas_zd.hp=1;
obj_respostas_zd.solid=true;
obj_control_cor_zd.texto_baixo = "Pegue um bloco para correlacionar!"; 
obj_control_cor_zd.com_bloco = false;
}
if(obj_respostas_zd2.solid==false){
obj_respostas_zd2.hp=1;
obj_respostas_zd2.solid=true;
obj_control_cor_zd.texto_baixo = "Pegue um bloco para correlacionar!"; 
obj_control_cor_zd.com_bloco = false;
}
if(obj_respostas_zd3.solid==false){
obj_respostas_zd3.hp=1;
obj_respostas_zd3.solid=true;
obj_control_cor_zd.texto_baixo = "Pegue um bloco para correlacionar!"; 
obj_control_cor_zd.com_bloco = false;
}
if(obj_respostas_zd4.solid==false){
obj_respostas_zd4.hp=1;
obj_respostas_zd4.solid=true;
obj_control_cor_zd.texto_baixo = "Pegue um bloco para correlacionar!"; 
obj_control_cor_zd.com_bloco = false;
}
if(obj_respostas_zd5.solid==false){
obj_respostas_zd5.hp=1;
obj_respostas_zd5.solid=true;
obj_control_cor_zd.texto_baixo = "Pegue um bloco para correlacionar!"; 
obj_control_cor_zd.com_bloco = false;
}}



