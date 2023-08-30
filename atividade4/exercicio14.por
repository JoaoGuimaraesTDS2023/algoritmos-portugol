programa {

  inclua biblioteca Matematica --> m

  real media, nota1, nota2
  cadeia nome, aprovacao

  funcao inicio() {

    escreva("Nome do aluno(a): ")
    leia(nome)
    escreva("Nota 1°Sementre: ")
    leia(nota1)
    escreva("Nota 2°Semestre: ")
    leia(nota2)

    limpa()

    se(nota1 > 100){  //Arruma a nota1 caso esteja com o valor acima de 100 ou abaixo de 0.
      nota1 = 100
    }senao se(nota1 < 0){
      nota1 = 0
    }

    se(nota2 > 100){  //Arruma a nota2 caso esteja com o valor acima de 100 ou abaixo de 0.
      nota2 = 100
    }senao se(nota1 < 0){
      nota2 = 0
    }

    media = m.arredondar((nota1 + nota2) / 2, 2) //Calcula a média do aluno.

    se(media < 70){ //Verifica se o aluno foi ou não aprovado.
      aprovacao = "REPROVADO"
    }senao se(media == 100){
      aprovacao = "APROVADO COM DISTINÇÃO"
    }senao{
      aprovacao = "APROVADO"
    }

    //Escreve o boletim do aluno
    escreva("====================================================================================================================\n")
    escreva("ALUNO: ", nome, "   TURMA: 1°ano Técnico em Desenvolvimento de Sistemas \n")
    escreva("--------------------------------------------------------------------------------------------------------------------\n")
    escreva("NOTA 1°SEMESTRE: ", nota1, "\n")
    escreva("NOTA 2°SEMESTRE: ", nota2, "\n")
    escreva("--------------------------------------------------------------------------------------------------------------------\n")
    escreva("MÉDIA FINAL: ", media, "\n")
    escreva("--------------------------------------------------------------------------------------------------------------------\n")
    escreva(aprovacao, "\n")
    escreva("====================================================================================================================\n\n\n")
  }
}
