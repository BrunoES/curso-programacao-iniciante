programa
{
	
	funcao inicio()
 {
		meuProcedimento1()
		meuProcedimento2("Eu sou um procedimento, ou, função sem retorno. \n")
		
		cadeia resultadoDaFuncao1 = minhaFuncao1()
		escreva(resultadoDaFuncao1)

		cadeia resultadoDaFuncao2 = minhaFuncao2("Eu sou uma função, pois tenho um retorno. \n")
		escreva(resultadoDaFuncao2)
	}

	funcao meuProcedimento1() {
		escreva("Eu sou um procedimento, ou, função sem retorno. \n")	
	}

	funcao meuProcedimento2(cadeia texto) {
		escreva(texto)
	}

	funcao cadeia minhaFuncao1() {
		escreva("Eu sou uma função, pois tenho um retorno. \n")
		retorne "Retorno da função 1 \n"
	}

	funcao cadeia minhaFuncao2(cadeia texto) {
		escreva(texto)
		retorne "Retorno da função 2. \n"
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 597; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */