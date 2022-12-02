//Pega posição x e y da camera
var x2 = camera_get_view_width(view_camera[0])*2;
var y2 = camera_get_view_height(view_camera[0])*2;
//Da cor e brilho para o retangulo
draw_set_alpha(alpha);
draw_set_color(c_black);
//Cria um retangulo para dar o efeito de Fade in e Fade out
draw_rectangle(-50,-50,x2,y2,false);
//Retorna ao normal
draw_set_alpha(1);
draw_set_color(c_white);