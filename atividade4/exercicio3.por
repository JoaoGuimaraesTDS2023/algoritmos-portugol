programa {

  inclua biblioteca Matematica --> m

  inteiro dias, horas, minutos, segundos
  real total_dias, total_horas, total_minutos, total_segundos

  funcao inicio() {

    escreva("Digite uma quantidade de dias: ")
    leia(dias)
    escreva("Digite uma quantidade de horas: ")
    leia(horas)
    escreva("Digite uma quantidade de minutos: ")
    leia(minutos)
    escreva("Digite uma quantidade de segundos: ")
    leia(segundos)

    total_dias = m.arredondar(dias + (horas / 24) + (minutos / 60 / 24) + (segundos / 60 / 60 / 24), 2)
    total_horas = m.arredondar((dias * 24) + horas + (minutos / 60) + (segundos / 60 / 60), 2)
    total_minutos = m.arredondar((dias * 24 * 60) + (horas * 60) + minutos + (segundos / 60), 2)
    total_segundos = m.arredondar((dias * 24 * 60 * 60) + (horas * 60 * 60) + (minutos * 60) + segundos, 2)

    limpa()

    escreva("\nSoma total em DIAS: ", total_dias)
    escreva("\nSoma total em HORAS: ", total_horas)
    escreva("\nSoma total em MINUTOS: ", total_minutos)
    escreva("\nSoma total em SEGUNDOS: ", total_segundos)
    escreva("\n\n\n")
  }
}
