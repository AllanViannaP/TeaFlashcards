draw_set_font(fnt_pixmen);
draw_set_color(c_white);
draw_text(630,220,texto);
draw_set_font(fnt_pixmen2);
draw_text_scribble(630,320,perfeito);
draw_set_font(-1);

if(dm){
draw_set_font(fnt_edit15);
draw_set_color(c_white);
draw_text(325,485,"Milk");
draw_text(650,540,texto_milk);
}