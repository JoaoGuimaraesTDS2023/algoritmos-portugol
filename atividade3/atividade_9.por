programa {
  funcao inicio() {

    real area = 100
    inteiro lata = 1, preco = 480
    cadeia cor

    escreva("\nATIVIDADE 9: \n\n")
    escreva("===================Lojas-Tintas===================\n")
    escreva("Temos tintas de todas as cores existentes no mundo\n")
    escreva("--------------------------------------------------\n")
    escreva("Pesquise qualquer cor em nosso estoque:_")
    leia(cor)
    escreva("Em estoque: ∞ \nLata 18L/un - R$480.00/un \n")
    escreva("--------------------------------------------------\n")
    escreva("Digite o tamanho a área (m) total a ser pintada: ")
    leia(area)
    escreva("--------------------------------------------------\n")

    se(area > 3 * 18){

      lata = area / 18
      preco *= lata
    }

    escreva("Tinta cor ", cor)
    escreva("\nQuantidade necessária de latas: ", lata)
    escreva("\nValor Total: R$", preco, ",00")
    escreva("\n==================================================")
    escreva("\n\n")
  }
}
