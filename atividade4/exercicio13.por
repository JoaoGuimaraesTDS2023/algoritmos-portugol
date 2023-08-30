programa{

  inclua biblioteca Util --> u

  inteiro km

  funcao inicio(){

    escreva("Você está em um carro esportivo, o carro dos seus sonhos, em uma rodovia completamente vazia. \n")
    u.aguarde(2500)
    escreva("Então você decide acelerar o carro e sentir a adrenalina em suas veias... \n")
    u.aguarde(2500)
    escreva("Você aumentou sua velocidade de 70Km/h, para: ")
    leia(km)

    limpa()

    se(km == 70 ou km <= 0){ 
      escreva("Você decidiu manter a cabeça no lugar e manteu sua velocidade. \nTudo ocorreu tranquilamente.")

    }senao se(km < 70){
      escreva("Você decidiu tomar mais cautela e deminuiu sua velocidade para ", km, "Km/h. \nTudo ocorreu tranquilamente.")

    }senao se(km <= 80){
      escreva("Você decidiu aumentar um pouco a valocidade, indo de 70Km/h para ", km, "Km/h. \nTudo ocorreu tranquilamente.")

    }senao se(km > 80){
      escreva("Você decidiu aumentar sua velocidade para ", km, "Km/h. \n")
      u.aguarde(2000)
      escreva("Com a adrenalina dominando seu corpo, você nem percebe, mas passa por um radar no qual a máxima permitida é de 80Km/h. \n")
      u.aguarde(3500)
      escreva("... \n")
      u.aguarde(2000)
      limpa()
      escreva("No dia seguinte chega a seguinte carta para você: \n\n")
      carta()
    }

    escreva("\n\n")
    
  }

  funcao carta(){ //escreve a carta com o valor da multa

    escreva("========================================================================================================================================================\n")
    escreva("Caro Sr(a). XXXXXXXXX, portador do carro de marca Car, modelo RoEsportivo, placa ABC-1234 \n")
    escreva("Por meio desta carta, venho lhe informar que seu carro foi visto na Rodovia YYYYYY, no horário de 23:48 (Horário de Brasĺia) de quinta-feira, 22/06/2023 \n")
    escreva("em uma velocidade ACIMA da permitida no local (80Km/h). \n\n")
    escreva("Levando em consideração que a multa é de R$7.00 por Km acima do permitido. \n")
    escreva("O Sr(a) levou uma multa de R$", (km - 80) * 7, ". \n\n")
    escreva("Favor comparecer ao Departamente do Trânsito para efetuar o pagamento da multa. \n\n")
    escreva("--ASS: Departamento de Trânsito. \n")
    escreva("========================================================================================================================================================\n")
  }
}
