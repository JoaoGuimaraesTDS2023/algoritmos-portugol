programa{
	
	funcao inicio(){
	
		inteiro seg, choc_ano
		inteiro idade, chocolates

		
		escreva("a) Há ", 24 * 365, " horas em um ano \n\n\n")
		escreva("b) Há ", 60 * 24 * 365 * 10, " minutos em uma década \n\n\n")
		
		escreva("c) Qual a sua idade em anos? ")
		leia(idade)
		
		seg = 60 * 60 * 24 * 365 * idade
		
		escreva("\nA sua idade em segundos é de: ", seg, " segundos \n\n\n")

		escreva("d) Quantos chocolates você quer comer por semana? ")
		leia(chocolates)
		
		choc_ano = 52 * chocolates
		
		escreva("\nWOW, você irá comer ", choc_ano, " chocolates em um ano \n\n\n")

		escreva("e) Se eu tenho 977 milhões de segundos... eu teria em torno de ", 977000000 / 60 / 60 / 24 / 365, " anos de idade\n\n")
		
	}
}
