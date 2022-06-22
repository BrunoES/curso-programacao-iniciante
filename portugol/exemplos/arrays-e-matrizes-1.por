programa
{
	
	funcao inicio()
	{
		inteiro vetor[10]
		inteiro numero
		
		// preenche o vetor
		escreva("\n Alimentando vetor: \n")
		para (inteiro posicao = 0; posicao < 10; posicao++)
		{
			escreva("Informe o " + (posicao + 1) + "° numero:")
			leia(numero)
			vetor[posicao] = numero
		}

		// exibe o vetor
		escreva("\n Exibindo vetor: \n")
		para (inteiro posicao = 0; posicao < 10; posicao++)
		{
			escreva(vetor[posicao] + "\n")
		}
		
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 125; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */