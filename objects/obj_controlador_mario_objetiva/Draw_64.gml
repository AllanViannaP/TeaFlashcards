var xx = camera_get_view_x(view_camera[0]);
var yy = camera_get_view_y(view_camera[0]);
var view_h = camera_get_view_height(view_camera[0]);
var caixa_w = sprite_get_width(spr_text_box_long);
var caixa_h = sprite_get_height(spr_text_box_long);
draw_set_color(c_white);
draw_set_font(fnt_pt);


var sep = string_height(pergunta);
draw_text_ext(xx + caixa_h/2, yy+view_h/7.5 - caixa_h/2,pergunta,sep,caixa_w*4.3);



//Se está no tutorial
if(global.tutorial){
//Declara tempo para digitar as letras
es++;
//Coloca uma nova fonte
draw_set_font(fnt_pixelari);
//Escreve o texto na tela.
draw_text_scribble_ext(ximg/1.8,yimg/4.5,texto,900,es);}