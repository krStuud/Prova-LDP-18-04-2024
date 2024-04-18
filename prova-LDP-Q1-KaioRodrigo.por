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

	cadeia matriz[5][2], nomeAluno = "KAIO RODRIGO FERREIRA DOS SANTOS",
	nomeProfessor = "LUCAS FRANCISCO PAIXAO DE GOIS", unidadeCurricular ="LÓGICA DE PROGRAMAÇÃO",
	data = ""
	real nota
	
	
	funcao inicio()
	{
		escreva("Bem vindo")
		escreva("\nInforme a nota obtida pelo aluno\n: ")
			leia(nota)
		//	Primeira coluna da matriz
			matriz[0][0]= "|   Aluno   | "
			matriz[1][0]= "| Professor | "
			matriz[2][0]= "| Disciplina| "
			matriz[3][0]= "|    Data   | "
			matriz[4][0]= "|    Nota   | "

		//	Segunda coluna da matriz

			matriz[0][1]= nomeAluno
			matriz[1][1]= nomeProfessor
			matriz[2][1]= unidadeCurricular
			matriz[3][1]= ty.inteiro_para_cadeia(cad.dia_mes_atual(),10) + "/" + cad.mes_atual() + "/" + cad.ano_atual()
			matriz[4][1] = ty.inteiro_para_cadeia(nota, 10)
			
			para (inteiro i = 0; i < 5; i++){
			para (inteiro j = 0; j < 2; j++){
				escreva(matriz[i][j])
			}
			escreva("\n")
		}
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 706; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {matriz, 13, 8, 6};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */