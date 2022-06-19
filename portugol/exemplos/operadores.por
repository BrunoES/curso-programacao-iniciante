programa
{
	
	funcao inicio()
	{
		inteiro idade = 18
		real preco = 0.00
		logico verdadeiroOuFalso = verdadeiro
		caracter letra = 'z'
		cadeia nome = "prog"

		// Operadores atitméticos / de concatenação
		escreva("Operadores atitméticos: \n")
		
		escreva(idade + 2)
		escreva("\n")
		escreva(idade + -8)
		escreva("\n")
		escreva(idade * 2)
		escreva("\n")
		escreva(idade / 3)
		escreva("\n")

		escreva(nome + "_")
		escreva("\n \n")

		// Operadores de atribuição
		escreva("Operadores de atribuição: \n")
		
		preco = 0
		escreva(preco)
		escreva("\n")
		
		preco += 10
		escreva(preco)
		escreva("\n")
		
		preco -= 5
		escreva(preco)
		escreva("\n")
		
		preco *= 2
		escreva(preco)
		escreva("\n")
		
		preco /= 2
		escreva(preco)
		escreva("\n \n")

		// Operadores relacionais
		escreva("Operadores relacionais: \n")
		
		verdadeiroOuFalso = idade > 18
		escreva(verdadeiroOuFalso)
		escreva("\n")

		verdadeiroOuFalso = idade >= 18
		escreva(verdadeiroOuFalso)
		escreva("\n")

		verdadeiroOuFalso = idade < 18
		escreva(verdadeiroOuFalso)
		escreva("\n")

		verdadeiroOuFalso = idade <= 18
		escreva(verdadeiroOuFalso)
		escreva("\n")

		verdadeiroOuFalso = idade == 18
		escreva(verdadeiroOuFalso)
		escreva("\n")

		verdadeiroOuFalso = idade != 18
		escreva(verdadeiroOuFalso)
		escreva("\n \n")

		// Operadores lógicos
		escreva("Operadores lógicos: \n")

		verdadeiroOuFalso = falso ou verdadeiro
		escreva(verdadeiroOuFalso)
		escreva("\n")

		verdadeiroOuFalso = falso e verdadeiro
		escreva(verdadeiroOuFalso)
		escreva("\n")

		idade = 19
		verdadeiroOuFalso = (idade > 18)
		escreva(verdadeiroOuFalso)
		escreva("\n")

		verdadeiroOuFalso = (idade > 18 e idade < 60)
		escreva(verdadeiroOuFalso)
		escreva("\n")
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1644; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */