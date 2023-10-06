programa
{
	inclua biblioteca Tipos --> t
	inclua biblioteca Texto --> tx
	inclua biblioteca Util --> u

	caracter alfabeto[26] = {'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z'} //alfabeto para criptografar e descriptografar as mensagens.

	caracter letra //letra selecionada para codificar.
	
	cadeia mensagem //mensagem digitada pelo jogador.
	cadeia mensagem_resposta //mensagem gerada pela criptografia/descriptografia da mensagem do jogador.
	cadeia chave_c //chave da cifra digitada pelo usuário.
	
	inteiro chave_i //caso o usuário digite uma chave numérica, essa variável receberá o valor.
	inteiro posicao //posicão do 'letra' no vetor 'alfabeto'.
	inteiro tamanho_mensagem //tamanho, de caracteres, da mensagem digitada pelo usuário
	inteiro tamanho_alfabeto = u.numero_elementos(alfabeto) //tamanho, de elementos, do 'alfabeto'.

	logico criptografia //confirma se o usuário quer criptografar ou descriptografar.
	logico chave //verifica se o usuário digitou uma chave corretamente.
	
	funcao inicio()
	{
		introducao() //executa todo o programa.
		continuar()
	}

	funcao introducao() //Pergunta qual ação o usuário quer executar.
	{
		cadeia resposta

		limpa()

		mensagem_resposta = ""
		
		escreva("Bem vindo ao meu programa sobre a Cifra de César. \nEscolha se deseja criptografar ou descriptografar uma mensagem: \n[1]. Criptografar \t[2]. Descriptografar\n")
		leia(resposta)

		resposta = tx.caixa_baixa(resposta)

		criptografar_descriptografar(resposta)
	}

	funcao criptografar_descriptografar(cadeia resp) //verifica se o usuário escolheu entre criptografar e descriptografar.
	{
		se(resp == "criptografar" ou resp == "1"){
			
			criptografia = verdadeiro
			leia_chave_mensagem()
			resultado()
			
		}senao se(resp == "descriptografar" ou resp == "2"){
			
			criptografia = falso
			leia_chave_mensagem()
			resultado()
			
		}senao{
			
			limpa()
			escreva("Escolha uma das opções propostas!\n")
			introducao()
		}
	}

	funcao leia_chave_mensagem() //lê a mensagem a ser (des)criptografada e a sua chave.
	{	
		escreva("Digite a mensagem: ")
		leia(mensagem)
		mensagem = tx.caixa_baixa(mensagem)

		escreva("Digite a chave: ")
		leia(chave_c)
		chave_c = tx.caixa_baixa(chave_c)

		verifique_chave()
	}
	
	funcao verifique_chave() //verifica se a chave digitada é válida.
	{
		limpa()

		chave = falso
		
		se(chave_c == ""){ //se o usuário não digitar nenhuma chave, o programa escreverá todas as possibilidades possiveis de (des)criptografização.
			
			para(inteiro i = 0 ; i < tamanho_alfabeto ; i++){
				chave_i = i
				resultado()
			}
			
		}senao se(t.cadeia_e_inteiro(chave_c, 10)){ //caso o numero seja inteiro, o código é executado normalmente.
			
			chave_i = t.cadeia_para_inteiro(chave_c, 10)
			chave = verdadeiro
			
		}senao{ //caso contrario, o programa pede novamente as informações ao usuário.
			
			escreva("Informe uma chave válida! (um número entre 0 e 25)\n")
			leia_chave_mensagem()
		}
	}

	funcao resultado() //funcao que (des)criptografa a mensagem digitada pelo usuário.
	{
		tamanho_mensagem = tx.numero_caracteres(mensagem)

		mensagem_resposta = ""

		para(inteiro i=0; i < tamanho_mensagem; i++){ //(des)criptografa letra por letra.

			letra = t.cadeia_para_caracter(tx.extrair_subtexto(mensagem, i, i+1))
			
			para(inteiro j=0; j < tamanho_alfabeto; j++){ //verifica se a letra está no "alfabeto" para ser (des)criptografada.

				se(letra == alfabeto[j]){

					se(criptografia){ 
						posicao = (j + chave_i) % 26 //calculo para criptografar.
					}senao{
						posicao = (j - chave_i) % 26 //calculo para DEScriptografar.
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
		escreva("Chave: ", chave_i, "\n")
		escreva("Mensagem final: ", mensagem_resposta, "\n\n")
		
	}

	funcao continuar() //funcao que pergunta se o usuário quer digitar outra mensagem, ou parar o programa.
	{	
		cadeia repetir
	
		faca //repete a pergunta enquanto não houver resposta.
		{
			escreva("\nDeseja repetir? \n[s] \t[n]\n")
			leia(repetir)
			limpa()
			
		}enquanto(repetir != "n" e repetir != "s")

		escolha(t.cadeia_para_caracter(repetir)) //verifica se se o programá irá repetir ou não.
		{
			caso 's': inicio() pare
			caso contrario: pare
		}
		
	}
}
