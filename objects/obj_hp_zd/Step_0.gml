if(image_index==3){
if(global.tutorial!=true){
room_goto(rm_menu_intervalos_lose);}
else{
show_message("Tente novamente!");
room_restart();
}

}