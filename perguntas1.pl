pergunta(1, Resposta, Numero, Clien):-
    plano(Numero, Plan)-> format("J� possui um plano cadastrado : Plano "), write(Plan), nl, chatbot(Numero, Clien);(
    format("Aqui est�o todos as op�oes de planos. Escolha a op��o  que deseja. "),
    format("\n 1- Plano 1\n 2- Plano 2 \n 3- Plano 3\n"),
    read(Entrada1),
    pergunta1(Entrada1, Resposta, Numero, Clien)).

pergunta(2, "Plano cancelado com sucesso",Numero, Clien):-
    format("Plano Cancelado com sucesso!"),
    format("\n Deseja finalizar opera��es ? 1- Sim , 2- N�o"),
    read(Entrada),
    perguntaFim(Entrada, Numero, Clien).

pergunta(3, Resposta, Numero, Clien):-
    format("Selecione a op��o de recarga que deseja :"),
    format("\n 1- 10 reias \n 2- 20 reias \n 3- 25 reais \n 4- 50 reais \n 5- Outro\n"),
    read(Entrada),
    pergunta3(Entrada,Resposta, Numero, Clien).

pergunta(4,"Solicita��o de renova��o do plano realizada com sucesso", Numero, Clien ):-
    format("Solicita��o de renova��o de plano realizada com sucesso"),
    format("\n Deseja finalizar opera��es ? 1- Sim , 2- N�o "),
    read(Entrada),
    perguntaFim(Entrada, Numero, Clien).

pergunta(5,"Relato de problema realizado", Numero , Clien):-
    format("Digite o problema:"),
    read(Problema),
    format("Problema foi salvo e enviado ao sistema. Assunto :"),
    write(Problema),nl,
    format("Problema enviado para a central."),nl,
    format("\n Deseja finalizar opera��es ? 1- Sim , 2- N�o "),
    read(Entrada),
    perguntaFim(Entrada, Numero, Clien).


%Pergunta 1
pergunta1(1, " Plano 1 Contratado com sucesso!", Numero, Clien):-
    format("Deseja finalizar opera��es ? 1- Sim , 2- N�o "),
    read(Entrada),
    perguntaFim(Entrada, Numero, Clien).

pergunta1(2, " Plano 2 Contratado com sucesso!", Numero, Clien):-
    format("\n Deseja finalizar opera��es ? 1- Sim , 2- N�o "),
    read(Entrada),
    perguntaFim(Entrada, Numero, Clien).

pergunta1(3, " Plano 3 Contratado com sucesso!", Numero, Clien):-
    format("\n Deseja finalizar opera��es ? 1- Sim , 2- N�o "),
    read(Entrada),
    perguntaFim(Entrada, Numero, Clien).

%Pergunta 3
pergunta3(1, "Recarga de 10 reais realizada com sucesso", Numero, Clien):-
    format("\n Deseja finalizar opera��es ? 1- Sim , 2- N�o "),
    read(Entrada),
    perguntaFim(Entrada, Numero, Clien).
pergunta3(2, "Recarga de 20 reais realizada com sucesso", Numero, Clien):-
    format("\n Deseja finalizar opera��es ? 1- Sim , 2- N�o "),
    read(Entrada),
    perguntaFim(Entrada, Numero, Clien).
pergunta3(3, "Recarga de 25 reais realizada com sucesso", Numero, Clien):-
    format("\n Deseja finalizar opera��es ? 1- Sim , 2- N�o "),
    read(Entrada),
    perguntaFim(Entrada, Numero, Clien).
pergunta3(4, "Recarga de 50 reais realizada com sucesso", Numero, Clien):-
    format("\n Deseja finalizar opera��es ? 1- Sim , 2- N�o "),
    read(Entrada),
    perguntaFim(Entrada, Numero, Clien).

pergunta3(5, "Recarga Personalizada realizada com sucesso", Numero, Clien):-
    format("Digite o valor que deseja recarregar :"),
    read(Valor),
    pergunta31(Valor, Numero, Clien).

pergunta31(Valor, Numero, Clien):-
    format("Valor de "),
    write(Valor),
    format(" depositado com sucesso para o numero "),
    write(Numero),
    format("\n Deseja finalizar opera��es ? 1- Sim , 2- N�o "),
    read(Entrada),
    perguntaFim(Entrada, Numero, Clien).



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
perguntaFim("N�o", Numero, Clien):-
    chatbot(Numero, Clien).

