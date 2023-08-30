programa {

  inclua biblioteca Util --> u

  inteiro pontos = 0, recorde = 0, sorteia_obstaculo, km
  cadeia obstaculo, acao, continuar
  logico perdeu

  funcao inicio() {

    titulo_jogo() //Linha 53-68.

    faca{ //Executa enquanto o jogador quiser.

      km = 0

      faca{ //Executa enquanto o jogador não perde.

        limpa()

        qual_obstaculo() //Linha 70-79.

        km += u.sorteia(5, 15) 

        escreva("Você está correndo a ", km, "km/h e ", obstaculo, " O que você decide fazer? \n[pular] ou [abaixar] \n")
        leia(acao)

        limpa()

        consequencia_acao() //Linha 83-101.

        recorde() //Linha 105-110.

        u.aguarde(1500)

      }enquanto(nao perdeu)
    
      escreva("\nVocê fez ", pontos, " pts.")
      escreva("\nRecorde: ", recorde, " pts.")
      escreva("\n\n")

      pontos = 0 //Reseta os pontos após a derrota.

      escreva("Deseja continuar? [s] ou [n] \n")
      leia(continuar)

    }enquanto(continuar != "n")

    escreva("\n\n")
  }


  funcao titulo_jogo(){ //TITULO DO GAME.

    escreva(" _____ _                               ______ _             \n")
    escreva("/  __ \\ |                              |  _  (_)            \n")
    escreva("| /  \\/ |__  _ __ ___  _ __ ___   ___  | | | |_ _ __   ___  \n")
    escreva("| |   | '_ \\| '__/ _ \\| '_ ` _ \\ / _ \\ | | | | | '_ \\ / _ \\ \n")
    escreva("| \\__/\\ | | | | | (_) | | | | | |  __/ | |/ /| | | | | (_) |\n")
    escreva(" \\____/_| |_|_|  \\___/|_| |_| |_|\\___| |___/ |_|_| |_|\\___/ \n\n")
    escreva(" _           _            _ _ _   _         \n")
    escreva("| |_ ___ _ _| |_    ___ _| |_| |_|_|___ ___ \n")
    escreva("|  _| -_|_'_|  _|  | -_| . | |  _| | . |   |\n")
    escreva("|_| |___|_,_|_|    |___|___|_|_| |_|___|_|_|\n\n\n")
    u.aguarde(4000)
    escreva("Dica: escreva sua ação com letras minúsculas e use apenas as ações que estão \"disponíveis\".")
    u.aguarde(4000)
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

    se(acao == "pular" ou acao == "abaixar"){

      se((sorteia_obstaculo == 1 e acao == "pular") ou (sorteia_obstaculo == 2 e acao == "abaixar")){ 
        escreva("Você desviou do obstaculo! (+10 pts)")
        pontos += 10 //Adiciona pontos
        perdeu = falso 

      }senao se((sorteia_obstaculo == 1 e acao == "abaixar") ou (sorteia_obstaculo == 2 e acao == "pular")){
        escreva("Você bateu no obstaculo a ", km, "km/h - Você Perdeu")
        perdeu = verdadeiro

      }
    }senao{
      escreva("Você não fez nada! - Você perdeu!")
      perdeu = verdadeiro
    }
  }



  funcao recorde(){ //Defini o recorde.

    se(pontos > recorde){
      recorde = pontos //Só atualiza o recorde se os pontos atuais ultrapassarem o recorde.
    }
  }
}
