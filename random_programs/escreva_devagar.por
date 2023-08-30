programa
{

	/* APERTE NO '+' À ESQUERDA PARA LER A DESCRIÇÃO DA FUNÇÃO!
	 * 
	 * Funcao "escreva_devagar()":
	 * 
	 * A função foi criada como uma alternativa à funcao "escreva()", sendo essa ela uma versão que exerce o mesmo cargo da funcao "escreva"
	 * porém de maneira mais devagar (pausadamente), com um intervalo de tempo entre a escrita de um caracter e outro, tendo até mesmo
	 * uma diferença de pausas entre sinais de pontuação e um caracter "padrão".
	 * 
	 * Para executar essa funcao corretamente, além de possuir os elementos especificos dela (bibliotecas, vaariáveis e o corpo da própria funcao),
	 * você deve também estar ciente da forma correta de informar seus parâmetros.
	 * Como você deve ter indentificado no código abaixo (exemplo), a função recebe apenas UM parâmetro. E ciente disso, fique com as dicas:
	 * 
	 * 1. Se você quiser adicionar outros "parâmetros" para serem executados no código igual ao "parâmetro obrigatório", ao invés de
	 *    utilizar ',' entre os "parâmetros", utilize '+' entre, pois assim o Portugol entende que você está adicionando algo a mais no parâmetro e
	 *    não adicionando um novo, fazendo a função funcionar sem erro.
	 *    
	 * 2. Seguindo a mesma lógica da primeira dica, como deve ter percebido, o parâmetro único exigido pela função é do tipo 'cadeia', logo
	 *    se você quiser adicionar uma expressão aritmética , recomendo que escreva a conta entre parenteses, "()", para assim o Portugol
	 *    primeiro execute a conta para por fim adiciona-lá à variável do tipo 'cadeia'.
	 *       Ex:
	 *       escreva_devagar("1 + 1 é igual a: " + (1+1) + "\n")
	 *       Resultado:
	 *       1 + 1 é igual a: 2
	 *       
	 * Obrigado pela atenção e aproveite o uso da funcao!
	 * 
	 * att: www.github.com/JoaoGuimaraesTDS2023/
	 */
	
	inclua biblioteca Tipos --> t
	inclua biblioteca Texto --> tx
	inclua biblioteca Util --> u

	inteiro cem = 100
	
	funcao inicio()
	{	
		cadeia exemplo = "\ntop d+?"
		inteiro exemplo2 = 12+23
		escreva_devagar("EXEMPLO MUITO ÚTIL!!! \n12 + 23 = " + (12+23) + exemplo + "\nExemplo, em variável: " + exemplo2 + "\n\n") //exemplo de frase.
	}

	funcao escreva_devagar(cadeia texto){ //uma espécie de "escreva()" porém pausadamente. 
							
		caracter letra
		inteiro velocidade = 100 //pausa padrão entre um caracter e outro.
		
		para(inteiro i = 0 ; i < tx.numero_caracteres(texto) ; i++){ //repete enquanto a frase inteiro não for escrita.

			letra = tx.obter_caracter(texto, i) //obtem o caracter da frase.
			
			escreva(letra)
			
			escolha(letra){ //verifica diferentes tipos de caracter para efetuar (ou não) determinadas pausas.

				caso ' ': u.aguarde(0) pare				
				caso ',': u.aguarde(velocidade * 3) pare	
				caso ':': u.aguarde(velocidade * 3) pare	
				caso ';': u.aguarde(velocidade * 3) pare		
				caso '.': u.aguarde(velocidade * 5) pare			
				caso '!': u.aguarde(velocidade * 5) pare				
				caso '?': u.aguarde(velocidade * 5) pare				
				caso contrario: u.aguarde(velocidade) pare
				
			}
			
			/* Forma alternativa de fazer o código acima economizando linhas:
			 * OBS: Com a utilizaçoã do "se-senao-se" o algorítimo 
			 * acaba verificando 3 vezes antes de executar (caso seja uma letra "normal").
			 
			se(letra == ' '){
				u.aguarde(0)
			}senao se (letra == ',' ou letra == ':' ou letra == ';'){
				u.aguarde(velocidade * 3)
			}senao se (letra == '.' ou letra == '!' ou letra == '?'){
				u.aguarde(velocidade * 5)
			}senao{
				u.aguarde(velocidade)
			}
			*/
		}
	}
}
