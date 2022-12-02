
//Base da estrutura
c=0;
//Nome e senha do deck
nome_deck = "a";
senha_deck = "";
nome_edit = "a";
senha_edit= "";
//Pagina do menu
count = 1;


//count -1: finalizar;
//count 1:
opcoes = ["Criar","Editar","Voltar ao menu"];
//count 2:
opcoes_criar = ["Insira o nome do Deck","Insira uma senha para edição","Continuar","Voltar para opções"];
//count 3:
opcoes_tipojogo = ["Objetiva em batalha","Objetiva em plataforma","Discursiva em puzzle","Discursiva em plataforma","Correlacione em batalha", "Correlacione em puzzle","FINALIZAR DECK"];
//count 4:
opcoes_objetiva = ["Insira a pergunta","Insira a resposta certa","Insira uma alternativa errada","Insira uma alternativa errada","Insira uma alternativa errada","Insira uma alternativa errada","Criar mais uma pergunta","FINALIZAR DECK"];
//count 5:
opcoes_discursiva = ["Insira a pergunta","Insira a resposta", "Criar mais uma pergunta","FINALIZAR DECK"];
//count 6:
opcoes_correlacione = ["Insira a pergunta","Insira a alternativa A", "Insira o que será correlacionado com a alternativa A","Insira a alternativa B", "Insira o que será correlacionado com a alternativa B","Insira a alternativa C", "Insira o que será correlacionado com a alternativa C","Insira a alternativa D", "Insira o que será correlacionado com a alternativa D","Insira a alternativa E", "Insira o que será correlacionado com a alternativa E","Criar mais uma pergunta","FINALIZAR DECK"];
//count 7: editar
opcoes_editar = ["Insira o nome do deck para edição","Voltar para opções"];
//count 8: editar
opcoes_editar_sn = ["Insira a senha do deck","Voltar para opções"];
//count 9: 
opcoes_editar_deck = ["",""]
//count 10:
opcoes_editar_objetiva = ["Insira a pergunta","Insira a resposta certa","Insira uma alternativa errada","Insira uma alternativa errada","Insira uma alternativa errada","Insira uma alternativa errada","Editar mais uma pergunta","FINALIZAR EDIÇÃO"];
//count 11:
opcoes_editar_discursiva = ["Insira a pergunta","Insira a resposta","Editar mais uma pergunta","FINALIZAR EDIÇÃO"];
//count 12:
opcoes_editar_correlacione = ["Insira a pergunta","Insira a alternativa A", "Insira o que será correlacionado com a alternativa A","Insira a alternativa B", "Insira o que será correlacionado com a alternativa B","Insira a alternativa C", "Insira o que será correlacionado com a alternativa C","Insira a alternativa D", "Insira o que será correlacionado com a alternativa D","Insira a alternativa E", "Insira o que será correlacionado com a alternativa E","Editar mais uma pergunta","FINALIZAR EDIÇÃO"];
//Ver perguntas e respostas
perg_resp = ["",""];

//controle de enter
pelo_men = false
autoriza= false
c2 = true;
lib = false;

//Controle formatação do texto
cor = c_white;
sel = 0;
espaco = 0;
//Controle tutorial
global.tutorial = false;
rainbow = "[rainbow][/wave]";
//Controle dos enter
escolha=[false,false,false,false,false,false,false,false,false,false,false,false];






