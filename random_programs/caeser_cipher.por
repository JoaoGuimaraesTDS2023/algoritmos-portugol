programa
{
	inclua biblioteca Tipos --> t
	inclua biblioteca Texto --> tx
	inclua biblioteca Util --> u

	caracter alfabeto[26] = {'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z'}

	caracter letra
	
	cadeia mensagem
	cadeia mensagem_resposta
	cadeia chave_c
	
	inteiro chave_i
	inteiro posicao
	inteiro tamanho_mensagem
	inteiro tamanho_alfabeto = u.numero_elementos(alfabeto)

	logico criptografia
	logico chave
	
	funcao inicio()
	{
		introducao()
	}

	funcao introducao()
	{
		cadeia resposta

		limpa()

		mensagem_resposta = ""
		
		escreva("Bem vindo ao meu programa sobre a Cifra de César. \nEscolha se deseja criptografar ou descriptografar uma mensagem: \n[1]. Criptografar \t[2]. Descriptografar\n")
		leia(resposta)

		resposta = tx.caixa_baixa(resposta)

		criptografar_descriptografar(resposta)
	}

	funcao criptografar_descriptografar(cadeia resp)
	{
		se(resp == "criptografar" ou resp == "1"){
			criptografia = verdadeiro
			resultado()
		}senao se(resp == "descriptografar" ou resp == "2"){
			criptografia = falso
			resultado()
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

		verifique_chave()
	}
	
	funcao verifique_chave()
	{
		limpa()
		
		se(chave_c == ""){
			
			se(criptografia){
				escreva("Para Criptografa/Descriptografar uma mensagem, você precisa informar uma chave! (número entre 0 e 25)\n")
				leia_chave_mensagem()
			}
			
		}senao se(t.cadeia_e_inteiro(chave_c, 10)){
			
			chave_i = t.cadeia_para_inteiro(chave_c, 10)
			
		}senao{
			escreva("Informe uma chave válida! (um número entre 0 e 25)\n")
			leia_chave_mensagem()
		}
	}

	funcao resultado()
	{
		leia_chave_mensagem()
		
		tamanho_mensagem = tx.numero_caracteres(mensagem)

		para(inteiro i=0; i < tamanho_mensagem; i++){

			letra = t.cadeia_para_caracter(tx.extrair_subtexto(mensagem, i, i+1))
			
			para(inteiro j=0; j < tamanho_alfabeto; j++){

				se(letra == alfabeto[j]){

					se(criptografia){
						posicao = (j + chave_i) % 26
					}senao{
						posicao = (j - chave_i) % 26
					}
					
					se(posicao < 0){
						posicao += 26
					}
					
					letra = alfabeto[posicao]
					pare
				}
			}
			mensagem_resposta += t.caracter_para_cadeia(letra)
		}
		escreva(mensagem_resposta, "\n")
		
		continuar()
	}

	funcao continuar()
	{	
		cadeia repetir
	
		faca
		{
			escreva("\nDeseja repetir? \n[s] \t[n]\n")
			leia(repetir)
			
		}enquanto(repetir != "n" e repetir != "s")

		escolha(t.cadeia_para_caracter(repetir))
		{
			caso 's': introducao() pare
			caso contrario: pare
		}
		
	}
}
