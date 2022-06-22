programa
{
	funcao inicio() 
	{
		inteiro ate = 0, numero
		
		escreva("Digite o número até o qual deseja contar: ")
		leia(numero)

		// Repete até o contador atingir o valor informado pelo usuário
		
		para (inteiro contador = 0; contador <= numero; contador ++) 
		{
			escreva(contador + " \n")
		}

		escreva("Digite um número para iniciar a contagem regressiva: ")
		leia(numero)

		// Repete até o contador atingir o valor informado pelo usuário
		
		para (inteiro contador = numero; contador >= 0; contador --) 
		{
			escreva(contador + " \n")
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 561; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */