programa {
  funcao inicio() {

    caracter digito, continuar = 's'

    faca{

      limpa()

      escreva("Digite um digito qualquer: ")
      leia(digito)

      escolha(digito){
      
        caso "a": escreva("O digito é uma vogal.") pare
        caso "e": escreva("O digito é uma vogal.") pare
        caso "i": escreva("O digito é uma vogal.") pare
        caso "o": escreva("O digito é uma vogal.") pare
        caso "u": escreva("O digito é uma vogal.") pare

        caso "b": escreva("O digito é umma consoante.") pare
        caso "c": escreva("O digito é umma consoante.") pare
        caso "d": escreva("O digito é umma consoante.") pare
        caso "f": escreva("O digito é umma consoante.") pare
        caso "g": escreva("O digito é umma consoante.") pare
        caso "h": escreva("O digito é umma consoante.") pare
        caso "j": escreva("O digito é umma consoante.") pare
        caso "k": escreva("O digito é umma consoante.") pare
        caso "l": escreva("O digito é umma consoante.") pare
        caso "m": escreva("O digito é umma consoante.") pare
        caso "n": escreva("O digito é umma consoante.") pare
        caso "p": escreva("O digito é umma consoante.") pare
        caso "q": escreva("O digito é umma consoante.") pare
        caso "r": escreva("O digito é umma consoante.") pare
        caso "s": escreva("O digito é umma consoante.") pare
        caso "t": escreva("O digito é umma consoante.") pare
        caso "v": escreva("O digito é umma consoante.") pare
        caso "w": escreva("O digito é umma consoante.") pare
        caso "x": escreva("O digito é umma consoante.") pare
        caso "y": escreva("O digito é umma consoante.") pare
        caso "z": escreva("O digito é umma consoante.") pare

        caso '1': escreva("O digito é um número.") pare
        caso '2': escreva("O digito é um número.") pare
        caso '3': escreva("O digito é um número.") pare
        caso '4': escreva("O digito é um número.") pare
        caso '5': escreva("O digito é um número.") pare
        caso '6': escreva("O digito é um número.") pare
        caso '7': escreva("O digito é um número.") pare
        caso '8': escreva("O digito é um número.") pare
        caso '9': escreva("O digito é um número.") pare
        caso '0': escreva("O digito é um número.") pare

        caso contrario: escreva("O digito é um caracter especial.") pare
      }

      escreva("\n\nDeseja continuar? (s ou n)")
      leia(continuar)

    }enquanto(continuar != 'n')

    escreva("\n\n")
  }
}
