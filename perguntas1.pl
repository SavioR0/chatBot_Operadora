:-include(banco_de_dados1).

finalizar(Numero, Clien):-
    format("Deseja finalizar operacoes ? 1- Sim , 2- Nao "),
    read(Entrada),
    perguntaFim(Entrada, Numero, Clien).

contratar(Numero, Clien):-
    format("Aqui estao todos as opcoes de planos. Escolha a opcao  que deseja. "),
     format("\n 1- Plano 1\n 2- Plano 2 \n 3- Plano 3\n"),
    read(Entrada2),
    pergunta1(Entrada2, Numero, Clien).

pergunta(1, Numero, Clien):-
    plano(Numero, Plan)-> (format("Ja possui um plano cadastrado : Plano "), write(Plan), nl, 
    format("Deseja trocar de plano? 1- Sim , 2-Nao"),
    read(Resposta),
    Resposta = 1 -> contratar(Numero, Clien);
    Resposta = 2 -> chatbot(Numero,Clien ));

    (format("Aqui estao todos as opcoes de planos. Escolha a opcao  que deseja. "),
    format("\n 1- Plano 1\n 2- Plano 2 \n 3- Plano 3\n"),
    read(Entrada1),
    pergunta1(Entrada1, Numero, Clien)).

pergunta(2,Numero, Clien):-
    asserta(plano(Numero, "null")),
    format("Plano Cancelado com sucesso!"),
    finalizar(Numero, Clien).

pergunta(3, Numero, Clien):-
    format("Selecione a opcao de recarga que deseja :"),
    format("\n 1- 10 reias \n 2- 20 reias \n 3- 25 reais \n 4- 50 reais \n 5- Outro\n"),
    read(Entrada),
    pergunta3(Entrada, Numero, Clien).

pergunta(4,Numero, Clien ):-
    format("Solicitacao de renovacao de plano realizada com sucesso"),
    finalizar(Numero, Clien).

pergunta(5, Numero , Clien):-
    format("Digite o problema:"),
    read(Problema),
    format("Problema foi salvo e enviado ao sistema. Assunto :"),
    write(Problema),nl,
    format("Problema enviado para a central."),nl,
    finalizar(Numero, Clien).


%Pergunta 1
pergunta1(Plan, Numero, Clien):-
    format("Tem certeza que deseja contratar o plano "), write(Plan),format("? 1- Sim , 2-Nao"),
    read(Resposta),
    Resposta = 2 -> chatbot(Numero,Clien );
    asserta(plano(Numero, Plan)),
    format("Plano "), write(Plan), format(" Contratado com sucesso!.\n\n"),
    finalizar(Numero, Clien).
    
outroValor(Numero, Clien):-
    format("Digite o valor que deseja recarregar :"),
    read(Valor),
    format(" Valor de "),write(Valor),format(" reais recarregado com sucesso"),
    pergunta31(Valor, Numero, Clien).

recarregar(Numero, Clien):-
    Valor = 1-> (format(" Valor de 10 reais recarregado com sucesso"),
    finalizar(Numero, Clien));
    Valor = 2 -> (format(" Valor de 20 reais recarregado com sucesso"),
    finalizar(Numero, Clien));
    Valor = 3 -> (format(" Valor de 25 reais recarregado com sucesso"),
    finalizar(Numero, Clien));
    Valor =4 -> (format(" Valor de 50 reais recarregado com sucesso").

%Pergunta 3
pergunta3(Valor, Numero, Clien):-
    Valor = 5 -> outroValor(Numero, Clien);
    format("Deseja recarregar a opção  "),write(Valor),format("? 1- Sim , 2-Nao"),
    read(Resposta),
    (Resposta = 1 -> recarregar(Numero, Clien);
    Resposta = 2 -> chatbot(Numero,Clien )).
    

pergunta31(Valor, Numero, Clien):-
    nl,
    format("Valor de "),
    write(Valor),
    format(" depositado com sucesso para o numero "),
    write(Numero),nl
    finalizar(Numero, Clien).



perguntaFim(1, Numero, Clien):-
    write(Clien),nl,
    format("Sessao finalizada para "),
    write(Numero), nl.
perguntaFim(2, Numero, Clien):-
    chatbot(Numero, Clien).

perguntaFim("Sim", Numero, Clien):-
    write(Clien),nl,
    format("Sessao finalizada para "),
    write(Numero), nl.
perguntaFim("Nao", Numero, Clien):-
    chatbot(Numero, Clien).


cls:- write('\33\[2J').
