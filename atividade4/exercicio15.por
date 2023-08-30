programa {
  funcao inicio() {

    inteiro codigo
    real subtotal, total = 0
    cadeia continuar

    faca{
      limpa()

      escreva("===============================================================================\n")
      escreva("==--------CÓDIGO----------|----------LANCHE----------|----------PREÇO--------==\n")
      escreva("==---------100------------|------Cachorro quente-----|---------R$5.00--------==\n")
      escreva("==---------101------------|----------Bauru-----------|---------R$2.60--------==\n")
      escreva("==---------102------------|-------Bauru c/ ovo-------|---------R$3.80--------==\n")
      escreva("==---------103------------|--------Hamburger---------|---------R$9.00--------==\n")
      escreva("==---------104------------|-------Cheeseburger-------|---------R$11.00-------==\n")
      escreva("==---------105------------|-------Refrigerante-------|---------R$3.00--------==\n")
      escreva("==---------106------------|----Semente dos Deuses----|---------R$1000.00-----==\n")
      escreva("===============================================================================\n")
      leia(codigo)

      escolha(codigo){
        caso 100: 
        subtotal = 5.00 
        total += subtotal
        pare

        caso 101: 
        subtotal = 2.60 
        total += subtotal
        pare

        caso 102: 
        subtotal = 3.80 
        total += subtotal
        pare

        caso 103: 
        subtotal = 9.00 
        total += subtotal
        pare

        caso 104: 
        subtotal = 11.00 
        total += subtotal
        pare

        caso 105: 
        subtotal = 3.00 
        total += subtotal
        pare

        caso 106: 
        subtotal = 1000.00 
        total += subtotal
        pare

        caso contrario:
        escreva("NENHUM PEDIDO SELECIONADO!\n\n")
        pare
      }

      escreva("Subtotal: ", subtotal, "\n")

      escreva("Deseja mais alguma coisa? (s ou n) ")
      leia(continuar)

    }enquanto(continuar != "n")

    escreva("Total: ", total, "\n\n\n")
  }
}
