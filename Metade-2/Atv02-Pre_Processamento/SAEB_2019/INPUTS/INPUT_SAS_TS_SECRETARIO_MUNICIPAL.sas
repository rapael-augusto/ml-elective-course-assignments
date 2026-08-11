/***************************************************************************************/
/*  INEP/Daeb-Diretoria de Avaliação da Educação Básica                                */ 
/*                                   			                                       */
/*  Coordenação-Geral de Instrumentos de Medidas                                       */
/*-------------------------------------------------------------------------------------*/
/*  PROGRAMA:                                                                          */
/*               INPUT_SAS_TS_SECRETARIO_MUNICIPAL                                     */
/*-------------------------------------------------------------------------------------*/
/*  DESCRICAO:   PROGRAMA PARA LEITURA DO QUESTIONÁRIO DO SECRETARIO MUNICIPAL         */
/*				 DE EDUCAÇÃO DO SAEB 2019                                              */
/***************************************************************************************/
/***************************************************************************************/
/* Obs:                                                                                */
/* 		                                                                               */
/* Para abrir os microdados, é necessário salvar este programa e o arquivo             */
/* TS_SECRETARIO_MUNICIPAL.CSV no diretório C:\ do computador.	                       */
/*							                                                           */ 
/* Ao terminar esses procedimentos, execute o programa salvo utilizando                */
/* as variáveis de interesse.                                                          */
/***************************************************************************************/
/*                                  ATENÇÃO                                            */ 
/***************************************************************************************/
/* Este programa abre a base de dados com os rótulos das variáveis de	               */
/* acordo com o dicionário de dados que compõe os microdados. Para abrir               */
/* os dados sem os rótulos, basta importar diretamente no SAS.                         */
/* 							                                                           */                                                            
/* Algumas variáveis do questionário do Diretor envolvem regras de validação e         */
/* dependência. O entendimento dessas questões exigem consulta ao Dicionário de        */
/* Variáveis para conhecer as regras de cada questão.                                  */
/* 							                                                           */                                                           
/***************************************************************************************/

proc format;	

value ID_REGIAO
1 = 'Norte'
2 = 'Nordeste'
3 = 'Sudeste'
4 = 'Sul'
5 = 'Centro-Oeste';

value ID_UF
11 = 'RO'
12 = 'AC'
13 = 'AM'
14 = 'RR'
15 = 'PA'
16 = 'AP'
17 = 'TO'
21 = 'MA'
22 = 'PI'
23 = 'CE'
24 = 'RN'
25 = 'PB'
26 = 'PE'
27 = 'AL'
28 = 'SE'
29 = 'BA'
31 = 'MG'
32 = 'ES'
33 = 'RJ'
35 = 'SP'
41 = 'PR'
42 = 'SC'
43 = 'RS'
50 = 'MS'
51 = 'MT'
52 = 'GO'
53 = 'DF';

value ID_AREA
1 = 'Capital'
2 = 'Interior';

value $QGMdezenove
A = 'Sim'
B = 'Não';

value $QGMvinte
A = 'Sim'
B = 'Não';

value $QGMvinteum
A = 'Sim'
B = 'Não';

value $QGMvintecinco
A = 'Sim'
B = 'Não';

value $QGMvinteseis
A = 'Sim'
B = 'Não';

value $QGMvintesete
A = 'Sim'
B = 'Não';

value $QGMvinteoito
A = 'Sim'
B = 'Não';

value $QGMvintenove
A = 'Sim'
B = 'Não';

value $QGMtrinta
A = 'Sim'
B = 'Não';

value $QGMtrintaum
A = 'Sim'
B = 'Não';

value $QGMtrintadois
A = 'Sim'
B = 'Não';

value $QGMtrintatres
A = 'Sim'
B = 'Não';

value $QGMtrintaquatro
A = 'Sim'
B = 'Não';

value $QGMtrintacinco
A = 'Sim'
B = 'Não';

value $QGMtrintaseis
A = 'Sim'
B = 'Não';

value $QGMtrintasete
A = 'Sim'
B = 'Não';

value $QGMtrintaoito
A = 'Sim'
B = 'Não';

value $QGMtrintanove
A = 'Sim'
B = 'Não';

value $QGMquarenta
A = 'Sim'
B = 'Não';

value $QGMquarentaum
A = 'Sim'
B = 'Não';

value $QGMquarentadois
A = 'Sim'
B = 'Não';

value $QGMquarentatres
A = 'Sim'
B = 'Não';

value $QGMquarentaquatro
A = 'Sim'
B = 'Não';

value $QGMquarentacinco
A = 'Sim'
B = 'Não';

value $QGMquarentaseis
A = 'Sim'
B = 'Não';

value $QGMquarentasete
A = 'Sim'
B = 'Não';

value $QGMquarentaoito
A = 'Sim'
B = 'Não';

value $QGMquarentanove
A = 'Sim'
B = 'Não';

value $QGMcinquenta
A = 'Sim'
B = 'Não';

value $QGMcinquentaum
A = 'Sim'
B = 'Não';

value $QGMcinquentadois
A = 'Sim'
B = 'Não';

value $QGMcinquentatres
A = 'Sim'
B = 'Não';

value $QGMcinquentaquatro
A = 'Sim'
B = 'Não';

value $QGMcinquentacinco
A = 'Sim'
B = 'Não';

value $QGMcinquentaseis
A = 'Sim'
B = 'Não';

value $QGMcinquentasete
A = 'Sim'
B = 'Não';

value $QGMcinquentaoito
A = 'Sim'
B = 'Não';

value $QGMsetentatres
A = 'Sim'
B = 'Não';

value $QGMsetentacinco
A = 'Sim'
B = 'Não';

value $QGMsetentaseis
A = 'Sim'
B = 'Não';

value $QGMsetentasete
A = 'Sim'
B = 'Não';

value $QGMsetentaoito
A = 'Sim'
B = 'Não';

value $QGMsetentanove
A = 'Sim'
B = 'Não';

value $QGMoitenta
A = 'Sim'
B = 'Não';

value $QGMoitentaum
A = 'Sim'
B = 'Não';

value $QGMoitentadois
A = 'Sim'
B = 'Não';

value $QGMoitentatres
A = 'Sim'
B = 'Não';

value $QGMoitentaquatro
A = 'Sim'
B = 'Não';

value $QGMoitentacinco
A = 'Sim'
B = 'Não';

value $QGMoitentaseis
A = 'Sim'
B = 'Não';

value $QGMoitentasete
A = 'Sim'
B = 'Não';

value $QGMoitentaoito
A = 'Sim'
B = 'Não';

value $QGMoitentanove
A = 'Sim'
B = 'Não';

value $QGMnoventa
A = 'Sim'
B = 'Não';

value $QGMnoventaum
A = 'Sim'
B = 'Não';

value $QGMnoventadois
A = 'Sim'
B = 'Não';

value $QGMnoventatres
A = 'Sim'
B = 'Não';

value $QGMnoventaquatro
A = 'Sim'
B = 'Não';

value $QGMnoventacinco
A = 'Sim'
B = 'Não';

value $QGMnoventaseis
A = 'Sim'
B = 'Não';

value $QGMnoventasete
A = 'Sim'
B = 'Não';

value $QGMnoventaoito
A = 'Sim'
B = 'Não';

value $QGMnoventanove
A = 'Sim'
B = 'Não';

value $QGMcem
A = 'Sim'
B = 'Não';

value $QGMcemum
A = 'Sim'
B = 'Não';

value $QGMcemdois
A = 'Sim'
B = 'Não';

value $QGMcemtres
A = 'Sim'
B = 'Não';

value $QGMcemquatro
A = 'Sim'
B = 'Não';

value $QGMcemcinco
A = 'Sim'
B = 'Não';

value $QGMcemseis
A = 'Sim'
B = 'Não';

value $QGMcemsete
A = 'Sim'
B = 'Não';

value $QGMcemoito
A = 'Sim'
B = 'Não';

value $QGMcemnove
A = 'Sim'
B = 'Não';

value $QGMcemdez
A = 'Sim'
B = 'Não';

value $QGMcemonze
A = 'Sim'
B = 'Não';

value $QGMcemdoze
A = 'Sim'
B = 'Não';

value $QGMcemtreze
A = 'Sim'
B = 'Não';

value $QGMcemcatorze
A = 'Sim'
B = 'Não';

value $QGMcemquinze
A = 'Sim'
B = 'Não';

value $QGMcemdezesseis
A = 'Sim'
B = 'Não';

value $QGMcemdezessete
A = 'Sim.'
B = 'Não.'
C = 'Não sei.';

value $QGMcemdezoito
A = 'Sim'
B = 'Não';

value $QGMcemdezenove
A = 'Sim'
B = 'Não';

value $QGMcemvinte
A = 'Sim'
B = 'Não';

value $QGMcemvinteum
A = 'Sim'
B = 'Não';

value $QGMcemvintedois
A = 'Sim'
B = 'Não';

value $QGMcemvintetres
A = 'Sim'
B = 'Não';

value $QGMcemvintequatro
A = 'Sim'
B = 'Não';

value $QGMcemvintecinco
A = 'Sim'
B = 'Não';

value $QGMcemvinteseis
A = 'Sim'
B = 'Não';

value $QGMcemvintesete
A = 'Sim'
B = 'Não';

value $QGMcemvinteoito
A = 'Sim'
B = 'Não';

value $QGMcemvintenove
A = 'Sim'
B = 'Não';

value $QGMcemtrinta
A = 'Sim'
B = 'Não';

value $QGMcemtrintaum
A = 'Sim'
B = 'Não';

value $QGMcemtrintadois
A = 'Sim'
B = 'Não';

value $QGMcemtrintatres
A = 'Sim'
B = 'Não';

value $QGMcemtrintaquatro
A = 'Sim'
B = 'Não';

value $QGMcemtrintacinco
A = 'Sim'
B = 'Não';

value $QGMcemtrintaseis
A = 'Sim'
B = 'Não';

value $QGMcemtrintasete
A = 'Sim'
B = 'Não';

value $QGMcemtrintaoito
A = 'Sim'
B = 'Não';

value $QGMcemtrintanove
A = 'Sim'
B = 'Não';

value $QGMcemquarenta
A = 'Sim'
B = 'Não';

value $QGMcemquarentaum
A = 'Sim'
B = 'Não';

value $QGMcemquarentadois
A = 'Sim'
B = 'Não';

value $QGMcemquarentatres
A = 'Sim'
B = 'Não';

value $QGMcemquarentaquatro
A = 'Sim'
B = 'Não';

value $QGMcemquarentacinco
A = 'Sim'
B = 'Não';

value $QGMcemquarentaseis
A = 'Sim'
B = 'Não';

value $QGMcemquarentasete
A = 'Sim'
B = 'Não';

value $QGMcemquarentaoito
A = 'Sim'
B = 'Não';

value $QGMcemquarentanove
A = 'Sim'
B = 'Não';

value $QGMcemcinquenta
A = 'Sim'
B = 'Não';

value $QGMcemcinquentaum
A = 'Sim'
B = 'Não';

value $QGMcemcinquentadois
A = 'Sim'
B = 'Não';

value $QGMcemcinquentatres
A = 'Sim'
B = 'Não';

value $QGMcemcinquentaquatro
A = 'Sim'
B = 'Não';

value $QGMcemcinquentacinco
A = 'Sim'
B = 'Não';

value $QGMcemcinquentaseis
A = 'Sim'
B = 'Não';

value $QGMcemcinquentasete
A = 'Sim'
B = 'Não';

value $QGMcemcinquentaoito
A = 'Sim'
B = 'Não';

value $QGMcemcinquentanove
A = 'Sim'
B = 'Não';

value $QGMcemsessenta
A = 'Sim'
B = 'Não';

value $QGMcemsessentaum
A = 'Sim'
B = 'Não';

value $QGMcemsessentadois
A = 'Sim'
B = 'Não';

value $QGMcemsessentatres
A = 'Sim'
B = 'Não';

value $QGMcemsessentaquatro
A = 'Sim'
B = 'Não';

value $QGMcemsessentacinco
A = 'Sim'
B = 'Não';

value $QGMcemsessentaseis
A = 'Sim'
B = 'Não';

value $QGMcemsessentasete
A = 'Sim'
B = 'Não';

value $QGMcemsessentaoito
A = 'Sim'
B = 'Não';

value $QGMcemsessentanove
A = 'Sim'
B = 'Não';

value $QGMcemsetenta
A = 'Sim'
B = 'Não';

value $QGMcemsetentaum
A = 'Sim'
B = 'Não';

value $QGMcemsetentadois
A = 'Sim'
B = 'Não';

value $QGMcemsetentatres
A = 'Sim'
B = 'Não';

value $QGMcemsetentaquatro
A = 'Mensal'
B = 'Bimestral'
C = 'Trimestral'
D = 'Semestral'
E = 'Anual'
F = 'Bianual'
G = 'Outra';

value $QGMcemsetentacinco
A = 'Sim'
B = 'Não';

value $QGMcemsetentaseis
A = 'Sim'
B = 'Não';

value $QGMcemsetentasete
A = 'Sim'
B = 'Não';

value $QGMcemsetentaoito
A = 'Sim'
B = 'Não';

value $QGMcemsetentanove
A = 'Sim'
B = 'Não';

value $QGMcemoitenta
A = 'Sim'
B = 'Não';

value $QGMcemoitentaum
A = 'Sim'
B = 'Não';

value $QGMcemoitentadois
A = 'Sim'
B = 'Não';

value $QGMcemoitentatres
A = 'Sim'
B = 'Não';

value $QGMcemoitentaquatro
A = 'Sim'
B = 'Não';

value $QGMcemoitentacinco
A = 'Sim'
B = 'Não';

value $QGMcemoitentaseis
A = 'Sim.'
B = 'Não.'
C = 'Não se aplica.';

value $QGMcemoitentasete
A = 'Sim.'
B = 'Não.'
C = 'Não se aplica.';

value $QGMcemoitentaoito
A = 'Sim.'
B = 'Não.'
C = 'Não se aplica.';

value $QGMcemoitentanove
A = 'Sim.'
B = 'Não.'
C = 'Não se aplica.';

value $QGMcemnoventa
A = 'Sim.'
B = 'Não.'
C = 'Não se aplica.';

value $QGMcemnoventaum
A = 'Sim'
B = 'Não';

value $QGMcemnoventadois
A = 'Sim'
B = 'Não';

value $QGMcemnoventatres
A = 'Sim'
B = 'Não';

value $QGMcemnoventaquatro
A = 'Sim'
B = 'Não';

value $QGMcemnoventacinco
A = 'Sim'
B = 'Não';

value $QGMcemnoventaseis
A = 'Sim'
B = 'Não';

value $QGMcemnoventasete
A = 'Sim'
B = 'Não';

value $QGMcemnoventaoito
A = 'Sim'
B = 'Não';

value $QGMcemnoventanove
A = 'Sim'
B = 'Não';

value $QGMduzentos
A = 'Sim'
B = 'Não';

value $QGMduzentosum
A = 'Sim'
B = 'Não';

value $QGMduzentosdois
A = 'Sim'
B = 'Não';

value $QGMduzentostres
A = 'Sim'
B = 'Não';

value $QGMduzentosquatro
A = 'Sim'
B = 'Não';

value $QGMduzentoscinco
A = 'É inferior à dos(as) professores(as) de Ensino Fundamental.'
B = 'É equivalente à dos(as) professores(as) de Ensino Fundamental.'
C = 'É superior à dos(as) professores(as) de Ensino Fundamental.'
D = 'Não existe este profissional na rede.';

value $QGMduzentosseis
A = 'É inferior à dos(as) professores(as) de Ensino Fundamental.'
B = 'É equivalente à dos(as) professores(as) de Ensino Fundamental.'
C = 'É superior à dos(as) professores(as) de Ensino Fundamental.'
D = 'Não existe este profissional na rede.';

value $QGMduzentossete
A = 'Sim'
B = 'Não';

value $QGMduzentosoito
A = 'Sim'
B = 'Não';

value $QGMduzentosnove
A = 'Sim'
B = 'Não';

value $QGMduzentosdez
A = 'Sim'
B = 'Não';

value $QGMduzentosonze
A = 'Sim'
B = 'Não';

value $QGMduzentosdoze
A = 'Sim'
B = 'Não';

value $QGMduzentostreze
A = 'Sim'
B = 'Não';

value $QGMduzentoscatorze
A = 'Sim'
B = 'Não';

value $QGMduzentosquinze
A = 'Sim'
B = 'Não';

value $QGMduzentosdezesseis
A = 'Muito difícil'
B = 'Difícil'
C = 'Nem fácil e nem difícil'
D = 'Fácil'
E = 'Muito fácil';

value $QGMduzentosdezessete
A = 'Muito difícil'
B = 'Difícil'
C = 'Nem fácil e nem difícil'
D = 'Fácil'
E = 'Muito fácil';

run;

DATA WORK.TS_SECRETARIO_MUNICIPAL;

 INFILE 'C:\TS_SECRETARIO_MUNICIPAL.csv' /*Endereço do arquivo*/
        LRECL=4096
		firstobs=2
        DLM=";"
        MISSOVER
        DSD ;

