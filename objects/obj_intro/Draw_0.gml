var vid = video_draw();
var enter = (keyboard_check_released(vk_enter)||keyboard_check_released(vk_space))

if(vid[0] == 0){
draw_surface(vid[1],0,0);
draw_set_font(fnt_poke);
draw_set_color(c_black)
draw_text_scribble(32,682,"[blink]Aperte enter ou espaço para pular[/blink]"); 
draw_set_font(fnt_poke);
draw_set_color(-1)
draw_text_scribble(30,680,"[blink]Aperte enter ou espaço para pular[/blink]");

}

if(enter){
	video_close()}

if(video_get_status() == video_status_closed){
room_goto(rm_menu)}