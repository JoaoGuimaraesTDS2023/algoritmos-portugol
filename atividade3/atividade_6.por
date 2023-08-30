programa {

  inclua biblioteca Matematica --> mat

  funcao inicio() {
    
    real semana, minuto, total, hora

    escreva("\nATIVIDADE 6: \n\nUma pessoa com pouco tempo disponível lê um livro por 5 minutos a cada dia, 6 dias por semana [...]: \n")

    minuto = 5
    semana = minuto * 6
    hora = semana / 60
    total = mat.arredondar(hora * 52.1, 1)

    escreva("\n R: Lendo 5min por dia, a pessoa lerá ", semana, " minuto(s) (ou ", hora, " hora(s)) por semana. \n    Ou seja, ela lerá, aproximadamente, ", total, " hora(s) por ano. \n\n")

  }
}