INPUT
ID_SAEB : 4.          
ID_REGIAO : 1.                  
ID_UF : 2.                  
ID_MUNICIPIO : 7.
ID_AREA : 1.
TX_RESP_Q019 : $CHAR1.
TX_RESP_Q020 : $CHAR1.
TX_RESP_Q021 : $CHAR1.
TX_RESP_Q022 : $CHAR1.
TX_RESP_Q023 : $CHAR1.
TX_RESP_Q024 : $CHAR1.
TX_RESP_Q025 : $CHAR1.
TX_RESP_Q026 : $CHAR1.
TX_RESP_Q027 : $CHAR1.
TX_RESP_Q028 : $CHAR1.
TX_RESP_Q029 : $CHAR1.
TX_RESP_Q030 : $CHAR1.
TX_RESP_Q031 : $CHAR1.
TX_RESP_Q032 : $CHAR1.
TX_RESP_Q033 : $CHAR1.
TX_RESP_Q034 : $CHAR1.
TX_RESP_Q035 : $CHAR1.
TX_RESP_Q036 : $CHAR1.
TX_RESP_Q037 : $CHAR1.
TX_RESP_Q038 : $CHAR1.
TX_RESP_Q039 : $CHAR1.
TX_RESP_Q040 : $CHAR1.
TX_RESP_Q041 : $CHAR1.
TX_RESP_Q042 : $CHAR1.
TX_RESP_Q043 : $CHAR1.
TX_RESP_Q044 : $CHAR1.
TX_RESP_Q045 : $CHAR1.
TX_RESP_Q046 : $CHAR1.
TX_RESP_Q047 : $CHAR1.
TX_RESP_Q048 : $CHAR1.
TX_RESP_Q049 : $CHAR1.
TX_RESP_Q050 : $CHAR1.
TX_RESP_Q051 : $CHAR1.
TX_RESP_Q052 : $CHAR1.
TX_RESP_Q053 : $CHAR1.
TX_RESP_Q054 : $CHAR1.
TX_RESP_Q055 : $CHAR1.
TX_RESP_Q056 : $CHAR1.
TX_RESP_Q057 : $CHAR1.
TX_RESP_Q058 : $CHAR1.
TX_RESP_Q059 : $CHAR1.
TX_RESP_Q060 : $CHAR1.
TX_RESP_Q061 : $CHAR1.
TX_RESP_Q062 : $CHAR1.
TX_RESP_Q063 : $CHAR1.
TX_RESP_Q064 : $CHAR1.
TX_RESP_Q065 : $CHAR1.
TX_RESP_Q066 : $CHAR1.
TX_RESP_Q067 : $CHAR1.
TX_RESP_Q068 : $CHAR1.
TX_RESP_Q069 : $CHAR1.
TX_RESP_Q070 : $CHAR1.
TX_RESP_Q071 : $CHAR1.
TX_RESP_Q072 : $CHAR1.
TX_RESP_Q073 : $CHAR1.
TX_RESP_Q074 : $CHAR1.
TX_RESP_Q075 : $CHAR1.
TX_RESP_Q076 : $CHAR1.
TX_RESP_Q077 : $CHAR1.
TX_RESP_Q078 : $CHAR1.
TX_RESP_Q079 : $CHAR1.
TX_RESP_Q080 : $CHAR1.
TX_RESP_Q081 : $CHAR1.
TX_RESP_Q082 : $CHAR1.
TX_RESP_Q083 : $CHAR1.
TX_RESP_Q084 : $CHAR1.
TX_RESP_Q085 : $CHAR1.
TX_RESP_Q086 : $CHAR1.
TX_RESP_Q087 : $CHAR1.
TX_RESP_Q088 : $CHAR1.
TX_RESP_Q089 : $CHAR1.
TX_RESP_Q090 : $CHAR1.
TX_RESP_Q091 : $CHAR1.
TX_RESP_Q092 : $CHAR1.
TX_RESP_Q093 : $CHAR1.
TX_RESP_Q094 : $CHAR1.
TX_RESP_Q095 : $CHAR1.
TX_RESP_Q096 : $CHAR1.
TX_RESP_Q097 : $CHAR1.
TX_RESP_Q098 : $CHAR1.
TX_RESP_Q099 : $CHAR1.
TX_RESP_Q100 : $CHAR1.
TX_RESP_Q101 : $CHAR1.
TX_RESP_Q102 : $CHAR1.
TX_RESP_Q103 : $CHAR1.
TX_RESP_Q104 : $CHAR1.
TX_RESP_Q105 : $CHAR1.
TX_RESP_Q106 : $CHAR1.
TX_RESP_Q107 : $CHAR1.
TX_RESP_Q108 : $CHAR1.
TX_RESP_Q109 : $CHAR1.
TX_RESP_Q110 : $CHAR1.
TX_RESP_Q111 : $CHAR1.
TX_RESP_Q112 : $CHAR1.
TX_RESP_Q113 : $CHAR1.
TX_RESP_Q114 : $CHAR1.
TX_RESP_Q115 : $CHAR1.
TX_RESP_Q116 : $CHAR1.
TX_RESP_Q117 : $CHAR1.
TX_RESP_Q118 : $CHAR1.
TX_RESP_Q119 : $CHAR1.
TX_RESP_Q120 : $CHAR1.
TX_RESP_Q121 : $CHAR1.
TX_RESP_Q122 : $CHAR1.
TX_RESP_Q123 : $CHAR1.
TX_RESP_Q124 : $CHAR1.
TX_RESP_Q125 : $CHAR1.
TX_RESP_Q126 : $CHAR1.
TX_RESP_Q127 : $CHAR1.
TX_RESP_Q128 : $CHAR1.
TX_RESP_Q129 : $CHAR1.
TX_RESP_Q130 : $CHAR1.
TX_RESP_Q131 : $CHAR1.
TX_RESP_Q132 : $CHAR1.
TX_RESP_Q133 : $CHAR1.
TX_RESP_Q134 : $CHAR1.
TX_RESP_Q135 : $CHAR1.
TX_RESP_Q136 : $CHAR1.
TX_RESP_Q137 : $CHAR1.
TX_RESP_Q138 : $CHAR1.
TX_RESP_Q139 : $CHAR1.
TX_RESP_Q140 : $CHAR1.
TX_RESP_Q141 : $CHAR1.
TX_RESP_Q142 : $CHAR1.
TX_RESP_Q143 : $CHAR1.
TX_RESP_Q144 : $CHAR1.
TX_RESP_Q145 : $CHAR1.
TX_RESP_Q146 : $CHAR1.
TX_RESP_Q147 : $CHAR1.
TX_RESP_Q148 : $CHAR1.
TX_RESP_Q149 : $CHAR1.
TX_RESP_Q150 : $CHAR1.
TX_RESP_Q151 : $CHAR1.
TX_RESP_Q152 : $CHAR1.
TX_RESP_Q153 : $CHAR1.
TX_RESP_Q154 : $CHAR1.
TX_RESP_Q155 : $CHAR1.
TX_RESP_Q156 : $CHAR1.
TX_RESP_Q157 : $CHAR1.
TX_RESP_Q158 : $CHAR1.
TX_RESP_Q159 : $CHAR1.
TX_RESP_Q160 : $CHAR1.
TX_RESP_Q161 : $CHAR1.
TX_RESP_Q162 : $CHAR1.
TX_RESP_Q163 : $CHAR1.
TX_RESP_Q164 : $CHAR1.
TX_RESP_Q165 : $CHAR1.
TX_RESP_Q166 : $CHAR1.
TX_RESP_Q167 : $CHAR1.
TX_RESP_Q168 : $CHAR1.
TX_RESP_Q169 : $CHAR1.
TX_RESP_Q170 : $CHAR1.
TX_RESP_Q171 : $CHAR1.
TX_RESP_Q172 : $CHAR1.
TX_RESP_Q173 : $CHAR1.
TX_RESP_Q174 : $CHAR1.
TX_RESP_Q175 : $CHAR1.
TX_RESP_Q176 : $CHAR1.
TX_RESP_Q177 : $CHAR1.
TX_RESP_Q178 : $CHAR1.
TX_RESP_Q179 : $CHAR1.
TX_RESP_Q180 : $CHAR1.
TX_RESP_Q181 : $CHAR1.
TX_RESP_Q182 : $CHAR1.
TX_RESP_Q183 : $CHAR1.
TX_RESP_Q184 : $CHAR1.
TX_RESP_Q185 : $CHAR1.
TX_RESP_Q186 : $CHAR1.
TX_RESP_Q187 : $CHAR1.
TX_RESP_Q188 : $CHAR1.
TX_RESP_Q189 : $CHAR1.
TX_RESP_Q190 : $CHAR1.
TX_RESP_Q191 : $CHAR1.
TX_RESP_Q192 : $CHAR1.
TX_RESP_Q193 : $CHAR1.
TX_RESP_Q194 : $CHAR1.
TX_RESP_Q195 : $CHAR1.
TX_RESP_Q196 : $CHAR1.
TX_RESP_Q197 : $CHAR1.
TX_RESP_Q198 : $CHAR1.
TX_RESP_Q199 : $CHAR1.
TX_RESP_Q200 : $CHAR1.
TX_RESP_Q201 : $CHAR1.
TX_RESP_Q202 : $CHAR1.
TX_RESP_Q203 : $CHAR1.
TX_RESP_Q204 : $CHAR1.
TX_RESP_Q205 : $CHAR1.
TX_RESP_Q206 : $CHAR1.
TX_RESP_Q207 : $CHAR1.
TX_RESP_Q208 : $CHAR1.
TX_RESP_Q209 : $CHAR1.
TX_RESP_Q210 : $CHAR1.
TX_RESP_Q211 : $CHAR1.
TX_RESP_Q212 : $CHAR1.
TX_RESP_Q213 : $CHAR1.
TX_RESP_Q214 : $CHAR1.
TX_RESP_Q215 : $CHAR1.
TX_RESP_Q216 : $CHAR1.
TX_RESP_Q217 : $CHAR1.
;  

