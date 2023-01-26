programa
{
	
	funcao inicio()
	{
		inteiro ate = 0

		escreva("Digite o número até o qual deseja contar: \n")
		leia(ate)

		escreva(ate)
		escreva("\n")
		
		escreva("\n")
		// Repete até o contador atingir o valor informado pelo usuário
		escreva("Contagem crescente utilizando Para: \n")
		para(inteiro contador = 0; contador <= ate; contador ++) {
			escreva(contador + " \n")
		}

		escreva("\n")
		// Repete até o contador atingir o valor informado pelo usuário, de forma regressiva
		escreva("Contagem decrescente utilizando Para \n")
		para(inteiro contador = ate; contador >= 0; contador--) {
			escreva(contador + " \n")
		}

		inteiro contador = 0

		escreva("\n")
		// Repete até o contador atingir o valor informado pelo usuário, utlizando enquanto
		escreva("Contagem crescente utilizando Enquanto: \n")
		enquanto(contador <= ate) {
			escreva(contador + " \n")
			contador += 1
		}

		contador = ate

		escreva("\n")
		// Repete até o contador atingir o valor informado pelo usuário, utlizando enquanto
		escreva("Contagem decrescente utilizando Enquanto \n")
		enquanto(contador >= 0) {
			escreva(contador  + " \n")
			contador -= 1
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