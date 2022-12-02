if(vida==1){
var xx = camera_get_view_x(view_camera[0]);
var yy = camera_get_view_y(view_camera[0]);
var view_h = camera_get_view_height(view_camera[0]);
var caixa_w = sprite_get_width(spr_text_box_long);
var caixa_h = sprite_get_height(spr_text_box_long);
draw_set_color(-1);
draw_set_font(fnt_pt);

var sep = string_height(pergunta);
draw_text_ext(xx + caixa_h*1.8, yy+view_h*3.9 - caixa_h*3,pergunta,sep,caixa_w*3.97);}