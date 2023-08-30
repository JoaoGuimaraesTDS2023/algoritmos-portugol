programa {

  inclua biblioteca Matematica --> mat
  inclua biblioteca Util --> u

  /* Professor, relendo novamente a atividade 7,
   * eu acabei não entendendo a parte de "(N+1)/2",
   * então eu fiz de uma maneira um pouco diferente.
   */

  funcao inicio() {

    caracter resposta
    inteiro idade, soma
    
    escreva("ATIVIDADE 7: \n\nVocê quer saber a soma de todas as idades que você já teve? (s ou n): \n")
    leia(resposta)

    limpa()
    escreva("\n")

    escolha(resposta){

      caso 's':

      escreva("Legal, então vamos calcular!")
      u.aguarde(1000)
      pare

      caso contrario:

      escreva("Que pena")
      u.aguarde(1000)
      escreva(".")
      u.aguarde(1000)
      escreva(".")
      u.aguarde(1000)
      escreva(".")
      u.aguarde(1000)
      escreva(" VOCÊ NÃO TEM ESCOLHA!")
      u.aguarde(2000)
    }

    limpa()

    escreva("\nComeçe me dizendo sua idade atual: ")
    leia(idade)
    soma = idade

    se(idade > 0){

      para(inteiro i = idade - 1 ; i >= 1 ; i--){
        soma += i
      }

      escreva("Uau. Com ", idade, " anos de idade, a soma das suas antigas idades é igual a: ", soma)
      escreva("\n\n")

    }senao{
      escreva("DIGITE UMA IDADE VÁLIDA\n\n")
    } 
  }
}
