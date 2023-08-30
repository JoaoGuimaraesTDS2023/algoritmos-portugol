programa{

	inclua biblioteca Tipos --> t
	inclua biblioteca Texto --> tx
	inclua biblioteca Util --> u
	
	cadeia cpf
	
	funcao inicio(){ //CRIAR FUNCAO PARA VERIFICAR CNPJ TBM
		
		escreva("Digite o seu CPF: ")
		leia(cpf)
		verifique_cpf()
	}

	funcao verifique_cpf(){ //Funcao que verifica se o CPF é válido ou não.

		inteiro soma = 0 //Variável que recebe o calculo para formar o digito verificador de cpf.
		inteiro sequencia = 10 //Sequência usada para calcular o digito verificador de cpf.
		inteiro primeiro_verificador, segundo_verificador //Variáveis que recebem o valor de cada digito verificador de cpf.
		cadeia digito_verificador //Variável que recebe os dois digitos verificadores.
		cadeia verificador_cpf = tx.extrair_subtexto(cpf, tx.numero_caracteres(cpf)-2, tx.numero_caracteres(cpf)) //Variável que extrai os digitos verificadorres do cpf DIGITADO pelo usuário.

		se(tx.numero_caracteres(cpf) == 11 ou tx.numero_caracteres(cpf) == 14){ //Verifica se o CPF possui o número certo de caracteres (11 sendo apenas números, e 14 sendo os números com "." e "-").

			cpf = tx.substituir(cpf, ".", "") //Caso o cpf digitado contenha os "." e "-", ele os elimina.
			cpf = tx.substituir(cpf, "-", "")

			//INICIO CALCULO DO PRIMEIRO DIGITO VERIFICADOR DE CPF//
			para(inteiro i = 0 ; i < tx.numero_caracteres(cpf)-2 ; i++){

				soma += t.caracter_para_inteiro(tx.obter_caracter(cpf, i)) * sequencia
				sequencia--
			}

			se(soma%11 < 2 ou soma%11 > 10){
				primeiro_verificador = 0
			}senao{
				primeiro_verificador = 11 - (soma % 11)
			}
			//FIM CALCULO DO PRIMEIRO DIGITO VERIFICADOR DE CPF//
			
			soma = 0
			sequencia = 11

			//INICIO CALCULO DO SEGUNDO DIGITO VERIFICADOR DE CPF//
			para(inteiro i = 0 ; i < tx.numero_caracteres(cpf)-2 ; i++){
	
				soma += t.caracter_para_inteiro(tx.obter_caracter(cpf, i)) * sequencia
				sequencia--			
			}
			soma += primeiro_verificador * sequencia //aqui 'soma' recebe o valor que falta para calcular o segundo digito verificador de cpf.

			se(soma%11 < 2 ou soma%11 > 10){
				segundo_verificador = 0
			}senao{
				segundo_verificador = 11 - (soma % 11)
			}
			//FIM CALCULO DO SEGUNDO DIGITO VERIFICADOR DE CPF//
			
			digito_verificador = t.inteiro_para_cadeia(primeiro_verificador, 10) + t.inteiro_para_cadeia(segundo_verificador, 10) 
		
			se(digito_verificador == verificador_cpf){ //Confere se o calculo dos digitos verificadores correspondem aos digitados pelo usuário.
				escreva("CPF APROVADO")
			}senao{
				escreva("CPF INEXISTENTE")
			}

		}senao{ //Caso contenha mais ou menos números, não é um CPF.
			escreva("CPF INVÁLIDO")
		}

		escreva("\n\n")


	}
}
