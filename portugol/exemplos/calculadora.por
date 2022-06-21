programa {
	
	funcao inicio() {
		cadeia operacao = "soma"
		real resultado = 0
		real x = 1
		real y = 1

		se (operacao == "soma") {
			resultado = somar(x, y)
		} senao {
			se (operacao == "subtrair") {
				resultado = subtrair(x, y)
			} senao {
				se (operacao == "divisao") {
					resultado = dividir(x, y)
				} senao {
					se(operacao == "multiplicar") {
						multiplicar(x, y)
					}
				}
			}
		}
		
		escreva("Resultado: ", resultado)
	}

	funcao real somar(real x, real y) {
		retorne x + y
	}

	funcao real subtrair(real x, real y ) {
		retorne x - y
	}

	funcao real dividir(real x, real y) {
		retorne x / y
	}

	funcao real multiplicar(real x, real y) {
		retorne x * y
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 105; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */