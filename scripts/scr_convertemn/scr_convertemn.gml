///@function scr_convertMN
///@arg {string} String_para_converter
// Converte todas as letras maiúsculas em minusculas para comparar
function scr_convertMN(stringAnalisar){
stringAnalisar = string_replace_all(stringAnalisar, "A", "a");
stringAnalisar = string_replace_all(stringAnalisar, "B", "b");
stringAnalisar = string_replace_all(stringAnalisar, "C", "c");
stringAnalisar = string_replace_all(stringAnalisar, "D", "d");
stringAnalisar = string_replace_all(stringAnalisar, "E", "e");
stringAnalisar = string_replace_all(stringAnalisar, "F", "f");
stringAnalisar = string_replace_all(stringAnalisar, "G", "g");
stringAnalisar = string_replace_all(stringAnalisar, "H", "h");
stringAnalisar = string_replace_all(stringAnalisar, "I", "i");
stringAnalisar = string_replace_all(stringAnalisar, "J", "j");
stringAnalisar = string_replace_all(stringAnalisar, "K", "k");
stringAnalisar = string_replace_all(stringAnalisar, "L", "l");
stringAnalisar = string_replace_all(stringAnalisar, "M", "m");
stringAnalisar = string_replace_all(stringAnalisar, "N", "n");
stringAnalisar = string_replace_all(stringAnalisar, "O", "o");
stringAnalisar = string_replace_all(stringAnalisar, "P", "p");
stringAnalisar = string_replace_all(stringAnalisar, "Q", "q");
stringAnalisar = string_replace_all(stringAnalisar, "R", "r");
stringAnalisar = string_replace_all(stringAnalisar, "S", "s");
stringAnalisar = string_replace_all(stringAnalisar, "T", "t");
stringAnalisar = string_replace_all(stringAnalisar, "U", "u");
stringAnalisar = string_replace_all(stringAnalisar, "V", "v");
stringAnalisar = string_replace_all(stringAnalisar, "X", "x");
stringAnalisar = string_replace_all(stringAnalisar, "W", "w");
stringAnalisar = string_replace_all(stringAnalisar, "Y", "y");
stringAnalisar = string_replace_all(stringAnalisar, "Z", "z");
stringAnalisar = string_replace_all(stringAnalisar, "Ç", "ç");
//Converte acentos em letras sem acento para comparar.
stringAnalisar = string_replace_all(stringAnalisar, "á", "a");
stringAnalisar = string_replace_all(stringAnalisar, "Á", "a");
stringAnalisar = string_replace_all(stringAnalisar, "À", "a");
stringAnalisar = string_replace_all(stringAnalisar, "â", "a");
stringAnalisar = string_replace_all(stringAnalisar, "Â", "a");
stringAnalisar = string_replace_all(stringAnalisar, "ã", "a");
stringAnalisar = string_replace_all(stringAnalisar, "Ã", "a");
stringAnalisar = string_replace_all(stringAnalisar, "é", "e");
stringAnalisar = string_replace_all(stringAnalisar, "É", "e");
stringAnalisar = string_replace_all(stringAnalisar, "è", "e");
stringAnalisar = string_replace_all(stringAnalisar, "È", "e");
stringAnalisar = string_replace_all(stringAnalisar, "ê", "e");
stringAnalisar = string_replace_all(stringAnalisar, "Ê", "e");
stringAnalisar = string_replace_all(stringAnalisar, "ì", "i");
stringAnalisar = string_replace_all(stringAnalisar, "Ì", "i");
stringAnalisar = string_replace_all(stringAnalisar, "í", "i");
stringAnalisar = string_replace_all(stringAnalisar, "Í", "i");
stringAnalisar = string_replace_all(stringAnalisar, "î", "i");
stringAnalisar = string_replace_all(stringAnalisar, "Î", "i");
stringAnalisar = string_replace_all(stringAnalisar, "ò", "o");
stringAnalisar = string_replace_all(stringAnalisar, "Ò", "o");
stringAnalisar = string_replace_all(stringAnalisar, "ó", "o");
stringAnalisar = string_replace_all(stringAnalisar, "Ó", "o");
stringAnalisar = string_replace_all(stringAnalisar, "ô", "o");
stringAnalisar = string_replace_all(stringAnalisar, "Ô", "o");
stringAnalisar = string_replace_all(stringAnalisar, "õ", "o");
stringAnalisar = string_replace_all(stringAnalisar, "Õ", "o");
stringAnalisar = string_replace_all(stringAnalisar, "ù", "u");
stringAnalisar = string_replace_all(stringAnalisar, "Ù", "u");
stringAnalisar = string_replace_all(stringAnalisar, "ú", "u");
stringAnalisar = string_replace_all(stringAnalisar, "Ú", "u");
stringAnalisar = string_replace_all(stringAnalisar, "û", "u");
stringAnalisar = string_replace_all(stringAnalisar, "Û", "u");
return stringAnalisar;
}
