//Quando apertar enter irá interagir para digitar com a porta
var enter = keyboard_check_pressed(vk_enter);
if(enter){
var resposta = get_string(perg,"");
resposta = scr_convertMN(resposta);
if(resposta == resp){
instance_destroy(other)}
else{
show_message("Errado!");
}
}