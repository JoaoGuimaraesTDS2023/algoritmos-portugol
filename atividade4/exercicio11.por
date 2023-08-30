programa {

  real a, b, c, maior, meio, menor
  logico iguais

  funcao inicio() {
    
    faca{
      escreva("Digite um número A: ")
      leia(a)
      escreva("Digite um número B: ")
      leia(b)
      escreva("Digite um número C: ")
      leia(c)

      limpa()

      igual()

    }enquanto(iguais) //repete enquanto os números forem iguais.

    maior_meio_menor() //defini o valor das variáveis maior, meio e menor.

    escreva("Em ordem crescente, os números ficariam organizados da seguinte maneira: \n")
    escreva(menor, "\n", meio, "\n", maior) //ordem crescente.
    escreva("\n\n")

    escreva("Já em ordem decrescente: \n")
    escreva(maior, "\n", meio, "\n", menor) //ordem decrescente.
    escreva("\n\n")
  }



  funcao maior_meio_menor(){

    se(a>b e a>c){ //defini o MAIOR número.
      maior = a
    }senao se(b>a e b>c){
      maior = b
    }senao se(c>a e c>b){
      maior = c
    }

    se((a>b e a<c) ou (a>c e a<b)){ //defini o número do MEIO .
      meio = a
    }senao se((b>a e b<c) ou (b>c e b<a)){
      meio = b
    }senao se((c>a e c<b) ou (c>b e c<a)){
      meio = c
    }

    se(a<b e a<c){ //defini o MENOR número.
      menor = a
    }senao se(b<a e b<c){
      menor = b
    }senao se(c<a e c<b){
      menor = c
    }
  }



  funcao igual(){ //verifica se os valores são iguais
    se(a==b ou b==c ou c==a){

        iguais = verdadeiro
        escreva("NÃO DIGITE NÚMEROS IGUAIS.\n")
        
      }senao{
        iguais = falso
      }
  }
}
