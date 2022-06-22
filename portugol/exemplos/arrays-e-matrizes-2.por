programa
{
	
	funcao inicio()
	{
		inteiro matriz[2][2]
		inteiro numero
		
		// preenche o vetor
		escreva("\n Alimentando vetor: \n")
		para (inteiro linha = 0; linha < 2; linha++) {
			
			para (inteiro coluna = 0; coluna < 2; coluna++) {
				escreva("Informe um número para a linha " + linha + " e coluna " + coluna + "\n")
				leia(numero)
				matriz[linha][coluna] = numero
			}
			
		}

		// exibe o vetor
		escreva("\n Exibindo matriz: \n")
		para (inteiro linha = 0; linha < 2; linha++) {
			
			para (inteiro coluna = 0; coluna < 2; coluna++) {
				escreva(matriz[linha][coluna])
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
 * @POSICAO-CURSOR = 588; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */