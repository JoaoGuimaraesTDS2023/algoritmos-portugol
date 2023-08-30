programa {

  inclua biblioteca Matematica --> mat 

  funcao inicio() {
    
    real l_1, l_2, a2, b2, c2
    caracter questao

    escreva("ATIVIDADE 5: \n\nESCOLHA A QUESTÃO a) ou b)\n")
    leia(questao)

    limpa()
    escreva("\n")

    escolha(questao){

      caso 'a':

      a2 = mat.potencia(11.5, 2)
      b2 = mat.potencia(6.3, 2)
      c2 = a2 + b2

      escreva("a. O Eletricista precisará de, aproximadamente, ", mat.arredondar(mat.raiz(c2, 2), 1), "m de fio")
      pare

      caso 'b':

      escreva("b. Digite a medida do PRIMEIRO lado (m): ")
      leia(l_1)
      escreva("   Digite a medida do SEGUNDO lado (m): ")
      leia(l_2)

      a2 = mat.potencia(l_1, 2)
      b2 = mat.potencia (l_2, 2)
      c2 = a2 + b2 

      escreva("   Para passar um fio diagonalmente pelo telhado da sua casa, você precisara de, aproximadamente, ", mat.arredondar(mat.raiz(c2, 2), 1), "m de fio")
      pare

      caso contrario:
      escreva("ESCOLHA SOMENTE \"a\" OU \"b\"")
    }

    escreva("\n\n")
  }
}
