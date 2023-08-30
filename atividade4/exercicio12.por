programa {

  real ano
  logico termina_com_00, bissexto, verdade
  cadeia continuar

  funcao inicio() {
    
    faca{
      limpa()

      escreva("Digite um ano para saber se ele é bissexto: ")
      leia(ano)

      se(ano <= 0){
        ano = 2023
      }

      ano_bissexto()

      escreva("\n\nDeseja verificar mais algum número? (s ou n) ")
      leia(continuar)

    }enquanto(continuar != "n")

    escreva("\n\n")

  }

  funcao ano_bissexto(){

    termina_com_00 = ano % 100 == 0 //verifica se o ano termina com "00".

    se(termina_com_00){ //verifica se o ano terminado em "00" é bissexto ou não.
      
      verdade = ano % 400 == 0
      se(verdade){
        bissexto = verdadeiro
      }senao{
        bissexto = falso
      }



    }senao{ //verifica se o ano NÃO terminado em "00" é bissexto ou não.
      verdade = ano % 4 == 0
      se(verdade){
        bissexto = verdadeiro
      }senao{
        bissexto = falso
      }
    }



    se(bissexto){
      escreva("O ano ", ano, " é bissexto")
    }senao{
      escreva("O ano ", ano, " não é bissexto")
    }
  }
}
