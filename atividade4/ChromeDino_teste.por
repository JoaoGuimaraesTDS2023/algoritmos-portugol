//Versão final disponivel em https://github.com/JoaoGuimaraesTDS2023/Programinhas_no_Portugol/blob/main/ChromeDino_TextEdition.por


programa {

  inclua biblioteca Util --> u

  inteiro pontos = 0, sorteia_obstaculo
  cadeia obstaculo, acao
  logico perdeu

  funcao inicio(){

      faca{ //Executa enquanto o jogador não perde.

        limpa()

        qual_obstaculo() //Linha 40-49.

        escreva("Você está correndo em linha reta e ", obstaculo, " O que você decide fazer? \n[pular] ou [correr] \n")
        leia(acao)

        limpa()

        consequencia_acao() //Linha 53-71.

        u.aguarde(1500)

      }enquanto(nao perdeu)
    
      escreva("\nVocê fez ", pontos, " pts.")
      escreva("\n\n")

      pontos = 0 //Reseta os pontos após a derrota.

    escreva("\n\n")
  }


  funcao qual_obstaculo(){ //Defini se o obstáculo será um cacto ou um pássaro.
    
    sorteia_obstaculo = u.sorteia(1, 2)

    se(sorteia_obstaculo == 1){
      obstaculo = "você avista um CACTO à sua frente."
    }senao{
      obstaculo = "você avista um PÁSSARO VOANDO à sua frente."
    }
  }



  funcao consequencia_acao(){ //Defini o que vai acontecer após o usuário escolher a ação a ser tomada.

    se(acao == "pular" ou acao == "correr"){

      se((sorteia_obstaculo == 1 e acao == "pular") ou (sorteia_obstaculo == 2 e acao == "correr")){ 
        escreva("Você desviou do obstaculo! (+10 pts)")
        pontos += 10 //Adiciona pontos
        perdeu = falso 

      }senao se((sorteia_obstaculo == 1 e acao == "correr") ou (sorteia_obstaculo == 2 e acao == "pular")){
        escreva("Você bateu no obstaculo - Você Perdeu")
        perdeu = verdadeiro

      }
    }senao{
      escreva("Você não fez nada! - Você perdeu!")
      perdeu = verdadeiro
    }
  }
}
