/*****************************************************************************************************/
/*  INEP/Daeb-Diretoria de Avaliação da Educação Básica                                          */ 
/*                                   			                                    */
/*  Coordenação-Geral de Instrumentos e medidas 		                  */
/*----------------------------------------------------------------------------------------------------------------------------*/
/*  PROGRAMA:                                                                                                      */
/*           INPUT_SPSS_TS_DIRETOR.sps                                                                 */
/*----------------------------------------------------------------------------------------------------------------------------*/
/*DESCRICAO: PROGRAMA PARA LEITURA DO QUESTIONÁRIO DO DIRETOR        */
/*                     DO SAEB 2019                                                                                */
/*****************************************************************************************************/
/*****************************************************************************************************/
/* Obs:                                                                                                                    */
/* 		                                                                                           */
/* Para abrir os microdados é necessário salvar este programa e o arquivo                    */
/* TS_DIRETOR.CSV no diretório C:\ do computador.	                        	 */
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
/FILE="C:\TS_DIRETOR.csv"
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
ID_MUNICIPIO F7.0
ID_AREA F1.0
ID_ESCOLA F8.0
IN_PUBLICA F1.0
ID_LOCALIZACAO F1.0
IN_PREENCHIMENTO_QUESTIONARIO F1.0
TX_RESP_Q001 A8
TX_RESP_Q002 F4.0
TX_RESP_Q003 F4.0
TX_RESP_Q004 F4.0
TX_RESP_Q005 F4.0
TX_RESP_Q006 F4.0
TX_RESP_Q007 F4.0
TX_RESP_Q008 F4.0
TX_RESP_Q009 F4.0
TX_RESP_Q010 F4.0
TX_RESP_Q011 F4.0
TX_RESP_Q012 F4.0
TX_RESP_Q013 F4.0
TX_RESP_Q014 F4.0
TX_RESP_Q015 F4.0
TX_RESP_Q016 F4.0
TX_RESP_Q017 F4.0
TX_RESP_Q018 F4.0
TX_RESP_Q019 F4.0
TX_RESP_Q020 F4.0
TX_RESP_Q021 F4.0
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
TX_RESP_Q067 F4.0
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
TX_RESP_Q119 F4.0
TX_RESP_Q120 F4.0
TX_RESP_Q121 F4.0
TX_RESP_Q122 F4.0
TX_RESP_Q123 F4.0
TX_RESP_Q124 F4.0
TX_RESP_Q125 A8
TX_RESP_Q126 A8
TX_RESP_Q127 A8
TX_RESP_Q128 A8
TX_RESP_Q129 A8
TX_RESP_Q130 F4.0
TX_RESP_Q131 A8
TX_RESP_Q132 F4.0
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
TX_RESP_Q217 A8
TX_RESP_Q218 A8
TX_RESP_Q219 A8
TX_RESP_Q220 A8
TX_RESP_Q221 A8
TX_RESP_Q222 A8
TX_RESP_Q223 A8
TX_RESP_Q224 A8
TX_RESP_Q225 A8
TX_RESP_Q226 A8
TX_RESP_Q227 A8
TX_RESP_Q228 A8
TX_RESP_Q229 A8
TX_RESP_Q230 A8
TX_RESP_Q231 A8
TX_RESP_Q232 A8
TX_RESP_Q233 A8
TX_RESP_Q234 A8
TX_RESP_Q235 A8
TX_RESP_Q236 A8
TX_RESP_Q237 A8
TX_RESP_Q238 A8
TX_RESP_Q239 A8
TX_RESP_Q240 A8
TX_RESP_Q241 A8
TX_RESP_Q242 A8
TX_RESP_Q243 A8
TX_RESP_Q244 A8
TX_RESP_Q245 A8
TX_RESP_Q246 A8
TX_RESP_Q247 A8
TX_RESP_Q248 A8
TX_RESP_Q249 A8
TX_RESP_Q250 A8
TX_RESP_Q251 A8
TX_RESP_Q252 A8
TX_RESP_Q253 A8.

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
VARIABLE LABELS ID_MUNICIPIO 'Máscaras dos Códigos de Municípios (são códigos fictícios)'.
VARIABLE LABELS ID_AREA 'Área'.
VALUE LABELS ID_AREA
1 'Capital'
2 'Interior'.
VARIABLE LABELS ID_ESCOLA 'Máscaras dos Códigos de Escola (são códigos fictícios)'.
VARIABLE LABELS IN_PUBLICA 'Indica se a escola é pública ou não'.
VALUE LABELS IN_PUBLICA
0 'Não pública'
1 'Pública'.
VARIABLE LABELS ID_LOCALIZACAO 'Localização'.
VALUE LABELS ID_LOCALIZACAO
1 'Urbana'
2 'Rural'.
VARIABLE LABELS IN_PREENCHIMENTO_QUESTIONARIO 'Indicador de preenchimento do questionário'.
VALUE LABELS IN_PREENCHIMENTO_QUESTIONARIO
0 'Não preenchido'
1 'Preenchido parcial ou totalmente'
2 'Não preenchido'.
VARIABLE LABELS TX_RESP_Q001 'Qual é a sua cor ou raça?'.
VALUE LABELS TX_RESP_Q001
'A' 'Branca'
'B' 'Preta'
'C' 'Parda'
'D' 'Amarela'
'E' 'Indígena'
'F' 'Não quero declarar'.
VARIABLE LABELS TX_RESP_Q002 'Por quanto tempo você trabalhou como professor(a) antes de se tornar diretor(a)? Anos '.
VARIABLE LABELS TX_RESP_Q003 'Por quanto tempo você trabalhou como professor(a) antes de se tornar diretor(a)? Meses  '.
VARIABLE LABELS TX_RESP_Q004 'Você possui quanto tempo de experiência como diretor(a) de escola? Anos '.
VARIABLE LABELS TX_RESP_Q005 'Você possui quanto tempo de experiência como diretor(a) de escola? Meses '.
VARIABLE LABELS TX_RESP_Q006 'Há quanto tempo você é diretor(a) desta escola? Anos '.
VARIABLE LABELS TX_RESP_Q007 'Há quanto tempo você é diretor(a) desta escola? Meses '.
VARIABLE LABELS TX_RESP_Q008 'Considerando todas as suas atividades profissionais remuneradas, quantas horas você trabalha em uma semana normal? '.
VARIABLE LABELS TX_RESP_Q009 'Quantas horas você trabalha em uma semana normal em atividades relacionadas à educação?'.
VARIABLE LABELS TX_RESP_Q010 'Na semana normal de trabalho, quantas horas você trabalha para esta escola?'.
VARIABLE LABELS TX_RESP_Q011 'Em uma semana normal de trabalho, quantas horas você costuma gastar, aproximadamente, com as seguintes atividades para esta escola: Prestação de contas '.
VARIABLE LABELS TX_RESP_Q012 'Em uma semana normal de trabalho, quantas horas você costuma gastar, aproximadamente, com as seguintes atividades para esta escola: Reunião com professores(as) '.
VARIABLE LABELS TX_RESP_Q013 'Em uma semana normal de trabalho, quantas horas você costuma gastar, aproximadamente, com as seguintes atividades para esta escola: Atendimento aos pais ou responsáveis '.
VARIABLE LABELS TX_RESP_Q014 'Em uma semana normal de trabalho, quantas horas você costuma gastar, aproximadamente, com as seguintes atividades para esta escola: Gerenciamento de conflitos '.
VARIABLE LABELS TX_RESP_Q015 'Em uma semana normal de trabalho, quantas horas você costuma gastar, aproximadamente, com as seguintes atividades para esta escola: Atendimento aos(às) alunos(as) '.
VARIABLE LABELS TX_RESP_Q016 'Em uma semana normal de trabalho, quantas horas você costuma gastar, aproximadamente, com as seguintes atividades para esta escola: Atendimento individual aos(às) professores(as) '.
VARIABLE LABELS TX_RESP_Q017 'Em uma semana normal de trabalho, quantas horas você costuma gastar, aproximadamente, com as seguintes atividades para esta escola: Demandas da Secretaria de Educação '.
VARIABLE LABELS TX_RESP_Q018 'Em uma semana normal de trabalho, quantas horas você costuma gastar, aproximadamente, com as seguintes atividades para esta escola: Merenda '.
VARIABLE LABELS TX_RESP_Q019 'Em uma semana normal de trabalho, quantas horas você costuma gastar, aproximadamente, com as seguintes atividades para esta escola: Manutenção '.
VARIABLE LABELS TX_RESP_Q020 'Em uma semana normal de trabalho, quantas horas você costuma gastar, aproximadamente, com as seguintes atividades para esta escola: Segurança '.
VARIABLE LABELS TX_RESP_Q021 'Em uma semana normal de trabalho, quantas horas você costuma gastar, aproximadamente, com as seguintes atividades para esta escola: Outras atividades '.
VARIABLE LABELS TX_RESP_Q022 'Quanto você sente estar preparado(a) para realizar a seguinte atividade: Liderar a equipe escolar.'.
VALUE LABELS TX_RESP_Q022
'A' 'Nada preparado'
'B' 'Pouco preparado'
'C' 'Preparado'
'D' 'Muito preparado'.
VARIABLE LABELS TX_RESP_Q023 'Quanto você sente estar preparado(a) para realizar a seguinte atividade: Atender as demandas administrativas da rede escolar.'.
VALUE LABELS TX_RESP_Q023
'A' 'Nada preparado'
'B' 'Pouco preparado'
'C' 'Preparado'
'D' 'Muito preparado'.
VARIABLE LABELS TX_RESP_Q024 'Quanto você sente estar preparado(a) para realizar a seguinte atividade: Atender as demandas administrativas da escola.'.
VALUE LABELS TX_RESP_Q024
'A' 'Nada preparado'
'B' 'Pouco preparado'
'C' 'Preparado'
'D' 'Muito preparado'.
VARIABLE LABELS TX_RESP_Q025 'Quanto você sente estar preparado(a) para realizar a seguinte atividade: Garantir a manutenção da escola.'.
VALUE LABELS TX_RESP_Q025
'A' 'Nada preparado'
'B' 'Pouco preparado'
'C' 'Preparado'
'D' 'Muito preparado'.
VARIABLE LABELS TX_RESP_Q026 'Quanto você sente estar preparado(a) para realizar a seguinte atividade: Resolver as demandas dos familiares dos(as) alunos(as).'.
VALUE LABELS TX_RESP_Q026
'A' 'Nada preparado'
'B' 'Pouco preparado'
'C' 'Preparado'
'D' 'Muito preparado'.
VARIABLE LABELS TX_RESP_Q027 'Quanto você sente estar preparado(a) para realizar a seguinte atividade: Mobilizar a comunidade para auxiliar a escola.'.
VALUE LABELS TX_RESP_Q027
'A' 'Nada preparado'
'B' 'Pouco preparado'
'C' 'Preparado'
'D' 'Muito preparado'.
VARIABLE LABELS TX_RESP_Q028 'Quanto você sente estar preparado(a) para realizar a seguinte atividade: Coordenar a implantação do Projeto Político-Pedagógico.'.
VALUE LABELS TX_RESP_Q028
'A' 'Nada preparado'
'B' 'Pouco preparado'
'C' 'Preparado'
'D' 'Muito preparado'.
VARIABLE LABELS TX_RESP_Q029 'Quanto você sente estar preparado(a) para realizar a seguinte atividade: Administrar conflitos.'.
VALUE LABELS TX_RESP_Q029
'A' 'Nada preparado'
'B' 'Pouco preparado'
'C' 'Preparado'
'D' 'Muito preparado'.
VARIABLE LABELS TX_RESP_Q030 'Quanto você sente estar preparado(a) para realizar a seguinte atividade: Manter os(as) professores(as) motivados(as).'.
VALUE LABELS TX_RESP_Q030
'A' 'Nada preparado'
'B' 'Pouco preparado'
'C' 'Preparado'
'D' 'Muito preparado'.
VARIABLE LABELS TX_RESP_Q031 'Quanto você sente estar preparado(a) para realizar a seguinte atividade: Avaliar o desempenho dos(as) professores(as).'.
VALUE LABELS TX_RESP_Q031
'A' 'Nada preparado'
'B' 'Pouco preparado'
'C' 'Preparado'
'D' 'Muito preparado'.
VARIABLE LABELS TX_RESP_Q032 'Quanto você sente estar preparado(a) para realizar a seguinte atividade: Realizar a autoavaliação institucional.'.
VALUE LABELS TX_RESP_Q032
'A' 'Nada preparado'
'B' 'Pouco preparado'
'C' 'Preparado'
'D' 'Muito preparado'.
VARIABLE LABELS TX_RESP_Q033 'Quanto você sente estar preparado(a) para realizar a seguinte atividade: Melhorar os processos pedagógicos da sua escola.'.
VALUE LABELS TX_RESP_Q033
'A' 'Nada preparado'
'B' 'Pouco preparado'
'C' 'Preparado'
'D' 'Muito preparado'.
VARIABLE LABELS TX_RESP_Q034 'Indique quais são as etapas educacionais atendidas pela sua escola: Educação Infantil e Creche (0 a 3 anos).'.
VALUE LABELS TX_RESP_Q034
'A' 'Sim'
'B' 'Não'.
VARIABLE LABELS TX_RESP_Q035 'Indique quais são as etapas educacionais atendidas pela sua escola: Educação Infantil e Pré-escola (4 e 5 anos).'.
VALUE LABELS TX_RESP_Q035
'A' 'Sim'
'B' 'Não'.
VARIABLE LABELS TX_RESP_Q036 'Indique quais são as etapas educacionais atendidas pela sua escola: Anos Iniciais do Ensino Fundamental.'.
VALUE LABELS TX_RESP_Q036
'A' 'Sim'
'B' 'Não'.
VARIABLE LABELS TX_RESP_Q037 'Indique quais são as etapas educacionais atendidas pela sua escola: Anos Finais do Ensino Fundamental.'.
VALUE LABELS TX_RESP_Q037
'A' 'Sim'
'B' 'Não'.
VARIABLE LABELS TX_RESP_Q038 'Indique quais são as etapas educacionais atendidas pela sua escola: Ensino Médio.'.
VALUE LABELS TX_RESP_Q038
'A' 'Sim'
'B' 'Não'.
VARIABLE LABELS TX_RESP_Q039 'A educação infantil funciona na sede da escola? '.
VALUE LABELS TX_RESP_Q039
'A' 'Sim'
'B' 'Não'.
VARIABLE LABELS TX_RESP_Q040 'A área externa (pátio, área verde e parque) é utilizada em horários diferenciados pelos(as) alunos(as) da Educação Infantil? '.
VALUE LABELS TX_RESP_Q040
'A' 'Sim'
'B' 'Não'.
VARIABLE LABELS TX_RESP_Q041 'Indique o quanto concorda ou discorda das afirmativas relativas às condições de funcionamento desta escola neste ano: Os recursos financeiros foram suficientes.'.
VALUE LABELS TX_RESP_Q041
'A' 'Discordo fortemente'
'B' 'Discordo'
'C' 'Concordo'
'D' 'Concordo fortemente'.
VARIABLE LABELS TX_RESP_Q042 'Indique o quanto concorda ou discorda das afirmativas relativas às condições de funcionamento desta escola neste ano: Havia professores(as) para todas as disciplinas.'.
VALUE LABELS TX_RESP_Q042
'A' 'Discordo fortemente'
'B' 'Discordo'
'C' 'Concordo'
'D' 'Concordo fortemente'.
VARIABLE LABELS TX_RESP_Q043 'Indique o quanto concorda ou discorda das afirmativas relativas às condições de funcionamento desta escola neste ano: Havia quantidade suficiente de pessoal administrativo.'.
VALUE LABELS TX_RESP_Q043
'A' 'Discordo fortemente'
'B' 'Discordo'
'C' 'Concordo'
'D' 'Concordo fortemente'.
VARIABLE LABELS TX_RESP_Q044 'Indique o quanto concorda ou discorda das afirmativas relativas às condições de funcionamento desta escola neste ano: Havia quantidade suficiente de pessoal para apoio pedagógico (coordenador, orientador etc.).'.
VALUE LABELS TX_RESP_Q044
'A' 'Discordo fortemente'
'B' 'Discordo'
'C' 'Concordo'
'D' 'Concordo fortemente'.
VARIABLE LABELS TX_RESP_Q045 'Indique o quanto concorda ou discorda das afirmativas relativas às condições de funcionamento desta escola neste ano: Os recursos pedagógicos foram suficientes.'.
VALUE LABELS TX_RESP_Q045
'A' 'Discordo fortemente'
'B' 'Discordo'
'C' 'Concordo'
'D' 'Concordo fortemente'.
VARIABLE LABELS TX_RESP_Q046 'Indique o quanto concorda ou discorda das afirmativas relativas às condições de funcionamento desta escola neste ano: Recebi apoio da Secretaria de Educação.'.
VALUE LABELS TX_RESP_Q046
'A' 'Discordo fortemente'
'B' 'Discordo'
'C' 'Concordo'
'D' 'Concordo fortemente'.
VARIABLE LABELS TX_RESP_Q047 'Indique o quanto concorda ou discorda das afirmativas relativas às condições de funcionamento desta escola neste ano: Os(As) professores(as) foram assíduos(as).'.
VALUE LABELS TX_RESP_Q047
'A' 'Discordo fortemente'
'B' 'Discordo'
'C' 'Concordo'
'D' 'Concordo fortemente'.
VARIABLE LABELS TX_RESP_Q048 'Indique o quanto concorda ou discorda das afirmativas relativas às condições de funcionamento desta escola neste ano: Os(As) professores(as) iniciaram as aulas no horário marcado.'.
VALUE LABELS TX_RESP_Q048
'A' 'Discordo fortemente'
'B' 'Discordo'
'C' 'Concordo'
'D' 'Concordo fortemente'.
VARIABLE LABELS TX_RESP_Q049 'Indique o quanto concorda ou discorda das afirmativas relativas às condições de funcionamento desta escola neste ano: As substituições das ausências de professores(as) foram facilmente realizadas.'.
VALUE LABELS TX_RESP_Q049
'A' 'Discordo fortemente'
'B' 'Discordo'
'C' 'Concordo'
'D' 'Concordo fortemente'.
VARIABLE LABELS TX_RESP_Q050 'Indique o quanto concorda ou discorda das afirmativas relativas às condições de funcionamento desta escola neste ano: Os(As) alunos(as) foram assíduos(as).'.
VALUE LABELS TX_RESP_Q050
'A' 'Discordo fortemente'
'B' 'Discordo'
'C' 'Concordo'
'D' 'Concordo fortemente'.
VARIABLE LABELS TX_RESP_Q051 'Indique o quanto concorda ou discorda das afirmativas relativas às condições de funcionamento desta escola neste ano: Troquei experiências com diretores(as) de outras escolas.'.
VALUE LABELS TX_RESP_Q051
'A' 'Discordo fortemente'
'B' 'Discordo'
'C' 'Concordo'
'D' 'Concordo fortemente'.
VARIABLE LABELS TX_RESP_Q052 'Indique o quanto concorda ou discorda das afirmativas relativas às condições de funcionamento desta escola neste ano: A comunidade apoiou a gestão da escola.'.
VALUE LABELS TX_RESP_Q052
'A' 'Discordo fortemente'
'B' 'Discordo'
'C' 'Concordo'
'D' 'Concordo fortemente'.
VARIABLE LABELS TX_RESP_Q053 'Indique o quanto concorda ou discorda das afirmativas relativas às condições de funcionamento desta escola neste ano: A comunidade executou trabalhos voluntários na escola.'.
VALUE LABELS TX_RESP_Q053
'A' 'Discordo fortemente'
'B' 'Discordo'
'C' 'Concordo'
'D' 'Concordo fortemente'.
VARIABLE LABELS TX_RESP_Q054 'Indique o quanto concorda ou discorda das afirmativas relativas às condições de funcionamento desta escola neste ano: As famílias contribuíram com o trabalho pedagógico.'.
VALUE LABELS TX_RESP_Q054
'A' 'Discordo fortemente'
'B' 'Discordo'
'C' 'Concordo'
'D' 'Concordo fortemente'.
VARIABLE LABELS TX_RESP_Q055 'Os livros didáticos foram entregues antes do início das aulas '.
VALUE LABELS TX_RESP_Q055
'A' 'Discordo fortemente'
'B' 'Discordo'
'C' 'Concordo'
'D' 'Concordo fortemente'.
VARIABLE LABELS TX_RESP_Q056 'Todos(as) os(as) alunos(as) receberam livros didáticos '.
VALUE LABELS TX_RESP_Q056
'A' 'Discordo fortemente'
'B' 'Discordo'
'C' 'Concordo'
'D' 'Concordo fortemente'.
VARIABLE LABELS TX_RESP_Q057 'O calendário escolar pré-estabelecido foi cumprido sem interrupções?'.
VALUE LABELS TX_RESP_Q057
'A' 'Sim'
'B' 'Não'.
VARIABLE LABELS TX_RESP_Q058 'Qual o motivo da interrupção do calendário? Falta de água '.
VALUE LABELS TX_RESP_Q058
'A' 'Sim'
'B' 'Não'.
VARIABLE LABELS TX_RESP_Q059 'Qual o motivo da interrupção do calendário? Falta de energia '.
VALUE LABELS TX_RESP_Q059
'A' 'Sim'
'B' 'Não'.
VARIABLE LABELS TX_RESP_Q060 'Qual o motivo da interrupção do calendário? Falta de merenda '.
VALUE LABELS TX_RESP_Q060
'A' 'Sim'
'B' 'Não'.
VARIABLE LABELS TX_RESP_Q061 'Qual o motivo da interrupção do calendário? Greve de professores '.
VALUE LABELS TX_RESP_Q061
'A' 'Sim'
'B' 'Não'.
VARIABLE LABELS TX_RESP_Q062 'Qual o motivo da interrupção do calendário? Vandalismo nas instalações '.
VALUE LABELS TX_RESP_Q062
'A' 'Sim'
'B' 'Não'.
VARIABLE LABELS TX_RESP_Q063 'Qual o motivo da interrupção do calendário? Problemas de infraestrutura da escola '.
VALUE LABELS TX_RESP_Q063
'A' 'Sim'
'B' 'Não'.
VARIABLE LABELS TX_RESP_Q064 'Qual o motivo da interrupção do calendário? Eventos externos (paralisação, bloqueio etc) '.
VALUE LABELS TX_RESP_Q064
'A' 'Sim'
'B' 'Não'.
VARIABLE LABELS TX_RESP_Q065 'Qual o motivo da interrupção do calendário? Eventos climáticos (inundação, desmoronamento etc) '.
VALUE LABELS TX_RESP_Q065
'A' 'Sim'
'B' 'Não'.
VARIABLE LABELS TX_RESP_Q066 'Qual o motivo da interrupção do calendário? Outros '.
VALUE LABELS TX_RESP_Q066
'A' 'Sim'
'B' 'Não'.
VARIABLE LABELS TX_RESP_Q067 'Por quantos dias ocorreu a interrupção: '.
VARIABLE LABELS TX_RESP_Q068 'Sobre os fatos listados abaixo, diga a frequência com que ocorreram neste ano, nesta escola: Profissionais foram vítimas de atentado à vida '.
VALUE LABELS TX_RESP_Q068
'A' 'Nunca'
'B' 'Poucas vezes'
'C' 'Várias vezes'.
VARIABLE LABELS TX_RESP_Q069 'Sobre os fatos listados abaixo, diga a frequência com que ocorreram neste ano, nesta escola: Profissionais foram ameaçados(as) por algum aluno '.
VALUE LABELS TX_RESP_Q069
'A' 'Nunca'
'B' 'Poucas vezes'
'C' 'Várias vezes'.
VARIABLE LABELS TX_RESP_Q070 'Sobre os fatos listados abaixo, diga a frequência com que ocorreram neste ano, nesta escola: Houve ocorrência de roubo com uso de violência '.
VALUE LABELS TX_RESP_Q070
'A' 'Nunca'
'B' 'Poucas vezes'
'C' 'Várias vezes'.
VARIABLE LABELS TX_RESP_Q071 'Sobre os fatos listados abaixo, diga a frequência com que ocorreram neste ano, nesta escola: Houve tráfico de drogas na escola '.
VALUE LABELS TX_RESP_Q071
'A' 'Nunca'
'B' 'Poucas vezes'
'C' 'Várias vezes'.
VARIABLE LABELS TX_RESP_Q072 'Sobre os fatos listados abaixo, diga a frequência com que ocorreram neste ano, nesta escola: Alunos(as) frequentaram a escola sob efeito de bebida alcoólica '.
VALUE LABELS TX_RESP_Q072
'A' 'Nunca'
'B' 'Poucas vezes'
'C' 'Várias vezes'.
VARIABLE LABELS TX_RESP_Q073 'Sobre os fatos listados abaixo, diga a frequência com que ocorreram neste ano, nesta escola: Alunos(as) frequentaram a escola sob efeito de drogas ilícitas '.
VALUE LABELS TX_RESP_Q073
'A' 'Nunca'
'B' 'Poucas vezes'
'C' 'Várias vezes'.
VARIABLE LABELS TX_RESP_Q074 'Sobre os fatos listados abaixo, diga a frequência com que ocorreram neste ano, nesta escola: Alunos(as) frequentaram a escola portando arma (revólver, faca, canivete etc.) '.
VALUE LABELS TX_RESP_Q074
'A' 'Nunca'
'B' 'Poucas vezes'
'C' 'Várias vezes'.
VARIABLE LABELS TX_RESP_Q075 'Sobre os fatos listados abaixo, diga a frequência com que ocorreram neste ano, nesta escola: Episódios de violência ocasionaram cancelamento das aulas '.
VALUE LABELS TX_RESP_Q075
'A' 'Nunca'
'B' 'Poucas vezes'
'C' 'Várias vezes'.
VARIABLE LABELS TX_RESP_Q076 'Há na escola espaço destinado exclusivamente à amamentação? '.
VALUE LABELS TX_RESP_Q076
'A' 'Sim'
'B' 'Não'.
VARIABLE LABELS TX_RESP_Q077 'Há na escola local para armazenamento de leite materno? '.
VALUE LABELS TX_RESP_Q077
'A' 'Sim'
'B' 'Não'.
VARIABLE LABELS TX_RESP_Q078 'Há na escola banheiro com chuveiro para uso das crianças? '.
VALUE LABELS TX_RESP_Q078
'A' 'Sim'
'B' 'Não'.
VARIABLE LABELS TX_RESP_Q079 'Sobre a área externa da sua escola (pátio, parque e área verde), indique os itens existentes: Bebedouro ao alcance das crianças '.
VALUE LABELS TX_RESP_Q079
'A' 'Sim'
'B' 'Não'.
VARIABLE LABELS TX_RESP_Q080 'Sobre a área externa da sua escola (pátio, parque e área verde), indique os itens existentes: Banheiro infantil '.
VALUE LABELS TX_RESP_Q080
'A' 'Sim'
'B' 'Não'.
VARIABLE LABELS TX_RESP_Q081 'Sobre a área externa da sua escola (pátio, parque e área verde), indique os itens existentes: Área sombreada '.
VALUE LABELS TX_RESP_Q081
'A' 'Sim'
'B' 'Não'.
VARIABLE LABELS TX_RESP_Q082 'Sobre a área externa da sua escola (pátio, parque e área verde), indique os itens existentes: Área coberta '.
VALUE LABELS TX_RESP_Q082
'A' 'Sim'
'B' 'Não'.
VARIABLE LABELS TX_RESP_Q083 'Sobre a área externa da sua escola (pátio, parque e área verde), indique os itens existentes: Vegetação e jardim '.
VALUE LABELS TX_RESP_Q083
'A' 'Sim'
'B' 'Não'.
VARIABLE LABELS TX_RESP_Q084 'Sobre a área externa da sua escola (pátio, parque e área verde), indique os itens existentes: Horta '.
VALUE LABELS TX_RESP_Q084
'A' 'Sim'
'B' 'Não'.
VARIABLE LABELS TX_RESP_Q085 'Quais os tipos de solo ou revestimento do solo da área externa da sua escola? Piso emborrachado '.
VALUE LABELS TX_RESP_Q085
'A' 'Sim'
'B' 'Não'.
VARIABLE LABELS TX_RESP_Q086 'Quais os tipos de solo ou revestimento do solo da área externa da sua escola? Cimento liso '.
VALUE LABELS TX_RESP_Q086
'A' 'Sim'
'B' 'Não'.
VARIABLE LABELS TX_RESP_Q087 'Quais os tipos de solo ou revestimento do solo da área externa da sua escola? Cimento áspero '.
VALUE LABELS TX_RESP_Q087
'A' 'Sim'
'B' 'Não'.
VARIABLE LABELS TX_RESP_Q088 'Quais os tipos de solo ou revestimento do solo da área externa da sua escola? Areia '.
VALUE LABELS TX_RESP_Q088
'A' 'Sim'
'B' 'Não'.
VARIABLE LABELS TX_RESP_Q089 'Quais os tipos de solo ou revestimento do solo da área externa da sua escola? Grama '.
VALUE LABELS TX_RESP_Q089
'A' 'Sim'
'B' 'Não'.
VARIABLE LABELS TX_RESP_Q090 'Quais os tipos de solo ou revestimento do solo da área externa da sua escola? Terra '.
VALUE LABELS TX_RESP_Q090
'A' 'Sim'
'B' 'Não'.
VARIABLE LABELS TX_RESP_Q091 'Quais os tipos de solo ou revestimento do solo da área externa da sua escola? Cerâmica '.
VALUE LABELS TX_RESP_Q091
'A' 'Sim'
'B' 'Não'.
VARIABLE LABELS TX_RESP_Q092 'Quais os tipos de solo ou revestimento do solo da área externa da sua escola? Pedras '.
VALUE LABELS TX_RESP_Q092
'A' 'Sim'
'B' 'Não'.
VARIABLE LABELS TX_RESP_Q093 'Quais equipamentos existem nas áreas externas de recreação da sua escola? Tanque de areia '.
VALUE LABELS TX_RESP_Q093
'A' 'Sim'
'B' 'Não'.
VARIABLE LABELS TX_RESP_Q094 'Quais equipamentos existem nas áreas externas de recreação da sua escola? Gira-gira '.
VALUE LABELS TX_RESP_Q094
'A' 'Sim'
'B' 'Não'.
VARIABLE LABELS TX_RESP_Q095 'Quais equipamentos existem nas áreas externas de recreação da sua escola? Túnel lúdico '.
VALUE LABELS TX_RESP_Q095
'A' 'Sim'
'B' 'Não'.
VARIABLE LABELS TX_RESP_Q096 'Quais equipamentos existem nas áreas externas de recreação da sua escola? Gangorra '.
VALUE LABELS TX_RESP_Q096
'A' 'Sim'
'B' 'Não'.
VARIABLE LABELS TX_RESP_Q097 'Quais equipamentos existem nas áreas externas de recreação da sua escola? Escorregador '.
VALUE LABELS TX_RESP_Q097
'A' 'Sim'
'B' 'Não'.
VARIABLE LABELS TX_RESP_Q098 'Quais equipamentos existem nas áreas externas de recreação da sua escola? Casinha '.
VALUE LABELS TX_RESP_Q098
'A' 'Sim'
'B' 'Não'.
VARIABLE LABELS TX_RESP_Q099 'Quais equipamentos existem nas áreas externas de recreação da sua escola? Balanço '.
VALUE LABELS TX_RESP_Q099
'A' 'Sim'
'B' 'Não'.
VARIABLE LABELS TX_RESP_Q100 'Quais equipamentos existem nas áreas externas de recreação da sua escola? Brinquedo para escalar '.
VALUE LABELS TX_RESP_Q100
'A' 'Sim'
'B' 'Não'.
VARIABLE LABELS TX_RESP_Q101 'Quais equipamentos existem nas áreas externas de recreação da sua escola? Banco '.
VALUE LABELS TX_RESP_Q101
'A' 'Sim'
'B' 'Não'.
VARIABLE LABELS TX_RESP_Q102 'Quais equipamentos existem nas áreas externas de recreação da sua escola? Outros '.
VALUE LABELS TX_RESP_Q102
'A' 'Sim'
'B' 'Não'.
VARIABLE LABELS TX_RESP_Q103 'Avalie os seguintes aspectos da escola: Condições de uso dos equipamentos da área externa de recreação.'.
VALUE LABELS TX_RESP_Q103
'A' 'Muito inadequado'
'B' 'Inadequado'
'C' 'Adequado'
'D' 'Muito adequado'.
VARIABLE LABELS TX_RESP_Q104 'Avalie os seguintes aspectos da escola: O acesso à área externa de recreação pelos(as) alunos(as) público-alvo da educação especial.'.
VALUE LABELS TX_RESP_Q104
'A' 'Muito inadequado'
'B' 'Inadequado'
'C' 'Adequado'
'D' 'Muito adequado'.
VARIABLE LABELS TX_RESP_Q105 'Avalie os seguintes aspectos da escola: O acesso à entrada principal das pessoas com deficiência física e visual (ex.: rampas e marcadores no chão).'.
VALUE LABELS TX_RESP_Q105
'A' 'Muito inadequado'
'B' 'Inadequado'
'C' 'Adequado'
'D' 'Muito adequado'.
VARIABLE LABELS TX_RESP_Q106 'Avalie os seguintes aspectos da escola: Segurança na entrada e saída dos(as) alunos(as) da escola.'.
VALUE LABELS TX_RESP_Q106
'A' 'Muito inadequado'
'B' 'Inadequado'
'C' 'Adequado'
'D' 'Muito adequado'.
VARIABLE LABELS TX_RESP_Q107 'Avalie os seguintes aspectos da escola: Muros e grades que impedem que os(as) alunos(as) saiam sozinhos(as).'.
VALUE LABELS TX_RESP_Q107
'A' 'Muito inadequado'
'B' 'Inadequado'
'C' 'Adequado'
'D' 'Muito adequado'.
VARIABLE LABELS TX_RESP_Q108 'Avalie os seguintes aspectos da escola: Identificação externa que caracterize o prédio como uma instituição escolar.'.
VALUE LABELS TX_RESP_Q108
'A' 'Muito inadequado'
'B' 'Inadequado'
'C' 'Adequado'
'D' 'Muito adequado'.
VARIABLE LABELS TX_RESP_Q109 'Como a escola adquire Brinquedos: Compra realizada pela própria escola/Secretaria de Educação '.
VALUE LABELS TX_RESP_Q109
'A' 'Sim'
'B' 'Não'.
VARIABLE LABELS TX_RESP_Q110 'Como a escola adquire Brinquedos: Doações e campanhas de arrecadação '.
VALUE LABELS TX_RESP_Q110
'A' 'Sim'
'B' 'Não'.
VARIABLE LABELS TX_RESP_Q111 'Como a escola adquire Brinquedos: Solicitado aos responsáveis pelas crianças '.
VALUE LABELS TX_RESP_Q111
'A' 'Sim'
'B' 'Não'.
VARIABLE LABELS TX_RESP_Q112 'Como a escola adquire Recursos pedagógicos: Compra realizada pela própria escola/Secretaria de Educação '.
VALUE LABELS TX_RESP_Q112
'A' 'Sim'
'B' 'Não'.
VARIABLE LABELS TX_RESP_Q113 'Como a escola adquire Recursos pedagógicos: Doações e campanhas de arrecadação '.
VALUE LABELS TX_RESP_Q113
'A' 'Sim'
'B' 'Não'.
VARIABLE LABELS TX_RESP_Q114 'Como a escola adquire Recursos pedagógicos: Solicitado aos responsáveis pelas crianças '.
VALUE LABELS TX_RESP_Q114
'A' 'Sim'
'B' 'Não'.
VARIABLE LABELS TX_RESP_Q115 'Como a escola adquire Materiais de higiene pessoal: Compra realizada pela própria escola/Secretaria de Educação '.
VALUE LABELS TX_RESP_Q115
'A' 'Sim'
'B' 'Não'.
VARIABLE LABELS TX_RESP_Q116 'Como a escola adquire Materiais de higiene pessoal: Doações e campanhas de arrecadação '.
VALUE LABELS TX_RESP_Q116
'A' 'Sim'
'B' 'Não'.
VARIABLE LABELS TX_RESP_Q117 'Como a escola adquire Materiais de higiene pessoal: Solicitado aos responsáveis pelas crianças '.
VALUE LABELS TX_RESP_Q117
'A' 'Sim'
'B' 'Não'.
VARIABLE LABELS TX_RESP_Q118 'O Conselho Escolar é um colegiado geralmente constituído por representantes da escola e da comunidade que tem como objetivo acompanhar as atividades escolares. Na sua escola existe Conselho Escolar?'.
VALUE LABELS TX_RESP_Q118
'A' 'Sim, existe e está ativo'
'B' 'Sim, existe, mas está inativo'
'C' 'Não existe Conselho Escolar'.
VARIABLE LABELS TX_RESP_Q119 'Quantas reuniões do Conselho Escolar ocorreram neste ano? '.
VARIABLE LABELS TX_RESP_Q120 'Considere os atores relacionados a seguir e indique quantos participam do Conselho Escolar: Professores(as) '.
VARIABLE LABELS TX_RESP_Q121 'Considere os atores relacionados a seguir e indique quantos participam do Conselho Escolar: Alunos(as) '.
VARIABLE LABELS TX_RESP_Q122 'Considere os atores relacionados a seguir e indique quantos participam do Conselho Escolar: Pais (ou responsáveis) '.
VARIABLE LABELS TX_RESP_Q123 'Considere os atores relacionados a seguir e indique quantos participam do Conselho Escolar: Funcionários '.
VARIABLE LABELS TX_RESP_Q124 'Considere os atores relacionados a seguir e indique quantos participam do Conselho Escolar: Outros membros '.
VARIABLE LABELS TX_RESP_Q125 'Neste ano, indique a frequência com que os temas/assuntos foram discutidos pelo Conselho Escolar: Questões pedagógicas '.
VALUE LABELS TX_RESP_Q125
'A' 'Nunca'
'B' 'Poucas vezes'
'C' 'Muitas vezes'
'D' 'Sempre'.
VARIABLE LABELS TX_RESP_Q126 'Neste ano, indique a frequência com que os temas/assuntos foram discutidos pelo Conselho Escolar: Questões administrativas e institucionais '.
VALUE LABELS TX_RESP_Q126
'A' 'Nunca'
'B' 'Poucas vezes'
'C' 'Muitas vezes'
'D' 'Sempre'.
VARIABLE LABELS TX_RESP_Q127 'Neste ano, indique a frequência com que os temas/assuntos foram discutidos pelo Conselho Escolar: Questões financeiras '.
VALUE LABELS TX_RESP_Q127
'A' 'Nunca'
'B' 'Poucas vezes'
'C' 'Muitas vezes'
'D' 'Sempre'.
VARIABLE LABELS TX_RESP_Q128 'Neste ano, indique a frequência com que os temas/assuntos foram discutidos pelo Conselho Escolar: Questões de relacionamento com a comunidade '.
VALUE LABELS TX_RESP_Q128
'A' 'Nunca'
'B' 'Poucas vezes'
'C' 'Muitas vezes'
'D' 'Sempre'.
VARIABLE LABELS TX_RESP_Q129 'O Conselho Escolar tem função deliberativa? '.
VALUE LABELS TX_RESP_Q129
'A' 'Sim'
'B' 'Não'.
VARIABLE LABELS TX_RESP_Q130 'O Conselho de Classe é um órgão formado por todos os professores que lecionam em cada turma/ano. Neste ano e nesta escola, quantas vezes se reuniu o Conselho de Classe?'.
VARIABLE LABELS TX_RESP_Q131 'O Conselho de Classe é um órgão formado por todos os professores que lecionam em cada turma/ano. Neste ano e nesta escola, quantas vezes se reuniu o Conselho de Classe? Não existe Conselho'.
VALUE LABELS TX_RESP_Q131
'A' 'Sim'
'B' 'Não'.
VARIABLE LABELS TX_RESP_Q132 'A APM - Associação de Pais e Mestres existe para apoiar as ações da escola e integrar a comunidade. Neste ano e nesta escola, quantas vezes se reuniu a APM (ou caixa escolar)?'.
VARIABLE LABELS TX_RESP_Q133 'A APM - Associação de Pais e Mestres existe para apoiar as ações da escola e integrar a comunidade. Neste ano e nesta escola, quantas vezes se reuniu a APM (ou caixa escolar)?  Não existe APM.'.
VALUE LABELS TX_RESP_Q133
'A' 'Sim'
'B' 'Não'.
VARIABLE LABELS TX_RESP_Q134 'Há Grêmio Estudantil? '.
VALUE LABELS TX_RESP_Q134
'A' 'Sim, existe e está ativo'
'B' 'Sim, existe, mas está inativo'
'C' 'Não existe grêmio estudantil'
'D' 'Não se aplica'.
VARIABLE LABELS TX_RESP_Q135 'A escola é administrada pela Polícia Militar '.
VALUE LABELS TX_RESP_Q135
'A' 'Sim'
'B' 'Não'.
VARIABLE LABELS TX_RESP_Q136 'Os(As) estudantes são preparados(as) para os testes de avaliação externos. '.
VALUE LABELS TX_RESP_Q136
'A' 'Sim'
'B' 'Não'.
VARIABLE LABELS TX_RESP_Q137 'A escola segue orientação religiosa '.
VALUE LABELS TX_RESP_Q137
'A' 'Sim'
'B' 'Não'.
VARIABLE LABELS TX_RESP_Q138 'Indique se as fontes abaixo fornecem ou não fornecem recursos para o funcionamento desta escola: Programa Dinheiro Direto da Escola.'.
VALUE LABELS TX_RESP_Q138
'A' 'Sim'
'B' 'Não'.
VARIABLE LABELS TX_RESP_Q139 'Indique se as fontes abaixo fornecem ou não fornecem recursos para o funcionamento desta escola: Eventos promovidos nas dependências da escola (Festas, rifas etc.).'.
VALUE LABELS TX_RESP_Q139
'A' 'Sim'
'B' 'Não'.
VARIABLE LABELS TX_RESP_Q140 'Indique se as fontes abaixo fornecem ou não fornecem recursos para o funcionamento desta escola: Empresas que apoiam a escola.'.
VALUE LABELS TX_RESP_Q140
'A' 'Sim'
'B' 'Não'.
VARIABLE LABELS TX_RESP_Q141 'Indique se as fontes abaixo fornecem ou não fornecem recursos para o funcionamento desta escola: Organizações sem fins lucrativos.'.
VALUE LABELS TX_RESP_Q141
'A' 'Sim'
'B' 'Não'.
VARIABLE LABELS TX_RESP_Q142 'Indique se as fontes abaixo fornecem ou não fornecem recursos para o funcionamento desta escola: Repasses da rede de ensino.'.
VALUE LABELS TX_RESP_Q142
'A' 'Sim'
'B' 'Não'.
VARIABLE LABELS TX_RESP_Q143 'Indique se as fontes abaixo fornecem ou não fornecem recursos para o funcionamento desta escola: Pagamento de taxas pelos familiares dos(as) estudantes.'.
VALUE LABELS TX_RESP_Q143
'A' 'Sim'
'B' 'Não'.
VARIABLE LABELS TX_RESP_Q144 'Indique se as fontes abaixo fornecem ou não fornecem recursos para o funcionamento desta escola: Contribuições voluntárias dos familiares dos(as) estudantes.'.
VALUE LABELS TX_RESP_Q144
'A' 'Sim'
'B' 'Não'.
VARIABLE LABELS TX_RESP_Q145 'Indique se as fontes abaixo fornecem ou não fornecem recursos para o funcionamento desta escola: Contribuições voluntárias dos(as) profissionais da escola.'.
VALUE LABELS TX_RESP_Q145
'A' 'Sim'
'B' 'Não'.
VARIABLE LABELS TX_RESP_Q146 'A escola oferece merenda aos(às) estudantes?'.
VALUE LABELS TX_RESP_Q146
'A' 'Sim'
'B' 'Não'.
VARIABLE LABELS TX_RESP_Q147 'Quantas refeições são oferecidas nesta escola para alunos(as) que permanecem menos de 4 horas na escola '.
VALUE LABELS TX_RESP_Q147
'A' 'Uma vez'
'B' 'Duas vezes'
'C' 'Três vezes ou mais'
'D' 'Não se aplica'.
VARIABLE LABELS TX_RESP_Q148 'Quantas refeições são oferecidas nesta escola para alunos(as) que permanecem entre 4 e 7 horas na escola '.
VALUE LABELS TX_RESP_Q148
'A' 'Uma vez'
'B' 'Duas vezes'
'C' 'Três vezes ou mais'
'D' 'Não se aplica'.
VARIABLE LABELS TX_RESP_Q149 'Quantas refeições são oferecidas nesta escola para alunos(as) que permanecem mais de 7 horas na escola '.
VALUE LABELS TX_RESP_Q149
'A' 'Uma vez'
'B' 'Duas vezes'
'C' 'Três vezes ou mais'
'D' 'Não se aplica'.
VARIABLE LABELS TX_RESP_Q150 'A quantidade de alimentos é suficiente para todos(as) '.
VALUE LABELS TX_RESP_Q150
'A' 'Discordo fortemente'
'B' 'Discordo'
'C' 'Concordo'
'D' 'Concordo fortemente'.
VARIABLE LABELS TX_RESP_Q151 'Os alimentos são de boa qualidade '.
VALUE LABELS TX_RESP_Q151
'A' 'Discordo fortemente'
'B' 'Discordo'
'C' 'Concordo'
'D' 'Concordo fortemente'.
VARIABLE LABELS TX_RESP_Q152 'A cozinha atende todas as necessidades do preparo da merenda '.
VALUE LABELS TX_RESP_Q152
'A' 'Discordo fortemente'
'B' 'Discordo'
'C' 'Concordo'
'D' 'Concordo fortemente'.
VARIABLE LABELS TX_RESP_Q153 'Todos(as) conseguem se alimentar sentados '.
VALUE LABELS TX_RESP_Q153
'A' 'Discordo fortemente'
'B' 'Discordo'
'C' 'Concordo'
'D' 'Concordo fortemente'.
VARIABLE LABELS TX_RESP_Q154 'O acesso ao local de alimentação é livre para pessoas com mobilidade reduzida '.
VALUE LABELS TX_RESP_Q154
'A' 'Discordo fortemente'
'B' 'Discordo'
'C' 'Concordo'
'D' 'Concordo fortemente'.
VARIABLE LABELS TX_RESP_Q155 'Há pias para higienização das mãos próximas ao local de alimentação '.
VALUE LABELS TX_RESP_Q155
'A' 'Discordo fortemente'
'B' 'Discordo'
'C' 'Concordo'
'D' 'Concordo fortemente'.
VARIABLE LABELS TX_RESP_Q156 'A merenda escolar é preparada na própria instituição? '.
VALUE LABELS TX_RESP_Q156
'A' 'Sim'
'B' 'Não'.
VARIABLE LABELS TX_RESP_Q157 'Os cardápios da alimentação escolar são elaborados por nutricionista? '.
VALUE LABELS TX_RESP_Q157
'A' 'Sim'
'B' 'Não'.
VARIABLE LABELS TX_RESP_Q158 'A escola possui Projeto Político-Pedagógico?'.
VALUE LABELS TX_RESP_Q158
'A' 'Sim'
'B' 'Não'.
VARIABLE LABELS TX_RESP_Q159 'Seu conteúdo é discutido em reuniões? '.
VALUE LABELS TX_RESP_Q159
'A' 'Sim'
'B' 'Não'
'C' 'Não se aplica'.
VARIABLE LABELS TX_RESP_Q160 'Os(As) professores(as) participaram da elaboração? '.
VALUE LABELS TX_RESP_Q160
'A' 'Sim'
'B' 'Não'
'C' 'Não se aplica'.
VARIABLE LABELS TX_RESP_Q161 'Os pais participaram da elaboração? '.
VALUE LABELS TX_RESP_Q161
'A' 'Sim'
'B' 'Não'
'C' 'Não se aplica'.
VARIABLE LABELS TX_RESP_Q162 'Os(As) estudantes participaram da elaboração? '.
VALUE LABELS TX_RESP_Q162
'A' 'Sim'
'B' 'Não'
'C' 'Não se aplica'.
VARIABLE LABELS TX_RESP_Q163 'Estabelece metas de aprendizagem? '.
VALUE LABELS TX_RESP_Q163
'A' 'Sim'
'B' 'Não'
'C' 'Não se aplica'.
VARIABLE LABELS TX_RESP_Q164 'Considera os resultados de avaliações externas (Saeb, estaduais, municipais etc.)? '.
VALUE LABELS TX_RESP_Q164
'A' 'Sim'
'B' 'Não'
'C' 'Não se aplica'.
VARIABLE LABELS TX_RESP_Q165 'Há metas de alcance de indicadores externos (Ideb, índices estaduais ou municipais)? '.
VALUE LABELS TX_RESP_Q165
'A' 'Sim'
'B' 'Não'
'C' 'Não se aplica'.
VARIABLE LABELS TX_RESP_Q166 'Neste ano e nesta escola, todos que solicitaram vagas conseguiram se matricular?'.
VALUE LABELS TX_RESP_Q166
'A' 'Sim'
'B' 'Não'.
VARIABLE LABELS TX_RESP_Q167 'Neste ano, quais foram os critérios para a matrícula de novos estudantes nesta escola: Sorteio '.
VALUE LABELS TX_RESP_Q167
'A' 'Sim'
'B' 'Não'.
VARIABLE LABELS TX_RESP_Q168 'Neste ano, quais foram os critérios para a matrícula de novos estudantes nesta escola: Local de moradia '.
VALUE LABELS TX_RESP_Q168
'A' 'Sim'
'B' 'Não'.
VARIABLE LABELS TX_RESP_Q169 'Neste ano, quais foram os critérios para a matrícula de novos estudantes nesta escola: Prova de seleção '.
VALUE LABELS TX_RESP_Q169
'A' 'Sim'
'B' 'Não'.
VARIABLE LABELS TX_RESP_Q170 'Neste ano, quais foram os critérios para a matrícula de novos estudantes nesta escola: Ordem de chegada '.
VALUE LABELS TX_RESP_Q170
'A' 'Sim'
'B' 'Não'.
VARIABLE LABELS TX_RESP_Q171 'Neste ano, quais foram os critérios para a matrícula de novos estudantes nesta escola: Cor ou raça do(a) estudante '.
VALUE LABELS TX_RESP_Q171
'A' 'Sim'
'B' 'Não'.
VARIABLE LABELS TX_RESP_Q172 'Neste ano, quais foram os critérios para a matrícula de novos estudantes nesta escola: Características socioeconômicas '.
VALUE LABELS TX_RESP_Q172
'A' 'Sim'
'B' 'Não'.
VARIABLE LABELS TX_RESP_Q173 'Neste ano, quais foram os critérios para a matrícula de novos estudantes nesta escola: Desempenho do(a) estudante no ano anterior '.
VALUE LABELS TX_RESP_Q173
'A' 'Sim'
'B' 'Não'.
VARIABLE LABELS TX_RESP_Q174 'Neste ano, quais foram os critérios para a matrícula de novos estudantes nesta escola: Outros '.
VALUE LABELS TX_RESP_Q174
'A' 'Sim'
'B' 'Não'.
VARIABLE LABELS TX_RESP_Q175 'Quais critérios foram considerados para a formação das turmas: Não se aplica'.
VALUE LABELS TX_RESP_Q175
'A' 'Sim'
'B' 'Não'.
VARIABLE LABELS TX_RESP_Q176 'Quais critérios foram considerados para a formação das turmas: Afinidade entre os(as) estudantes'.
VALUE LABELS TX_RESP_Q176
'A' 'Sim'
'B' 'Não'.
VARIABLE LABELS TX_RESP_Q177 'Quais critérios foram considerados para a formação das turmas: Agrupar os(as) estudantes segundo a idade'.
VALUE LABELS TX_RESP_Q177
'A' 'Sim'
'B' 'Não'.
VARIABLE LABELS TX_RESP_Q178 'Quais critérios foram considerados para a formação das turmas: Equilíbrio de meninos e meninas nas turmas'.
VALUE LABELS TX_RESP_Q178
'A' 'Sim'
'B' 'Não'.
VARIABLE LABELS TX_RESP_Q179 'Quais critérios foram considerados para a formação das turmas: Manter as turmas existentes do ano anterior'.
VALUE LABELS TX_RESP_Q179
'A' 'Sim'
'B' 'Não'.
VARIABLE LABELS TX_RESP_Q180 'Quais critérios foram considerados para a formação das turmas: Agrupar os(as) estudantes por critérios disciplinares'.
VALUE LABELS TX_RESP_Q180
'A' 'Sim'
'B' 'Não'.
VARIABLE LABELS TX_RESP_Q181 'Quais critérios foram considerados para a formação das turmas: Agrupar os(as) estudantes com base no seu desempenho'.
VALUE LABELS TX_RESP_Q181
'A' 'Sim'
'B' 'Não'.
VARIABLE LABELS TX_RESP_Q182 'Quais critérios foram considerados para a formação das turmas: Outro'.
VALUE LABELS TX_RESP_Q182
'A' 'Sim'
'B' 'Não'.
VARIABLE LABELS TX_RESP_Q183 'Neste ano, quais critérios foram utilizados para a atribuição das turmas aos(às) professores(as)? Preferência dos(as) professores(as).'.
VALUE LABELS TX_RESP_Q183
'A' 'Sim'
'B' 'Não'.
VARIABLE LABELS TX_RESP_Q184 'Neste ano, quais critérios foram utilizados para a atribuição das turmas aos(às) professores(as)? Tempo de serviço.'.
VALUE LABELS TX_RESP_Q184
'A' 'Sim'
'B' 'Não'.
VARIABLE LABELS TX_RESP_Q185 'Neste ano, quais critérios foram utilizados para a atribuição das turmas aos(às) professores(as)? Cursos de formação continuada realizados.'.
VALUE LABELS TX_RESP_Q185
'A' 'Sim'
'B' 'Não'.
VARIABLE LABELS TX_RESP_Q186 'Neste ano, quais critérios foram utilizados para a atribuição das turmas aos(às) professores(as)? Professores(as) experientes nas turmas com facilidade de aprendizagem.'.
VALUE LABELS TX_RESP_Q186
'A' 'Sim'
'B' 'Não'.
VARIABLE LABELS TX_RESP_Q187 'Neste ano, quais critérios foram utilizados para a atribuição das turmas aos(às) professores(as)? Professores(as) experientes nas turmas com dificuldade de aprendizagem.'.
VALUE LABELS TX_RESP_Q187
'A' 'Sim'
'B' 'Não'.
VARIABLE LABELS TX_RESP_Q188 'Neste ano, quais critérios foram utilizados para a atribuição das turmas aos(às) professores(as)? Manutenção do(a) professor(a) com a mesma turma.'.
VALUE LABELS TX_RESP_Q188
'A' 'Sim'
'B' 'Não'.
VARIABLE LABELS TX_RESP_Q189 'Neste ano, quais critérios foram utilizados para a atribuição das turmas aos(às) professores(as)? Revezamento dos(as) professores(as) entre séries/anos.'.
VALUE LABELS TX_RESP_Q189
'A' 'Sim'
'B' 'Não'.
VARIABLE LABELS TX_RESP_Q190 'Neste ano, quais critérios foram utilizados para a atribuição das turmas aos(às) professores(as)? Sorteio das turmas entre os(as) professores(as).'.
VALUE LABELS TX_RESP_Q190
'A' 'Sim'
'B' 'Não'.
VARIABLE LABELS TX_RESP_Q191 'Neste ano, quais critérios foram utilizados para a atribuição das turmas aos(às) professores(as)? Atribuição pela gestão da escola.'.
VALUE LABELS TX_RESP_Q191
'A' 'Sim'
'B' 'Não'.
VARIABLE LABELS TX_RESP_Q192 'Na sua escola há parcerias com: Ministério Público'.
VALUE LABELS TX_RESP_Q192
'A' 'Sim'
'B' 'Não'.
VARIABLE LABELS TX_RESP_Q193 'Na sua escola há parcerias com: Conselho Tutelar'.
VALUE LABELS TX_RESP_Q193
'A' 'Sim'
'B' 'Não'.
VARIABLE LABELS TX_RESP_Q194 'Na sua escola há parcerias com: Secretaria de Saúde'.
VALUE LABELS TX_RESP_Q194
'A' 'Sim'
'B' 'Não'.
VARIABLE LABELS TX_RESP_Q195 'Na sua escola há parcerias com: Secretaria de Educação'.
VALUE LABELS TX_RESP_Q195
'A' 'Sim'
'B' 'Não'.
VARIABLE LABELS TX_RESP_Q196 'Na sua escola há parcerias com: Secretaria de Assistência Social'.
VALUE LABELS TX_RESP_Q196
'A' 'Sim'
'B' 'Não'.
VARIABLE LABELS TX_RESP_Q197 'Na sua escola há parcerias com: Secretaria de Segurança Pública'.
VALUE LABELS TX_RESP_Q197
'A' 'Sim'
'B' 'Não'.
VARIABLE LABELS TX_RESP_Q198 'Na sua escola há parcerias com: Organizações não governamentais/instituições privadas'.
VALUE LABELS TX_RESP_Q198
'A' 'Sim'
'B' 'Não'.
VARIABLE LABELS TX_RESP_Q199 'Neste ano, para redução do ABANDONO ESCOLAR, avalie o resultado das seguintes ações realizadas nesta escola: Entrar em contato com os familiares do(a) estudante '.
VALUE LABELS TX_RESP_Q199
'A' 'Não foi realizada esta ação'
'B' 'Nada efetiva'
'C' 'Pouco efetiva'
'D' 'Efetiva'
'E' 'Muito efetiva'.
VARIABLE LABELS TX_RESP_Q200 'Neste ano, para redução do ABANDONO ESCOLAR, avalie o resultado das seguintes ações realizadas nesta escola: Ir à residência do(a) estudante '.
VALUE LABELS TX_RESP_Q200
'A' 'Não foi realizada esta ação'
'B' 'Nada efetiva'
'C' 'Pouco efetiva'
'D' 'Efetiva'
'E' 'Muito efetiva'.
VARIABLE LABELS TX_RESP_Q201 'Neste ano, para redução do ABANDONO ESCOLAR, avalie o resultado das seguintes ações realizadas nesta escola: Informar ao Conselho Tutelar '.
VALUE LABELS TX_RESP_Q201
'A' 'Não foi realizada esta ação'
'B' 'Nada efetiva'
'C' 'Pouco efetiva'
'D' 'Efetiva'
'E' 'Muito efetiva'.
VARIABLE LABELS TX_RESP_Q202 'Neste ano, para a redução da REPETÊNCIA ESCOLAR, avalie o resultado das seguintes ações realizadas nesta escola: Oferta de reforço escolar '.
VALUE LABELS TX_RESP_Q202
'A' 'Não foi realizada esta ação'
'B' 'Nada efetiva'
'C' 'Pouco efetiva'
'D' 'Efetiva'
'E' 'Muito efetiva'.
VARIABLE LABELS TX_RESP_Q203 'Neste ano, para a redução da REPETÊNCIA ESCOLAR, avalie o resultado das seguintes ações realizadas nesta escola: Os(As) estudantes são estimulados(as) a apoiar uns(umas) aos(às) outros(as) '.
VALUE LABELS TX_RESP_Q203
'A' 'Não foi realizada esta ação'
'B' 'Nada efetiva'
'C' 'Pouco efetiva'
'D' 'Efetiva'
'E' 'Muito efetiva'.
VARIABLE LABELS TX_RESP_Q204 'Neste ano, para a redução da REPETÊNCIA ESCOLAR, avalie o resultado das seguintes ações realizadas nesta escola: Revisão dos procedimentos de avaliação '.
VALUE LABELS TX_RESP_Q204
'A' 'Não foi realizada esta ação'
'B' 'Nada efetiva'
'C' 'Pouco efetiva'
'D' 'Efetiva'
'E' 'Muito efetiva'.
VARIABLE LABELS TX_RESP_Q205 'Neste ano, para a redução da REPETÊNCIA ESCOLAR, avalie o resultado das seguintes ações realizadas nesta escola: Revisão das práticas pedagógicas '.
VALUE LABELS TX_RESP_Q205
'A' 'Não foi realizada esta ação'
'B' 'Nada efetiva'
'C' 'Pouco efetiva'
'D' 'Efetiva'
'E' 'Muito efetiva'.
VARIABLE LABELS TX_RESP_Q206 'Nesta escola, há projetos com as seguintes temáticas: Violência'.
VALUE LABELS TX_RESP_Q206
'A' 'Sim'
'B' 'Não'.
VARIABLE LABELS TX_RESP_Q207 'Nesta escola, há projetos com as seguintes temáticas: Bullying'.
VALUE LABELS TX_RESP_Q207
'A' 'Sim'
'B' 'Não'.
VARIABLE LABELS TX_RESP_Q208 'Nesta escola, há projetos com as seguintes temáticas: Machismo'.
VALUE LABELS TX_RESP_Q208
'A' 'Sim'
'B' 'Não'.
VARIABLE LABELS TX_RESP_Q209 'Nesta escola, há projetos com as seguintes temáticas: Homofobia'.
VALUE LABELS TX_RESP_Q209
'A' 'Sim'
'B' 'Não'.
VARIABLE LABELS TX_RESP_Q210 'Nesta escola, há projetos com as seguintes temáticas: Sexualidade'.
VALUE LABELS TX_RESP_Q210
'A' 'Sim'
'B' 'Não'.
VARIABLE LABELS TX_RESP_Q211 'Nesta escola, há projetos com as seguintes temáticas: Uso de drogas'.
VALUE LABELS TX_RESP_Q211
'A' 'Sim'
'B' 'Não'.
VARIABLE LABELS TX_RESP_Q212 'Nesta escola, há projetos com as seguintes temáticas: Direitos dos idosos'.
VALUE LABELS TX_RESP_Q212
'A' 'Sim'
'B' 'Não'.
VARIABLE LABELS TX_RESP_Q213 'Nesta escola, há projetos com as seguintes temáticas: Educação ambiental'.
VALUE LABELS TX_RESP_Q213
'A' 'Sim'
'B' 'Não'.
VARIABLE LABELS TX_RESP_Q214 'Nesta escola, há projetos com as seguintes temáticas: Ciência e tecnologia'.
VALUE LABELS TX_RESP_Q214
'A' 'Sim'
'B' 'Não'.
VARIABLE LABELS TX_RESP_Q215 'Nesta escola, há projetos com as seguintes temáticas: Diversidade religiosa'.
VALUE LABELS TX_RESP_Q215
'A' 'Sim'
'B' 'Não'.
VARIABLE LABELS TX_RESP_Q216 'Nesta escola, há projetos com as seguintes temáticas: Desigualdades sociais'.
VALUE LABELS TX_RESP_Q216
'A' 'Sim'
'B' 'Não'.
VARIABLE LABELS TX_RESP_Q217 'Nesta escola, há projetos com as seguintes temáticas: Nutrição e alimentação'.
VALUE LABELS TX_RESP_Q217
'A' 'Sim'
'B' 'Não'.
VARIABLE LABELS TX_RESP_Q218 'Nesta escola, há projetos com as seguintes temáticas: Educação para o trânsito'.
VALUE LABELS TX_RESP_Q218
'A' 'Sim'
'B' 'Não'.
VARIABLE LABELS TX_RESP_Q219 'Nesta escola, há projetos com as seguintes temáticas: Relações étnico-raciais/racismo'.
VALUE LABELS TX_RESP_Q219
'A' 'Sim'
'B' 'Não'.
VARIABLE LABELS TX_RESP_Q220 'Nesta escola, há projetos com as seguintes temáticas: Direitos da criança e do adolescente'.
VALUE LABELS TX_RESP_Q220
'A' 'Sim'
'B' 'Não'.
VARIABLE LABELS TX_RESP_Q221 'Nesta escola, há projetos com as seguintes temáticas: Mundo do trabalho (direitos, relações etc)'.
VALUE LABELS TX_RESP_Q221
'A' 'Sim'
'B' 'Não'.
VARIABLE LABELS TX_RESP_Q222 'Nesta escola, há projetos com as seguintes temáticas: Educação financeira e consumo sustentável'.
VALUE LABELS TX_RESP_Q222
'A' 'Sim'
'B' 'Não'.
VARIABLE LABELS TX_RESP_Q223 'Indique se neste ano a escola ofereceu atividades de formação nas seguintes áreas: Conteúdo e compreensão dos conceitos da(s) área(s) de ensino.'.
VALUE LABELS TX_RESP_Q223
'A' 'Sim'
'B' 'Não'.
VARIABLE LABELS TX_RESP_Q224 'Indique se neste ano a escola ofereceu atividades de formação nas seguintes áreas: Avaliação da aprendizagem.'.
VALUE LABELS TX_RESP_Q224
'A' 'Sim'
'B' 'Não'.
VARIABLE LABELS TX_RESP_Q225 'Indique se neste ano a escola ofereceu atividades de formação nas seguintes áreas: Avaliação em larga escala.'.
VALUE LABELS TX_RESP_Q225
'A' 'Sim'
'B' 'Não'.
VARIABLE LABELS TX_RESP_Q226 'Indique se neste ano a escola ofereceu atividades de formação nas seguintes áreas: Metodologias de ensino.'.
VALUE LABELS TX_RESP_Q226
'A' 'Sim'
'B' 'Não'.
VARIABLE LABELS TX_RESP_Q227 'Indique se neste ano a escola ofereceu atividades de formação nas seguintes áreas: Conhecimento do currículo.'.
VALUE LABELS TX_RESP_Q227
'A' 'Sim'
'B' 'Não'.
VARIABLE LABELS TX_RESP_Q228 'Indique se neste ano a escola ofereceu atividades de formação nas seguintes áreas: Gestão da sala de aula.'.
VALUE LABELS TX_RESP_Q228
'A' 'Sim'
'B' 'Não'.
VARIABLE LABELS TX_RESP_Q229 'Indique se neste ano a escola ofereceu atividades de formação nas seguintes áreas: Educação inclusiva.'.
VALUE LABELS TX_RESP_Q229
'A' 'Sim'
'B' 'Não'.
VARIABLE LABELS TX_RESP_Q230 'Indique se neste ano a escola ofereceu atividades de formação nas seguintes áreas: Novas tecnologias.'.
VALUE LABELS TX_RESP_Q230
'A' 'Sim'
'B' 'Não'.
VARIABLE LABELS TX_RESP_Q231 'Indique se neste ano a escola ofereceu atividades de formação nas seguintes áreas: Gestão e administração escolar.'.
VALUE LABELS TX_RESP_Q231
'A' 'Sim'
'B' 'Não'.
VARIABLE LABELS TX_RESP_Q232 'Os(As) profissionais para inclusão do público-alvo da educação especial são em número suficiente?'.
VALUE LABELS TX_RESP_Q232
'A' 'Sim'
'B' 'Não'.
VARIABLE LABELS TX_RESP_Q233 'Indique quais outros(as) profissionais seriam necessários(as) no momento: Professor(a) de Braille '.
VALUE LABELS TX_RESP_Q233
'A' 'Sim'
'B' 'Não'.
VARIABLE LABELS TX_RESP_Q234 'Indique quais outros(as) profissionais seriam necessários(as) no momento: Professor(a) de Educação Especial que atua na sala comum '.
VALUE LABELS TX_RESP_Q234
'A' 'Sim'
'B' 'Não'.
VARIABLE LABELS TX_RESP_Q235 'Indique quais outros(as) profissionais seriam necessários(as) no momento: Professor(a) bilíngue para surdos '.
VALUE LABELS TX_RESP_Q235
'A' 'Sim'
'B' 'Não'.
VARIABLE LABELS TX_RESP_Q236 'Indique quais outros(as) profissionais seriam necessários(as) no momento: Professor(a) de Libras '.
VALUE LABELS TX_RESP_Q236
'A' 'Sim'
'B' 'Não'.
VARIABLE LABELS TX_RESP_Q237 'Indique quais outros(as) profissionais seriam necessários(as) no momento: Professor(a) da sala de recursos multifuncionais '.
VALUE LABELS TX_RESP_Q237
'A' 'Sim'
'B' 'Não'.
VARIABLE LABELS TX_RESP_Q238 'Indique quais outros(as) profissionais seriam necessários(as) no momento: Professor(a) itinerante '.
VALUE LABELS TX_RESP_Q238
'A' 'Sim'
'B' 'Não'.
VARIABLE LABELS TX_RESP_Q239 'Indique quais outros(as) profissionais seriam necessários(as) no momento: Monitor(a) de apoio '.
VALUE LABELS TX_RESP_Q239
'A' 'Sim'
'B' 'Não'.
VARIABLE LABELS TX_RESP_Q240 'Indique quais outros(as) profissionais seriam necessários(as) no momento: Outros '.
VALUE LABELS TX_RESP_Q240
'A' 'Sim'
'B' 'Não'.
VARIABLE LABELS TX_RESP_Q241 'Nos últimos doze meses, sua escola recebeu treinamento para lidar com o público-alvo da educação especial?'.
VALUE LABELS TX_RESP_Q241
'A' 'Sim'
'B' 'Não'.
VARIABLE LABELS TX_RESP_Q242 'Em quais áreas ocorreram treinamento: Deficiência intelectual '.
VALUE LABELS TX_RESP_Q242
'A' 'Sim'
'B' 'Não'.
VARIABLE LABELS TX_RESP_Q243 'Em quais áreas ocorreram treinamento: Deficiência física '.
VALUE LABELS TX_RESP_Q243
'A' 'Sim'
'B' 'Não'.
VARIABLE LABELS TX_RESP_Q244 'Em quais áreas ocorreram treinamento: Autismo ou outro Transtorno Global do Desenvolvimento '.
VALUE LABELS TX_RESP_Q244
'A' 'Sim'
'B' 'Não'.
VARIABLE LABELS TX_RESP_Q245 'Em quais áreas ocorreram treinamento: Surdez '.
VALUE LABELS TX_RESP_Q245
'A' 'Sim'
'B' 'Não'.
VARIABLE LABELS TX_RESP_Q246 'Em quais áreas ocorreram treinamento: Deficiência auditiva '.
VALUE LABELS TX_RESP_Q246
'A' 'Sim'
'B' 'Não'.
VARIABLE LABELS TX_RESP_Q247 'Em quais áreas ocorreram treinamento: Cegueira '.
VALUE LABELS TX_RESP_Q247
'A' 'Sim'
'B' 'Não'.
VARIABLE LABELS TX_RESP_Q248 'Em quais áreas ocorreram treinamento: Baixa visão '.
VALUE LABELS TX_RESP_Q248
'A' 'Sim'
'B' 'Não'.
VARIABLE LABELS TX_RESP_Q249 'Em quais áreas ocorreram treinamento: Deficiência múltipla '.
VALUE LABELS TX_RESP_Q249
'A' 'Sim'
'B' 'Não'.
VARIABLE LABELS TX_RESP_Q250 'Em quais áreas ocorreram treinamento: Altas habilidades/superdotação '.
VALUE LABELS TX_RESP_Q250
'A' 'Sim'
'B' 'Não'.
VARIABLE LABELS TX_RESP_Q251 'Em quais áreas ocorreram treinamento: Surdo-cegueira '.
VALUE LABELS TX_RESP_Q251
'A' 'Sim'
'B' 'Sim'.
VARIABLE LABELS TX_RESP_Q252 'Sobre este questionário, avalie os tópicos a seguir: Facilidade de preenchimento das respostas.'.
VALUE LABELS TX_RESP_Q252
'A' 'Muito difícil'
'B' 'Difícil'
'C' 'Nem fácil e nem difícil'
'D' 'Fácil'
'E' 'Muito fácil'.
VARIABLE LABELS TX_RESP_Q253 'Sobre este questionário, avalie os tópicos a seguir: Compreensão dos termos utilizados no questionário.'.
VALUE LABELS TX_RESP_Q253
'A' 'Muito difícil'
'B' 'Difícil'
'C' 'Nem fácil e nem difícil'
'D' 'Fácil'
'E' 'Muito fácil'.

