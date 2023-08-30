programa {

  inclua biblioteca Matematica --> m

  funcao inicio() {

    logico a = 2 * 4 == 24/3
    logico b = (15 % 4) < (19 % 6)
    logico c = nao(2 < 5) != (8 == 8)
    logico d = verdadeiro ou falso
    logico e_ = 2*2 == m.potencia(2, 2) //tive que colocar "e_" para o Portugol não confundir com a operação "e".
    logico f = verdadeiro e ( (7 / 2) > 3.5 )
    logico g = (m.arredondar( 2.8, 0 ) == 3) e (m.raiz(9, 2) ==3) //nesta preposição lógica, originalmente estava apenas "m.raiz(9)", mas tive que colocar o ", 2" pois a função precisa desse segundo parâmetro (índice).

    escreva("\n a. (", a, ") 2 * 4 == 24/3")
    escreva("\n b. (", b, ") (15 % 4) < (19 % 6)")
    escreva("\n c. (", c, ") nao(2 < 5) != (8 == 8)")
    escreva("\n d. (", d, ") verdadeiro ou falso")
    escreva("\n e. (", e_, ") 2*2 == Matematica.potencia(2, 2)")
    escreva("\n f. (", f, ") verdadeiro e ( (7 / 2) > 3.5 )")
    escreva("\n g. (", g, ") (Mat.arredondar( 2.8, 0 ) == 3) e (Mat.raiz(9) ==3)")
    escreva("\n\n\n")
    
  }
}
