


if(certas == (global.n+1)){
room_goto(rm_menu);
}
else{
var enter = (keyboard_check_released(vk_enter)|| keyboard_check_released(vk_space));
var dir = (keyboard_check_released(vk_right)|| keyboard_check_released(ord("D")));
var esq = (keyboard_check_released(vk_left)|| keyboard_check_released(ord("A")));

if(dir && count < (global.erradas-1)){
count++;
}
if(esq && count>0){
count --;
}
if(enter){
ini_close();
room_goto(rm_menu);
}}