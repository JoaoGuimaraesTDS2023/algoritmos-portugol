programa {

  inclua biblioteca Util --> u
  inclua biblioteca Matematica --> mat

  funcao inicio() {

    real mb, mbps, temp, min
    cadeia linha
    caracter teste

    escreva("\nATIVIDADE 8: \n\n")
    escreva("-------Pacote-de-internet------\n")
    escreva("-Digite a velocidade desejada: ")
    leia(mbps)

    limpa()

    escreva("\n--Deseja-fazer-um-teste-da-nossa-velocidade?-(s-ou-n)--\n")
    leia(teste)

    escolha(teste){

      caso 's':

      escreva("Digite-o-tamanho-do-\"pacote\"-a-ser-instalado-(MB): ")
      leia(mb)

      limpa()

      min = (mb / mbps) / 60
      temp = (min / 10) * 2
      linha = ""

      para(inteiro i = 0 ; i <= 4 ; i++){

        escreva("Velocidade de ", mbps, "MBps escolhida\n")
        escreva(linha)
        escreva("\n", i * 20, "% de ", mb, "MB")
        escreva("\nTEMPO ESTIMADO DE ", mat.arredondar(min, 2), " minutos")

        linha += "------"

        min -= temp

        u.aguarde(1500)
        limpa()
      }


      escreva("Velocidade de ", mbps, "mbps escolhida\n")
      escreva("======download=concluído======")
      escreva("\n100% de ", mb, "MB")
      u.aguarde(2000) 

      limpa()

      min = (mb / mbps) / 60

      escreva("\nEscolhendo o pacote com ", mbps, "MBps, demoramos ", mat.arredondar(min, 2), "min para baixar um arquivo de ", mb, "MB") 
      pare
    }

    escreva("\n\n")
  }
