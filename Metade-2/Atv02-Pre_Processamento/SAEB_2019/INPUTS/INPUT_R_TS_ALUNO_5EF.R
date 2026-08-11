# /***************************************************************************************/
# /*  INEP/Daeb-Diretoria de Avaliação da Educação Básica                                */ 
# /*                                   			                                             */
# /*  Coordenação-Geral de Instrumentos de Medidas                                       */
# /*-------------------------------------------------------------------------------------*/
# /*  PROGRAMA:                                                                          */
# /*               INPUT_R_TS_ALUNO_5EF                                                  */
# /*-------------------------------------------------------------------------------------*/
# /* DESCRICAO:     PROGRAMA PARA LEITURA DOS RESULTADOS DOS ALUNOS DO                   */
# /*                     5º ANO DO ENSINO FUNDAMENTAL DO SAEB 2019                       */
# /***************************************************************************************/
# /***************************************************************************************/
# /* Obs:                                                                                */
# /* 		                                                                                 */
# /* Para abrir os microdados, é necessário salvar este programa e o arquivo             */
# /* TS_ALUNO_5EF.CSV no diretório C:\ do computador.	                                   */
# /*							                                                                       */ 
# /* Ao terminar esses procedimentos, execute o programa salvo utilizando                */
# /* as variáveis de interesse.                                                          */
# /***************************************************************************************/
# /*                                  ATENÇÃO                                            */ 
# /***************************************************************************************/
# /* Este programa abre a base de dados com os rótulos das variáveis de	                 */
# /* acordo com o dicionário de dados que compõe os microdados. Para abrir               */
# /* os dados sem os rótulos, basta importar diretamente no R, executando                */
# /* o programa apenas até a carga dos microdados.                                       */
# /* 							                                                                       */                                                         
# /***************************************************************************************/;
# 
# --------------------
# Intalação do pacote Data.Table
# (Se não estiver instalado 
# --------------------
 if(!require(data.table)){install.packages('data.table')}

#--------------------
# Caso deseje trocar o local do arquivo, edite a função setwd() a seguir
# informando o local do arquivo.
# Ex. Windows setwd("C:/temp")
#     Linux   setwd("/home")
#--------------------
setwd('C:/')

#---------------
# Alocação de memória
#---------------
memory.limit(24576)

#------------------
# Carga dos microdados

TS_ALUNO_5EF <- data.table::fread(input='TS_ALUNO_5EF.csv',integer64='character')

# A script a seguir formata os rótulos das variáveis
# Para formatar um item retire o caracter de comentário (#) no início na linha desejada 
# (Para retirar o caracter de comentário de várias linhas de uma só vez, selecione as linhas desejadas e tecle ctrl+shift+c)
#---------------------------

# TS_ALUNO_5EF$ID_REGIAO <- factor (TS_ALUNO_5EF$ID_REGIAO, levels = c (1,2,3,4,5),
#                                   labels = c( 'Norte', 'Nordeste', 'Sudeste', 'Sul', 'Centro-Oeste'))
# 
# TS_ALUNO_5EF$ID_UF <- factor (TS_ALUNO_5EF$ID_UF, levels = c (11,12,13,14,15,16,17,21,22,23,24,25,26,27,28,29,31,32,33,35,41,42,43,50,51,52,53),
#                               labels = c( 'RO', 'AC', 'AM', 'RR', 'PA', 'AP', 'TO', 'MA', 'PI', 'CE', 'RN', 'PB', 'PE', 'AL', 'SE', 'BA', 'MG', 'ES', 'RJ', 'SP', 'PR', 'SC', 'RS', 'MS', 'MT', 'GO', 'DF'))
# 
# TS_ALUNO_5EF$ID_AREA <- factor (TS_ALUNO_5EF$ID_AREA, levels = c (1,2),
#                                 labels = c( 'Capital', 'Interior'))
# 
# TS_ALUNO_5EF$IN_PUBLICA <- factor (TS_ALUNO_5EF$IN_PUBLICA,levels = c (0, 1),	
#                                          labels = c('Não pública', 'Pública'))
# 
# TS_ALUNO_5EF$ID_LOCALIZACAO <- factor (TS_ALUNO_5EF$ID_LOCALIZACAO, levels = c (1,2),
#                                        labels = c( 'Urbana', 'Rural'))
# 
# TS_ALUNO_5EF$ID_SERIE <- factor (TS_ALUNO_5EF$ID_SERIE, levels = c (5),
#                                  labels = c( '5º ano Ensino Fundamental'))
# 
# TS_ALUNO_5EF$IN_SITUACAO_CENSO <- factor (TS_ALUNO_5EF$IN_SITUACAO_CENSO, levels = c (0,1),
#                                           labels = c( 'Não consistente', 'Consistente'))
# 
# TS_ALUNO_5EF$IN_PREENCHIMENTO_LP <- factor (TS_ALUNO_5EF$IN_PREENCHIMENTO_LP, levels = c (0,1),
#                                             labels = c( 'Prova não preenchida', 'Prova preenchida'))
# 
# TS_ALUNO_5EF$IN_PREENCHIMENTO_MT <- factor (TS_ALUNO_5EF$IN_PREENCHIMENTO_MT, levels = c (0,1),
#                                             labels = c( 'Prova não preenchida', 'Prova preenchida'))
# 
# TS_ALUNO_5EF$IN_PRESENCA_LP <- factor (TS_ALUNO_5EF$IN_PRESENCA_LP, levels = c (0,1),
#                                        labels = c( 'Ausente', 'Presente'))
# 
# TS_ALUNO_5EF$IN_PRESENCA_MT <- factor (TS_ALUNO_5EF$IN_PRESENCA_MT, levels = c (0,1),
#                                        labels = c( 'Ausente', 'Presente'))
# 
# TS_ALUNO_5EF$IN_PROFICIENCIA_LP <- factor (TS_ALUNO_5EF$IN_PROFICIENCIA_LP, levels = c (0,1),
#                                            labels = c( 'Não', 'Sim'))
# 
# TS_ALUNO_5EF$IN_PROFICIENCIA_MT <- factor (TS_ALUNO_5EF$IN_PROFICIENCIA_MT, levels = c (0,1),
#                                            labels = c( 'Não', 'Sim'))
# 
# TS_ALUNO_5EF$IN_AMOSTRA <- factor (TS_ALUNO_5EF$IN_AMOSTRA, levels = c (0,1),
#                                    labels = c( 'Não' , 'Sim'))
# 
# TS_ALUNO_5EF$IN_PREENCHIMENTO_QUESTIONARIO <- factor (TS_ALUNO_5EF$IN_PREENCHIMENTO_QUESTIONARIO, levels = c (0,1),
#                                                       labels = c( 'Não preenchido', 'Preenchido parcial ou totalmente'))
# 
# TS_ALUNO_5EF$TX_RESP_Q001 <- factor (TS_ALUNO_5EF$TX_RESP_Q001, levels = c ('A','B','C','*','.'),
#                                      labels = c( 'Português.' , 'Espanhol.', 'Outra lingua.', 'Dupla marcação.', 'Em branco.'))
# 
# TS_ALUNO_5EF$TX_RESP_Q002 <- factor (TS_ALUNO_5EF$TX_RESP_Q002, levels = c ('A','B','C','D','E','F','*','.'),
#                                      labels = c( 'Branca.', 'Preta.', 'Parda.', 'Amarela.', 'Indígena.', 'Não quero declarar.', 'Dupla marcação.', 'Em branco.'))
# 
# TS_ALUNO_5EF$TX_RESP_Q003A <- factor (TS_ALUNO_5EF$TX_RESP_Q003A, levels = c ('A','B','*','.'),
#                                       labels = c( 'Não.', 'Sim.', 'Dupla marcação.', 'Em branco.'))
# 
# TS_ALUNO_5EF$TX_RESP_Q003B <- factor (TS_ALUNO_5EF$TX_RESP_Q003B, levels = c ('A','B','*','.'),
#                                       labels = c( 'Não.', 'Sim.', 'Dupla marcação.', 'Em branco.'))
# 
# TS_ALUNO_5EF$TX_RESP_Q003C <- factor (TS_ALUNO_5EF$TX_RESP_Q003C, levels = c ('A','B','*','.'),
#                                       labels = c( 'Não.', 'Sim.', 'Dupla marcação.', 'Em branco.'))
# 
# TS_ALUNO_5EF$TX_RESP_Q003D <- factor (TS_ALUNO_5EF$TX_RESP_Q003D, levels = c ('A','B','*','.'),
#                                       labels = c( 'Não.', 'Sim.', 'Dupla marcação.', 'Em branco.'))
# 
# TS_ALUNO_5EF$TX_RESP_Q003E <- factor (TS_ALUNO_5EF$TX_RESP_Q003E, levels = c ('A','B','*','.'),
#                                       labels = c( 'Não.', 'Sim.', 'Dupla marcação.', 'Em branco.'))
# 
# TS_ALUNO_5EF$TX_RESP_Q004 <- factor (TS_ALUNO_5EF$TX_RESP_Q004, levels = c ('A','B','C','D','E','F','*','.'),
#                                      labels = c( 'Não completou o 5º ano do Ensino Fundamental.' , 'Ensino Fundamental, até o 5º ano.' , 'Ensino Fundamental completo.' , 'Ensino Médio completo.' , 'Ensino Superior completo (faculdade ou graduação).' , 'Não sei.', 'Dupla marcação.', 'Em branco.'))
# 
# TS_ALUNO_5EF$TX_RESP_Q005 <- factor (TS_ALUNO_5EF$TX_RESP_Q005, levels = c ('A','B','C','D','E','F','*','.'),
#                                      labels = c( 'Não completou o 5º ano do Ensino Fundamental.' , 'Ensino Fundamental, até o 5º ano.' , 'Ensino Fundamental completo.' , 'Ensino Médio completo.' , 'Ensino Superior completo (faculdade ou graduação).' , 'Não sei.', 'Dupla marcação.', 'Em branco.'))
# 
# TS_ALUNO_5EF$TX_RESP_Q006A <- factor (TS_ALUNO_5EF$TX_RESP_Q006A, levels = c ('A','B','C','*','.'),
#                                       labels = c( 'Nunca ou quase nunca.' , 'De vez em quando.' , 'Sempre ou quase sempre.', 'Dupla marcação.', 'Em branco.'))
# 
# TS_ALUNO_5EF$TX_RESP_Q006B <- factor (TS_ALUNO_5EF$TX_RESP_Q006B, levels = c ('A','B','C','*','.'),
#                                       labels = c( 'Nunca ou quase nunca.' , 'De vez em quando.' , 'Sempre ou quase sempre.', 'Dupla marcação.', 'Em branco.' ))
# 
# TS_ALUNO_5EF$TX_RESP_Q006C <- factor (TS_ALUNO_5EF$TX_RESP_Q006C, levels = c ('A','B','C','*','.'),
#                                       labels = c( 'Nunca ou quase nunca.' , 'De vez em quando.' , 'Sempre ou quase sempre.', 'Dupla marcação.', 'Em branco.' ))
# 
# TS_ALUNO_5EF$TX_RESP_Q006D <- factor (TS_ALUNO_5EF$TX_RESP_Q006D, levels = c ('A','B','C','*','.'),
#                                       labels = c( 'Nunca ou quase nunca.' , 'De vez em quando.' , 'Sempre ou quase sempre.', 'Dupla marcação.', 'Em branco.' ))
# 
# TS_ALUNO_5EF$TX_RESP_Q006E <- factor (TS_ALUNO_5EF$TX_RESP_Q006E, levels = c ('A','B','C','*','.'),
#                                       labels = c( 'Nunca ou quase nunca.' , 'De vez em quando.' , 'Sempre ou quase sempre.', 'Dupla marcação.', 'Em branco.' ))
# 
# TS_ALUNO_5EF$TX_RESP_Q007 <- factor (TS_ALUNO_5EF$TX_RESP_Q007, levels = c ('A','B','C','*','.'),
#                                      labels = c( 'Nunca ou quase nunca.' , 'De vez em quando (uma vez por semana, a cada quinze dias etc.).' , 'Sempre ou quase sempre (ex.: três ou mais dias por semana).', 'Dupla marcação.', 'Em branco.' ))
# 
# TS_ALUNO_5EF$TX_RESP_Q008A <- factor (TS_ALUNO_5EF$TX_RESP_Q008A, levels = c ('A','B','*','.'),
#                                       labels = c( 'Não.', 'Sim.', 'Dupla marcação.', 'Em branco.'))
# 
# TS_ALUNO_5EF$TX_RESP_Q008B <- factor (TS_ALUNO_5EF$TX_RESP_Q008B, levels = c ('A','B','*','.'),
#                                       labels = c( 'Não.', 'Sim.', 'Dupla marcação.', 'Em branco.'))
# 
# TS_ALUNO_5EF$TX_RESP_Q008C <- factor (TS_ALUNO_5EF$TX_RESP_Q008C, levels = c ('A','B','*','.'),
#                                       labels = c( 'Não.', 'Sim.', 'Dupla marcação.', 'Em branco.'))
# 
# TS_ALUNO_5EF$TX_RESP_Q009A <- factor (TS_ALUNO_5EF$TX_RESP_Q009A, levels = c ('A','B','C','D','*','.'),
#                                       labels = c( 'Nenhum.' , '1.' , '2.' , '3 ou mais.', 'Dupla marcação.', 'Em branco.' ))
# 
# TS_ALUNO_5EF$TX_RESP_Q009B <- factor (TS_ALUNO_5EF$TX_RESP_Q009B, levels = c ('A','B','C','D','*','.'),
#                                       labels = c( 'Nenhum.' , '1.' , '2.' , '3 ou mais.', 'Dupla marcação.', 'Em branco.' ))
# 
# TS_ALUNO_5EF$TX_RESP_Q009C <- factor (TS_ALUNO_5EF$TX_RESP_Q009C, levels = c ('A','B','C','D','*','.'),
#                                       labels = c( 'Nenhum.' , '1.' , '2.' , '3 ou mais.', 'Dupla marcação.', 'Em branco.' ))
# 
# TS_ALUNO_5EF$TX_RESP_Q009D <- factor (TS_ALUNO_5EF$TX_RESP_Q009D, levels = c ('A','B','C','D','*','.'),
#                                       labels = c( 'Nenhum.' , '1.' , '2.' , '3 ou mais.', 'Dupla marcação.', 'Em branco.' ))
# 
# TS_ALUNO_5EF$TX_RESP_Q009E <- factor (TS_ALUNO_5EF$TX_RESP_Q009E, levels = c ('A','B','C','D','*','.'),
#                                       labels = c( 'Nenhum.' , '1.' , '2.' , '3 ou mais.', 'Dupla marcação.', 'Em branco.' ))
# 
# TS_ALUNO_5EF$TX_RESP_Q009F <- factor (TS_ALUNO_5EF$TX_RESP_Q009F, levels = c ('A','B','C','D','*','.'),
#                                       labels = c( 'Nenhum.' , '1.' , '2.' , '3 ou mais.', 'Dupla marcação.', 'Em branco.' ))
# 
# TS_ALUNO_5EF$TX_RESP_Q009G <- factor (TS_ALUNO_5EF$TX_RESP_Q009G, levels = c ('A','B','C','D','*','.'),
#                                       labels = c( 'Nenhum.' , '1.' , '2.' , '3 ou mais.', 'Dupla marcação.', 'Em branco.' ))
# 
# TS_ALUNO_5EF$TX_RESP_Q010A <- factor (TS_ALUNO_5EF$TX_RESP_Q010A, levels = c ('A','B','*','.'),
#                                       labels = c( 'Não.', 'Sim.', 'Dupla marcação.', 'Em branco.'))
# 
# TS_ALUNO_5EF$TX_RESP_Q010B <- factor (TS_ALUNO_5EF$TX_RESP_Q010B, levels = c ('A','B','*','.'),
#                                       labels = c( 'Não.', 'Sim.', 'Dupla marcação.', 'Em branco.'))
# 
# TS_ALUNO_5EF$TX_RESP_Q010C <- factor (TS_ALUNO_5EF$TX_RESP_Q010C, levels = c ('A','B','*','.'),
#                                       labels = c( 'Não.', 'Sim.', 'Dupla marcação.', 'Em branco.'))
# 
# TS_ALUNO_5EF$TX_RESP_Q010D <- factor (TS_ALUNO_5EF$TX_RESP_Q010D, levels = c ('A','B','*','.'),
#                                       labels = c( 'Não.', 'Sim.', 'Dupla marcação.', 'Em branco.'))
# 
# TS_ALUNO_5EF$TX_RESP_Q010E <- factor (TS_ALUNO_5EF$TX_RESP_Q010E, levels = c ('A','B','*','.'),
#                                       labels = c( 'Não.', 'Sim.', 'Dupla marcação.', 'Em branco.'))
# 
# TS_ALUNO_5EF$TX_RESP_Q010F <- factor (TS_ALUNO_5EF$TX_RESP_Q010F, levels = c ('A','B','*','.'),
#                                       labels = c( 'Não.', 'Sim.', 'Dupla marcação.', 'Em branco.'))
# 
# TS_ALUNO_5EF$TX_RESP_Q010G <- factor (TS_ALUNO_5EF$TX_RESP_Q010G, levels = c ('A','B','*','.'),
#                                       labels = c( 'Não.', 'Sim.', 'Dupla marcação.', 'Em branco.'))
# 
# TS_ALUNO_5EF$TX_RESP_Q010H <- factor (TS_ALUNO_5EF$TX_RESP_Q010H, levels = c ('A','B','*','.'),
#                                       labels = c( 'Não.', 'Sim.', 'Dupla marcação.', 'Em branco.'))
# 
# TS_ALUNO_5EF$TX_RESP_Q010I <- factor (TS_ALUNO_5EF$TX_RESP_Q010I, levels = c ('A','B','*','.'),
#                                       labels = c( 'Não.', 'Sim.', 'Dupla marcação.', 'Em branco.'))
# 
# TS_ALUNO_5EF$TX_RESP_Q011 <- factor (TS_ALUNO_5EF$TX_RESP_Q011, levels = c ('A','B','C','*','.'),
#                                      labels = c( 'Menos de 30 minutos.' , 'Entre 30 minutos e uma hora.' , 'Mais de uma hora.', 'Dupla marcação.', 'Em branco.'))
# 
# TS_ALUNO_5EF$TX_RESP_Q012 <- factor (TS_ALUNO_5EF$TX_RESP_Q012, levels = c ('A','B','C','D','E','F','G','*','.'),
#                                      labels = c( 'À pé.' , 'De ônibus urbano.' , 'De transporte escolar.' , 'De barco.' , 'De bicicleta.', 'De carro.' , 'Outros meios de transporte.', 'Dupla marcação.', 'Em branco.'))
# 
# TS_ALUNO_5EF$TX_RESP_Q013 <- factor (TS_ALUNO_5EF$TX_RESP_Q013, levels = c ('A','B','C','D','*','.'),
#                                      labels = c(  '3 anos ou menos.' , '4 ou 5 anos.' , '6 ou 7 anos.' , '8 anos ou mais.', 'Dupla marcação.', 'Em branco.'))
# 
# TS_ALUNO_5EF$TX_RESP_Q014 <- factor (TS_ALUNO_5EF$TX_RESP_Q014, levels = c ('A','B','C','*','.'),
#                                      labels = c( 'Somente em escola pública.' , 'Somente em escola particular.' , 'Em escola pública e em escola particular.', 'Dupla marcação.', 'Em branco.'))
# 
# TS_ALUNO_5EF$TX_RESP_Q015 <- factor (TS_ALUNO_5EF$TX_RESP_Q015, levels = c ('A','B','C','*','.'),
#                                      labels = c( 'Não.' , 'Sim, uma vez.' , 'Sim, duas vezes ou mais.', 'Dupla marcação.', 'Em branco.'))
# 
# TS_ALUNO_5EF$TX_RESP_Q016 <- factor (TS_ALUNO_5EF$TX_RESP_Q016, levels = c ('A','B','C','*','.'),
#                                      labels = c( 'Nunca.' , 'Sim, uma vez.' , 'Sim, duas vezes ou mais.', 'Dupla marcação.', 'Em branco.'))
# 
# TS_ALUNO_5EF$TX_RESP_Q017A <- factor (TS_ALUNO_5EF$TX_RESP_Q017A, levels = c ('A','B','C','D','*','.'),
#                                       labels = c( 'Não uso meu tempo para isso.' , 'Menos de 1 hora.' , 'Entre 1 e 2 horas.' , 'Mais de 2 horas.', 'Dupla marcação.', 'Em branco.' ))
# 
# TS_ALUNO_5EF$TX_RESP_Q017B <- factor (TS_ALUNO_5EF$TX_RESP_Q017B, levels = c ('A','B','C','D','*','.'),
#                                       labels = c( 'Não uso meu tempo para isso.' , 'Menos de 1 hora.' , 'Entre 1 e 2 horas.' , 'Mais de 2 horas.', 'Dupla marcação.', 'Em branco.' ))
# 
# TS_ALUNO_5EF$TX_RESP_Q017C <- factor (TS_ALUNO_5EF$TX_RESP_Q017C, levels = c ('A','B','C','D','*','.'),
#                                       labels = c( 'Não uso meu tempo para isso.' , 'Menos de 1 hora.' , 'Entre 1 e 2 horas.' , 'Mais de 2 horas.', 'Dupla marcação.', 'Em branco.' ))
# 
# TS_ALUNO_5EF$TX_RESP_Q017D <- factor (TS_ALUNO_5EF$TX_RESP_Q017D, levels = c ('A','B','C','D','*','.'),
#                                       labels = c( 'Não uso meu tempo para isso.' , 'Menos de 1 hora.' , 'Entre 1 e 2 horas.' , 'Mais de 2 horas.', 'Dupla marcação.', 'Em branco.' ))
# 
# TS_ALUNO_5EF$TX_RESP_Q017E <- factor (TS_ALUNO_5EF$TX_RESP_Q017E, levels = c ('A','B','C','D','*','.'),
#                                       labels = c( 'Não uso meu tempo para isso.' , 'Menos de 1 hora.' , 'Entre 1 e 2 horas.' , 'Mais de 2 horas.', 'Dupla marcação.', 'Em branco.' ))
# 
# TS_ALUNO_5EF$TX_RESP_Q018A <- factor (TS_ALUNO_5EF$TX_RESP_Q018A, levels = c ('A','B','C','*','.'),
#                                       labels = c( 'Nunca ou quase nunca.' , 'De vez em quando.' , 'Sempre ou quase sempre.', 'Dupla marcação.', 'Em branco.'))
# 
# TS_ALUNO_5EF$TX_RESP_Q018B <- factor (TS_ALUNO_5EF$TX_RESP_Q018B, levels = c ('A','B','C','*','.'),
#                                       labels = c( 'Nunca ou quase nunca.' , 'De vez em quando.' , 'Sempre ou quase sempre.', 'Dupla marcação.', 'Em branco.'))
# 
# TS_ALUNO_5EF$TX_RESP_Q018C <- factor (TS_ALUNO_5EF$TX_RESP_Q018C, levels = c ('A','B','C','*','.'),
#                                       labels = c( 'Nunca ou quase nunca.' , 'De vez em quando.' , 'Sempre ou quase sempre.', 'Dupla marcação.', 'Em branco.'))
