programa
{
	
real base = 0, expoente = 0, resultado = 1
	cadeia continuar
	
	funcao inicio()
	{
	
		escreva("===Calculando-Potências===\n")
		escreva("Número: 
")
		leia(base)
		escreva("Potências: ")
		leia(expoente)
		potencia()
		escreva("\n\n")
	}

	funcao potencia(){
		
		para(inteiro i = 1 ; i <= expoente ; i++){
			resultado *= base
		}
		
		limpa()
		
		escreva("===Calculando Potências===\n")
		escreva(base, " ^ ", expoente, " = ", resultado)
	}
}
