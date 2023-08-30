programa {

  inclua biblioteca Matematica --> m

  funcao inicio() {

    real a, b

    escreva("Digite um valor númerico para A: ")
    leia(a)
    escreva("Digite um valor númerico para B: ")
    leia(b)

    se(a == b){
      escreva("Os números digitados são IDẼNTICOS.")
    }senao{
      escreva("O maior número digitado é: ", m.maior_numero(a, b))
    }

    escreva("\n\n")

  }
}
