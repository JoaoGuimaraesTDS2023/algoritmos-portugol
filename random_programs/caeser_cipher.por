programa
{
	inclua biblioteca Tipos --> t
	inclua biblioteca Texto --> tx
	inclua biblioteca Util --> u

	caracter alfabeto[] = {'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z'}

	caracter letra
	
	cadeia mensagem
	cadeia mensagem_resposta
	cadeia chave_c
	
	inteiro chave_i

	logico criptografia
	
	funcao inicio()
	{
		introducao()
	}

	funcao introducao()
	{
		cadeia resposta

		mensagem_resposta = ""
		
		escreva("Bem vindo ao meu programa sobre a Cifra de César. \nEscolha se deseja criptografar ou descriptografar uma mensagem: \n[1]. Criptografar \t[2]. Descriptografar")
		leia(resposta)

		resposta = tx.caixa_baixa(resposta)

		criptografar_descriptografar(resposta)
	}

	funcao criptografar_descriptografar(cadeia resp)
	{
		se(resp == "criptografar" ou resp == "1"){
			criptografia = verdadeiro
			criptografe()
		}senao se(resp == "descriptografar" ou resp == "2"){
			criptografia = falso
			descriptografe()
		}senao{
			limpa()
			escreva("Escolha uma das opções propostas!\n")
			introducao()
		}
	}

	funcao leia_chave_mensagem()
	{	
		escreva("Digite a mensagem: ")
		leia(mensagem)
		mensagem = tx.caixa_baixa(mensagem)

		escreva("Digite a chave: ")
		leia(chave_c)
		chave_c = tx.caixa_baixa(chave_c)
	}

	funcao verifique_chave()
	{
		limpa()
		
		se(chave_c == ""){
			
			se(criptografia){
				escreva("Para Criptografar uma mensagem, você precisa informar uma chave! (número entre 0 e 25)\n")
				leia_chave_mensagem()
			}senao{
				descriptografe_sem_chave()
			}
			
		}senao se(t.cadeia_e_inteiro(chave_c, 10)){
			
			chave_i = t.cadeia_para_inteiro(chave_c, 10)

			se(chave_i > 25){
				chave_i = chave_i - 25
			}
			
		}senao{
			escreva("Informe uma chave válida! (um número entre 0 e 25)\n")
			leia_chave_mensagem()
		}
	}

	funcao criptografe()  //VOCE PAROU AQUI, QUERENDO CRIAR UMA LÓGICA DE COMO FAZER QUADO TENHA Q VLTAR O INICIO DO "alfabeto[]".
	{
		leia_chave_mensagem()

		para(inteiro i = 0 ; i < tx.numero_caracteres(mensagem) ; i++){

			letra = tx.obter_caracter(mensagem, i)

			
		}
	}

	funcao descriptografe()
	{
		leia_chave_mensagem()
		
	}

	funcao descriptografe_sem_chave()
	{
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1973; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */