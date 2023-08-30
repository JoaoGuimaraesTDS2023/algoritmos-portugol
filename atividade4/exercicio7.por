programa {
  funcao inicio() {

    real temperatura

    escreva("Me informe uma temperatura em °C (Graus Celsius): ")
    leia(temperatura)

    se(temperatura < 0){
      escreva("A temperatura é negativa.")
    }senao{
      escreva("A temperatura é positiva.")
    }
    escreva("\n\n")
  }
}
