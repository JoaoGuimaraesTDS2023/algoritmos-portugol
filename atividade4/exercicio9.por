programa {

  real a, b, c

  funcao inicio() {

    escreva("É Escaleno? É Isóceles? Ou é Equilátero?\n")
    escreva("Para saber de qual tipo de triângulo que se trata, preciso que me informe o tamanho dos lados.\n")
    escreva("Tamanho (cm) do lado A: ")
    leia(a)
    escreva("Tamanho (cm) do lado B: ")
    leia(b)
    escreva("Tamanho (cm) do lado C: ")
    leia(c)

    limpa()

    triangulo()

    escreva("\n\n")
          
  }

  funcao triangulo(){

    se(((a-b) < a e a < b+c e (a-c) < b e b < a+c e (a-c) < c e c < a+b) e a>0 e b>0 e c>0){ //verifica se é triangulo
      
      se(a == b e b == c){
        escreva("Um triângulo de medida ", a, ", ", b, " e ", c, " é Equilátero.")
      }senao se((a == b e a != c) ou (b == c e b != a) ou (a == c e a != b)){
        escreva("Um triângulo de medida ", a, ", ", b, " e ", c, " é Isósceles.")
      }senao se(a != b e b != c){
        escreva("Um triângulo de medida ", a, ", ", b, " e ", c, " é Escaleno.")
      }
    }senao{
      escreva("Essas medidas não formam um triângulo.")
    }
  }
}
