programa
{
	
	funcao inicio()
	{
		inteiro vetor[10]
		inteiro numero
		inteiro posicaoConsulta
		
		// preenche o vetor
		escreva("\n Alimentando vetor: \n")
		para (inteiro posicao = 0; posicao < 10; posicao++)
		{
			escreva("Informe o " + (posicao + 1) + "° numero:")
			leia(numero)
			vetor[posicao] = numero
		}

		escreva("\n Informe uma posição para ser buscada no vetor: \n")
		leia(posicaoConsulta)
		
		escreva("\n Realizando busca no vetor para o " + posicaoConsulta + "° numero: \n")
		para (inteiro posicao = 0; posicao < 10; posicao++)
		{
			se ((posicao + 1) == posicaoConsulta) {
				escreva(vetor[posicao] + "\n")	
			}
		}
		
	}
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 652; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */