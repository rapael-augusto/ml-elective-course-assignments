/*****************************************************************************************************/
/*  INEP/Daeb-Diretoria de Avaliação da Educação Básica                                          */ 
/*                                   			                                    */
/*  Coordenação-Geral de Instrumentos e medidas 		                  */
/*----------------------------------------------------------------------------------------------------------------------------*/
/*  PROGRAMA:                                                                                                      */
/*           INPUT_SPSS_TS_SECRETARIO_MUNICIPAL.sps                                        */
/*----------------------------------------------------------------------------------------------------------------------------*/
/*DESCRICAO: PROGRAMA PARA LEITURA DO QUESTIONÁRIO DO SECREÁRIO   */
/*                     MUNICIPAL DE EDUCAÇÃO DO SAEB 2019                                     */
/*****************************************************************************************************/
/*****************************************************************************************************/
/* Obs:                                                                                                                    */
/* 		                                                                                           */
/* Para abrir os microdados é necessário salvar este programa e o arquivo                    */
/* TS_SECRETARIO_MUNICIPAL.CSV no diretório C:\ do computador.	                	 */
/*							 */ 
/* Ao terminar esses procedimentos execute o programa salvo utilizando                      */
/* as variáveis de interesse.                                                                                       */
/******************************************************************************************************/
/*                                                   ATENÇÃO                                                          */ 
/******************************************************************************************************/
/* Este programa abre a base de dados com os rótulos das variáveis de	                    */
/* acordo com o dicionário de dados que compõem os microdados. Para abrir                */
/* os dados sem os rótulos basta importar diretamente no SPSS.		  */
/* 							  */                                                            
/* Algumas variáveis do questionário do Diretor envolvem regras de validação e                */
/* dependência. O entendimento dessas questões exigem consulta ao Dicionário de       */
/* Variáveis para conhecer as regras de cada questão.                                                  */
/* 							  */
/*******************************************************************************************************/


GET DATA
/TYPE=TXT
/FILE="C:\TS_SECRETARIO_MUNICIPAL.csv"
/DELCASE=LINE
/DELIMITERS=";"
/QUALIFIER='"'
/ARRANGEMENT=DELIMITED
/FIRSTCASE=2
/IMPORTCASE=ALL
/VARIABLES=
ID_SAEB F4.0
ID_REGIAO F1.0
ID_UF F2.0
ID_MUNICIPIO F8.0
ID_AREA F1.0
TX_RESP_Q019 A8
TX_RESP_Q020 A8
TX_RESP_Q021 A8
TX_RESP_Q022 A8
TX_RESP_Q023 A8
TX_RESP_Q024 A8
TX_RESP_Q025 A8
TX_RESP_Q026 A8
TX_RESP_Q027 A8
TX_RESP_Q028 A8
TX_RESP_Q029 A8
TX_RESP_Q030 A8
TX_RESP_Q031 A8
TX_RESP_Q032 A8
TX_RESP_Q033 A8
TX_RESP_Q034 A8
TX_RESP_Q035 A8
TX_RESP_Q036 A8
TX_RESP_Q037 A8
TX_RESP_Q038 A8
TX_RESP_Q039 A8
TX_RESP_Q040 A8
TX_RESP_Q041 A8
TX_RESP_Q042 A8
TX_RESP_Q043 A8
TX_RESP_Q044 A8
TX_RESP_Q045 A8
TX_RESP_Q046 A8
TX_RESP_Q047 A8
TX_RESP_Q048 A8
TX_RESP_Q049 A8
TX_RESP_Q050 A8
TX_RESP_Q051 A8
TX_RESP_Q052 A8
TX_RESP_Q053 A8
TX_RESP_Q054 A8
TX_RESP_Q055 A8
TX_RESP_Q056 A8
TX_RESP_Q057 A8
TX_RESP_Q058 A8
TX_RESP_Q059 A8
TX_RESP_Q060 A8
TX_RESP_Q061 A8
TX_RESP_Q062 A8
TX_RESP_Q063 A8
TX_RESP_Q064 A8
TX_RESP_Q065 A8
TX_RESP_Q066 A8
TX_RESP_Q067 A8
TX_RESP_Q068 A8
TX_RESP_Q069 A8
TX_RESP_Q070 A8
TX_RESP_Q071 A8
TX_RESP_Q072 A8
TX_RESP_Q073 A8
TX_RESP_Q074 A8
TX_RESP_Q075 A8
TX_RESP_Q076 A8
TX_RESP_Q077 A8
TX_RESP_Q078 A8
TX_RESP_Q079 A8
TX_RESP_Q080 A8
TX_RESP_Q081 A8
TX_RESP_Q082 A8
TX_RESP_Q083 A8
TX_RESP_Q084 A8
TX_RESP_Q085 A8
TX_RESP_Q086 A8
TX_RESP_Q087 A8
TX_RESP_Q088 A8
TX_RESP_Q089 A8
TX_RESP_Q090 A8
TX_RESP_Q091 A8
TX_RESP_Q092 A8
TX_RESP_Q093 A8
TX_RESP_Q094 A8
TX_RESP_Q095 A8
TX_RESP_Q096 A8
TX_RESP_Q097 A8
TX_RESP_Q098 A8
TX_RESP_Q099 A8
TX_RESP_Q100 A8
TX_RESP_Q101 A8
TX_RESP_Q102 A8
TX_RESP_Q103 A8
TX_RESP_Q104 A8
TX_RESP_Q105 A8
TX_RESP_Q106 A8
TX_RESP_Q107 A8
TX_RESP_Q108 A8
TX_RESP_Q109 A8
TX_RESP_Q110 A8
TX_RESP_Q111 A8
TX_RESP_Q112 A8
TX_RESP_Q113 A8
TX_RESP_Q114 A8
TX_RESP_Q115 A8
TX_RESP_Q116 A8
TX_RESP_Q117 A8
TX_RESP_Q118 A8
TX_RESP_Q119 A8
TX_RESP_Q120 A8
TX_RESP_Q121 A8
TX_RESP_Q122 A8
TX_RESP_Q123 A8
TX_RESP_Q124 A8
TX_RESP_Q125 A8
TX_RESP_Q126 A8
TX_RESP_Q127 A8
TX_RESP_Q128 A8
TX_RESP_Q129 A8
TX_RESP_Q130 A8
TX_RESP_Q131 A8
TX_RESP_Q132 A8
TX_RESP_Q133 A8
TX_RESP_Q134 A8
TX_RESP_Q135 A8
TX_RESP_Q136 A8
TX_RESP_Q137 A8
TX_RESP_Q138 A8
TX_RESP_Q139 A8
TX_RESP_Q140 A8
TX_RESP_Q141 A8
TX_RESP_Q142 A8
TX_RESP_Q143 A8
TX_RESP_Q144 A8
TX_RESP_Q145 A8
TX_RESP_Q146 A8
TX_RESP_Q147 A8
TX_RESP_Q148 A8
TX_RESP_Q149 A8
TX_RESP_Q150 A8
TX_RESP_Q151 A8
TX_RESP_Q152 A8
TX_RESP_Q153 A8
TX_RESP_Q154 A8
TX_RESP_Q155 A8
TX_RESP_Q156 A8
TX_RESP_Q157 A8
TX_RESP_Q158 A8
TX_RESP_Q159 A8
TX_RESP_Q160 A8
TX_RESP_Q161 A8
TX_RESP_Q162 A8
TX_RESP_Q163 A8
TX_RESP_Q164 A8
TX_RESP_Q165 A8
TX_RESP_Q166 A8
TX_RESP_Q167 A8
TX_RESP_Q168 A8
TX_RESP_Q169 A8
TX_RESP_Q170 A8
TX_RESP_Q171 A8
TX_RESP_Q172 A8
TX_RESP_Q173 A8
TX_RESP_Q174 A8
TX_RESP_Q175 A8
TX_RESP_Q176 A8
TX_RESP_Q177 A8
TX_RESP_Q178 A8
TX_RESP_Q179 A8
TX_RESP_Q180 A8
TX_RESP_Q181 A8
TX_RESP_Q182 A8
TX_RESP_Q183 A8
TX_RESP_Q184 A8
TX_RESP_Q185 A8
TX_RESP_Q186 A8
TX_RESP_Q187 A8
TX_RESP_Q188 A8
TX_RESP_Q189 A8
TX_RESP_Q190 A8
TX_RESP_Q191 A8
TX_RESP_Q192 A8
TX_RESP_Q193 A8
TX_RESP_Q194 A8
TX_RESP_Q195 A8
TX_RESP_Q196 A8
TX_RESP_Q197 A8
TX_RESP_Q198 A8
TX_RESP_Q199 A8
TX_RESP_Q200 A8
TX_RESP_Q201 A8
TX_RESP_Q202 A8
TX_RESP_Q203 A8
TX_RESP_Q204 A8
TX_RESP_Q205 A8
TX_RESP_Q206 A8
TX_RESP_Q207 A8
TX_RESP_Q208 A8
TX_RESP_Q209 A8
TX_RESP_Q210 A8
TX_RESP_Q211 A8
TX_RESP_Q212 A8
TX_RESP_Q213 A8
TX_RESP_Q214 A8
TX_RESP_Q215 A8
TX_RESP_Q216 A8
TX_RESP_Q217 A8.

