programa {

  inteiro atual = 0, antecessor = 1, sucessor, quantidade

  funcao inicio() {
    
    fibonacci_ate_500()
    escreva("\n\n")
    fibonacci_ate_numeroUsuario()
    escreva("\n\n")
    
  }

  funcao fibonacci_ate_500(){

    //Sequẽncia de fibonacci até 500.
    
    escreva("a) Sequência de Fibonacci até que o número seja igual à 500: \n")

    escreva(atual) //Escreve o primeiro "0" da sequència.

    enquanto(atual + antecessor <= 500){
      sucessor = atual + antecessor
      escreva(", ", sucessor)

      antecessor = atual
      atual = sucessor
    }

    //FIM da sequência de fibonacci até 500.
  }

  funcao fibonacci_ate_numeroUsuario(){

    //Sequência de fibonacci até o número que o usuário informar.

    atual = 0
    antecessor = 1

    escreva("b)")
    escreva("\n==========GERADOR-FIBONACCI==========")
    escreva("\nDigite a quantidade de termos da")
    escreva("\nSequência de FIbonacci que você")
    escreva("\ndeseja gerar: ")
    leia(quantidade)

    escreva(atual) //Escreve o primeiro "0" da sequència.

    se(quantidade > 1){

      para(inteiro i = 1 ; i < quantidade ; i++){ //Lógica parecida com a do ENQUANTO, porém feita com o PARA.

        sucessor = atual + antecessor
        escreva(", ", sucessor)

        antecessor = atual
        atual = sucessor
      }
    }
    
    //FIM da sequência de fibonacci até o número que o usuário informar.
  }
}
