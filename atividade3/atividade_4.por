programa {
  funcao inicio() {
    
    real pedaco, tabua
    inteiro quantidade, sobra

    escreva("\nATIVIDADE 4: \n\nINFORME O TAMANHO (m) DA TÁBUA DESEJADA: ")
    leia(tabua)
    escreva("INFORME O TAMANHO (cm) DO TAMANHO DE CADA PEDAÇO DE TÁBUA: ")
    leia (pedaco)

    quantidade = (tabua * 100) / pedaco
    sobra = (tabua * 100) % pedaco

    limpa()

    escreva("\nEm uma tábua de ", tabua, "m (", tabua * 100, "cm) você poderá cortar ", quantidade, " pedaços de ", pedaco, "cm, e sobrará ", sobra, "cm de tábua\n\n")

    /*OBS: Professor, eu sei que a atividade indicava o tamanho da tábua e o tamanho do pedaço, mas eu fiz de uma maneira diferente.
     *Porém de qualquer jeito as duas maneiras funcionam do mesmo jeito.
     */
  }
}
