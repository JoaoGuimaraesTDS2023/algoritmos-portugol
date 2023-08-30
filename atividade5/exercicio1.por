programa
{
	
	funcao inicio()
	{
		inteiro paisA = 80000, paisB = 200000, ano = 0

		para(paisA ; paisA <= paisB ; paisA += (paisA * 3)/100) { //calcula o total de hábitantes enquanto a população de A for menor que a de B.
			ano++
			paisB += (paisB * 1.5)/100
		}
		
		escreva("Demorou ", ano, " anos para que o País A tenha mais habitantes que o País B \nAno: ", ano, "\nPaís A: ", paisA, "\tPaís B: ", paisB, "\n")
	}
}
