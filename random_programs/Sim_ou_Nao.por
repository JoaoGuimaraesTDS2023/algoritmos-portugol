programa
{
	inclua biblioteca Util --> u
	
	inteiro sorteio
	cadeia sim_nao, pergunta
	
	funcao inicio ()
	{
		escreva("Me faça uma pergunta de resposta \"sim\" ou \"não\": \n")
		leia(pergunta)
		
		sorteio = u.sorteia(1, 2)
		
		se(sorteio == 2){
			sim_nao = "Sim"
		}senao{
			sim_nao = "Não"
		}
		
		limpa()
		
		escreva("Pergunta: ", pergunta,"\nResposta: ", sim_nao)
		
		
		
		
	}
}
