programa
{
	
	funcao inicio()
	{
		meuProcedimento1()
		meuProcedimento2("Eu sou um procedimento, ou, função sem retrono. \n")
		minhaFuncao1()
		minhaFuncao2("Eu sou uma função, pois tenho um retrono. \n")

		escreva(minhaFuncao1())
		escreva(minhaFuncao2("Eu sou uma função, pois tenho um retrono. \n"))	
	}

	funcao meuProcedimento1() {
		escreva("Eu sou um procedimento, ou, função sem retrono. \n")
	}

	funcao meuProcedimento2(cadeia texto) {
		escreva(texto)
	}

	funcao cadeia minhaFuncao1() {
		escreva("Eu sou uma função, pois tenho um retrono. \n")
		retorne "Um texto qualquer \n"
	}

	funcao cadeia minhaFuncao2(cadeia texto) {
		escreva(texto)
		retorne "Um texto qualquer \n"
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