ATTRIB ID_REGIAO FORMAT=ID_REGIAO12.;
ATTRIB ID_UF FORMAT=ID_UF2.;
ATTRIB ID_AREA FORMAT=ID_AREA8.;
ATTRIB TX_RESP_Q019 FORMAT=$QGMdezenove.;
ATTRIB TX_RESP_Q020 FORMAT=$QGMvinte.;
ATTRIB TX_RESP_Q021 FORMAT=$QGMvinteum.;
ATTRIB TX_RESP_Q025 FORMAT=$QGMvintecinco.;
ATTRIB TX_RESP_Q026 FORMAT=$QGMvinteseis.;
ATTRIB TX_RESP_Q027 FORMAT=$QGMvintesete.;
ATTRIB TX_RESP_Q028 FORMAT=$QGMvinteoito.;
ATTRIB TX_RESP_Q029 FORMAT=$QGMvintenove.;
ATTRIB TX_RESP_Q030 FORMAT=$QGMtrinta.;
ATTRIB TX_RESP_Q031 FORMAT=$QGMtrintaum.;
ATTRIB TX_RESP_Q032 FORMAT=$QGMtrintadois.;
ATTRIB TX_RESP_Q033 FORMAT=$QGMtrintatres.;
ATTRIB TX_RESP_Q034 FORMAT=$QGMtrintaquatro.;
ATTRIB TX_RESP_Q035 FORMAT=$QGMtrintacinco.;
ATTRIB TX_RESP_Q036 FORMAT=$QGMtrintaseis.;
ATTRIB TX_RESP_Q037 FORMAT=$QGMtrintasete.;
ATTRIB TX_RESP_Q038 FORMAT=$QGMtrintaoito.;
ATTRIB TX_RESP_Q039 FORMAT=$QGMtrintanove.;
ATTRIB TX_RESP_Q040 FORMAT=$QGMquarenta.;
ATTRIB TX_RESP_Q041 FORMAT=$QGMquarentaum.;
ATTRIB TX_RESP_Q042 FORMAT=$QGMquarentadois.;
ATTRIB TX_RESP_Q043 FORMAT=$QGMquarentatres.;
ATTRIB TX_RESP_Q044 FORMAT=$QGMquarentaquatro.;
ATTRIB TX_RESP_Q045 FORMAT=$QGMquarentacinco.;
ATTRIB TX_RESP_Q046 FORMAT=$QGMquarentaseis.;
ATTRIB TX_RESP_Q047 FORMAT=$QGMquarentasete.;
ATTRIB TX_RESP_Q048 FORMAT=$QGMquarentaoito.;
ATTRIB TX_RESP_Q049 FORMAT=$QGMquarentanove.;
ATTRIB TX_RESP_Q050 FORMAT=$QGMcinquenta.;
ATTRIB TX_RESP_Q051 FORMAT=$QGMcinquentaum.;
ATTRIB TX_RESP_Q052 FORMAT=$QGMcinquentadois.;
ATTRIB TX_RESP_Q053 FORMAT=$QGMcinquentatres.;
ATTRIB TX_RESP_Q054 FORMAT=$QGMcinquentaquatro.;
ATTRIB TX_RESP_Q055 FORMAT=$QGMcinquentacinco.;
ATTRIB TX_RESP_Q056 FORMAT=$QGMcinquentaseis.;
ATTRIB TX_RESP_Q057 FORMAT=$QGMcinquentasete.;
ATTRIB TX_RESP_Q058 FORMAT=$QGMcinquentaoito.;
ATTRIB TX_RESP_Q073 FORMAT=$QGMsetentatres.;
ATTRIB TX_RESP_Q075 FORMAT=$QGMsetentacinco.;
ATTRIB TX_RESP_Q076 FORMAT=$QGMsetentaseis.;
ATTRIB TX_RESP_Q077 FORMAT=$QGMsetentasete.;
ATTRIB TX_RESP_Q078 FORMAT=$QGMsetentaoito.;
ATTRIB TX_RESP_Q079 FORMAT=$QGMsetentanove.;
ATTRIB TX_RESP_Q080 FORMAT=$QGMoitenta.;
ATTRIB TX_RESP_Q081 FORMAT=$QGMoitentaum.;
ATTRIB TX_RESP_Q082 FORMAT=$QGMoitentadois.;
ATTRIB TX_RESP_Q083 FORMAT=$QGMoitentatres.;
ATTRIB TX_RESP_Q084 FORMAT=$QGMoitentaquatro.;
ATTRIB TX_RESP_Q085 FORMAT=$QGMoitentacinco.;
ATTRIB TX_RESP_Q086 FORMAT=$QGMoitentaseis.;
ATTRIB TX_RESP_Q087 FORMAT=$QGMoitentasete.;
ATTRIB TX_RESP_Q088 FORMAT=$QGMoitentaoito.;
ATTRIB TX_RESP_Q089 FORMAT=$QGMoitentanove.;
ATTRIB TX_RESP_Q090 FORMAT=$QGMnoventa.;
ATTRIB TX_RESP_Q091 FORMAT=$QGMnoventaum.;
ATTRIB TX_RESP_Q092 FORMAT=$QGMnoventadois.;
ATTRIB TX_RESP_Q093 FORMAT=$QGMnoventatres.;
ATTRIB TX_RESP_Q094 FORMAT=$QGMnoventaquatro.;
ATTRIB TX_RESP_Q095 FORMAT=$QGMnoventacinco.;
ATTRIB TX_RESP_Q096 FORMAT=$QGMnoventaseis.;
ATTRIB TX_RESP_Q097 FORMAT=$QGMnoventasete.;
ATTRIB TX_RESP_Q098 FORMAT=$QGMnoventaoito.;
ATTRIB TX_RESP_Q099 FORMAT=$QGMnoventanove.;
ATTRIB TX_RESP_Q100 FORMAT=$QGMcem.;
ATTRIB TX_RESP_Q101 FORMAT=$QGMcemum.;
ATTRIB TX_RESP_Q102 FORMAT=$QGMcemdois.;
ATTRIB TX_RESP_Q103 FORMAT=$QGMcemtres.;
ATTRIB TX_RESP_Q104 FORMAT=$QGMcemquatro.;
ATTRIB TX_RESP_Q105 FORMAT=$QGMcemcinco.;
ATTRIB TX_RESP_Q106 FORMAT=$QGMcemseis.;
ATTRIB TX_RESP_Q107 FORMAT=$QGMcemsete.;
ATTRIB TX_RESP_Q108 FORMAT=$QGMcemoito.;
ATTRIB TX_RESP_Q109 FORMAT=$QGMcemnove.;
ATTRIB TX_RESP_Q110 FORMAT=$QGMcemdez.;
ATTRIB TX_RESP_Q111 FORMAT=$QGMcemonze.;
ATTRIB TX_RESP_Q112 FORMAT=$QGMcemdoze.;
ATTRIB TX_RESP_Q113 FORMAT=$QGMcemtreze.;
ATTRIB TX_RESP_Q114 FORMAT=$QGMcemcatorze.;
ATTRIB TX_RESP_Q115 FORMAT=$QGMcemquinze.;
ATTRIB TX_RESP_Q116 FORMAT=$QGMcemdezesseis.;
ATTRIB TX_RESP_Q117 FORMAT=$QGMcemdezessete.;
ATTRIB TX_RESP_Q118 FORMAT=$QGMcemdezoito.;
ATTRIB TX_RESP_Q119 FORMAT=$QGMcemdezenove.;
ATTRIB TX_RESP_Q120 FORMAT=$QGMcemvinte.;
ATTRIB TX_RESP_Q121 FORMAT=$QGMcemvinteum.;
ATTRIB TX_RESP_Q122 FORMAT=$QGMcemvintedois.;
ATTRIB TX_RESP_Q123 FORMAT=$QGMcemvintetres.;
ATTRIB TX_RESP_Q124 FORMAT=$QGMcemvintequatro.;
ATTRIB TX_RESP_Q125 FORMAT=$QGMcemvintecinco.;
ATTRIB TX_RESP_Q126 FORMAT=$QGMcemvinteseis.;
ATTRIB TX_RESP_Q127 FORMAT=$QGMcemvintesete.;
ATTRIB TX_RESP_Q128 FORMAT=$QGMcemvinteoito.;
ATTRIB TX_RESP_Q129 FORMAT=$QGMcemvintenove.;
ATTRIB TX_RESP_Q130 FORMAT=$QGMcemtrinta.;
ATTRIB TX_RESP_Q131 FORMAT=$QGMcemtrintaum.;
ATTRIB TX_RESP_Q132 FORMAT=$QGMcemtrintadois.;
ATTRIB TX_RESP_Q133 FORMAT=$QGMcemtrintatres.;
ATTRIB TX_RESP_Q134 FORMAT=$QGMcemtrintaquatro.;
ATTRIB TX_RESP_Q135 FORMAT=$QGMcemtrintacinco.;
ATTRIB TX_RESP_Q136 FORMAT=$QGMcemtrintaseis.;
ATTRIB TX_RESP_Q137 FORMAT=$QGMcemtrintasete.;
ATTRIB TX_RESP_Q138 FORMAT=$QGMcemtrintaoito.;
ATTRIB TX_RESP_Q139 FORMAT=$QGMcemtrintanove.;
ATTRIB TX_RESP_Q140 FORMAT=$QGMcemquarenta.;
ATTRIB TX_RESP_Q141 FORMAT=$QGMcemquarentaum.;
ATTRIB TX_RESP_Q142 FORMAT=$QGMcemquarentadois.;
ATTRIB TX_RESP_Q143 FORMAT=$QGMcemquarentatres.;
ATTRIB TX_RESP_Q144 FORMAT=$QGMcemquarentaquatro.;
ATTRIB TX_RESP_Q145 FORMAT=$QGMcemquarentacinco.;
ATTRIB TX_RESP_Q146 FORMAT=$QGMcemquarentaseis.;
ATTRIB TX_RESP_Q147 FORMAT=$QGMcemquarentasete.;
ATTRIB TX_RESP_Q148 FORMAT=$QGMcemquarentaoito.;
ATTRIB TX_RESP_Q149 FORMAT=$QGMcemquarentanove.;
ATTRIB TX_RESP_Q150 FORMAT=$QGMcemcinquenta.;
ATTRIB TX_RESP_Q151 FORMAT=$QGMcemcinquentaum.;
ATTRIB TX_RESP_Q152 FORMAT=$QGMcemcinquentadois.;
ATTRIB TX_RESP_Q153 FORMAT=$QGMcemcinquentatres.;
ATTRIB TX_RESP_Q154 FORMAT=$QGMcemcinquentaquatro.;
ATTRIB TX_RESP_Q155 FORMAT=$QGMcemcinquentacinco.;
ATTRIB TX_RESP_Q156 FORMAT=$QGMcemcinquentaseis.;
ATTRIB TX_RESP_Q157 FORMAT=$QGMcemcinquentasete.;
ATTRIB TX_RESP_Q158 FORMAT=$QGMcemcinquentaoito.;
ATTRIB TX_RESP_Q159 FORMAT=$QGMcemcinquentanove.;
ATTRIB TX_RESP_Q160 FORMAT=$QGMcemsessenta.;
ATTRIB TX_RESP_Q161 FORMAT=$QGMcemsessentaum.;
ATTRIB TX_RESP_Q162 FORMAT=$QGMcemsessentadois.;
ATTRIB TX_RESP_Q163 FORMAT=$QGMcemsessentatres.;
ATTRIB TX_RESP_Q164 FORMAT=$QGMcemsessentaquatro.;
ATTRIB TX_RESP_Q165 FORMAT=$QGMcemsessentacinco.;
ATTRIB TX_RESP_Q166 FORMAT=$QGMcemsessentaseis.;
ATTRIB TX_RESP_Q167 FORMAT=$QGMcemsessentasete.;
ATTRIB TX_RESP_Q168 FORMAT=$QGMcemsessentaoito.;
ATTRIB TX_RESP_Q169 FORMAT=$QGMcemsessentanove.;
ATTRIB TX_RESP_Q170 FORMAT=$QGMcemsetenta.;
ATTRIB TX_RESP_Q171 FORMAT=$QGMcemsetentaum.;
ATTRIB TX_RESP_Q172 FORMAT=$QGMcemsetentadois.;
ATTRIB TX_RESP_Q173 FORMAT=$QGMcemsetentatres.;
ATTRIB TX_RESP_Q174 FORMAT=$QGMcemsetentaquatro.;
ATTRIB TX_RESP_Q175 FORMAT=$QGMcemsetentacinco.;
ATTRIB TX_RESP_Q176 FORMAT=$QGMcemsetentaseis.;
ATTRIB TX_RESP_Q177 FORMAT=$QGMcemsetentasete.;
ATTRIB TX_RESP_Q178 FORMAT=$QGMcemsetentaoito.;
ATTRIB TX_RESP_Q179 FORMAT=$QGMcemsetentanove.;
ATTRIB TX_RESP_Q180 FORMAT=$QGMcemoitenta.;
ATTRIB TX_RESP_Q181 FORMAT=$QGMcemoitentaum.;
ATTRIB TX_RESP_Q182 FORMAT=$QGMcemoitentadois.;
ATTRIB TX_RESP_Q183 FORMAT=$QGMcemoitentatres.;
ATTRIB TX_RESP_Q184 FORMAT=$QGMcemoitentaquatro.;
ATTRIB TX_RESP_Q185 FORMAT=$QGMcemoitentacinco.;
ATTRIB TX_RESP_Q186 FORMAT=$QGMcemoitentaseis.;
ATTRIB TX_RESP_Q187 FORMAT=$QGMcemoitentasete.;
ATTRIB TX_RESP_Q188 FORMAT=$QGMcemoitentaoito.;
ATTRIB TX_RESP_Q189 FORMAT=$QGMcemoitentanove.;
ATTRIB TX_RESP_Q190 FORMAT=$QGMcemnoventa.;
ATTRIB TX_RESP_Q191 FORMAT=$QGMcemnoventaum.;
ATTRIB TX_RESP_Q192 FORMAT=$QGMcemnoventadois.;
ATTRIB TX_RESP_Q193 FORMAT=$QGMcemnoventatres.;
ATTRIB TX_RESP_Q194 FORMAT=$QGMcemnoventaquatro.;
ATTRIB TX_RESP_Q195 FORMAT=$QGMcemnoventacinco.;
ATTRIB TX_RESP_Q196 FORMAT=$QGMcemnoventaseis.;
ATTRIB TX_RESP_Q197 FORMAT=$QGMcemnoventasete.;
ATTRIB TX_RESP_Q198 FORMAT=$QGMcemnoventaoito.;
ATTRIB TX_RESP_Q199 FORMAT=$QGMcemnoventanove.;
ATTRIB TX_RESP_Q200 FORMAT=$QGMduzentos.;
ATTRIB TX_RESP_Q201 FORMAT=$QGMduzentosum.;
ATTRIB TX_RESP_Q202 FORMAT=$QGMduzentosdois.;
ATTRIB TX_RESP_Q203 FORMAT=$QGMduzentostres.;
ATTRIB TX_RESP_Q204 FORMAT=$QGMduzentosquatro.;
ATTRIB TX_RESP_Q205 FORMAT=$QGMduzentoscinco.;
ATTRIB TX_RESP_Q206 FORMAT=$QGMduzentosseis.;
ATTRIB TX_RESP_Q207 FORMAT=$QGMduzentossete.;
ATTRIB TX_RESP_Q208 FORMAT=$QGMduzentosoito.;
ATTRIB TX_RESP_Q209 FORMAT=$QGMduzentosnove.;
ATTRIB TX_RESP_Q210 FORMAT=$QGMduzentosdez.;
ATTRIB TX_RESP_Q211 FORMAT=$QGMduzentosonze.;
ATTRIB TX_RESP_Q212 FORMAT=$QGMduzentosdoze.;
ATTRIB TX_RESP_Q213 FORMAT=$QGMduzentostreze.;
ATTRIB TX_RESP_Q214 FORMAT=$QGMduzentoscatorze.;
ATTRIB TX_RESP_Q215 FORMAT=$QGMduzentosquinze.;
ATTRIB TX_RESP_Q216 FORMAT=$QGMduzentosdezesseis.;
ATTRIB TX_RESP_Q217 FORMAT=$QGMduzentosdezessete.;

LABEL

ID_SAEB = 'Ano de aplicação do Saeb'                                                                                                    
ID_REGIAO = 'Código da Região'                                                                                                                         
ID_UF = 'Código da Unidade da Federação'                                                                                                               
ID_MUNICIPIO = 'Código do Município'
ID_AREA = 'Área'
TX_RESP_Q019 = 'Sobre a organização e planejamento da educação, o município possui: Sistema Municipal de Ensino?'
TX_RESP_Q020 = 'Sobre a organização e planejamento da educação, o município possui: Plano Municipal de Educação?'
TX_RESP_Q021 = 'Sobre a organização e planejamento da educação, o município possui: Fórum Permanente de Educação?'
TX_RESP_Q022 = 'Quantos servidores/funcionários estão lotados na sede da Secretaria de Educação?'
TX_RESP_Q023 = 'Quantos servidores/funcionários lotados na sede da Secretaria de Educação estão dedicados EXCLUSIVAMENTE à Educação infantil?'
TX_RESP_Q024 = 'Quantos servidores/funcionários lotados na sede da Secretaria de Educação estão dedicados EXCLUSIVAMENTE ao Ensino Fundamental?'
TX_RESP_Q025 = 'Selecione quais despesas a Secretaria de Educação tem autonomia para ordenar: Aperfeiçoamento de pessoal docente e demais profissionais'
TX_RESP_Q026 = 'Selecione quais despesas a Secretaria de Educação tem autonomia para ordenar: Aquisição e manutenção de equipamentos'
TX_RESP_Q027 = 'Selecione quais despesas a Secretaria de Educação tem autonomia para ordenar: Compra de material didático'
TX_RESP_Q028 = 'Selecione quais despesas a Secretaria de Educação tem autonomia para ordenar: Concessão de bolsas de estudo para estudantes'
TX_RESP_Q029 = 'Selecione quais despesas a Secretaria de Educação tem autonomia para ordenar: Construção de escolas'
TX_RESP_Q030 = 'Selecione quais despesas a Secretaria de Educação tem autonomia para ordenar: Manutenção e conservação das escolas'
TX_RESP_Q031 = 'Selecione quais despesas a Secretaria de Educação tem autonomia para ordenar: Merenda escolar'
TX_RESP_Q032 = 'Selecione quais despesas a Secretaria de Educação tem autonomia para ordenar: Remuneração de pessoal docente e demais profissionais'
TX_RESP_Q033 = 'Selecione quais despesas a Secretaria de Educação tem autonomia para ordenar: Transporte escolar'
TX_RESP_Q034 = 'Selecione quais despesas a Secretaria de Educação tem autonomia para ordenar: Outros'
TX_RESP_Q035 = 'A Secretaria de Educação desenvolve trabalhos em conjunto com: Serviços de saúde'
TX_RESP_Q036 = 'A Secretaria de Educação desenvolve trabalhos em conjunto com: Serviços de assistência social'
TX_RESP_Q037 = 'A Secretaria de Educação desenvolve trabalhos em conjunto com: Serviços de segurança pública'
TX_RESP_Q038 = 'A Secretaria de Educação desenvolve trabalhos em conjunto com: Ministério Público'
TX_RESP_Q039 = 'A Secretaria de Educação desenvolve trabalhos em conjunto com: Outros'
TX_RESP_Q040 = 'Há alguma legislação que regulamente a nomeação dos diretores das escolas?'
TX_RESP_Q041 = 'Quais critérios são utilizados para a escolha dos diretores das escolas? Livre indicação pelos poderes públicos'
TX_RESP_Q042 = 'Quais critérios são utilizados para a escolha dos diretores das escolas? Prova de conhecimentos'
TX_RESP_Q043 = 'Quais critérios são utilizados para a escolha dos diretores das escolas? Tempo de serviço'
TX_RESP_Q044 = 'Quais critérios são utilizados para a escolha dos diretores das escolas? Titulação acadêmica'
TX_RESP_Q045 = 'Quais critérios são utilizados para a escolha dos diretores das escolas? Experiência em gestão'
TX_RESP_Q046 = 'Quais critérios são utilizados para a escolha dos diretores das escolas? Curso de formação para gestores escolares'
TX_RESP_Q047 = 'Quais critérios são utilizados para a escolha dos diretores das escolas? Listas de candidatos'
TX_RESP_Q048 = 'Quais critérios são utilizados para a escolha dos diretores das escolas? Consulta pública/eleição'
TX_RESP_Q049 = 'As escolas do município adotam um sistema apostilado?'
TX_RESP_Q050 = 'O Ensino Fundamental é oferecido em ciclos?'
TX_RESP_Q051 = 'O município possui Conselho Municipal de Educação?'
TX_RESP_Q052 = 'Indique quais funções são exercidas pelo Conselho Municipal de Educação: Consultiva '
TX_RESP_Q053 = 'Indique quais funções são exercidas pelo Conselho Municipal de Educação: Normativa '
TX_RESP_Q054 = 'Indique quais funções são exercidas pelo Conselho Municipal de Educação: Deliberativa '
TX_RESP_Q055 = 'Indique quais funções são exercidas pelo Conselho Municipal de Educação: Fiscalizadora '
TX_RESP_Q056 = 'Indique quais funções são exercidas pelo Conselho Municipal de Educação: Propositiva '
TX_RESP_Q057 = 'Indique quais funções são exercidas pelo Conselho Municipal de Educação: Mobilizadora '
TX_RESP_Q058 = 'Indique quais funções são exercidas pelo Conselho Municipal de Educação: Não sei '
TX_RESP_Q059 = 'Indique a QUANTIDADE de membros do Conselho Municipal de Educação que representam: Secretaria municipal - incluso Secretário(a) '
TX_RESP_Q060 = 'Indique a QUANTIDADE de membros do Conselho Municipal de Educação que representam: Instituições particulares '
TX_RESP_Q061 = 'Indique a QUANTIDADE de membros do Conselho Municipal de Educação que representam: Diretores de escola de Ensino Fundamental '
TX_RESP_Q062 = 'Indique a QUANTIDADE de membros do Conselho Municipal de Educação que representam: Diretores de instituições de Educação Infantil '
TX_RESP_Q063 = 'Indique a QUANTIDADE de membros do Conselho Municipal de Educação que representam: Professores de Ensino Fundamental '
TX_RESP_Q064 = 'Indique a QUANTIDADE de membros do Conselho Municipal de Educação que representam: Professores de Educação Infantil '
TX_RESP_Q065 = 'Indique a QUANTIDADE de membros do Conselho Municipal de Educação que representam: Professores de escolas particulares '
TX_RESP_Q066 = 'Indique a QUANTIDADE de membros do Conselho Municipal de Educação que representam: Servidores das escolas '
TX_RESP_Q067 = 'Indique a QUANTIDADE de membros do Conselho Municipal de Educação que representam: Pais de estudantes '
TX_RESP_Q068 = 'Indique a QUANTIDADE de membros do Conselho Municipal de Educação que representam: Estudantes '
TX_RESP_Q069 = 'Indique a QUANTIDADE de membros do Conselho Municipal de Educação que representam: Sindicatos e associações de docentes '
TX_RESP_Q070 = 'Indique a QUANTIDADE de membros do Conselho Municipal de Educação que representam: Câmara Municipal '
TX_RESP_Q071 = 'Indique a QUANTIDADE de membros do Conselho Municipal de Educação que representam: Outros setores '
TX_RESP_Q072 = 'Do total de membros do Conselho de Educação, quantos são eleitos? '
TX_RESP_Q073 = 'O Secretário de Educação é o presidente do Conselho de Educação? '
TX_RESP_Q074 = 'Quantas reuniões foram realizadas pelo Conselho de Educação neste ano? '
TX_RESP_Q075 = 'Indique os recursos disponíveis para o funcionamento do Conselho de Educação: Sala própria '
TX_RESP_Q076 = 'Indique os recursos disponíveis para o funcionamento do Conselho de Educação: Computador '
TX_RESP_Q077 = 'Indique os recursos disponíveis para o funcionamento do Conselho de Educação: Impressora '
TX_RESP_Q078 = 'Indique os recursos disponíveis para o funcionamento do Conselho de Educação: Acesso à internet '
TX_RESP_Q079 = 'Indique os recursos disponíveis para o funcionamento do Conselho de Educação: Transporte '
TX_RESP_Q080 = 'Indique os recursos disponíveis para o funcionamento do Conselho de Educação: Telefone '
TX_RESP_Q081 = 'Indique os recursos disponíveis para o funcionamento do Conselho de Educação: Diárias '
TX_RESP_Q082 = 'Indique os recursos disponíveis para o funcionamento do Conselho de Educação: Dotação orçamentária própria '
TX_RESP_Q083 = 'Indique os recursos disponíveis para o funcionamento do Conselho de Educação: Apoio administrativo '
TX_RESP_Q084 = 'Selecione quais atribuições o Conselho de Educação possui: Solucionar dúvidas interpretativas sobre a legislação educacional '
TX_RESP_Q085 = 'Selecione quais atribuições o Conselho de Educação possui: Emitir parecer sobre a interpretação de normas '
TX_RESP_Q086 = 'Selecione quais atribuições o Conselho de Educação possui: Estabelecer normas para o ingresso dos alunos '
TX_RESP_Q087 = 'Selecione quais atribuições o Conselho de Educação possui: Estabelecer normas para autorização de funcionamento das escolas '
TX_RESP_Q088 = 'Selecione quais atribuições o Conselho de Educação possui: Verificar o cumprimento do calendário letivo pelas escolas '
TX_RESP_Q089 = 'Selecione quais atribuições o Conselho de Educação possui: Verificar se as escolas conveniadas de educação infantil cumprem as diretrizes do município '
TX_RESP_Q090 = 'Selecione quais atribuições o Conselho de Educação possui: Sugerir medidas para aperfeiçoamento profissional dos docentes '
TX_RESP_Q091 = 'Selecione quais atribuições o Conselho de Educação possui: Propor ações para a diminuição da repetência '
TX_RESP_Q092 = 'Selecione quais atribuições o Conselho de Educação possui: Realizar reuniões ampliadas para discutir assuntos educacionais '
TX_RESP_Q093 = 'Selecione quais atribuições o Conselho de Educação possui: Promover eventos '
TX_RESP_Q094 = 'Neste ano foi realizada capacitação para os Conselheiros de Educação? '
TX_RESP_Q095 = 'Há Conselho de Acompanhamento e Controle Social do Fundeb ? CACS no seu município?'
TX_RESP_Q096 = 'Neste ano foi realizada capacitação para os membros do Conselho de Acompanhamento e Controle Social do Fundeb? '
TX_RESP_Q097 = 'Indique os recursos disponíveis para o funcionamento do Conselho de Acompanhamento e Controle Social do Fundeb: Sala própria '
TX_RESP_Q098 = 'Indique os recursos disponíveis para o funcionamento do Conselho de Acompanhamento e Controle Social do Fundeb: Computador '
TX_RESP_Q099 = 'Indique os recursos disponíveis para o funcionamento do Conselho de Acompanhamento e Controle Social do Fundeb: Impressora '
TX_RESP_Q100 = 'Indique os recursos disponíveis para o funcionamento do Conselho de Acompanhamento e Controle Social do Fundeb: Acesso à internet '
TX_RESP_Q101 = 'Indique os recursos disponíveis para o funcionamento do Conselho de Acompanhamento e Controle Social do Fundeb: Transporte '
TX_RESP_Q102 = 'Indique os recursos disponíveis para o funcionamento do Conselho de Acompanhamento e Controle Social do Fundeb: Telefone '
TX_RESP_Q103 = 'Indique os recursos disponíveis para o funcionamento do Conselho de Acompanhamento e Controle Social do Fundeb: Diárias '
TX_RESP_Q104 = 'Indique os recursos disponíveis para o funcionamento do Conselho de Acompanhamento e Controle Social do Fundeb: Dotação orçamentária própria '
TX_RESP_Q105 = 'Indique os recursos disponíveis para o funcionamento do Conselho de Acompanhamento e Controle Social do Fundeb: Apoio administrativo '
TX_RESP_Q106 = 'Há no seu município Conselho de Alimentação Escolar?'
TX_RESP_Q107 = 'Neste ano foi realizada capacitação para os membros do Conselho de Alimentação Escolar? '
TX_RESP_Q108 = 'Indique os recursos disponíveis para o funcionamento do Conselho de Alimentação Escolar: Sala própria '
TX_RESP_Q109 = 'Indique os recursos disponíveis para o funcionamento do Conselho de Alimentação Escolar: Computador '
TX_RESP_Q110 = 'Indique os recursos disponíveis para o funcionamento do Conselho de Alimentação Escolar: Impressora '
TX_RESP_Q111 = 'Indique os recursos disponíveis para o funcionamento do Conselho de Alimentação Escolar: Acesso à internet '
TX_RESP_Q112 = 'Indique os recursos disponíveis para o funcionamento do Conselho de Alimentação Escolar: Transporte '
TX_RESP_Q113 = 'Indique os recursos disponíveis para o funcionamento do Conselho de Alimentação Escolar: Telefone '
TX_RESP_Q114 = 'Indique os recursos disponíveis para o funcionamento do Conselho de Alimentação Escolar: Diárias '
TX_RESP_Q115 = 'Indique os recursos disponíveis para o funcionamento do Conselho de Alimentação Escolar: Dotação orçamentária própria '
TX_RESP_Q116 = 'Indique os recursos disponíveis para o funcionamento do Conselho de Alimentação Escolar: Apoio administrativo '
TX_RESP_Q117 = 'Desde 2014, o município realizou alguma Conferência Municipal de Educação preparatória para a Conferência Nacional de Educação (Conae)?'
TX_RESP_Q118 = 'A Secretaria possui instituições de Educação Infantil sob sua responsabilidade direta ou indireta?'
TX_RESP_Q119 = 'Com relação à EDUCAÇÃO INFANTIL, a Secretaria possui: Cálculo da demanda por vagas? '
TX_RESP_Q120 = 'Com relação à EDUCAÇÃO INFANTIL, a Secretaria possui: Programa para garantia de acesso? '
TX_RESP_Q121 = 'Com relação à EDUCAÇÃO INFANTIL, a Secretaria possui: Supervisão escolar? '
TX_RESP_Q122 = 'Com relação à EDUCAÇÃO INFANTIL, a Secretaria possui: Programa de formação de professores? '
TX_RESP_Q123 = 'Com relação à EDUCAÇÃO INFANTIL, a Secretaria possui: Busca ativa de crianças? '
TX_RESP_Q124 = 'Com relação à EDUCAÇÃO INFANTIL, a Secretaria possui: Comitê Intersetorial de Políticas Públicas para a Primeira Infância? '
TX_RESP_Q125 = 'Com relação à EDUCAÇÃO INFANTIL, a Secretaria possui: Currículo Municipal para a Educação Infantil? '
TX_RESP_Q126 = 'A Secretaria firma convênios com instituições para o atendimento de: Creche - Crianças de 0 a 3 anos? '
TX_RESP_Q127 = 'A Secretaria firma convênios com instituições para o atendimento de: Pré-escola - Crianças 4 a 5 anos? '
TX_RESP_Q128 = 'As escolas conveniadas são selecionadas através de chamada pública? '
TX_RESP_Q129 = 'Existem normas para o funcionamento das instituições conveniadas? '
TX_RESP_Q130 = 'Em relação às escolas conveniadas, quem assume as responsabilidades sobre Espaço físico: Poder Público/Secretaria de Educação.'
TX_RESP_Q131 = 'Em relação às escolas conveniadas, quem assume as responsabilidades sobre Espaço físico: Escolas/Instituições conveniadas. '
TX_RESP_Q132 = 'Em relação às escolas conveniadas, quem assume as responsabilidades sobre Manutenção de espaço físico: Poder Público/Secretaria de Educação. '
TX_RESP_Q133 = 'Em relação às escolas conveniadas, quem assume as responsabilidades sobre Manutenção de espaço físico: Escolas/Instituições conveniadas. '
TX_RESP_Q134 = 'Em relação às escolas conveniadas, quem assume as responsabilidades sobre Seleção de docentes: Poder Público/Secretaria de Educação. '
TX_RESP_Q135 = 'Em relação às escolas conveniadas, quem assume as responsabilidades sobre Seleção de docentes: Escolas/Instituições conveniadas. '
TX_RESP_Q136 = 'Em relação às escolas conveniadas, quem assume as responsabilidades sobre Pagamento de docentes: Poder Público/Secretaria de Educação. '
TX_RESP_Q137 = 'Em relação às escolas conveniadas, quem assume as responsabilidades sobre Pagamento de docentes: Escolas/Instituições conveniadas. '
TX_RESP_Q138 = 'Em relação às escolas conveniadas, quem assume as responsabilidades sobre Capacitação de docentes: Poder Público/Secretaria de Educação. '
TX_RESP_Q139 = 'Em relação às escolas conveniadas, quem assume as responsabilidades sobre Capacitação de docentes: Escolas/Instituições conveniadas. '
TX_RESP_Q140 = 'Em relação às escolas conveniadas, quem assume as responsabilidades sobre Fornecimento de merenda escolar: Poder Público/Secretaria de Educação. '
TX_RESP_Q141 = 'Em relação às escolas conveniadas, quem assume as responsabilidades sobre Fornecimento de merenda escolar: Escolas/Instituições conveniadas. '
TX_RESP_Q142 = 'Em relação às escolas conveniadas, quem assume as responsabilidades sobre Transporte escolar: Poder Público/Secretaria de Educação. '
TX_RESP_Q143 = 'Em relação às escolas conveniadas, quem assume as responsabilidades sobre Transporte escolar: Escolas/Instituições conveniadas. '
TX_RESP_Q144 = 'Em relação às escolas conveniadas, quem assume as responsabilidades sobre Materiais didáticos: Poder Público/Secretaria de Educação. '
TX_RESP_Q145 = 'Em relação às escolas conveniadas, quem assume as responsabilidades sobre Materiais didáticos: Escolas/Instituições conveniadas. '
TX_RESP_Q146 = 'A Secretaria possui escolas de Ensino Fundamental?'
TX_RESP_Q147 = 'Com relação ao Ensino Fundamental, a Secretaria possui: Cálculo da demanda por vagas? '
TX_RESP_Q148 = 'Com relação ao Ensino Fundamental, a Secretaria possui: Programa de formação de professores? '
TX_RESP_Q149 = 'Com relação ao Ensino Fundamental, a Secretaria possui: Busca ativa de crianças e jovens? '
TX_RESP_Q150 = 'Com relação ao Ensino Fundamental, a Secretaria possui: Currículo Municipal?'
TX_RESP_Q151 = 'A Secretaria possui escolas de Ensino Médio?'
TX_RESP_Q152 = 'Com relação ao Ensino Médio, a Secretaria possui: Cálculo da demanda por vagas? '
TX_RESP_Q153 = 'Com relação ao Ensino Médio, a Secretaria possui: Programa de formação de professores? '
TX_RESP_Q154 = 'Com relação ao Ensino Médio, a Secretaria possui: Busca ativa de jovens? '
TX_RESP_Q155 = 'Com relação ao Ensino Médio, a Secretaria possui: Currículo Municipal? '
TX_RESP_Q156 = 'A Secretaria utiliza os resultados do IDEB?'
TX_RESP_Q157 = 'De que forma os resultados são utilizados? Planejamento das ações educacionais '
TX_RESP_Q158 = 'De que forma os resultados são utilizados? Promoção de debates sobre a educação '
TX_RESP_Q159 = 'De que forma os resultados são utilizados? Divulgação de informações para a sociedade '
TX_RESP_Q160 = 'De que forma os resultados são utilizados? Subsídios para a formação continuada de professores '
TX_RESP_Q161 = 'De que forma os resultados são utilizados? Implantação de políticas para redução da repetência '
TX_RESP_Q162 = 'De que forma os resultados são utilizados? Revisão ou criação de orientações curriculares '
TX_RESP_Q163 = 'De que forma os resultados são utilizados? Subsídios para a avaliação de programas ou projetos da Secretaria de Educação '
TX_RESP_Q164 = 'De que forma os resultados são utilizados? Produção de materiais didáticos e pedagógicos '
TX_RESP_Q165 = 'De que forma os resultados são utilizados? Recompensa para escolas com melhores resultados '
TX_RESP_Q166 = 'De que forma os resultados são utilizados? Auxílio para unidades escolares com resultados inferiores '
TX_RESP_Q167 = 'De que forma os resultados são utilizados? Subsídios para pagamento de bonificação para professores '
TX_RESP_Q168 = 'De que forma os resultados são utilizados? Estabelecimento de metas de desempenho nos testes de proficiência '
TX_RESP_Q169 = 'De que forma os resultados são utilizados? Monitoramento das escolas '
TX_RESP_Q170 = 'De que forma os resultados são utilizados? Criação de critérios para remanejamento de diretores '
TX_RESP_Q171 = 'De que forma os resultados são utilizados? Outros '
TX_RESP_Q172 = 'A Secretaria orienta as escolas a prepararem seus alunos para as avaliações externas?'
TX_RESP_Q173 = 'A Secretaria Municipal realiza avaliação externa das escolas, além daquelas promovidas pelos governos estadual ou federal?'
TX_RESP_Q174 = 'Indique a periodicidade da avaliação '
TX_RESP_Q175 = 'Indique as etapas da Educação Básica que são avaliadas pela Secretaria: Creche '
TX_RESP_Q176 = 'Indique as etapas da Educação Básica que são avaliadas pela Secretaria: Pré-escola '
TX_RESP_Q177 = 'Indique as etapas da Educação Básica que são avaliadas pela Secretaria: Ensino Fundamental - Anos iniciais '
TX_RESP_Q178 = 'Indique as etapas da Educação Básica que são avaliadas pela Secretaria: Ensino Fundamental - Anos finais '
TX_RESP_Q179 = 'Indique as etapas da Educação Básica que são avaliadas pela Secretaria: Ensino Médio '
TX_RESP_Q180 = 'Indique o que é avaliado: Instalações e equipamentos '
TX_RESP_Q181 = 'Indique o que é avaliado: Projeto pedagógico '
TX_RESP_Q182 = 'Indique o que é avaliado: Desenvolvimento dos alunos '
TX_RESP_Q183 = 'Indique o que é avaliado: Desempenho dos alunos '
TX_RESP_Q184 = 'Indique o que é avaliado: Desempenho dos professores '
TX_RESP_Q185 = 'Indique o que é avaliado: Outros '
TX_RESP_Q186 = 'Indique quais profissionais vinculados à sua Secretaria possuem plano de carreira. Auxiliares e assistentes da Educação Infantil'
TX_RESP_Q187 = 'Indique quais profissionais vinculados à sua Secretaria possuem plano de carreira. Professores(as) da Educação Infantil:'
TX_RESP_Q188 = 'Indique quais profissionais vinculados à sua Secretaria possuem plano de carreira. Professores(as) do Ensino Fundamental:'
TX_RESP_Q189 = 'Indique quais profissionais vinculados à sua Secretaria possuem plano de carreira. Professores(as) do Ensino Médio:'
TX_RESP_Q190 = 'Indique quais profissionais vinculados à sua Secretaria possuem plano de carreira. Profissionais não-docentes'
TX_RESP_Q191 = 'Quais as jornadas de trabalho semanais dos(as) professores(as)? Até 20 horas semanais.'
TX_RESP_Q192 = 'Quais as jornadas de trabalho semanais dos(as) professores(as)? De 21 a 30 horas semanais.'
TX_RESP_Q193 = 'Quais as jornadas de trabalho semanais dos(as) professores(as)? De 31 a 40 horas semanais.'
TX_RESP_Q194 = 'Quais as jornadas de trabalho semanais dos(as) professores(as)? Mais de 40 horas semanais.'
TX_RESP_Q195 = 'O plano de carreira prevê o limite máximo de 2/3 da jornada do(a) professor(a) em sala de aula?'
TX_RESP_Q196 = 'Para TODOS(AS) os(as) professores(as) com jornada de trabalho de 40 horas semanais o VENCIMENTO BÁSICO INICIAL é igual ou superior a R$ 2.557,74 mensais?'
TX_RESP_Q197 = 'Quais critérios de progressão ou promoção são utilizados no plano de carreira do magistério? Tempo de efetivo exercício no cargo '
TX_RESP_Q198 = 'Quais critérios de progressão ou promoção são utilizados no plano de carreira do magistério? Qualificação '
TX_RESP_Q199 = 'Quais critérios de progressão ou promoção são utilizados no plano de carreira do magistério? Titulação '
TX_RESP_Q200 = 'Quais critérios de progressão ou promoção são utilizados no plano de carreira do magistério? Assiduidade '
TX_RESP_Q201 = 'Quais critérios de progressão ou promoção são utilizados no plano de carreira do magistério? Avaliação de desempenho '
TX_RESP_Q202 = 'Quais critérios de progressão ou promoção são utilizados no plano de carreira do magistério? Prova de conhecimentos para professores '
TX_RESP_Q203 = 'Quais critérios de progressão ou promoção são utilizados no plano de carreira do magistério? Desempenho dos alunos em avaliação externa '
TX_RESP_Q204 = 'Quais critérios de progressão ou promoção são utilizados no plano de carreira do magistério? Outros '
TX_RESP_Q205 = 'A remuneração dos(as) professores(as) de Educação Infantil, comparada com a dos(as) professores(as) com o mesmo nível de formação que atuam no Ensino Fundamental:'
TX_RESP_Q206 = 'A remuneração dos(as) professores(as) de Ensino Médio, comparada com a dos(as) professores(as) com o mesmo nível de formação que atuam no Ensino Fundamental:'
TX_RESP_Q207 = 'Neste ano, quais temas foram abordados em cursos de formação continuada para professores da rede? Conteúdo e compreensão dos conceitos da(s) área(s) de ensino:'
TX_RESP_Q208 = 'Neste ano, quais temas foram abordados em cursos de formação continuada para professores da rede? Avaliação da aprendizagem:'
TX_RESP_Q209 = 'Neste ano, quais temas foram abordados em cursos de formação continuada para professores da rede? Avaliação em larga escala:'
TX_RESP_Q210 = 'Neste ano, quais temas foram abordados em cursos de formação continuada para professores da rede? Metodologias de ensino:'
TX_RESP_Q211 = 'Neste ano, quais temas foram abordados em cursos de formação continuada para professores da rede? Conhecimento do currículo:'
TX_RESP_Q212 = 'Neste ano, quais temas foram abordados em cursos de formação continuada para professores da rede? Gestão da sala de aula:'
TX_RESP_Q213 = 'Neste ano, quais temas foram abordados em cursos de formação continuada para professores da rede? Educação inclusiva:'
TX_RESP_Q214 = 'Neste ano, quais temas foram abordados em cursos de formação continuada para professores da rede? Novas tecnologias:'
TX_RESP_Q215 = 'Neste ano, quais temas foram abordados em cursos de formação continuada para professores da rede? Gestão e administração escolar:'
TX_RESP_Q216 = 'Sobre este questionário, avalie: Facilidade de preenchimento das respostas'
TX_RESP_Q217 = 'Sobre este questionário, avalie: A compreensão dos termos utilizados no questionário'

;
run;quit;