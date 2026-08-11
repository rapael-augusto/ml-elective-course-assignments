# /***************************************************************************************/
# /*  INEP/Daeb-Diretoria de Avaliação da Educação Básica                                */ 
# /*                                   			                                             */
# /*  Coordenação-Geral de Instrumentos de Medidas                                       */
# /*-------------------------------------------------------------------------------------*/
# /*  PROGRAMA:                                                                          */
# /*               INPUT_R_TS_SECRETARIO_MUNICIPAL                                       */
# /*-------------------------------------------------------------------------------------*/
# /*  DESCRICAO:   PROGRAMA PARA LEITURA DO QUESTIONÁRIO DO SECRETARIO                   */
# /*               MUNICIPAL DE EDUCAÇÃO DO SAEB 2019                                    */
# /*                                                                                     */
# /***************************************************************************************/
# /* Obs:                                                                                */
# /* 		                                                                                 */
# /* Para abrir os microdados, é necessário salvar este programa e o arquivo             */
# /* TS_SECRETARIO_MUNICIPAL.CSV no diretório C:\ do computador.	                       */
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
setwd('c:/') 

#---------------
# Alocação de memória
#---------------
memory.limit(24576)

#------------------
# Carga dos microdados

TS_SECRETARIO_MUNICIPAL <- data.table::fread(input='TS_SECRETARIO_MUNICIPAL.csv',integer64='character')

# A script a seguir formata os rótulos das variáveis
# Para formatar um item retire o caracter de comentário (#) no início na linha desejada 
# (Para retirar o caracter de comentário de várias linhas de uma só vez, selecione as linhas desejadas e tecle ctrl+shift+c)
#---------------------------

# TS_SECRETARIO_MUNICIPAL$ID_REGIAO <- factor (TS_SECRETARIO_MUNICIPAL$ID_REGIAO, levels = c (1,2,3,4,5),
#                                   labels = c( 'Norte', 'Nordeste', 'Sudeste', 'Sul', 'Centro-Oeste'))
# 
# TS_SECRETARIO_MUNICIPAL$ID_UF <- factor (TS_SECRETARIO_MUNICIPAL$ID_UF, levels = c (11,12,13,14,15,16,17,21,22,23,24,25,26,27,28,29,31,32,33,35,41,42,43,50,51,52,53),
#                               labels = c( 'RO', 'AC', 'AM', 'RR', 'PA', 'AP', 'TO', 'MA', 'PI', 'CE', 'RN', 'PB', 'PE', 'AL', 'SE', 'BA', 'MG', 'ES', 'RJ', 'SP', 'PR', 'SC', 'RS', 'MS', 'MT', 'GO', 'DF'))
#
# TS_SECRETARIO_MUNICIPAL$ID_AREA <- factor (TS_SECRETARIO_MUNICIPAL$ID_AREA,levels = c (1,2),	
#                               labels = c( 'Capital', 'Interior'))
# 
# TS_SECRETARIO_MUNICIPAL$TX_RESP_Q019 <- factor (TS_SECRETARIO_MUNICIPAL$TX_RESP_Q019, levels = c ('A','B'),
#                                             labels = c('Sim','Não'))
# 
# TS_SECRETARIO_MUNICIPAL$TX_RESP_Q020 <- factor (TS_SECRETARIO_MUNICIPAL$TX_RESP_Q020, levels = c ('A','B'),
#                                             labels = c('Sim','Não'))
# 
# TS_SECRETARIO_MUNICIPAL$TX_RESP_Q021 <- factor (TS_SECRETARIO_MUNICIPAL$TX_RESP_Q021, levels = c ('A','B'),
#                                             labels = c('Sim','Não'))
# 
# TS_SECRETARIO_MUNICIPAL$TX_RESP_Q025 <- factor (TS_SECRETARIO_MUNICIPAL$TX_RESP_Q025, levels = c ('A','B'),
#                                             labels = c('Sim','Não'))
# 
# TS_SECRETARIO_MUNICIPAL$TX_RESP_Q026 <- factor (TS_SECRETARIO_MUNICIPAL$TX_RESP_Q026, levels = c ('A','B'),
#                                             labels = c('Sim','Não'))
# 
# TS_SECRETARIO_MUNICIPAL$TX_RESP_Q027 <- factor (TS_SECRETARIO_MUNICIPAL$TX_RESP_Q027, levels = c ('A','B'),
#                                             labels = c('Sim','Não'))
# 
# TS_SECRETARIO_MUNICIPAL$TX_RESP_Q028 <- factor (TS_SECRETARIO_MUNICIPAL$TX_RESP_Q028, levels = c ('A','B'),
#                                             labels = c('Sim','Não'))
# 
# TS_SECRETARIO_MUNICIPAL$TX_RESP_Q029 <- factor (TS_SECRETARIO_MUNICIPAL$TX_RESP_Q029, levels = c ('A','B'),
#                                             labels = c('Sim','Não'))
# 
# TS_SECRETARIO_MUNICIPAL$TX_RESP_Q030 <- factor (TS_SECRETARIO_MUNICIPAL$TX_RESP_Q030, levels = c ('A','B'),
#                                             labels = c('Sim','Não'))
# 
# TS_SECRETARIO_MUNICIPAL$TX_RESP_Q031 <- factor (TS_SECRETARIO_MUNICIPAL$TX_RESP_Q031, levels = c ('A','B'),
#                                             labels = c('Sim','Não'))
# 
# TS_SECRETARIO_MUNICIPAL$TX_RESP_Q032 <- factor (TS_SECRETARIO_MUNICIPAL$TX_RESP_Q032, levels = c ('A','B'),
#                                             labels = c('Sim','Não'))
# 
# TS_SECRETARIO_MUNICIPAL$TX_RESP_Q033 <- factor (TS_SECRETARIO_MUNICIPAL$TX_RESP_Q033, levels = c ('A','B'),
#                                             labels = c('Sim','Não'))
# 
# TS_SECRETARIO_MUNICIPAL$TX_RESP_Q034 <- factor (TS_SECRETARIO_MUNICIPAL$TX_RESP_Q034, levels = c ('A','B'),
#                                             labels = c('Sim','Não'))
# 
# TS_SECRETARIO_MUNICIPAL$TX_RESP_Q035 <- factor (TS_SECRETARIO_MUNICIPAL$TX_RESP_Q035, levels = c ('A','B'),
#                                             labels = c('Sim','Não'))
# 
# TS_SECRETARIO_MUNICIPAL$TX_RESP_Q036 <- factor (TS_SECRETARIO_MUNICIPAL$TX_RESP_Q036, levels = c ('A','B'),
#                                             labels = c('Sim','Não'))
# 
# TS_SECRETARIO_MUNICIPAL$TX_RESP_Q037 <- factor (TS_SECRETARIO_MUNICIPAL$TX_RESP_Q037, levels = c ('A','B'),
#                                             labels = c('Sim','Não'))
# 
# TS_SECRETARIO_MUNICIPAL$TX_RESP_Q038 <- factor (TS_SECRETARIO_MUNICIPAL$TX_RESP_Q038, levels = c ('A','B'),
#                                             labels = c('Sim','Não'))
# 
# TS_SECRETARIO_MUNICIPAL$TX_RESP_Q039 <- factor (TS_SECRETARIO_MUNICIPAL$TX_RESP_Q039, levels = c ('A','B'),
#                                             labels = c('Sim','Não'))
# 
# TS_SECRETARIO_MUNICIPAL$TX_RESP_Q040 <- factor (TS_SECRETARIO_MUNICIPAL$TX_RESP_Q040, levels = c ('A','B'),
#                                             labels = c('Sim','Não'))
# 
# TS_SECRETARIO_MUNICIPAL$TX_RESP_Q041 <- factor (TS_SECRETARIO_MUNICIPAL$TX_RESP_Q041, levels = c ('A','B'),
#                                             labels = c('Sim','Não'))
# 
# TS_SECRETARIO_MUNICIPAL$TX_RESP_Q042 <- factor (TS_SECRETARIO_MUNICIPAL$TX_RESP_Q042, levels = c ('A','B'),
#                                             labels = c('Sim','Não'))
# 
# TS_SECRETARIO_MUNICIPAL$TX_RESP_Q043 <- factor (TS_SECRETARIO_MUNICIPAL$TX_RESP_Q043, levels = c ('A','B'),
#                                             labels = c('Sim','Não'))
# 
# TS_SECRETARIO_MUNICIPAL$TX_RESP_Q044 <- factor (TS_SECRETARIO_MUNICIPAL$TX_RESP_Q044, levels = c ('A','B'),
#                                             labels = c('Sim','Não'))
# 
# TS_SECRETARIO_MUNICIPAL$TX_RESP_Q045 <- factor (TS_SECRETARIO_MUNICIPAL$TX_RESP_Q045, levels = c ('A','B'),
#                                             labels = c('Sim','Não'))
# 
# TS_SECRETARIO_MUNICIPAL$TX_RESP_Q046 <- factor (TS_SECRETARIO_MUNICIPAL$TX_RESP_Q046, levels = c ('A','B'),
#                                             labels = c('Sim','Não'))
# 
# TS_SECRETARIO_MUNICIPAL$TX_RESP_Q047 <- factor (TS_SECRETARIO_MUNICIPAL$TX_RESP_Q047, levels = c ('A','B'),
#                                             labels = c('Sim','Não'))
# 
# TS_SECRETARIO_MUNICIPAL$TX_RESP_Q048 <- factor (TS_SECRETARIO_MUNICIPAL$TX_RESP_Q048, levels = c ('A','B'),
#                                             labels = c('Sim','Não'))
# 
# TS_SECRETARIO_MUNICIPAL$TX_RESP_Q049 <- factor (TS_SECRETARIO_MUNICIPAL$TX_RESP_Q049, levels = c ('A','B'),
#                                             labels = c('Sim','Não'))
# 
# TS_SECRETARIO_MUNICIPAL$TX_RESP_Q050 <- factor (TS_SECRETARIO_MUNICIPAL$TX_RESP_Q050, levels = c ('A','B'),
#                                             labels = c('Sim','Não'))
# 
# TS_SECRETARIO_MUNICIPAL$TX_RESP_Q051 <- factor (TS_SECRETARIO_MUNICIPAL$TX_RESP_Q051, levels = c ('A','B'),
#                                             labels = c('Sim','Não'))
# 
# TS_SECRETARIO_MUNICIPAL$TX_RESP_Q052 <- factor (TS_SECRETARIO_MUNICIPAL$TX_RESP_Q052, levels = c ('A','B'),
#                                             labels = c('Sim','Não'))
# 
# TS_SECRETARIO_MUNICIPAL$TX_RESP_Q053 <- factor (TS_SECRETARIO_MUNICIPAL$TX_RESP_Q053, levels = c ('A','B'),
#                                             labels = c('Sim','Não'))
# 
# TS_SECRETARIO_MUNICIPAL$TX_RESP_Q054 <- factor (TS_SECRETARIO_MUNICIPAL$TX_RESP_Q054, levels = c ('A','B'),
#                                             labels = c('Sim','Não'))
# 
# TS_SECRETARIO_MUNICIPAL$TX_RESP_Q055 <- factor (TS_SECRETARIO_MUNICIPAL$TX_RESP_Q055, levels = c ('A','B'),
#                                             labels = c('Sim','Não'))
# 
# TS_SECRETARIO_MUNICIPAL$TX_RESP_Q056 <- factor (TS_SECRETARIO_MUNICIPAL$TX_RESP_Q056, levels = c ('A','B'),
#                                             labels = c('Sim','Não'))
# 
# TS_SECRETARIO_MUNICIPAL$TX_RESP_Q057 <- factor (TS_SECRETARIO_MUNICIPAL$TX_RESP_Q057, levels = c ('A','B'),
#                                             labels = c('Sim','Não'))
# 
# TS_SECRETARIO_MUNICIPAL$TX_RESP_Q058 <- factor (TS_SECRETARIO_MUNICIPAL$TX_RESP_Q058, levels = c ('A','B'),
#                                             labels = c('Sim','Não'))
# 
# TS_SECRETARIO_MUNICIPAL$TX_RESP_Q073 <- factor (TS_SECRETARIO_MUNICIPAL$TX_RESP_Q073, levels = c ('A','B'),
#                                             labels = c('Sim','Não'))
# 
# TS_SECRETARIO_MUNICIPAL$TX_RESP_Q075 <- factor (TS_SECRETARIO_MUNICIPAL$TX_RESP_Q075, levels = c ('A','B'),
#                                             labels = c('Sim','Não'))
# 
# TS_SECRETARIO_MUNICIPAL$TX_RESP_Q076 <- factor (TS_SECRETARIO_MUNICIPAL$TX_RESP_Q076, levels = c ('A','B'),
#                                             labels = c('Sim','Não'))
# 
# TS_SECRETARIO_MUNICIPAL$TX_RESP_Q077 <- factor (TS_SECRETARIO_MUNICIPAL$TX_RESP_Q077, levels = c ('A','B'),
#                                             labels = c('Sim','Não'))
# 
# TS_SECRETARIO_MUNICIPAL$TX_RESP_Q078 <- factor (TS_SECRETARIO_MUNICIPAL$TX_RESP_Q078, levels = c ('A','B'),
#                                             labels = c('Sim','Não'))
# 
# TS_SECRETARIO_MUNICIPAL$TX_RESP_Q079 <- factor (TS_SECRETARIO_MUNICIPAL$TX_RESP_Q079, levels = c ('A','B'),
#                                             labels = c('Sim','Não'))
# 
# TS_SECRETARIO_MUNICIPAL$TX_RESP_Q080 <- factor (TS_SECRETARIO_MUNICIPAL$TX_RESP_Q080, levels = c ('A','B'),
#                                             labels = c('Sim','Não'))
# 
# TS_SECRETARIO_MUNICIPAL$TX_RESP_Q081 <- factor (TS_SECRETARIO_MUNICIPAL$TX_RESP_Q081, levels = c ('A','B'),
#                                             labels = c('Sim','Não'))
# 
# TS_SECRETARIO_MUNICIPAL$TX_RESP_Q082 <- factor (TS_SECRETARIO_MUNICIPAL$TX_RESP_Q082, levels = c ('A','B'),
#                                             labels = c('Sim','Não'))
# 
# TS_SECRETARIO_MUNICIPAL$TX_RESP_Q083 <- factor (TS_SECRETARIO_MUNICIPAL$TX_RESP_Q083, levels = c ('A','B'),
#                                             labels = c('Sim','Não'))
# 
# TS_SECRETARIO_MUNICIPAL$TX_RESP_Q084 <- factor (TS_SECRETARIO_MUNICIPAL$TX_RESP_Q084, levels = c ('A','B'),
#                                             labels = c('Sim','Não'))
# 
# TS_SECRETARIO_MUNICIPAL$TX_RESP_Q085 <- factor (TS_SECRETARIO_MUNICIPAL$TX_RESP_Q085, levels = c ('A','B'),
#                                             labels = c('Sim','Não'))
# 
# TS_SECRETARIO_MUNICIPAL$TX_RESP_Q086 <- factor (TS_SECRETARIO_MUNICIPAL$TX_RESP_Q086, levels = c ('A','B'),
#                                             labels = c('Sim','Não'))
# 
# TS_SECRETARIO_MUNICIPAL$TX_RESP_Q087 <- factor (TS_SECRETARIO_MUNICIPAL$TX_RESP_Q087, levels = c ('A','B'),
#                                             labels = c('Sim','Não'))
# 
# TS_SECRETARIO_MUNICIPAL$TX_RESP_Q088 <- factor (TS_SECRETARIO_MUNICIPAL$TX_RESP_Q088, levels = c ('A','B'),
#                                             labels = c('Sim','Não'))
# 
# TS_SECRETARIO_MUNICIPAL$TX_RESP_Q089 <- factor (TS_SECRETARIO_MUNICIPAL$TX_RESP_Q089, levels = c ('A','B'),
#                                             labels = c('Sim','Não'))
# 
# TS_SECRETARIO_MUNICIPAL$TX_RESP_Q090 <- factor (TS_SECRETARIO_MUNICIPAL$TX_RESP_Q090, levels = c ('A','B'),
#                                             labels = c('Sim','Não'))
# 
# TS_SECRETARIO_MUNICIPAL$TX_RESP_Q091 <- factor (TS_SECRETARIO_MUNICIPAL$TX_RESP_Q091, levels = c ('A','B'),
#                                             labels = c('Sim','Não'))
# 
# TS_SECRETARIO_MUNICIPAL$TX_RESP_Q092 <- factor (TS_SECRETARIO_MUNICIPAL$TX_RESP_Q092, levels = c ('A','B'),
#                                             labels = c('Sim','Não'))
# 
# TS_SECRETARIO_MUNICIPAL$TX_RESP_Q093 <- factor (TS_SECRETARIO_MUNICIPAL$TX_RESP_Q093, levels = c ('A','B'),
#                                             labels = c('Sim','Não'))
# 
# TS_SECRETARIO_MUNICIPAL$TX_RESP_Q094 <- factor (TS_SECRETARIO_MUNICIPAL$TX_RESP_Q094, levels = c ('A','B'),
#                                             labels = c('Sim','Não'))
# 
# TS_SECRETARIO_MUNICIPAL$TX_RESP_Q095 <- factor (TS_SECRETARIO_MUNICIPAL$TX_RESP_Q095, levels = c ('A','B'),
#                                             labels = c('Sim','Não'))
# 
# TS_SECRETARIO_MUNICIPAL$TX_RESP_Q096 <- factor (TS_SECRETARIO_MUNICIPAL$TX_RESP_Q096, levels = c ('A','B'),
#                                             labels = c('Sim','Não'))
# 
# TS_SECRETARIO_MUNICIPAL$TX_RESP_Q097 <- factor (TS_SECRETARIO_MUNICIPAL$TX_RESP_Q097, levels = c ('A','B'),
#                                             labels = c('Sim','Não'))
# 
# TS_SECRETARIO_MUNICIPAL$TX_RESP_Q098 <- factor (TS_SECRETARIO_MUNICIPAL$TX_RESP_Q098, levels = c ('A','B'),
#                                             labels = c('Sim','Não'))
# 
# TS_SECRETARIO_MUNICIPAL$TX_RESP_Q099 <- factor (TS_SECRETARIO_MUNICIPAL$TX_RESP_Q099, levels = c ('A','B'),
#                                             labels = c('Sim','Não'))
# 
# TS_SECRETARIO_MUNICIPAL$TX_RESP_Q100 <- factor (TS_SECRETARIO_MUNICIPAL$TX_RESP_Q100, levels = c ('A','B'),
#                                             labels = c('Sim','Não'))
# 
# TS_SECRETARIO_MUNICIPAL$TX_RESP_Q101 <- factor (TS_SECRETARIO_MUNICIPAL$TX_RESP_Q101, levels = c ('A','B'),
#                                             labels = c('Sim','Não'))
# 
# TS_SECRETARIO_MUNICIPAL$TX_RESP_Q102 <- factor (TS_SECRETARIO_MUNICIPAL$TX_RESP_Q102, levels = c ('A','B'),
#                                             labels = c('Sim','Não'))
# 
# TS_SECRETARIO_MUNICIPAL$TX_RESP_Q103 <- factor (TS_SECRETARIO_MUNICIPAL$TX_RESP_Q103, levels = c ('A','B'),
#                                             labels = c('Sim','Não'))
# 
# TS_SECRETARIO_MUNICIPAL$TX_RESP_Q104 <- factor (TS_SECRETARIO_MUNICIPAL$TX_RESP_Q104, levels = c ('A','B'),
#                                             labels = c('Sim','Não'))
# 
# TS_SECRETARIO_MUNICIPAL$TX_RESP_Q105 <- factor (TS_SECRETARIO_MUNICIPAL$TX_RESP_Q105, levels = c ('A','B'),
#                                             labels = c('Sim','Não'))
# 
# TS_SECRETARIO_MUNICIPAL$TX_RESP_Q106 <- factor (TS_SECRETARIO_MUNICIPAL$TX_RESP_Q106, levels = c ('A','B'),
#                                             labels = c('Sim','Não'))
# 
# TS_SECRETARIO_MUNICIPAL$TX_RESP_Q107 <- factor (TS_SECRETARIO_MUNICIPAL$TX_RESP_Q107, levels = c ('A','B'),
#                                             labels = c('Sim','Não'))
# 
# TS_SECRETARIO_MUNICIPAL$TX_RESP_Q108 <- factor (TS_SECRETARIO_MUNICIPAL$TX_RESP_Q108, levels = c ('A','B'),
#                                             labels = c('Sim','Não'))
# 
# TS_SECRETARIO_MUNICIPAL$TX_RESP_Q109 <- factor (TS_SECRETARIO_MUNICIPAL$TX_RESP_Q109, levels = c ('A','B'),
#                                             labels = c('Sim','Não'))
# 
# TS_SECRETARIO_MUNICIPAL$TX_RESP_Q110 <- factor (TS_SECRETARIO_MUNICIPAL$TX_RESP_Q110, levels = c ('A','B'),
#                                             labels = c('Sim','Não'))
# 
# TS_SECRETARIO_MUNICIPAL$TX_RESP_Q111 <- factor (TS_SECRETARIO_MUNICIPAL$TX_RESP_Q111, levels = c ('A','B'),
#                                             labels = c('Sim','Não'))
# 
# TS_SECRETARIO_MUNICIPAL$TX_RESP_Q112 <- factor (TS_SECRETARIO_MUNICIPAL$TX_RESP_Q112, levels = c ('A','B'),
#                                             labels = c('Sim','Não'))
# 
# TS_SECRETARIO_MUNICIPAL$TX_RESP_Q113 <- factor (TS_SECRETARIO_MUNICIPAL$TX_RESP_Q113, levels = c ('A','B'),
#                                             labels = c('Sim','Não'))
# 
# TS_SECRETARIO_MUNICIPAL$TX_RESP_Q114 <- factor (TS_SECRETARIO_MUNICIPAL$TX_RESP_Q114, levels = c ('A','B'),
#                                             labels = c('Sim','Não'))
# 
# TS_SECRETARIO_MUNICIPAL$TX_RESP_Q115 <- factor (TS_SECRETARIO_MUNICIPAL$TX_RESP_Q115, levels = c ('A','B'),
#                                             labels = c('Sim','Não'))
# 
# TS_SECRETARIO_MUNICIPAL$TX_RESP_Q116 <- factor (TS_SECRETARIO_MUNICIPAL$TX_RESP_Q116, levels = c ('A','B'),
#                                             labels = c('Sim','Não'))
# 
# TS_SECRETARIO_MUNICIPAL$TX_RESP_Q117 <- factor (TS_SECRETARIO_MUNICIPAL$TX_RESP_Q117, levels = c ('A','B','C'),
#                                             labels = c('Sim.','Não.','Não sei.'))
# 
# TS_SECRETARIO_MUNICIPAL$TX_RESP_Q118 <- factor (TS_SECRETARIO_MUNICIPAL$TX_RESP_Q118, levels = c ('A','B'),
#                                             labels = c('Sim','Não'))
# 
# TS_SECRETARIO_MUNICIPAL$TX_RESP_Q119 <- factor (TS_SECRETARIO_MUNICIPAL$TX_RESP_Q119, levels = c ('A','B'),
#                                             labels = c('Sim','Não'))
# 
# TS_SECRETARIO_MUNICIPAL$TX_RESP_Q120 <- factor (TS_SECRETARIO_MUNICIPAL$TX_RESP_Q120, levels = c ('A','B'),
#                                             labels = c('Sim','Não'))
# 
# TS_SECRETARIO_MUNICIPAL$TX_RESP_Q121 <- factor (TS_SECRETARIO_MUNICIPAL$TX_RESP_Q121, levels = c ('A','B'),
#                                             labels = c('Sim','Não'))
# 
# TS_SECRETARIO_MUNICIPAL$TX_RESP_Q122 <- factor (TS_SECRETARIO_MUNICIPAL$TX_RESP_Q122, levels = c ('A','B'),
#                                             labels = c('Sim','Não'))
# 
# TS_SECRETARIO_MUNICIPAL$TX_RESP_Q123 <- factor (TS_SECRETARIO_MUNICIPAL$TX_RESP_Q123, levels = c ('A','B'),
#                                             labels = c('Sim','Não'))
# 
# TS_SECRETARIO_MUNICIPAL$TX_RESP_Q124 <- factor (TS_SECRETARIO_MUNICIPAL$TX_RESP_Q124, levels = c ('A','B'),
#                                             labels = c('Sim','Não'))
# 
# TS_SECRETARIO_MUNICIPAL$TX_RESP_Q125 <- factor (TS_SECRETARIO_MUNICIPAL$TX_RESP_Q125, levels = c ('A','B'),
#                                             labels = c('Sim','Não'))
# 
# TS_SECRETARIO_MUNICIPAL$TX_RESP_Q126 <- factor (TS_SECRETARIO_MUNICIPAL$TX_RESP_Q126, levels = c ('A','B'),
#                                             labels = c('Sim','Não'))
# 
# TS_SECRETARIO_MUNICIPAL$TX_RESP_Q127 <- factor (TS_SECRETARIO_MUNICIPAL$TX_RESP_Q127, levels = c ('A','B'),
#                                             labels = c('Sim','Não'))
# 
# TS_SECRETARIO_MUNICIPAL$TX_RESP_Q128 <- factor (TS_SECRETARIO_MUNICIPAL$TX_RESP_Q128, levels = c ('A','B'),
#                                             labels = c('Sim','Não'))
# 
# TS_SECRETARIO_MUNICIPAL$TX_RESP_Q129 <- factor (TS_SECRETARIO_MUNICIPAL$TX_RESP_Q129, levels = c ('A','B'),
#                                             labels = c('Sim','Não'))
# 
# TS_SECRETARIO_MUNICIPAL$TX_RESP_Q130 <- factor (TS_SECRETARIO_MUNICIPAL$TX_RESP_Q130, levels = c ('A','B'),
#                                             labels = c('Sim','Não'))
# 
# TS_SECRETARIO_MUNICIPAL$TX_RESP_Q131 <- factor (TS_SECRETARIO_MUNICIPAL$TX_RESP_Q131, levels = c ('A','B'),
#                                             labels = c('Sim','Não'))
# 
# TS_SECRETARIO_MUNICIPAL$TX_RESP_Q132 <- factor (TS_SECRETARIO_MUNICIPAL$TX_RESP_Q132, levels = c ('A','B'),
#                                             labels = c('Sim','Não'))
# 
# TS_SECRETARIO_MUNICIPAL$TX_RESP_Q133 <- factor (TS_SECRETARIO_MUNICIPAL$TX_RESP_Q133, levels = c ('A','B'),
#                                             labels = c('Sim','Não'))
# 
# TS_SECRETARIO_MUNICIPAL$TX_RESP_Q134 <- factor (TS_SECRETARIO_MUNICIPAL$TX_RESP_Q134, levels = c ('A','B'),
#                                             labels = c('Sim','Não'))
# 
# TS_SECRETARIO_MUNICIPAL$TX_RESP_Q135 <- factor (TS_SECRETARIO_MUNICIPAL$TX_RESP_Q135, levels = c ('A','B'),
#                                             labels = c('Sim','Não'))
# 
# TS_SECRETARIO_MUNICIPAL$TX_RESP_Q136 <- factor (TS_SECRETARIO_MUNICIPAL$TX_RESP_Q136, levels = c ('A','B'),
#                                             labels = c('Sim','Não'))
# 
# TS_SECRETARIO_MUNICIPAL$TX_RESP_Q137 <- factor (TS_SECRETARIO_MUNICIPAL$TX_RESP_Q137, levels = c ('A','B'),
#                                             labels = c('Sim','Não'))
# 
# TS_SECRETARIO_MUNICIPAL$TX_RESP_Q138 <- factor (TS_SECRETARIO_MUNICIPAL$TX_RESP_Q138, levels = c ('A','B'),
#                                             labels = c('Sim','Não'))
# 
# TS_SECRETARIO_MUNICIPAL$TX_RESP_Q139 <- factor (TS_SECRETARIO_MUNICIPAL$TX_RESP_Q139, levels = c ('A','B'),
#                                             labels = c('Sim','Não'))
# 
# TS_SECRETARIO_MUNICIPAL$TX_RESP_Q140 <- factor (TS_SECRETARIO_MUNICIPAL$TX_RESP_Q140, levels = c ('A','B'),
#                                             labels = c('Sim','Não'))
# 
# TS_SECRETARIO_MUNICIPAL$TX_RESP_Q141 <- factor (TS_SECRETARIO_MUNICIPAL$TX_RESP_Q141, levels = c ('A','B'),
#                                             labels = c('Sim','Não'))
# 
# TS_SECRETARIO_MUNICIPAL$TX_RESP_Q142 <- factor (TS_SECRETARIO_MUNICIPAL$TX_RESP_Q142, levels = c ('A','B'),
#                                             labels = c('Sim','Não'))
# 
# TS_SECRETARIO_MUNICIPAL$TX_RESP_Q143 <- factor (TS_SECRETARIO_MUNICIPAL$TX_RESP_Q143, levels = c ('A','B'),
#                                             labels = c('Sim','Não'))
# 
# TS_SECRETARIO_MUNICIPAL$TX_RESP_Q144 <- factor (TS_SECRETARIO_MUNICIPAL$TX_RESP_Q144, levels = c ('A','B'),
#                                             labels = c('Sim','Não'))
# 
# TS_SECRETARIO_MUNICIPAL$TX_RESP_Q145 <- factor (TS_SECRETARIO_MUNICIPAL$TX_RESP_Q145, levels = c ('A','B'),
#                                             labels = c('Sim','Não'))
# 
# TS_SECRETARIO_MUNICIPAL$TX_RESP_Q146 <- factor (TS_SECRETARIO_MUNICIPAL$TX_RESP_Q146, levels = c ('A','B'),
#                                             labels = c('Sim','Não'))
# 
# TS_SECRETARIO_MUNICIPAL$TX_RESP_Q147 <- factor (TS_SECRETARIO_MUNICIPAL$TX_RESP_Q147, levels = c ('A','B'),
#                                             labels = c('Sim','Não'))
# 
# TS_SECRETARIO_MUNICIPAL$TX_RESP_Q148 <- factor (TS_SECRETARIO_MUNICIPAL$TX_RESP_Q148, levels = c ('A','B'),
#                                             labels = c('Sim','Não'))
# 
# TS_SECRETARIO_MUNICIPAL$TX_RESP_Q149 <- factor (TS_SECRETARIO_MUNICIPAL$TX_RESP_Q149, levels = c ('A','B'),
#                                             labels = c('Sim','Não'))
# 
# TS_SECRETARIO_MUNICIPAL$TX_RESP_Q150 <- factor (TS_SECRETARIO_MUNICIPAL$TX_RESP_Q150, levels = c ('A','B'),
#                                             labels = c('Sim','Não'))
# 
# TS_SECRETARIO_MUNICIPAL$TX_RESP_Q151 <- factor (TS_SECRETARIO_MUNICIPAL$TX_RESP_Q151, levels = c ('A','B'),
#                                             labels = c('Sim','Não'))
# 
# TS_SECRETARIO_MUNICIPAL$TX_RESP_Q152 <- factor (TS_SECRETARIO_MUNICIPAL$TX_RESP_Q152, levels = c ('A','B'),
#                                             labels = c('Sim','Não'))
# 
# TS_SECRETARIO_MUNICIPAL$TX_RESP_Q153 <- factor (TS_SECRETARIO_MUNICIPAL$TX_RESP_Q153, levels = c ('A','B'),
#                                             labels = c('Sim','Não'))
# 
# TS_SECRETARIO_MUNICIPAL$TX_RESP_Q154 <- factor (TS_SECRETARIO_MUNICIPAL$TX_RESP_Q154, levels = c ('A','B'),
#                                             labels = c('Sim','Não'))
# 
# TS_SECRETARIO_MUNICIPAL$TX_RESP_Q155 <- factor (TS_SECRETARIO_MUNICIPAL$TX_RESP_Q155, levels = c ('A','B'),
#                                             labels = c('Sim','Não'))
# 
# TS_SECRETARIO_MUNICIPAL$TX_RESP_Q156 <- factor (TS_SECRETARIO_MUNICIPAL$TX_RESP_Q156, levels = c ('A','B'),
#                                             labels = c('Sim','Não'))
# 
# TS_SECRETARIO_MUNICIPAL$TX_RESP_Q157 <- factor (TS_SECRETARIO_MUNICIPAL$TX_RESP_Q157, levels = c ('A','B'),
#                                             labels = c('Sim','Não'))
# 
# TS_SECRETARIO_MUNICIPAL$TX_RESP_Q158 <- factor (TS_SECRETARIO_MUNICIPAL$TX_RESP_Q158, levels = c ('A','B'),
#                                             labels = c('Sim','Não'))
# 
# TS_SECRETARIO_MUNICIPAL$TX_RESP_Q159 <- factor (TS_SECRETARIO_MUNICIPAL$TX_RESP_Q159, levels = c ('A','B'),
#                                             labels = c('Sim','Não'))
# 
# TS_SECRETARIO_MUNICIPAL$TX_RESP_Q160 <- factor (TS_SECRETARIO_MUNICIPAL$TX_RESP_Q160, levels = c ('A','B'),
#                                             labels = c('Sim','Não'))
# 
# TS_SECRETARIO_MUNICIPAL$TX_RESP_Q161 <- factor (TS_SECRETARIO_MUNICIPAL$TX_RESP_Q161, levels = c ('A','B'),
#                                             labels = c('Sim','Não'))
# 
# TS_SECRETARIO_MUNICIPAL$TX_RESP_Q162 <- factor (TS_SECRETARIO_MUNICIPAL$TX_RESP_Q162, levels = c ('A','B'),
#                                             labels = c('Sim','Não'))
# 
# TS_SECRETARIO_MUNICIPAL$TX_RESP_Q163 <- factor (TS_SECRETARIO_MUNICIPAL$TX_RESP_Q163, levels = c ('A','B'),
#                                             labels = c('Sim','Não'))
# 
# TS_SECRETARIO_MUNICIPAL$TX_RESP_Q164 <- factor (TS_SECRETARIO_MUNICIPAL$TX_RESP_Q164, levels = c ('A','B'),
#                                             labels = c('Sim','Não'))
# 
# TS_SECRETARIO_MUNICIPAL$TX_RESP_Q165 <- factor (TS_SECRETARIO_MUNICIPAL$TX_RESP_Q165, levels = c ('A','B'),
#                                             labels = c('Sim','Não'))
# 
# TS_SECRETARIO_MUNICIPAL$TX_RESP_Q166 <- factor (TS_SECRETARIO_MUNICIPAL$TX_RESP_Q166, levels = c ('A','B'),
#                                             labels = c('Sim','Não'))
# 
# TS_SECRETARIO_MUNICIPAL$TX_RESP_Q167 <- factor (TS_SECRETARIO_MUNICIPAL$TX_RESP_Q167, levels = c ('A','B'),
#                                             labels = c('Sim','Não'))
# 
# TS_SECRETARIO_MUNICIPAL$TX_RESP_Q168 <- factor (TS_SECRETARIO_MUNICIPAL$TX_RESP_Q168, levels = c ('A','B'),
#                                             labels = c('Sim','Não'))
# 
# TS_SECRETARIO_MUNICIPAL$TX_RESP_Q169 <- factor (TS_SECRETARIO_MUNICIPAL$TX_RESP_Q169, levels = c ('A','B'),
#                                             labels = c('Sim','Não'))
# 
# TS_SECRETARIO_MUNICIPAL$TX_RESP_Q170 <- factor (TS_SECRETARIO_MUNICIPAL$TX_RESP_Q170, levels = c ('A','B'),
#                                             labels = c('Sim','Não'))
# 
# TS_SECRETARIO_MUNICIPAL$TX_RESP_Q171 <- factor (TS_SECRETARIO_MUNICIPAL$TX_RESP_Q171, levels = c ('A','B'),
#                                             labels = c('Sim','Não'))
# 
# TS_SECRETARIO_MUNICIPAL$TX_RESP_Q172 <- factor (TS_SECRETARIO_MUNICIPAL$TX_RESP_Q172, levels = c ('A','B'),
#                                             labels = c('Sim','Não'))
# 
# TS_SECRETARIO_MUNICIPAL$TX_RESP_Q173 <- factor (TS_SECRETARIO_MUNICIPAL$TX_RESP_Q173, levels = c ('A','B'),
#                                             labels = c('Sim','Não'))
# 
# TS_SECRETARIO_MUNICIPAL$TX_RESP_Q174 <- factor (TS_SECRETARIO_MUNICIPAL$TX_RESP_Q174, levels = c ('A','B','C','D','E','F','G'),
#                                             labels = c('Mensal','Bimestral','Trimestral','Semestral','Anual','Bianual','Outra'))
# 
# TS_SECRETARIO_MUNICIPAL$TX_RESP_Q175 <- factor (TS_SECRETARIO_MUNICIPAL$TX_RESP_Q175, levels = c ('A','B'),
#                                             labels = c('Sim','Não'))
# 
# TS_SECRETARIO_MUNICIPAL$TX_RESP_Q176 <- factor (TS_SECRETARIO_MUNICIPAL$TX_RESP_Q176, levels = c ('A','B'),
#                                             labels = c('Sim','Não'))
# 
# TS_SECRETARIO_MUNICIPAL$TX_RESP_Q177 <- factor (TS_SECRETARIO_MUNICIPAL$TX_RESP_Q177, levels = c ('A','B'),
#                                             labels = c('Sim','Não'))
# 
# TS_SECRETARIO_MUNICIPAL$TX_RESP_Q178 <- factor (TS_SECRETARIO_MUNICIPAL$TX_RESP_Q178, levels = c ('A','B'),
#                                             labels = c('Sim','Não'))
# 
# TS_SECRETARIO_MUNICIPAL$TX_RESP_Q179 <- factor (TS_SECRETARIO_MUNICIPAL$TX_RESP_Q179, levels = c ('A','B'),
#                                             labels = c('Sim','Não'))
# 
# TS_SECRETARIO_MUNICIPAL$TX_RESP_Q180 <- factor (TS_SECRETARIO_MUNICIPAL$TX_RESP_Q180, levels = c ('A','B'),
#                                             labels = c('Sim','Não'))
# 
# TS_SECRETARIO_MUNICIPAL$TX_RESP_Q181 <- factor (TS_SECRETARIO_MUNICIPAL$TX_RESP_Q181, levels = c ('A','B'),
#                                             labels = c('Sim','Não'))
# 
# TS_SECRETARIO_MUNICIPAL$TX_RESP_Q182 <- factor (TS_SECRETARIO_MUNICIPAL$TX_RESP_Q182, levels = c ('A','B'),
#                                             labels = c('Sim','Não'))
# 
# TS_SECRETARIO_MUNICIPAL$TX_RESP_Q183 <- factor (TS_SECRETARIO_MUNICIPAL$TX_RESP_Q183, levels = c ('A','B'),
#                                             labels = c('Sim','Não'))
# 
# TS_SECRETARIO_MUNICIPAL$TX_RESP_Q184 <- factor (TS_SECRETARIO_MUNICIPAL$TX_RESP_Q184, levels = c ('A','B'),
#                                             labels = c('Sim','Não'))
# 
# TS_SECRETARIO_MUNICIPAL$TX_RESP_Q185 <- factor (TS_SECRETARIO_MUNICIPAL$TX_RESP_Q185, levels = c ('A','B'),
#                                             labels = c('Sim','Não'))
# 
# TS_SECRETARIO_MUNICIPAL$TX_RESP_Q186 <- factor (TS_SECRETARIO_MUNICIPAL$TX_RESP_Q186, levels = c ('A','B','C'),
#                                             labels = c('Sim.','Não.','Não se aplica.'))
# 
# TS_SECRETARIO_MUNICIPAL$TX_RESP_Q187 <- factor (TS_SECRETARIO_MUNICIPAL$TX_RESP_Q187, levels = c ('A','B','C'),
#                                             labels = c('Sim.','Não.','Não se aplica.'))
# 
# TS_SECRETARIO_MUNICIPAL$TX_RESP_Q188 <- factor (TS_SECRETARIO_MUNICIPAL$TX_RESP_Q188, levels = c ('A','B','C'),
#                                             labels = c('Sim.','Não.','Não se aplica.'))
# 
# TS_SECRETARIO_MUNICIPAL$TX_RESP_Q189 <- factor (TS_SECRETARIO_MUNICIPAL$TX_RESP_Q189, levels = c ('A','B','C'),
#                                             labels = c('Sim.','Não.','Não se aplica.'))
# 
# TS_SECRETARIO_MUNICIPAL$TX_RESP_Q190 <- factor (TS_SECRETARIO_MUNICIPAL$TX_RESP_Q190, levels = c ('A','B','C'),
#                                             labels = c('Sim.','Não.','Não se aplica.'))
# 
# TS_SECRETARIO_MUNICIPAL$TX_RESP_Q191 <- factor (TS_SECRETARIO_MUNICIPAL$TX_RESP_Q191, levels = c ('A','B'),
#                                             labels = c('Sim','Não'))
# 
# TS_SECRETARIO_MUNICIPAL$TX_RESP_Q192 <- factor (TS_SECRETARIO_MUNICIPAL$TX_RESP_Q192, levels = c ('A','B'),
#                                             labels = c('Sim','Não'))
# 
# TS_SECRETARIO_MUNICIPAL$TX_RESP_Q193 <- factor (TS_SECRETARIO_MUNICIPAL$TX_RESP_Q193, levels = c ('A','B'),
#                                             labels = c('Sim','Não'))
# 
# TS_SECRETARIO_MUNICIPAL$TX_RESP_Q194 <- factor (TS_SECRETARIO_MUNICIPAL$TX_RESP_Q194, levels = c ('A','B'),
#                                             labels = c('Sim','Não'))
# 
# TS_SECRETARIO_MUNICIPAL$TX_RESP_Q195 <- factor (TS_SECRETARIO_MUNICIPAL$TX_RESP_Q195, levels = c ('A','B'),
#                                             labels = c('Sim','Não'))
# 
# TS_SECRETARIO_MUNICIPAL$TX_RESP_Q196 <- factor (TS_SECRETARIO_MUNICIPAL$TX_RESP_Q196, levels = c ('A','B'),
#                                             labels = c('Sim','Não'))
# 
# TS_SECRETARIO_MUNICIPAL$TX_RESP_Q197 <- factor (TS_SECRETARIO_MUNICIPAL$TX_RESP_Q197, levels = c ('A','B'),
#                                             labels = c('Sim','Não'))
# 
# TS_SECRETARIO_MUNICIPAL$TX_RESP_Q198 <- factor (TS_SECRETARIO_MUNICIPAL$TX_RESP_Q198, levels = c ('A','B'),
#                                             labels = c('Sim','Não'))
# 
# TS_SECRETARIO_MUNICIPAL$TX_RESP_Q199 <- factor (TS_SECRETARIO_MUNICIPAL$TX_RESP_Q199, levels = c ('A','B'),
#                                             labels = c('Sim','Não'))
# 
# TS_SECRETARIO_MUNICIPAL$TX_RESP_Q200 <- factor (TS_SECRETARIO_MUNICIPAL$TX_RESP_Q200, levels = c ('A','B'),
#                                             labels = c('Sim','Não'))
# 
# TS_SECRETARIO_MUNICIPAL$TX_RESP_Q201 <- factor (TS_SECRETARIO_MUNICIPAL$TX_RESP_Q201, levels = c ('A','B'),
#                                             labels = c('Sim','Não'))
# 
# TS_SECRETARIO_MUNICIPAL$TX_RESP_Q202 <- factor (TS_SECRETARIO_MUNICIPAL$TX_RESP_Q202, levels = c ('A','B'),
#                                             labels = c('Sim','Não'))
# 
# TS_SECRETARIO_MUNICIPAL$TX_RESP_Q203 <- factor (TS_SECRETARIO_MUNICIPAL$TX_RESP_Q203, levels = c ('A','B'),
#                                             labels = c('Sim','Não'))
# 
# TS_SECRETARIO_MUNICIPAL$TX_RESP_Q204 <- factor (TS_SECRETARIO_MUNICIPAL$TX_RESP_Q204, levels = c ('A','B'),
#                                             labels = c('Sim','Não'))
# 
# TS_SECRETARIO_MUNICIPAL$TX_RESP_Q205 <- factor (TS_SECRETARIO_MUNICIPAL$TX_RESP_Q205, levels = c ('A','B','C','D'),
#                                             labels = c('É inferior à dos(as) professores(as) de Ensino Fundamental.','É equivalente à dos(as) professores(as) de Ensino Fundamental.','É superior à dos(as) professores(as) de Ensino Fundamental.','Não existe este profissional na rede.'))
# 
# TS_SECRETARIO_MUNICIPAL$TX_RESP_Q206 <- factor (TS_SECRETARIO_MUNICIPAL$TX_RESP_Q206, levels = c ('A','B','C','D'),
#                                             labels = c('É inferior à dos(as) professores(as) de Ensino Fundamental.','É equivalente à dos(as) professores(as) de Ensino Fundamental.','É superior à dos(as) professores(as) de Ensino Fundamental.','Não existe este profissional na rede.'))
# 
# TS_SECRETARIO_MUNICIPAL$TX_RESP_Q207 <- factor (TS_SECRETARIO_MUNICIPAL$TX_RESP_Q207, levels = c ('A','B'),
#                                             labels = c('Sim','Não'))
# 
# TS_SECRETARIO_MUNICIPAL$TX_RESP_Q208 <- factor (TS_SECRETARIO_MUNICIPAL$TX_RESP_Q208, levels = c ('A','B'),
#                                             labels = c('Sim','Não'))
# 
# TS_SECRETARIO_MUNICIPAL$TX_RESP_Q209 <- factor (TS_SECRETARIO_MUNICIPAL$TX_RESP_Q209, levels = c ('A','B'),
#                                             labels = c('Sim','Não'))
# 
# TS_SECRETARIO_MUNICIPAL$TX_RESP_Q210 <- factor (TS_SECRETARIO_MUNICIPAL$TX_RESP_Q210, levels = c ('A','B'),
#                                             labels = c('Sim','Não'))
# 
# TS_SECRETARIO_MUNICIPAL$TX_RESP_Q211 <- factor (TS_SECRETARIO_MUNICIPAL$TX_RESP_Q211, levels = c ('A','B'),
#                                             labels = c('Sim','Não'))
# 
# TS_SECRETARIO_MUNICIPAL$TX_RESP_Q212 <- factor (TS_SECRETARIO_MUNICIPAL$TX_RESP_Q212, levels = c ('A','B'),
#                                             labels = c('Sim','Não'))
# 
# TS_SECRETARIO_MUNICIPAL$TX_RESP_Q213 <- factor (TS_SECRETARIO_MUNICIPAL$TX_RESP_Q213, levels = c ('A','B'),
#                                             labels = c('Sim','Não'))
# 
# TS_SECRETARIO_MUNICIPAL$TX_RESP_Q214 <- factor (TS_SECRETARIO_MUNICIPAL$TX_RESP_Q214, levels = c ('A','B'),
#                                             labels = c('Sim','Não'))
# 
# TS_SECRETARIO_MUNICIPAL$TX_RESP_Q215 <- factor (TS_SECRETARIO_MUNICIPAL$TX_RESP_Q215, levels = c ('A','B'),
#                                             labels = c('Sim','Não'))
# 
# TS_SECRETARIO_MUNICIPAL$TX_RESP_Q216 <- factor (TS_SECRETARIO_MUNICIPAL$TX_RESP_Q216, levels = c ('A','B','C','D','E'),
#                                             labels = c('Muito difícil','Difícil','Nem fácil e nem difícil','Fácil','Muito fácil'))
# 
# TS_SECRETARIO_MUNICIPAL$TX_RESP_Q217 <- factor (TS_SECRETARIO_MUNICIPAL$TX_RESP_Q217, levels = c ('A','B','C','D','E'),
#                                             labels = c('Muito difícil','Difícil','Nem fácil e nem difícil','Fácil','Muito fácil'))
# 
