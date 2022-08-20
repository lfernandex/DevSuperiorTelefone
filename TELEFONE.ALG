 Algoritmo "Telefone"


Var

   n, i, j : inteiro
   nome : vetor [0..9] de caractere
   tel : vetor [0..9] de caractere
   plano : vetor [0..9] de inteiro
   min : vetor [0..9] de inteiro
   pacote : vetor [0..9, 0..9] de real
   conta : vetor [0..9] de real
   minExc : vetor [0..9] de real
   totalExc : vetor [0..9] de real

Inicio

     escreva("Informe a quantidade de clientes: ")
     leia(n)
     
     para i de 0 ate n-1 faca
        escreval("Dados do ", i+1, "o. Cliente: ")
        escreva("Nome: ")
        leia(nome[i])
        escreva("Telefone: ")
        leia(tel[i])
        escreva("Tipo: ")
        leia(plano[i])
        escreva("Minutos: ")
        leia(min[i])
     fimpara
     
     escreval
     escreval("Informe o preco basico e excedente de cada tipo de conta:")
     
     para i de 0 ate 2 faca
        escreva("Valor do plano ", i, ": ")
        leia(pacote[i, 0])
           para j de 1 ate 1 faca
           escreva("Valor por minuto excedido: ")
           leia(pacote[i, 1])
           fimpara
     fimpara
     escreval

   Para i de 0 ate n-1 faca
      escolha plano[i]
      caso 0
         se (min[i] > 90) entao
             conta[i] <- pacote[0,0] + ((min[i] - 90) * pacote[0, 1])
         senao
             conta[i] <- pacote[0, 0]
         fimse
      caso 1
         se (min[i] > 90) entao
             conta[i] <- pacote[1,0] + ((min[i] - 90) * pacote[1, 1])
         senao
             conta[i] <- pacote[1, 0]
         fimse
      caso 2
          se (min[i] > 90) entao
             conta[i] <- pacote[2,0] + ((min[i] - 90) * pacote[2, 1])
          senao
             conta[i] <- pacote[2, 0]
          fimse
      fimescolha
   fimpara


   escreval("RELATÓRIO DE CLIENTES: ")
   escreval

   para i de 0 ate n-1 faca
      escreval(nome[i], ", ", tel[i], ", Plano:", plano[i], ", ", "Minutos:", min[i], ", Conta: ", conta[i]:3:2)
   fimpara


Fimalgoritmo