CACHE.
EXECUTE.
DATASET NAME DataSet1 WINDOW=FRONT.

VARIABLE LABELS ID_SAEB 'Ano de aplicação do Saeb'.                                                                                                 
VARIABLE LABELS ID_REGIAO 'Código da Região'.     
VALUE LABELS ID_REGIAO
1 'Norte'
2 'Nordeste'
3 'Sudeste'
4 'Sul'
5 'Centro-Oeste'.

VARIABLE LABELS ID_UF 'Código da Unidade da Federação'.
VALUE LABELS ID_UF
11 'RO'
12 'AC'
13 'AM'
14 'RR'
15 'PA'
16 'AP'
17 'TO'
21 'MA'
22 'PI'
23 'CE'
24 'RN'
25 'PB'
26 'PE'
27 'AL'
28 'SE'
29 'BA'
31 'MG'
32 'ES'
33 'RJ'
35 'SP'
41 'PR'
42 'SC'
43 'RS'
50 'MS'
51 'MT'
52 'GO'
53 'DF'.
VARIABLE LABELS ID_MUNICIPIO 'Código do Município'.
VARIABLE LABELS ID_AREA 'Área'.
VALUE LABELS ID_AREA
1 'Capital'
2 'Interior'.
VARIABLE LABELS TX_RESP_Q019 'Sobre a organização e planejamento da educação, o município possui: Sistema Municipal de Ensino?'.
VALUE LABELS TX_RESP_Q019
'A' 'Sim'
'B' 'Não'.
VARIABLE LABELS TX_RESP_Q020 'Sobre a organização e planejamento da educação, o município possui: Plano Municipal de Educação?'.
VALUE LABELS TX_RESP_Q020
'A' 'Sim'
'B' 'Não'.
VARIABLE LABELS TX_RESP_Q021 'Sobre a organização e planejamento da educação, o município possui: Fórum Permanente de Educação?'.
VALUE LABELS TX_RESP_Q021
'A' 'Sim'
'B' 'Não'.
VARIABLE LABELS TX_RESP_Q022 'Quantos servidores/funcionários estão lotados na sede da Secretaria de Educação?'.
VARIABLE LABELS TX_RESP_Q023 'Quantos servidores/funcionários lotados na sede da Secretaria de Educação estão dedicados EXCLUSIVAMENTE à Educação infantil?'.
VARIABLE LABELS TX_RESP_Q024 'Quantos servidores/funcionários lotados na sede da Secretaria de Educação estão dedicados EXCLUSIVAMENTE ao Ensino Fundamental?'.
VARIABLE LABELS TX_RESP_Q025 'Selecione quais despesas a Secretaria de Educação tem autonomia para ordenar: Aperfeiçoamento de pessoal docente e demais profissionais'.
VALUE LABELS TX_RESP_Q025
'A' 'Sim'
'B' 'Não'.
VARIABLE LABELS TX_RESP_Q026 'Selecione quais despesas a Secretaria de Educação tem autonomia para ordenar: Aquisição e manutenção de equipamentos'.
VALUE LABELS TX_RESP_Q026
'A' 'Sim'
'B' 'Não'.
VARIABLE LABELS TX_RESP_Q027 'Selecione quais despesas a Secretaria de Educação tem autonomia para ordenar: Compra de material didático'.
VALUE LABELS TX_RESP_Q027
'A' 'Sim'
'B' 'Não'.
VARIABLE LABELS TX_RESP_Q028 'Selecione quais despesas a Secretaria de Educação tem autonomia para ordenar: Concessão de bolsas de estudo para estudantes'.
VALUE LABELS TX_RESP_Q028
'A' 'Sim'
'B' 'Não'.
VARIABLE LABELS TX_RESP_Q029 'Selecione quais despesas a Secretaria de Educação tem autonomia para ordenar: Construção de escolas'.
VALUE LABELS TX_RESP_Q029
'A' 'Sim'
'B' 'Não'.
VARIABLE LABELS TX_RESP_Q030 'Selecione quais despesas a Secretaria de Educação tem autonomia para ordenar: Manutenção e conservação das escolas'.
VALUE LABELS TX_RESP_Q030
'A' 'Sim'
'B' 'Não'.
VARIABLE LABELS TX_RESP_Q031 'Selecione quais despesas a Secretaria de Educação tem autonomia para ordenar: Merenda escolar'.
VALUE LABELS TX_RESP_Q031
'A' 'Sim'
'B' 'Não'.
VARIABLE LABELS TX_RESP_Q032 'Selecione quais despesas a Secretaria de Educação tem autonomia para ordenar: Remuneração de pessoal docente e demais profissionais'.
VALUE LABELS TX_RESP_Q032
'A' 'Sim'
'B' 'Não'.
VARIABLE LABELS TX_RESP_Q033 'Selecione quais despesas a Secretaria de Educação tem autonomia para ordenar: Transporte escolar'.
VALUE LABELS TX_RESP_Q033
'A' 'Sim'
'B' 'Não'.
VARIABLE LABELS TX_RESP_Q034 'Selecione quais despesas a Secretaria de Educação tem autonomia para ordenar: Outros'.
VALUE LABELS TX_RESP_Q034
'A' 'Sim'
'B' 'Não'.
VARIABLE LABELS TX_RESP_Q035 'A Secretaria de Educação desenvolve trabalhos em conjunto com: Serviços de saúde'.
VALUE LABELS TX_RESP_Q035
'A' 'Sim'
'B' 'Não'.
VARIABLE LABELS TX_RESP_Q036 'A Secretaria de Educação desenvolve trabalhos em conjunto com: Serviços de assistência social'.
VALUE LABELS TX_RESP_Q036
'A' 'Sim'
'B' 'Não'.
VARIABLE LABELS TX_RESP_Q037 'A Secretaria de Educação desenvolve trabalhos em conjunto com: Serviços de segurança pública'.
VALUE LABELS TX_RESP_Q037
'A' 'Sim'
'B' 'Não'.
VARIABLE LABELS TX_RESP_Q038 'A Secretaria de Educação desenvolve trabalhos em conjunto com: Ministério Público'.
VALUE LABELS TX_RESP_Q038
'A' 'Sim'
'B' 'Não'.
VARIABLE LABELS TX_RESP_Q039 'A Secretaria de Educação desenvolve trabalhos em conjunto com: Outros'.
VALUE LABELS TX_RESP_Q039
'A' 'Sim'
'B' 'Não'.
VARIABLE LABELS TX_RESP_Q040 'Há alguma legislação que regulamente a nomeação dos diretores das escolas?'.
VALUE LABELS TX_RESP_Q040
'A' 'Sim'
'B' 'Não'.
VARIABLE LABELS TX_RESP_Q041 'Quais critérios são utilizados para a escolha dos diretores das escolas? Livre indicação pelos poderes públicos'.
VALUE LABELS TX_RESP_Q041
'A' 'Sim'
'B' 'Não'.
VARIABLE LABELS TX_RESP_Q042 'Quais critérios são utilizados para a escolha dos diretores das escolas? Prova de conhecimentos'.
VALUE LABELS TX_RESP_Q042
'A' 'Sim'
'B' 'Não'.
VARIABLE LABELS TX_RESP_Q043 'Quais critérios são utilizados para a escolha dos diretores das escolas? Tempo de serviço'.
VALUE LABELS TX_RESP_Q043
'A' 'Sim'
'B' 'Não'.
VARIABLE LABELS TX_RESP_Q044 'Quais critérios são utilizados para a escolha dos diretores das escolas? Titulação acadêmica'.
VALUE LABELS TX_RESP_Q044
'A' 'Sim'
'B' 'Não'.
VARIABLE LABELS TX_RESP_Q045 'Quais critérios são utilizados para a escolha dos diretores das escolas? Experiência em gestão'.
VALUE LABELS TX_RESP_Q045
'A' 'Sim'
'B' 'Não'.
VARIABLE LABELS TX_RESP_Q046 'Quais critérios são utilizados para a escolha dos diretores das escolas? Curso de formação para gestores escolares'.
VALUE LABELS TX_RESP_Q046
'A' 'Sim'
'B' 'Não'.
VARIABLE LABELS TX_RESP_Q047 'Quais critérios são utilizados para a escolha dos diretores das escolas? Listas de candidatos'.
VALUE LABELS TX_RESP_Q047
'A' 'Sim'
'B' 'Não'.
VARIABLE LABELS TX_RESP_Q048 'Quais critérios são utilizados para a escolha dos diretores das escolas? Consulta pública/eleição'.
VALUE LABELS TX_RESP_Q048
'A' 'Sim'
'B' 'Não'.
VARIABLE LABELS TX_RESP_Q049 'As escolas do município adotam um sistema apostilado?'.
VALUE LABELS TX_RESP_Q049
'A' 'Sim'
'B' 'Não'.
VARIABLE LABELS TX_RESP_Q050 'O Ensino Fundamental é oferecido em ciclos?'.
VALUE LABELS TX_RESP_Q050
'A' 'Sim'
'B' 'Não'.
VARIABLE LABELS TX_RESP_Q051 'O município possui Conselho Municipal de Educação?'.
VALUE LABELS TX_RESP_Q051
'A' 'Sim'
'B' 'Não'.
VARIABLE LABELS TX_RESP_Q052 'Indique quais funções são exercidas pelo Conselho Municipal de Educação: Consultiva '.
VALUE LABELS TX_RESP_Q052
'A' 'Sim'
'B' 'Não'.
VARIABLE LABELS TX_RESP_Q053 'Indique quais funções são exercidas pelo Conselho Municipal de Educação: Normativa '.
VALUE LABELS TX_RESP_Q053
'A' 'Sim'
'B' 'Não'.
VARIABLE LABELS TX_RESP_Q054 'Indique quais funções são exercidas pelo Conselho Municipal de Educação: Deliberativa '.
VALUE LABELS TX_RESP_Q054
'A' 'Sim'
'B' 'Não'.
VARIABLE LABELS TX_RESP_Q055 'Indique quais funções são exercidas pelo Conselho Municipal de Educação: Fiscalizadora '.
VALUE LABELS TX_RESP_Q055
'A' 'Sim'
'B' 'Não'.
VARIABLE LABELS TX_RESP_Q056 'Indique quais funções são exercidas pelo Conselho Municipal de Educação: Propositiva '.
VALUE LABELS TX_RESP_Q056
'A' 'Sim'
'B' 'Não'.
VARIABLE LABELS TX_RESP_Q057 'Indique quais funções são exercidas pelo Conselho Municipal de Educação: Mobilizadora '.
VALUE LABELS TX_RESP_Q057
'A' 'Sim'
'B' 'Não'.
VARIABLE LABELS TX_RESP_Q058 'Indique quais funções são exercidas pelo Conselho Municipal de Educação: Não sei '.
VALUE LABELS TX_RESP_Q058
'A' 'Sim'
'B' 'Não'.
VARIABLE LABELS TX_RESP_Q059 'Indique a QUANTIDADE de membros do Conselho Municipal de Educação que representam: Secretaria municipal - incluso Secretário(a) '.
VARIABLE LABELS TX_RESP_Q060 'Indique a QUANTIDADE de membros do Conselho Municipal de Educação que representam: Instituições particulares '.
VARIABLE LABELS TX_RESP_Q061 'Indique a QUANTIDADE de membros do Conselho Municipal de Educação que representam: Diretores de escola de Ensino Fundamental '.
VARIABLE LABELS TX_RESP_Q062 'Indique a QUANTIDADE de membros do Conselho Municipal de Educação que representam: Diretores de instituições de Educação Infantil '.
VARIABLE LABELS TX_RESP_Q063 'Indique a QUANTIDADE de membros do Conselho Municipal de Educação que representam: Professores de Ensino Fundamental '.
VARIABLE LABELS TX_RESP_Q064 'Indique a QUANTIDADE de membros do Conselho Municipal de Educação que representam: Professores de Educação Infantil '.
VARIABLE LABELS TX_RESP_Q065 'Indique a QUANTIDADE de membros do Conselho Municipal de Educação que representam: Professores de escolas particulares '.
VARIABLE LABELS TX_RESP_Q066 'Indique a QUANTIDADE de membros do Conselho Municipal de Educação que representam: Servidores das escolas '.
VARIABLE LABELS TX_RESP_Q067 'Indique a QUANTIDADE de membros do Conselho Municipal de Educação que representam: Pais de estudantes '.
VARIABLE LABELS TX_RESP_Q068 'Indique a QUANTIDADE de membros do Conselho Municipal de Educação que representam: Estudantes '.
VARIABLE LABELS TX_RESP_Q069 'Indique a QUANTIDADE de membros do Conselho Municipal de Educação que representam: Sindicatos e associações de docentes '.
VARIABLE LABELS TX_RESP_Q070 'Indique a QUANTIDADE de membros do Conselho Municipal de Educação que representam: Câmara Municipal '.
VARIABLE LABELS TX_RESP_Q071 'Indique a QUANTIDADE de membros do Conselho Municipal de Educação que representam: Outros setores '.
VARIABLE LABELS TX_RESP_Q072 'Do total de membros do Conselho de Educação, quantos são eleitos? '.
VARIABLE LABELS TX_RESP_Q073 'O Secretário de Educação é o presidente do Conselho de Educação? '.
VALUE LABELS TX_RESP_Q073
'A' 'Sim'
'B' 'Não'.
VARIABLE LABELS TX_RESP_Q074 'Quantas reuniões foram realizadas pelo Conselho de Educação neste ano? '.
VARIABLE LABELS TX_RESP_Q075 'Indique os recursos disponíveis para o funcionamento do Conselho de Educação: Sala própria '.
VALUE LABELS TX_RESP_Q075
'A' 'Sim'
'B' 'Não'.
VARIABLE LABELS TX_RESP_Q076 'Indique os recursos disponíveis para o funcionamento do Conselho de Educação: Computador '.
VALUE LABELS TX_RESP_Q076
'A' 'Sim'
'B' 'Não'.
VARIABLE LABELS TX_RESP_Q077 'Indique os recursos disponíveis para o funcionamento do Conselho de Educação: Impressora '.
VALUE LABELS TX_RESP_Q077
'A' 'Sim'
'B' 'Não'.
VARIABLE LABELS TX_RESP_Q078 'Indique os recursos disponíveis para o funcionamento do Conselho de Educação: Acesso à internet '.
VALUE LABELS TX_RESP_Q078
'A' 'Sim'
'B' 'Não'.
VARIABLE LABELS TX_RESP_Q079 'Indique os recursos disponíveis para o funcionamento do Conselho de Educação: Transporte '.
VALUE LABELS TX_RESP_Q079
'A' 'Sim'
'B' 'Não'.
VARIABLE LABELS TX_RESP_Q080 'Indique os recursos disponíveis para o funcionamento do Conselho de Educação: Telefone '.
VALUE LABELS TX_RESP_Q080
'A' 'Sim'
'B' 'Não'.
VARIABLE LABELS TX_RESP_Q081 'Indique os recursos disponíveis para o funcionamento do Conselho de Educação: Diárias '.
VALUE LABELS TX_RESP_Q081
'A' 'Sim'
'B' 'Não'.
VARIABLE LABELS TX_RESP_Q082 'Indique os recursos disponíveis para o funcionamento do Conselho de Educação: Dotação orçamentária própria '.
VALUE LABELS TX_RESP_Q082
'A' 'Sim'
'B' 'Não'.
VARIABLE LABELS TX_RESP_Q083 'Indique os recursos disponíveis para o funcionamento do Conselho de Educação: Apoio administrativo '.
VALUE LABELS TX_RESP_Q083
'A' 'Sim'
'B' 'Não'.
VARIABLE LABELS TX_RESP_Q084 'Selecione quais atribuições o Conselho de Educação possui: Solucionar dúvidas interpretativas sobre a legislação educacional '.
VALUE LABELS TX_RESP_Q084
'A' 'Sim'
'B' 'Não'.
VARIABLE LABELS TX_RESP_Q085 'Selecione quais atribuições o Conselho de Educação possui: Emitir parecer sobre a interpretação de normas '.
VALUE LABELS TX_RESP_Q085
'A' 'Sim'
'B' 'Não'.
VARIABLE LABELS TX_RESP_Q086 'Selecione quais atribuições o Conselho de Educação possui: Estabelecer normas para o ingresso dos alunos '.
VALUE LABELS TX_RESP_Q086
'A' 'Sim'
'B' 'Não'.
VARIABLE LABELS TX_RESP_Q087 'Selecione quais atribuições o Conselho de Educação possui: Estabelecer normas para autorização de funcionamento das escolas '.
VALUE LABELS TX_RESP_Q087
'A' 'Sim'
'B' 'Não'.
VARIABLE LABELS TX_RESP_Q088 'Selecione quais atribuições o Conselho de Educação possui: Verificar o cumprimento do calendário letivo pelas escolas '.
VALUE LABELS TX_RESP_Q088
'A' 'Sim'
'B' 'Não'.
VARIABLE LABELS TX_RESP_Q089 'Selecione quais atribuições o Conselho de Educação possui: Verificar se as escolas conveniadas de educação infantil cumprem as diretrizes do município '.
VALUE LABELS TX_RESP_Q089
'A' 'Sim'
'B' 'Não'.
VARIABLE LABELS TX_RESP_Q090 'Selecione quais atribuições o Conselho de Educação possui: Sugerir medidas para aperfeiçoamento profissional dos docentes '.
VALUE LABELS TX_RESP_Q090
'A' 'Sim'
'B' 'Não'.
VARIABLE LABELS TX_RESP_Q091 'Selecione quais atribuições o Conselho de Educação possui: Propor ações para a diminuição da repetência '.
VALUE LABELS TX_RESP_Q091
'A' 'Sim'
'B' 'Não'.
VARIABLE LABELS TX_RESP_Q092 'Selecione quais atribuições o Conselho de Educação possui: Realizar reuniões ampliadas para discutir assuntos educacionais '.
VALUE LABELS TX_RESP_Q092
'A' 'Sim'
'B' 'Não'.
VARIABLE LABELS TX_RESP_Q093 'Selecione quais atribuições o Conselho de Educação possui: Promover eventos '.
VALUE LABELS TX_RESP_Q093
'A' 'Sim'
'B' 'Não'.
VARIABLE LABELS TX_RESP_Q094 'Neste ano foi realizada capacitação para os Conselheiros de Educação? '.
VALUE LABELS TX_RESP_Q094
'A' 'Sim'
'B' 'Não'.
VARIABLE LABELS TX_RESP_Q095 'Há Conselho de Acompanhamento e Controle Social do Fundeb ? CACS no seu município?'.
VALUE LABELS TX_RESP_Q095
'A' 'Sim'
'B' 'Não'.
VARIABLE LABELS TX_RESP_Q096 'Neste ano foi realizada capacitação para os membros do Conselho de Acompanhamento e Controle Social do Fundeb? '.
VALUE LABELS TX_RESP_Q096
'A' 'Sim'
'B' 'Não'.
VARIABLE LABELS TX_RESP_Q097 'Indique os recursos disponíveis para o funcionamento do Conselho de Acompanhamento e Controle Social do Fundeb: Sala própria '.
VALUE LABELS TX_RESP_Q097
'A' 'Sim'
'B' 'Não'.
VARIABLE LABELS TX_RESP_Q098 'Indique os recursos disponíveis para o funcionamento do Conselho de Acompanhamento e Controle Social do Fundeb: Computador '.
VALUE LABELS TX_RESP_Q098
'A' 'Sim'
'B' 'Não'.
VARIABLE LABELS TX_RESP_Q099 'Indique os recursos disponíveis para o funcionamento do Conselho de Acompanhamento e Controle Social do Fundeb: Impressora '.
VALUE LABELS TX_RESP_Q099
'A' 'Sim'
'B' 'Não'.
VARIABLE LABELS TX_RESP_Q100 'Indique os recursos disponíveis para o funcionamento do Conselho de Acompanhamento e Controle Social do Fundeb: Acesso à internet '.
VALUE LABELS TX_RESP_Q100
'A' 'Sim'
'B' 'Não'.
VARIABLE LABELS TX_RESP_Q101 'Indique os recursos disponíveis para o funcionamento do Conselho de Acompanhamento e Controle Social do Fundeb: Transporte '.
VALUE LABELS TX_RESP_Q101
'A' 'Sim'
'B' 'Não'.
VARIABLE LABELS TX_RESP_Q102 'Indique os recursos disponíveis para o funcionamento do Conselho de Acompanhamento e Controle Social do Fundeb: Telefone '.
VALUE LABELS TX_RESP_Q102
'A' 'Sim'
'B' 'Não'.
VARIABLE LABELS TX_RESP_Q103 'Indique os recursos disponíveis para o funcionamento do Conselho de Acompanhamento e Controle Social do Fundeb: Diárias '.
VALUE LABELS TX_RESP_Q103
'A' 'Sim'
'B' 'Não'.
VARIABLE LABELS TX_RESP_Q104 'Indique os recursos disponíveis para o funcionamento do Conselho de Acompanhamento e Controle Social do Fundeb: Dotação orçamentária própria '.
VALUE LABELS TX_RESP_Q104
'A' 'Sim'
'B' 'Não'.
VARIABLE LABELS TX_RESP_Q105 'Indique os recursos disponíveis para o funcionamento do Conselho de Acompanhamento e Controle Social do Fundeb: Apoio administrativo '.
VALUE LABELS TX_RESP_Q105
'A' 'Sim'
'B' 'Não'.
VARIABLE LABELS TX_RESP_Q106 'Há no seu município Conselho de Alimentação Escolar?'.
VALUE LABELS TX_RESP_Q106
'A' 'Sim'
'B' 'Não'.
VARIABLE LABELS TX_RESP_Q107 'Neste ano foi realizada capacitação para os membros do Conselho de Alimentação Escolar? '.
VALUE LABELS TX_RESP_Q107
'A' 'Sim'
'B' 'Não'.
VARIABLE LABELS TX_RESP_Q108 'Indique os recursos disponíveis para o funcionamento do Conselho de Alimentação Escolar: Sala própria '.
VALUE LABELS TX_RESP_Q108
'A' 'Sim'
'B' 'Não'.
VARIABLE LABELS TX_RESP_Q109 'Indique os recursos disponíveis para o funcionamento do Conselho de Alimentação Escolar: Computador '.
VALUE LABELS TX_RESP_Q109
'A' 'Sim'
'B' 'Não'.
VARIABLE LABELS TX_RESP_Q110 'Indique os recursos disponíveis para o funcionamento do Conselho de Alimentação Escolar: Impressora '.
VALUE LABELS TX_RESP_Q110
'A' 'Sim'
'B' 'Não'.
VARIABLE LABELS TX_RESP_Q111 'Indique os recursos disponíveis para o funcionamento do Conselho de Alimentação Escolar: Acesso à internet '.
VALUE LABELS TX_RESP_Q111
'A' 'Sim'
'B' 'Não'.
VARIABLE LABELS TX_RESP_Q112 'Indique os recursos disponíveis para o funcionamento do Conselho de Alimentação Escolar: Transporte '.
VALUE LABELS TX_RESP_Q112
'A' 'Sim'
'B' 'Não'.
VARIABLE LABELS TX_RESP_Q113 'Indique os recursos disponíveis para o funcionamento do Conselho de Alimentação Escolar: Telefone '.
VALUE LABELS TX_RESP_Q113
'A' 'Sim'
'B' 'Não'.
VARIABLE LABELS TX_RESP_Q114 'Indique os recursos disponíveis para o funcionamento do Conselho de Alimentação Escolar: Diárias '.
VALUE LABELS TX_RESP_Q114
'A' 'Sim'
'B' 'Não'.
VARIABLE LABELS TX_RESP_Q115 'Indique os recursos disponíveis para o funcionamento do Conselho de Alimentação Escolar: Dotação orçamentária própria '.
VALUE LABELS TX_RESP_Q115
'A' 'Sim'
'B' 'Não'.
VARIABLE LABELS TX_RESP_Q116 'Indique os recursos disponíveis para o funcionamento do Conselho de Alimentação Escolar: Apoio administrativo '.
VALUE LABELS TX_RESP_Q116
'A' 'Sim'
'B' 'Não'.
VARIABLE LABELS TX_RESP_Q117 'Desde 2014, o município realizou alguma Conferência Municipal de Educação preparatória para a Conferência Nacional de Educação (Conae)?'.
VALUE LABELS TX_RESP_Q117
'A' 'Sim.'
'B' 'Não.'
'C' 'Não sei.'.
VARIABLE LABELS TX_RESP_Q118 'A Secretaria possui instituições de Educação Infantil sob sua responsabilidade direta ou indireta?'.
VALUE LABELS TX_RESP_Q118
'A' 'Sim'
'B' 'Não'.
VARIABLE LABELS TX_RESP_Q119 'Com relação à EDUCAÇÃO INFANTIL, a Secretaria possui: Cálculo da demanda por vagas? '.
VALUE LABELS TX_RESP_Q119
'A' 'Sim'
'B' 'Não'.
VARIABLE LABELS TX_RESP_Q120 'Com relação à EDUCAÇÃO INFANTIL, a Secretaria possui: Programa para garantia de acesso? '.
VALUE LABELS TX_RESP_Q120
'A' 'Sim'
'B' 'Não'.
VARIABLE LABELS TX_RESP_Q121 'Com relação à EDUCAÇÃO INFANTIL, a Secretaria possui: Supervisão escolar? '.
VALUE LABELS TX_RESP_Q121
'A' 'Sim'
'B' 'Não'.
VARIABLE LABELS TX_RESP_Q122 'Com relação à EDUCAÇÃO INFANTIL, a Secretaria possui: Programa de formação de professores? '.
VALUE LABELS TX_RESP_Q122
'A' 'Sim'
'B' 'Não'.
VARIABLE LABELS TX_RESP_Q123 'Com relação à EDUCAÇÃO INFANTIL, a Secretaria possui: Busca ativa de crianças? '.
VALUE LABELS TX_RESP_Q123
'A' 'Sim'
'B' 'Não'.
VARIABLE LABELS TX_RESP_Q124 'Com relação à EDUCAÇÃO INFANTIL, a Secretaria possui: Comitê Intersetorial de Políticas Públicas para a Primeira Infância? '.
VALUE LABELS TX_RESP_Q124
'A' 'Sim'
'B' 'Não'.
VARIABLE LABELS TX_RESP_Q125 'Com relação à EDUCAÇÃO INFANTIL, a Secretaria possui: Currículo Municipal para a Educação Infantil? '.
VALUE LABELS TX_RESP_Q125
'A' 'Sim'
'B' 'Não'.
VARIABLE LABELS TX_RESP_Q126 'A Secretaria firma convênios com instituições para o atendimento de: Creche - Crianças de 0 a 3 anos? '.
VALUE LABELS TX_RESP_Q126
'A' 'Sim'
'B' 'Não'.
VARIABLE LABELS TX_RESP_Q127 'A Secretaria firma convênios com instituições para o atendimento de: Pré-escola - Crianças 4 a 5 anos? '.
VALUE LABELS TX_RESP_Q127
'A' 'Sim'
'B' 'Não'.
VARIABLE LABELS TX_RESP_Q128 'As escolas conveniadas são selecionadas através de chamada pública? '.
VALUE LABELS TX_RESP_Q128
'A' 'Sim'
'B' 'Não'.
VARIABLE LABELS TX_RESP_Q129 'Existem normas para o funcionamento das instituições conveniadas? '.
VALUE LABELS TX_RESP_Q129
'A' 'Sim'
'B' 'Não'.
VARIABLE LABELS TX_RESP_Q130 'Em relação às escolas conveniadas, quem assume as responsabilidades sobre Espaço físico: Poder Público/Secretaria de Educação. '.
VALUE LABELS TX_RESP_Q130
'A' 'Sim'
'B' 'Não'.
VARIABLE LABELS TX_RESP_Q131 'Em relação às escolas conveniadas, quem assume as responsabilidades sobre Espaço físico: Escolas/Instituições conveniadas. '.
VALUE LABELS TX_RESP_Q131
'A' 'Sim'
'B' 'Não'.
VARIABLE LABELS TX_RESP_Q132 'Em relação às escolas conveniadas, quem assume as responsabilidades sobre Manutenção de espaço físico: Poder Público/Secretaria de Educação. '.
VALUE LABELS TX_RESP_Q132
'A' 'Sim'
'B' 'Não'.
VARIABLE LABELS TX_RESP_Q133 'Em relação às escolas conveniadas, quem assume as responsabilidades sobre Manutenção de espaço físico: Escolas/Instituições conveniadas. '.
VALUE LABELS TX_RESP_Q133
'A' 'Sim'
'B' 'Não'.
VARIABLE LABELS TX_RESP_Q134 'Em relação às escolas conveniadas, quem assume as responsabilidades sobre Seleção de docentes: Poder Público/Secretaria de Educação. '.
VALUE LABELS TX_RESP_Q134
'A' 'Sim'
'B' 'Não'.
VARIABLE LABELS TX_RESP_Q135 'Em relação às escolas conveniadas, quem assume as responsabilidades sobre Seleção de docentes: Escolas/Instituições conveniadas. '.
VALUE LABELS TX_RESP_Q135
'A' 'Sim'
'B' 'Não'.
VARIABLE LABELS TX_RESP_Q136 'Em relação às escolas conveniadas, quem assume as responsabilidades sobre Pagamento de docentes: Poder Público/Secretaria de Educação. '.
VALUE LABELS TX_RESP_Q136
'A' 'Sim'
'B' 'Não'.
VARIABLE LABELS TX_RESP_Q137 'Em relação às escolas conveniadas, quem assume as responsabilidades sobre Pagamento de docentes: Escolas/Instituições conveniadas. '.
VALUE LABELS TX_RESP_Q137
'A' 'Sim'
'B' 'Não'.
VARIABLE LABELS TX_RESP_Q138 'Em relação às escolas conveniadas, quem assume as responsabilidades sobre Capacitação de docentes: Poder Público/Secretaria de Educação. '.
VALUE LABELS TX_RESP_Q138
'A' 'Sim'
'B' 'Não'.
VARIABLE LABELS TX_RESP_Q139 'Em relação às escolas conveniadas, quem assume as responsabilidades sobre Capacitação de docentes: Escolas/Instituições conveniadas. '.
VALUE LABELS TX_RESP_Q139
'A' 'Sim'
'B' 'Não'.
VARIABLE LABELS TX_RESP_Q140 'Em relação às escolas conveniadas, quem assume as responsabilidades sobre Fornecimento de merenda escolar: Poder Público/Secretaria de Educação. '.
VALUE LABELS TX_RESP_Q140
'A' 'Sim'
'B' 'Não'.
VARIABLE LABELS TX_RESP_Q141 'Em relação às escolas conveniadas, quem assume as responsabilidades sobre Fornecimento de merenda escolar: Escolas/Instituições conveniadas. '.
VALUE LABELS TX_RESP_Q141
'A' 'Sim'
'B' 'Não'.
VARIABLE LABELS TX_RESP_Q142 'Em relação às escolas conveniadas, quem assume as responsabilidades sobre Transporte escolar: Poder Público/Secretaria de Educação. '.
VALUE LABELS TX_RESP_Q142
'A' 'Sim'
'B' 'Não'.
VARIABLE LABELS TX_RESP_Q143 'Em relação às escolas conveniadas, quem assume as responsabilidades sobre Transporte escolar: Escolas/Instituições conveniadas. '.
VALUE LABELS TX_RESP_Q143
'A' 'Sim'
'B' 'Não'.
VARIABLE LABELS TX_RESP_Q144 'Em relação às escolas conveniadas, quem assume as responsabilidades sobre Materiais didáticos: Poder Público/Secretaria de Educação. '.
VALUE LABELS TX_RESP_Q144
'A' 'Sim'
'B' 'Não'.
VARIABLE LABELS TX_RESP_Q145 'Em relação às escolas conveniadas, quem assume as responsabilidades sobre Materiais didáticos: Escolas/Instituições conveniadas. '.
VALUE LABELS TX_RESP_Q145
'A' 'Sim'
'B' 'Não'.
VARIABLE LABELS TX_RESP_Q146 'A Secretaria possui escolas de Ensino Fundamental?'.
VALUE LABELS TX_RESP_Q146
'A' 'Sim'
'B' 'Não'.
VARIABLE LABELS TX_RESP_Q147 'Com relação ao Ensino Fundamental, a Secretaria possui: Cálculo da demanda por vagas? '.
VALUE LABELS TX_RESP_Q147
'A' 'Sim'
'B' 'Não'.
VARIABLE LABELS TX_RESP_Q148 'Com relação ao Ensino Fundamental, a Secretaria possui: Programa de formação de professores? '.
VALUE LABELS TX_RESP_Q148
'A' 'Sim'
'B' 'Não'.
VARIABLE LABELS TX_RESP_Q149 'Com relação ao Ensino Fundamental, a Secretaria possui: Busca ativa de crianças e jovens? '.
VALUE LABELS TX_RESP_Q149
'A' 'Sim'
'B' 'Não'.
VARIABLE LABELS TX_RESP_Q150 'Com relação ao Ensino Fundamental, a Secretaria possui: Currículo Municipal? '.
VALUE LABELS TX_RESP_Q150
'A' 'Sim'
'B' 'Não'.
VARIABLE LABELS TX_RESP_Q151 'A Secretaria possui escolas de Ensino Médio?'.
VALUE LABELS TX_RESP_Q151
'A' 'Sim'
'B' 'Não'.
VARIABLE LABELS TX_RESP_Q152 'Com relação ao Ensino Médio, a Secretaria possui: Cálculo da demanda por vagas? '.
VALUE LABELS TX_RESP_Q152
'A' 'Sim'
'B' 'Não'.
VARIABLE LABELS TX_RESP_Q153 'Com relação ao Ensino Médio, a Secretaria possui: Programa de formação de professores? '.
VALUE LABELS TX_RESP_Q153
'A' 'Sim'
'B' 'Não'.
VARIABLE LABELS TX_RESP_Q154 'Com relação ao Ensino Médio, a Secretaria possui: Busca ativa de jovens? '.
VALUE LABELS TX_RESP_Q154
'A' 'Sim'
'B' 'Não'.
VARIABLE LABELS TX_RESP_Q155 'Com relação ao Ensino Médio, a Secretaria possui: Currículo Municipal? '.
VALUE LABELS TX_RESP_Q155
'A' 'Sim'
'B' 'Não'.
VARIABLE LABELS TX_RESP_Q156 'A Secretaria utiliza os resultados do IDEB?'.
VALUE LABELS TX_RESP_Q156
'A' 'Sim'
'B' 'Não'.
VARIABLE LABELS TX_RESP_Q157 'De que forma os resultados são utilizados? Planejamento das ações educacionais '.
VALUE LABELS TX_RESP_Q157
'A' 'Sim'
'B' 'Não'.
VARIABLE LABELS TX_RESP_Q158 'De que forma os resultados são utilizados? Promoção de debates sobre a educação '.
VALUE LABELS TX_RESP_Q158
'A' 'Sim'
'B' 'Não'.
VARIABLE LABELS TX_RESP_Q159 'De que forma os resultados são utilizados? Divulgação de informações para a sociedade '.
VALUE LABELS TX_RESP_Q159
'A' 'Sim'
'B' 'Não'.
VARIABLE LABELS TX_RESP_Q160 'De que forma os resultados são utilizados? Subsídios para a formação continuada de professores '.
VALUE LABELS TX_RESP_Q160
'A' 'Sim'
'B' 'Não'.
VARIABLE LABELS TX_RESP_Q161 'De que forma os resultados são utilizados? Implantação de políticas para redução da repetência '.
VALUE LABELS TX_RESP_Q161
'A' 'Sim'
'B' 'Não'.
VARIABLE LABELS TX_RESP_Q162 'De que forma os resultados são utilizados? Revisão ou criação de orientações curriculares '.
VALUE LABELS TX_RESP_Q162
'A' 'Sim'
'B' 'Não'.
VARIABLE LABELS TX_RESP_Q163 'De que forma os resultados são utilizados? Subsídios para a avaliação de programas ou projetos da Secretaria de Educação '.
VALUE LABELS TX_RESP_Q163
'A' 'Sim'
'B' 'Não'.
VARIABLE LABELS TX_RESP_Q164 'De que forma os resultados são utilizados? Produção de materiais didáticos e pedagógicos '.
VALUE LABELS TX_RESP_Q164
'A' 'Sim'
'B' 'Não'.
VARIABLE LABELS TX_RESP_Q165 'De que forma os resultados são utilizados? Recompensa para escolas com melhores resultados '.
VALUE LABELS TX_RESP_Q165
'A' 'Sim'
'B' 'Não'.
VARIABLE LABELS TX_RESP_Q166 'De que forma os resultados são utilizados? Auxílio para unidades escolares com resultados inferiores '.
VALUE LABELS TX_RESP_Q166
'A' 'Sim'
'B' 'Não'.
VARIABLE LABELS TX_RESP_Q167 'De que forma os resultados são utilizados? Subsídios para pagamento de bonificação para professores '.
VALUE LABELS TX_RESP_Q167
'A' 'Sim'
'B' 'Não'.
VARIABLE LABELS TX_RESP_Q168 'De que forma os resultados são utilizados? Estabelecimento de metas de desempenho nos testes de proficiência '.
VALUE LABELS TX_RESP_Q168
'A' 'Sim'
'B' 'Não'.
VARIABLE LABELS TX_RESP_Q169 'De que forma os resultados são utilizados? Monitoramento das escolas '.
VALUE LABELS TX_RESP_Q169
'A' 'Sim'
'B' 'Não'.
VARIABLE LABELS TX_RESP_Q170 'De que forma os resultados são utilizados? Criação de critérios para remanejamento de diretores '.
VALUE LABELS TX_RESP_Q170
'A' 'Sim'
'B' 'Não'.
VARIABLE LABELS TX_RESP_Q171 'De que forma os resultados são utilizados? Outros '.
VALUE LABELS TX_RESP_Q171
'A' 'Sim'
'B' 'Não'.
VARIABLE LABELS TX_RESP_Q172 'A Secretaria orienta as escolas a prepararem seus alunos para as avaliações externas?'.
VALUE LABELS TX_RESP_Q172
'A' 'Sim'
'B' 'Não'.
VARIABLE LABELS TX_RESP_Q173 'A Secretaria Municipal realiza avaliação externa das escolas, além daquelas promovidas pelos governos estadual ou federal?'.
VALUE LABELS TX_RESP_Q173
'A' 'Sim'
'B' 'Não'.
VARIABLE LABELS TX_RESP_Q174 'Indique a periodicidade da avaliação '.
VALUE LABELS TX_RESP_Q174
'A' 'Mensal'
'B' 'Bimestral'
'C' 'Trimestral'
'D' 'Semestral'
'E' 'Anual'
'F' 'Bianual'
'G' 'Outra'.
VARIABLE LABELS TX_RESP_Q175 'Indique as etapas da Educação Básica que são avaliadas pela Secretaria: Creche '.
VALUE LABELS TX_RESP_Q175
'A' 'Sim'
'B' 'Não'.
VARIABLE LABELS TX_RESP_Q176 'Indique as etapas da Educação Básica que são avaliadas pela Secretaria: Pré-escola '.
VALUE LABELS TX_RESP_Q176
'A' 'Sim'
'B' 'Não'.
VARIABLE LABELS TX_RESP_Q177 'Indique as etapas da Educação Básica que são avaliadas pela Secretaria: Ensino Fundamental - Anos iniciais '.
VALUE LABELS TX_RESP_Q177
'A' 'Sim'
'B' 'Não'.
VARIABLE LABELS TX_RESP_Q178 'Indique as etapas da Educação Básica que são avaliadas pela Secretaria: Ensino Fundamental - Anos finais '.
VALUE LABELS TX_RESP_Q178
'A' 'Sim'
'B' 'Não'.
VARIABLE LABELS TX_RESP_Q179 'Indique as etapas da Educação Básica que são avaliadas pela Secretaria: Ensino Médio '.
VALUE LABELS TX_RESP_Q179
'A' 'Sim'
'B' 'Não'.
VARIABLE LABELS TX_RESP_Q180 'Indique o que é avaliado: Instalações e equipamentos '.
VALUE LABELS TX_RESP_Q180
'A' 'Sim'
'B' 'Não'.
VARIABLE LABELS TX_RESP_Q181 'Indique o que é avaliado: Projeto pedagógico '.
VALUE LABELS TX_RESP_Q181
'A' 'Sim'
'B' 'Não'.
VARIABLE LABELS TX_RESP_Q182 'Indique o que é avaliado: Desenvolvimento dos alunos '.
VALUE LABELS TX_RESP_Q182
'A' 'Sim'
'B' 'Não'.
VARIABLE LABELS TX_RESP_Q183 'Indique o que é avaliado: Desempenho dos alunos '.
VALUE LABELS TX_RESP_Q183
'A' 'Sim'
'B' 'Não'.
VARIABLE LABELS TX_RESP_Q184 'Indique o que é avaliado: Desempenho dos professores '.
VALUE LABELS TX_RESP_Q184
'A' 'Sim'
'B' 'Não'.
VARIABLE LABELS TX_RESP_Q185 'Indique o que é avaliado: Outros '.
VALUE LABELS TX_RESP_Q185
'A' 'Sim'
'B' 'Não'.
VARIABLE LABELS TX_RESP_Q186 'Indique quais profissionais vinculados à sua Secretaria possuem plano de carreira: Auxiliares e assistentes da Educação Infantil'.
VALUE LABELS TX_RESP_Q186
'A' 'Sim.'
'B' 'Não.'
'C' 'Não se aplica.'.
VARIABLE LABELS TX_RESP_Q187 'Indique quais profissionais vinculados à sua Secretaria possuem plano de carreira: Professores(as) da Educação Infantil:'.
VALUE LABELS TX_RESP_Q187
'A' 'Sim.'
'B' 'Não.'
'C' 'Não se aplica.'.
VARIABLE LABELS TX_RESP_Q188 'Indique quais profissionais vinculados à sua Secretaria possuem plano de carreira: Professores(as) do Ensino Fundamental:'.
VALUE LABELS TX_RESP_Q188
'A' 'Sim.'
'B' 'Não.'
'C' 'Não se aplica.'.
VARIABLE LABELS TX_RESP_Q189 'Indique quais profissionais vinculados à sua Secretaria possuem plano de carreira: Professores(as) do Ensino Médio:'.
VALUE LABELS TX_RESP_Q189
'A' 'Sim.'
'B' 'Não.'
'C' 'Não se aplica.'.
VARIABLE LABELS TX_RESP_Q190 'Indique quais profissionais vinculados à sua Secretaria possuem plano de carreira: Profissionais não-docentes'.
VALUE LABELS TX_RESP_Q190
'A' 'Sim.'
'B' 'Não.'
'C' 'Não se aplica.'.
VARIABLE LABELS TX_RESP_Q191 'Quais as jornadas de trabalho semanais dos(as) professores(as)? Até 20 horas semanais.'.
VALUE LABELS TX_RESP_Q191
'A' 'Sim'
'B' 'Não'.
VARIABLE LABELS TX_RESP_Q192 'Quais as jornadas de trabalho semanais dos(as) professores(as)? De 21 a 30 horas semanais.'.
VALUE LABELS TX_RESP_Q192
'A' 'Sim'
'B' 'Não'.
VARIABLE LABELS TX_RESP_Q193 'Quais as jornadas de trabalho semanais dos(as) professores(as)? De 31 a 40 horas semanais.'.
VALUE LABELS TX_RESP_Q193
'A' 'Sim'
'B' 'Não'.
VARIABLE LABELS TX_RESP_Q194 'Quais as jornadas de trabalho semanais dos(as) professores(as)? Mais de 40 horas semanais.'.
VALUE LABELS TX_RESP_Q194
'A' 'Sim'
'B' 'Não'.
VARIABLE LABELS TX_RESP_Q195 'O plano de carreira prevê o limite máximo de 2/3 da jornada do(a) professor(a) em sala de aula?'.
VALUE LABELS TX_RESP_Q195
'A' 'Sim'
'B' 'Não'.
VARIABLE LABELS TX_RESP_Q196 'Para TODOS(AS) os(as) professores(as) com jornada de trabalho de 40 horas semanais o VENCIMENTO BÁSICO INICIAL é igual ou superior a R$ 2.557,74 mensais?'.
VALUE LABELS TX_RESP_Q196
'A' 'Sim'
'B' 'Não'.
VARIABLE LABELS TX_RESP_Q197 'Quais critérios de progressão ou promoção são utilizados no plano de carreira do magistério? Tempo de efetivo exercício no cargo '.
VALUE LABELS TX_RESP_Q197
'A' 'Sim'
'B' 'Não'.
VARIABLE LABELS TX_RESP_Q198 'Quais critérios de progressão ou promoção são utilizados no plano de carreira do magistério? Qualificação '.
VALUE LABELS TX_RESP_Q198
'A' 'Sim'
'B' 'Não'.
VARIABLE LABELS TX_RESP_Q199 'Quais critérios de progressão ou promoção são utilizados no plano de carreira do magistério? Titulação '.
VALUE LABELS TX_RESP_Q199
'A' 'Sim'
'B' 'Não'.
VARIABLE LABELS TX_RESP_Q200 'Quais critérios de progressão ou promoção são utilizados no plano de carreira do magistério? Assiduidade '.
VALUE LABELS TX_RESP_Q200
'A' 'Sim'
'B' 'Não'.
VARIABLE LABELS TX_RESP_Q201 'Quais critérios de progressão ou promoção são utilizados no plano de carreira do magistério? Avaliação de desempenho '.
VALUE LABELS TX_RESP_Q201
'A' 'Sim'
'B' 'Não'.
VARIABLE LABELS TX_RESP_Q202 'Quais critérios de progressão ou promoção são utilizados no plano de carreira do magistério? Prova de conhecimentos para professores '.
VALUE LABELS TX_RESP_Q202
'A' 'Sim'
'B' 'Não'.
VARIABLE LABELS TX_RESP_Q203 'Quais critérios de progressão ou promoção são utilizados no plano de carreira do magistério? Desempenho dos alunos em avaliação externa '.
VALUE LABELS TX_RESP_Q203
'A' 'Sim'
'B' 'Não'.
VARIABLE LABELS TX_RESP_Q204 'Quais critérios de progressão ou promoção são utilizados no plano de carreira do magistério? Outros '.
VALUE LABELS TX_RESP_Q204
'A' 'Sim'
'B' 'Não'.
VARIABLE LABELS TX_RESP_Q205 'A remuneração dos(as) professores(as) de Educação Infantil, comparada com a dos(as) professores(as) com o mesmo nível de formação que atuam no Ensino Fundamental:'.
VALUE LABELS TX_RESP_Q205
'A' 'É inferior à dos(as) professores(as) de Ensino Fundamental.'
'B' 'É equivalente à dos(as) professores(as) de Ensino Fundamental.'
'C' 'É superior à dos(as) professores(as) de Ensino Fundamental.'
'D' 'Não existe este profissional na rede.'.
VARIABLE LABELS TX_RESP_Q206 'A remuneração dos(as) professores(as) de Ensino Médio, comparada com a dos(as) professores(as) com o mesmo nível de formação que atuam no Ensino Fundamental:'.
VALUE LABELS TX_RESP_Q206
'A' 'É inferior à dos(as) professores(as) de Ensino Fundamental.'
'B' 'É equivalente à dos(as) professores(as) de Ensino Fundamental.'
'C' 'É superior à dos(as) professores(as) de Ensino Fundamental.'
'D' 'Não existe este profissional na rede.'.
VARIABLE LABELS TX_RESP_Q207 'Neste ano, quais temas foram abordados em cursos de formação continuada para professores da rede? Conteúdo e compreensão dos conceitos da(s) área(s) de ensino:'.
VALUE LABELS TX_RESP_Q207
'A' 'Sim'
'B' 'Não'.
VARIABLE LABELS TX_RESP_Q208 'Neste ano, quais temas foram abordados em cursos de formação continuada para professores da rede? Avaliação da aprendizagem:'.
VALUE LABELS TX_RESP_Q208
'A' 'Sim'
'B' 'Não'.
VARIABLE LABELS TX_RESP_Q209 'Neste ano, quais temas foram abordados em cursos de formação continuada para professores da rede? Avaliação em larga escala:'.
VALUE LABELS TX_RESP_Q209
'A' 'Sim'
'B' 'Não'.
VARIABLE LABELS TX_RESP_Q210 'Neste ano, quais temas foram abordados em cursos de formação continuada para professores da rede? Metodologias de ensino:'.
VALUE LABELS TX_RESP_Q210
'A' 'Sim'
'B' 'Não'.
VARIABLE LABELS TX_RESP_Q211 'Neste ano, quais temas foram abordados em cursos de formação continuada para professores da rede? Conhecimento do currículo:'.
VALUE LABELS TX_RESP_Q211
'A' 'Sim'
'B' 'Não'.
VARIABLE LABELS TX_RESP_Q212 'Neste ano, quais temas foram abordados em cursos de formação continuada para professores da rede? Gestão da sala de aula:'.
VALUE LABELS TX_RESP_Q212
'A' 'Sim'
'B' 'Não'.
VARIABLE LABELS TX_RESP_Q213 'Neste ano, quais temas foram abordados em cursos de formação continuada para professores da rede? Educação inclusiva:'.
VALUE LABELS TX_RESP_Q213
'A' 'Sim'
'B' 'Não'.
VARIABLE LABELS TX_RESP_Q214 'Neste ano, quais temas foram abordados em cursos de formação continuada para professores da rede? Novas tecnologias:'.
VALUE LABELS TX_RESP_Q214
'A' 'Sim'
'B' 'Não'.
VARIABLE LABELS TX_RESP_Q215 'Neste ano, quais temas foram abordados em cursos de formação continuada para professores da rede? Gestão e administração escolar:'.
VALUE LABELS TX_RESP_Q215
'A' 'Sim'
'B' 'Não'.
VARIABLE LABELS TX_RESP_Q216 'Sobre este questionário, avalie: Facilidade de preenchimento das respostas:'.
VALUE LABELS TX_RESP_Q216
'A' 'Muito difícil'
'B' 'Difícil'
'C' 'Nem fácil e nem difícil'
'D' 'Fácil'
'E' 'Muito fácil'.
VARIABLE LABELS TX_RESP_Q217 'Sobre este questionário, avalie: A compreensão dos termos utilizados no questionário'.
VALUE LABELS TX_RESP_Q217
'A' 'Muito difícil'
'B' 'Difícil'
'C' 'Nem fácil e nem difícil'
'D' 'Fácil'
'E' 'Muito fácil'.
