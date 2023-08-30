programa {
  funcao inicio() {

    real dias, km, valortotal_dia, valortotal_km

    escreva("Pressuponhamos que você acaba de alugar um carro, cujo a diária custa R$60.00, e a cada Km rodado se pague R$0.15.\n")
    escreva("...\nAlgum tempo se passou\n\n")
    escreva("Quantos dias você ficou com o carro? ")
    leia(dias)
    escreva("Quandos Km você rodou nesse período de ", dias, " dias? ")
    leia(km)

    valortotal_dia = dias * 60.0
    valortotal_km = km * 0.15

    limpa()

    escreva("\nO Valor total a ser pago será de R$", valortotal_dia + valortotal_km, "\n\n")
    escreva("=======================================================================\n")
    escreva("------------------------------NOTA-FISCAL------------------------------\n")
    escreva("-----------------------------------------------------------------------\n")
    escreva("Diária:----------------R$60.00/dia-----Usado-por-", dias, "-dias-----R$", valortotal_dia, "\n")
    escreva("Quilometro-rodado:-----R$0.15/km-------Usado-por-", km, "Km-----R$", valortotal_km, "\n")
    escreva("-----------------------------------------------------------------------\n")
    escreva("TOTAL:------------------------------------------------------R$", valortotal_dia + valortotal_km, "\n")
    escreva("=======================================================================\n")
  }
}
