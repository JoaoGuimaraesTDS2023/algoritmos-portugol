programa {

  inclua biblioteca Matematica --> mat

  funcao inicio() {
    
    real terra, mercurio, venus, marte, jupiter, urano, netuno
    inteiro planeta
    caracter questao

    escreva("ATIVIDADE 2 \nESCOLHA UMA DAS QUESTÕES A SEGUIR: \na) ou b) \n")
    leia(questao)

    limpa()
    escreva("\n")

    escolha(questao){

      caso 'a':

      escreva("a. Se minha idade é de 977 milhões de segundos, qual é minha idade em Mercúrio?\n")
      escreva("R: Para isso, vamos fazer uma tabela:\n")
      escreva("\n | Idade em segundos ", 977000000)
      escreva("\n | Idade em minutos (seg ÷ 60): ", 977000000 / 60)
      escreva("\n | Idade em horas (min ÷ 60): ", 977000000 / 60 / 60)
      escreva("\n | Idade em dias (hrs ÷ 24): ", 977000000 / 60 / 60 / 24)
      escreva("\n | Idade em anos na Terra (dias ÷ 365.26): ", 977000000 / 60 / 60 / 24 / 365.26)
      escreva("\n | Idade em anos em Mercúrio: (anos terrestres ÷ 0.2408467): ", 977000000 / 60 / 60 / 24 / 365.26 / 0.2408467)
      escreva("\n\n Logo, 977MI de segundos terrestres de idade são aproximadamente ", mat.arredondar(977000000 / 60 / 60 / 24 / 365.26 / 0.2408467, 1), " ano(s) em Mercúrio")
      escreva("\n\n")
      pare

      caso 'b':

      escreva("b. Leia a idade de uma pessoa e um planeta. Calcule e mostre a idade da pessoa nesse planeta.\n")
      escreva("Digite sua idade: ")
      leia(terra)
      escreva("Escolha um planeta (digite o número do planeta): \n1- Terra \t2- Mercúrio \n3- Vênus \t4- Marte \n5- Júpiter \t6- Urano \n7- Netuno \n")
      leia(planeta)

      mercurio = mat.arredondar(terra / 0.2408467, 1)
      venus = mat.arredondar(terra / 0.61519726, 1)
      marte = mat.arredondar(terra / 1.8808158, 1)
      jupiter = mat.arredondar(terra / 11.862615, 1)
      urano = mat.arredondar(terra / 84.016846, 1)
      netuno = mat.arredondar(terra / 164.79132, 1)

      limpa()
      escreva("\n")

      escolha (planeta){

        caso 1:
        escreva("Se você possui ", terra, " ano(s). Logo você possui, OBVIAMENTE, ", terra, " ANO(S) NA TERRA!!!")
        pare

        caso 2:
        escreva("Se você possui ", terra, " ano(s). Logo você possui ", mercurio, " ano(s) em Mercúrio")
        pare
        
        caso 3:
        escreva("Se você possui ", terra, " ano(s). Logo você possui ", venus, " ano(s) em Vênus")
        pare
        
        caso 4:
        escreva("Se você possui ", terra, " ano(s). Logo você possui ", marte, " ano(s) em Marte")
        pare
        
        caso 5:
        escreva("Se você possui ", terra, " ano(s). Logo você possui ", jupiter, " ano(s) em Júpiter")
        pare
        
        caso 6:
        escreva("Se você possui ", terra, " ano(s). Logo você possui ", urano, " ano(s) em Urano")
        pare
        
        caso 7:
        escreva("Se você possui ", terra, " ano(s). Logo você possui ", netuno, " ano(s) em Netuno")
        pare
        
        caso contrario:
        escreva("ESCOLHA UM DOS NÚMEROS INDICADOS")
        
      }

      pare

      caso contrario:
      escreva("ESCOLHA APENAS \"a\" ou \"b\"")
    }

    escreva("\n\n")
    
  }
}
