programa
{
	
	/*	Escreva um programa que imprima o seguinte padrão de número em formato de triângulo dado número n.
	*/

	inclua biblioteca Tipos --> ty
	inclua biblioteca Arquivos --> arc
	
	const cadeia resultadoCaminho = "C:/Users/Aluno/Documents/aluno1/Prova-LDP-18-04-2024/resultado.txt"
	
	inteiro n, localArquivo, contador = 0
	cadeia triangulo
	
	funcao inicio()
	{
		
		escreva("Informe o número desejado\n: ")
			leia(n)
		localArquivo = arc.abrir_arquivo(resultadoCaminho, arc.MODO_ACRESCENTAR)
		arc.escrever_linha("\nResultado:", localArquivo)
		arc.escrever_linha("=====================\n", localArquivo)
		arc.fechar_arquivo(localArquivo)
		para(inteiro i = 1; i <=n; i++){
			se(i == 1){
				localArquivo = arc.abrir_arquivo(resultadoCaminho, arc.MODO_ACRESCENTAR)
				triangulo = ty.inteiro_para_cadeia(i, 10)
				escreva(triangulo+"\n")
				arc.escrever_linha(triangulo+"\n", localArquivo)
				arc.fechar_arquivo(localArquivo)
				
			}senao{
				localArquivo = arc.abrir_arquivo(resultadoCaminho, arc.MODO_ACRESCENTAR)
				triangulo += ty.inteiro_para_cadeia(contador+i, 10)
				escreva(triangulo+"\n")
				arc.escrever_linha(triangulo+"\n", localArquivo)
				arc.fechar_arquivo(localArquivo)
			}
		}
	}
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 653; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */