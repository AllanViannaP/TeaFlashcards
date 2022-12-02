//Inicia a cutscene de certo ou errado
if(global.tutorial){
if(!instance_exists(obj_bloco_pergunta)){
room_goto(rm_correlacione_zelda);}
else{
show_message("Está errado tente novamente");
room_restart()}}

else{
if(!instance_exists(obj_bloco_pergunta)){
room_goto(rm_menu_intervalos_win);}
else{
room_goto(rm_menu_intervalos_lose);}}

