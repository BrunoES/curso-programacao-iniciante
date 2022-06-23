programa
{
	
	funcao inicio()
	{
		inteiro matriz[2][2]
		inteiro numero
		inteiro posicaoLinhaConsulta
		inteiro posicaoColunaConsulta
		
		// preenche a matriz
		escreva("\n Alimentando matriz: \n")
		para (inteiro linha = 0; linha < 2; linha++) {
			
			para (inteiro coluna = 0; coluna < 2; coluna++) {
				escreva("Informe um número para a linha " + linha + " e coluna " + coluna + "\n")
				leia(numero)
				matriz[linha][coluna] = numero
			}
			
		}

		escreva("\n Informe a linha do número a ser buscado na matriz: \n")
		leia(posicaoLinhaConsulta)
		escreva("\n Informe a coluna do número a ser buscado na matriz: \n")
		leia(posicaoColunaConsulta)
		
		escreva("\n Realizando busca na matriz para a linha " + posicaoLinhaConsulta + " e coluna " + posicaoColunaConsulta + " \n")
		para (inteiro linha = 0; linha < 2; linha++) {
			
			para (inteiro coluna = 0; coluna < 2; coluna++) {
				se (linha == posicaoLinhaConsulta e coluna == posicaoColunaConsulta) {
					escreva(matriz[linha][coluna])	
				}
			}
			escreva("\n")
		}
		
	}
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 944; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */