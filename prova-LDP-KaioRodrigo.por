programa
{
	/*	Faça uma matriz q grave seu nome e o dia de hoje(pegando pela biblioteca),
	*	o nome do professor e da disciplina, de forma já preenchida. E por fim, na última linha
	*	da matriz pegue a nota que será atribuida pela professor, após a execução doa outras duas questões 
	*	abaixo que deverão utilizar o mesmo arquivo. e receba a nota do professor pelo teclado e salve isso
	*	no mesmo arquivo e matriz das próximas questões.
	*/

	inclua biblioteca Calendario --> cad
	inclua biblioteca Tipos --> ty
	inclua biblioteca Arquivos --> arc
	
	const cadeia resultadoCaminho = "C:/Users/Aluno/Documents/aluno1/Prova-LDP-18-04-2024/resultado.txt"
	
	cadeia matriz[5][2], nomeAluno = "KAIO RODRIGO FERREIRA DOS SANTOS",
	nomeProfessor = "LUCAS FRANCISCO PAIXAO DE GOIS", unidadeCurricular ="LÓGICA DE PROGRAMAÇÃO",
	data = ty.inteiro_para_cadeia(cad.dia_mes_atual(),10) + "/" + cad.mes_atual() + "/" + cad.ano_atual(),
	coluna1, coluna2
	real nota
	inteiro localArquivo 
	
	funcao inicio()
	{
		escreva("============Bem Vindo==============")
		escreva("\nInforme a nota obtida pelo aluno\n: ")
			leia(nota)
		enquanto(nota < 0.0 ou nota > 10.0){
			escreva("\nNOTA INVÁLIDA! Digite uma nota válida\n:")
			leia(nota)
		}
		escreva("\n")
		//	Primeira coluna da matriz
		matriz[0][0]= "|    Aluno   | "
		matriz[1][0]= "| Professor  | "
		matriz[2][0]= "| Disciplina | "
		matriz[3][0]= "|    Data    | "
		matriz[4][0]= "|    Nota    | "

		//	Segunda coluna da matriz
		matriz[0][1]= nomeAluno
		matriz[1][1]= nomeProfessor
		matriz[2][1]= unidadeCurricular
		matriz[3][1]= data
		matriz[4][1] = ty.real_para_cadeia(nota)
		
		para (inteiro i = 0; i < 5; i++){
			para (inteiro j = 0; j < 2; j++){
				escreva(matriz[i][j])
			}
			escreva("\n")
		}

		localArquivo = arc.abrir_arquivo(resultadoCaminho, arc.MODO_ACRESCENTAR)
		cadeia aux = " =============================================="
		arc.escrever_linha(aux, localArquivo)
		para (inteiro i = 0; i < 5; i++){
			coluna1 = matriz[i][0]
			coluna2 = matriz[i][1]
			arc.escrever_linha(coluna1+coluna2, localArquivo)
		}
		arc.escrever_linha(aux, localArquivo)
	}

}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 2005; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {matriz, 16, 8, 6};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */