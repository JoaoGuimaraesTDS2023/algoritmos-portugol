programa {

  logico coriza, tosse, febre, dor_de_gardanta, dificuldade_para_respirar

  funcao inicio() {

    escreva("Sintomas da COVID: saiba se você é suspeito de ter ou não. \nResponda todas as perguntas com \"verdadeiro\" OU \"falso\" \n")
    escreva("Você possui coriza? ")
    leia(coriza)
    escreva("Você possui tosse? ")
    leia(tosse)
    escreva("Você possui febre? ")
    leia(febre)
    escreva("Você possui dor de garganta? ")
    leia(dor_de_gardanta)
    escreva("Você possui dificuldade para respirar? ")
    leia(dificuldade_para_respirar)

    limpa()

    se(coriza == verdadeiro ou tosse == verdadeiro ou febre == verdadeiro ou dor_de_gardanta == verdadeiro e dificuldade_para_respirar == falso){
      escreva("Você possui sintomas comuns de COVID, porém consulte um médico para se informar mais sobre o assunto e vá à uma farmácia para fazer o teste para poder ter certeza!\n")
    }se(dificuldade_para_respirar == verdadeiro){
      escreva("Você possuí um sintoma grave, consulte um médico imediatamente, além de ir à uma farmácia para fazer o teste para poder ter certeza!\n")
    }se(coriza == falso e tosse == falso e febre == falso e dor_de_gardanta == falso e dificuldade_para_respirar == falso){
      escreva("Você não possui nenhum sintoma da COVID!\n")
    }

    escreva("\nEsse programa foi feito afim de treinar o uso de operadores relacionais e desvios condicionais no Portugol. \nNão confie nesse programa para se autodiagnosticar. \nQualquer sintoma/dúvida, um profissional da saúde deverá ser consultado.")
    escreva("\n\n")
  }
}
