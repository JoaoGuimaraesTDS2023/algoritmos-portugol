programa {
    
    inclua biblioteca Matematica --> m 

    real a, b, c, delta, x1, x2

  funcao inicio() {

    escreva("==========CALCULADORA-DE-EQUAÇÃO-DE-SEGUNDO-GRAU==========\n")
    escreva("----------------------------------------------------------\n")
    escreva("--Digite o valor do coeficiente A: ")
    leia(a)
    escreva("--Digite o valor do coeficiente B: ")
    leia(b)
    escreva("--Digite o valor do C: ")
    leia(c)

    limpa()

    delta = b * b - 4 * a * c //calcula o delta

    x1 = (b * -1 + m.raiz(delta, 2)) / (2 * a) //calcula o x¹
    x2 = (b * -1 - m.raiz(delta, 2)) / (2 * a) //calcula o x²

    escreva("\n", a, "x² + ", b, "x + ", c, " = 0 ") //escreve a formula da equação
    escreva("\nΔ = ", delta)
    escreva("\nX¹ = ", x1)
    escreva("\nX² = ", x2)
    escreva("\n\n\n")
  }
}
