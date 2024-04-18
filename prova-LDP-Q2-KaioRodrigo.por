programa
{
	/*	Escreva um progama que faça a tabuada de um número n e mostre no terminal e salve a resposta no arquivo
	*	resultado.txt
	*/

	inclua biblioteca Tipos --> ty
	inclua biblioteca Arquivos --> arc
	
	const cadeia resultadoCaminho = "C:/Users/Aluno/Documents/aluno1/Prova-LDP-18-04-2024/resultado.txt"
	
	/*cadeia matriz[5][2], nomeAluno = "KAIO RODRIGO FERREIRA DOS SANTOS",
	nomeProfessor = "LUCAS FRANCISCO PAIXAO DE GOIS", unidadeCurricular ="LÓGICA DE PROGRAMAÇÃO",
	data = ty.inteiro_para_cadeia(cad.dia_mes_atual(),10) + "/" + cad.mes_atual() + "/" + cad.ano_atual(),
	coluna1, coluna2*/
	real n
	inteiro localArquivo, contador = 11, resultado
	cadeia textos, resultadoTexto
	
	funcao inicio()
	{	
		escreva("Informe o número desejado\n: ")
			leia(n)
		localArquivo = arc.abrir_arquivo(resultadoCaminho, arc.MODO_ACRESCENTAR)
		arc.escrever_linha("\nResultado:", localArquivo)
		arc.escrever_linha("=====================\n", localArquivo)
		arc.fechar_arquivo(localArquivo)
		multiplicacao(n)
		localArquivo = arc.abrir_arquivo(resultadoCaminho, arc.MODO_ACRESCENTAR)
		arc.escrever_linha("=====================\n", localArquivo)
		arc.fechar_arquivo(localArquivo)
	}
	funcao real multiplicacao(real n){
			para(inteiro i = 0; i < contador-9; i++){
				resultado = n*i
				localArquivo = arc.abrir_arquivo(resultadoCaminho, arc.MODO_ACRESCENTAR)
				arc.escrever_linha("| "+n+"  x  "+i+" | = |   "+resultado+" |\n", localArquivo)
				arc.fechar_arquivo(localArquivo)
			}
			para(inteiro i = 3; i < contador-1; i++){
				resultado = n*i
				localArquivo = arc.abrir_arquivo(resultadoCaminho, arc.MODO_ACRESCENTAR)
				arc.escrever_linha("| "+n+"  x  "+i+" | = |  "+resultado+" |\n", localArquivo)
				arc.fechar_arquivo(localArquivo)
			}
			para(inteiro i = 10; i < contador; i++){
				resultado = n*i
				localArquivo = arc.abrir_arquivo(resultadoCaminho, arc.MODO_ACRESCENTAR)
				arc.escrever_linha("| "+n+"  x "+i+" | = |  "+resultado+" |\n",localArquivo)
				arc.fechar_arquivo(localArquivo)
			}
	
		retorne n
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1542; 
 * @DOBRAMENTO-CODIGO = [33];
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */