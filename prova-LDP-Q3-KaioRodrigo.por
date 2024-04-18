programa
{
	
	/*	Escreva um programa que imprima o seguinte padrão de número em formato de triângulo dado número n.
	*/

	inclua biblioteca Tipos --> ty
	inclua biblioteca Arquivos --> arc
	
	const cadeia resultadoCaminho = "C:/Users/Aluno/Documents/aluno1/Prova-LDP-18-04-2024/resultado.txt"
	
	inteiro n, localArquivo, contador = 11, resultado
	cadeia textos, resultadoTexto
	
	funcao inicio()
	{
	
		escreva("Informe o número desejado\n: ")
			leia(n)
		inteiro contador = 1
		para(inteiro i = 1; i <=n; i++){
			escreva(i)
			/*se(i == 1){
				escreva(i+"\n")
				
			}senao{
				escreva(n,i+"\n")
				n--
			}*/
		}
	}
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 526; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */