/***************************************************************************************/
/*  INEP/Daeb-Diretoria de Avaliação da Educação Básica                                */ 
/*                                   			                                       */
/*  Coordenação-Geral de Instrumentos de Medidas                                       */
/*-------------------------------------------------------------------------------------*/
/*  PROGRAMA:                                                                          */
/*              INPUT_SAS_TS_PROFESSOR                                                 */
/*-------------------------------------------------------------------------------------*/
/*  DESCRICAO:  PROGRAMA PARA LEITURA DOS QUESTIONÁRIOS DOS PROFESSORES DO SAEB 2019   */
/*                                                                                     */
/***************************************************************************************/
/***************************************************************************************/
/* Obs:                                                                                */
/* 		                                                                               */
/* Para abrir os microdados, é necessário salvar este programa e o arquivo             */
/* TS_PROFESSOR.CSV no diretório C:\ do computador.	                                   */
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

value IN_PUBLICA
0='Não pública'
1='Pública';

value ID_LOCALIZACAO
1='Urbana'
2='Rural';

value ID_SERIE
2='2º ano do Ensino Fundamental'
5='5º ano do Ensino Fundamental'
9='9º ano do Ensino Fundamental'
12='3ª/4ª séries do Ensino Médio Tradicional'
13='3ª/4ª séries do Ensino Médio Integrado';

value IN_PREENCHIMENTO_QUESTIONARIO
0='Não preenchido'
1='Preenchido parcial ou totalmente';

value $QPum
A = 'Branca.'
B = 'Preta.'
C = 'Parda.'
D = 'Amarela.'
E = 'Indígena.'
F = 'Não quero declarar.';

value $QPdois
A = 'Meu primeiro ano.'
B = '1-2 anos.'
C = '3-5 anos.'
D = '6-10 anos.'
E = '11-15 anos.'
F = '16-20 anos.'
G = 'Mais de 20 anos.';

value $QPtres
A = 'Meu primeiro ano.'
B = '1-2 anos.'
C = '3-5 anos.'
D = '6-10 anos.'
E = '11-15 anos.'
F = '16-20 anos.'
G = 'Mais de 20 anos.';

value $QPquatro
A = ' Apenas nesta.'
B = ' Em 2.'
C = ' Em 3.'
D = ' Em 4 ou mais.';

value $QPcinco
A = ' Concursado/efetivo/estável.'
B = ' Contrato temporário.'
C = ' Contrato terceirizado.'
D = ' Contrato CLT.'
E = ' Pessoa jurídica.'
F = ' Outra situação trabalhista.';

value $QPseis
A = 'Discordo fortemente.'
B = 'Discordo.'
C = 'Concordo.'
D = 'Concordo fortemente.';

value $QPsete
A = 'Discordo fortemente.'
B = 'Discordo.'
C = 'Concordo.'
D = 'Concordo fortemente.';

value $QPoito
A = 'Discordo fortemente.'
B = 'Discordo.'
C = 'Concordo.'
D = 'Concordo fortemente.';

value $QPnove
A = 'Discordo fortemente.'
B = 'Discordo.'
C = 'Concordo.'
D = 'Concordo fortemente.';

value $QPdez
A = 'Discordo fortemente.'
B = 'Discordo.'
C = 'Concordo.'
D = 'Concordo fortemente.';

value $QPonze
A = 'Discordo fortemente.'
B = 'Discordo.'
C = 'Concordo.'
D = 'Concordo fortemente.';

value $QPdoze
A = 'Discordo fortemente.'
B = 'Discordo.'
C = 'Concordo.'
D = 'Concordo fortemente.';

value $QPtreze
A = 'Discordo fortemente.'
B = 'Discordo.'
C = 'Concordo.'
D = 'Concordo fortemente.';

value $QPcatorze
A = 'Discordo fortemente.'
B = 'Discordo.'
C = 'Concordo.'
D = 'Concordo fortemente.';

value $QPquinze
A = 'Nunca.'
B = 'Poucas vezes.'
C = 'Muitas vezes.'
D = 'Sempre.';

value $QPdezesseis
A = 'Nunca.'
B = 'Poucas vezes.'
C = 'Muitas vezes.'
D = 'Sempre.';

value $QPdezessete
A = 'Nunca.'
B = 'Poucas vezes.'
C = 'Muitas vezes.'
D = 'Sempre.';

value $QPdezoito
A = 'Nunca.'
B = 'Poucas vezes.'
C = 'Muitas vezes.'
D = 'Sempre.';

value $QPdezenove
A = 'Nunca.'
B = 'Poucas vezes.'
C = 'Muitas vezes.'
D = 'Sempre.';

value $QPvinte
A = 'Nunca.'
B = 'Poucas vezes.'
C = 'Muitas vezes.'
D = 'Sempre.';

value $QPvinteum
A = 'Nunca.'
B = 'Poucas vezes.'
C = 'Muitas vezes.'
D = 'Sempre.';

value $QPvintedois
A = 'Nunca.'
B = 'Poucas vezes.'
C = 'Muitas vezes.'
D = 'Sempre.';

value $QPvintetres
A = 'Inadequado.'
B = 'Pouco adequado.'
C = 'Razoavelmente adequado.'
D = 'Adequado.';

value $QPvintequatro
A = 'Inadequado.'
B = 'Pouco adequado.'
C = 'Razoavelmente adequado.'
D = 'Adequado.';

value $QPvintecinco
A = 'Inadequado.'
B = 'Pouco adequado.'
C = 'Razoavelmente adequado.'
D = 'Adequado.';

value $QPvinteseis
A = 'Inadequado.'
B = 'Pouco adequado.'
C = 'Razoavelmente adequado.'
D = 'Adequado.';

value $QPvintesete
A = 'Inadequado.'
B = 'Pouco adequado.'
C = 'Razoavelmente adequado.'
D = 'Adequado.';

value $QPvinteoito
A = 'Inadequado.'
B = 'Pouco adequado.'
C = 'Razoavelmente adequado.'
D = 'Adequado.';

value $QPvintenove
A = 'Inadequado.'
B = 'Pouco adequado.'
C = 'Razoavelmente adequado.'
D = 'Adequado.';

value $QPtrinta
A = 'Inadequado.'
B = 'Pouco adequado.'
C = 'Razoavelmente adequado.'
D = 'Adequado.';

value $QPtrintaum
A = 'Inadequado.'
B = 'Pouco adequado.'
C = 'Razoavelmente adequado.'
D = 'Adequado.';

value $QPtrintadois
A = 'Inadequado.'
B = 'Pouco adequado.'
C = 'Razoavelmente adequado.'
D = 'Adequado.';

value $QPtrintatres
A = 'NÃO USO / Não tem.'
B = 'USO E É Inadequado.'
C = 'USO E É Pouco adequado.'
D = 'USO E É Razoavelmente adequado.'
E = 'USO E É Adequado.';

value $QPtrintaquatro
A = 'NÃO USO / Não tem.'
B = 'USO E É Inadequado.'
C = 'USO E É Pouco adequado.'
D = 'USO E É Razoavelmente adequado.'
E = 'USO E É Adequado.';

value $QPtrintacinco
A = 'NÃO USO / Não tem.'
B = 'USO E É Inadequado.'
C = 'USO E É Pouco adequado.'
D = 'USO E É Razoavelmente adequado.'
E = 'USO E É Adequado.';

value $QPtrintaseis
A = 'NÃO USO / Não tem.'
B = 'USO E É Inadequado.'
C = 'USO E É Pouco adequado.'
D = 'USO E É Razoavelmente adequado.'
E = 'USO E É Adequado.';

value $QPtrintasete
A = 'NÃO USO / Não tem.'
B = 'USO E É Inadequado.'
C = 'USO E É Pouco adequado.'
D = 'USO E É Razoavelmente adequado.'
E = 'USO E É Adequado.';

value $QPtrintaoito
A = 'NÃO USO / Não tem.'
B = 'USO E É Inadequado.'
C = 'USO E É Pouco adequado.'
D = 'USO E É Razoavelmente adequado.'
E = 'USO E É Adequado.';

value $QPtrintanove
A = 'Até 10 horas.'
B = 'De 11 a 20 horas.'
C = 'De 21 a 30 horas.'
D = 'De 31 a 40 horas.'
E = 'Mais de 40 horas.';

value $QPquarenta
A = 'Até 10 horas.'
B = 'De 11 a 20 horas.'
C = 'De 21 a 30 horas.'
D = 'De 31 a 40 horas.'
E = 'Mais de 40 horas.';

value $QPquarentaum
A = 'Até 10 horas.'
B = 'De 11 a 20 horas.'
C = 'De 21 a 30 horas.'
D = 'De 31 a 40 horas.'
E = 'Mais de 40 horas.';

value $QPquarentadois
A = 'Nada preparado(a).'
B = 'Pouco preparado(a).'
C = 'Razoavelmente preparado(a).'
D = 'Muito preparado(a).';

value $QPquarentatres
A = 'Nada preparado(a).'
B = 'Pouco preparado(a).'
C = 'Razoavelmente preparado(a).'
D = 'Muito preparado(a).';

value $QPquarentaquatro
A = 'Nada preparado(a).'
B = 'Pouco preparado(a).'
C = 'Razoavelmente preparado(a).'
D = 'Muito preparado(a).';

value $QPquarentacinco
A = 'Nada preparado(a).'
B = 'Pouco preparado(a).'
C = 'Razoavelmente preparado(a).'
D = 'Muito preparado(a).';

value $QPquarentaseis
A = 'Nada preparado(a).'
B = 'Pouco preparado(a).'
C = 'Razoavelmente preparado(a).'
D = 'Muito preparado(a).';

value $QPquarentasete
A = 'Nada preparado(a).'
B = 'Pouco preparado(a).'
C = 'Razoavelmente preparado(a).'
D = 'Muito preparado(a).';

value $QPquarentaoito
A = 'Nada preparado(a).'
B = 'Pouco preparado(a).'
C = 'Razoavelmente preparado(a).'
D = 'Muito preparado(a).';

value $QPquarentanove
A = 'Nada preparado(a).'
B = 'Pouco preparado(a).'
C = 'Razoavelmente preparado(a).'
D = 'Muito preparado(a).';

value $QPcinquenta
A = 'Nada preparado(a).'
B = 'Pouco preparado(a).'
C = 'Razoavelmente preparado(a).'
D = 'Muito preparado(a).';

value $QPcinquentaum
A = 'Nada preparado(a).'
B = 'Pouco preparado(a).'
C = 'Razoavelmente preparado(a).'
D = 'Muito preparado(a).';

value $QPcinquentadois
A = 'Nada preparado(a).'
B = 'Pouco preparado(a).'
C = 'Razoavelmente preparado(a).'
D = 'Muito preparado(a).';

value $QPcinquentatres
A = 'Nenhuma.'
B = 'Uma.'
C = 'Duas.'
D = 'Três ou mais.';

value $QPcinquentaquatro
A = 'Nenhuma.'
B = 'Uma.'
C = 'Duas.'
D = 'Três ou mais.';

value $QPcinquentacinco
A = 'Nenhuma.'
B = 'Uma.'
C = 'Duas.'
D = 'Três ou mais.';

value $QPcinquentaseis
A = 'Nunca.'
B = 'Poucas vezes.'
C = 'Muitas vezes.'
D = 'Sempre.';

value $QPcinquentasete
A = 'Nunca.'
B = 'Poucas vezes.'
C = 'Muitas vezes.'
D = 'Sempre.';

value $QPcinquentaoito
A = 'Nunca.'
B = 'Poucas vezes.'
C = 'Muitas vezes.'
D = 'Sempre.';

value $QPcinquentanove
A = 'Não fiz este curso.'
B = 'Sim, sem apoio.'
C = 'Sim, com apoio parcial.'
D = 'Sim, com apoio total.';

value $QPsessenta
A = 'Não fiz este curso.'
B = 'Sim, sem apoio.'
C = 'Sim, com apoio parcial.'
D = 'Sim, com apoio total.';

value $QPsessentaum
A = 'Não fiz este curso.'
B = 'Sim, sem apoio.'
C = 'Sim, com apoio parcial.'
D = 'Sim, com apoio total.';

value $QPsessentadois
A = 'Não contribuiu.'
B = 'Contribuiu pouco.'
C = 'Contribuiu razoavelmente.'
D = 'Contribuiu muito.';

value $QPsessentatres
A = 'Não contribuiu.'
B = 'Contribuiu pouco.'
C = 'Contribuiu razoavelmente.'
D = 'Contribuiu muito.';

value $QPsessentaquatro
A = 'Não contribuiu.'
B = 'Contribuiu pouco.'
C = 'Contribuiu razoavelmente.'
D = 'Contribuiu muito.';

value $QPsessentacinco
A = 'Não contribuiu.'
B = 'Contribuiu pouco.'
C = 'Contribuiu razoavelmente.'
D = 'Contribuiu muito.';

value $QPsessentaseis
A = 'Não contribuiu.'
B = 'Contribuiu pouco.'
C = 'Contribuiu razoavelmente.'
D = 'Contribuiu muito.';

value $QPsessentasete
A = 'Não contribuiu.'
B = 'Contribuiu pouco.'
C = 'Contribuiu razoavelmente.'
D = 'Contribuiu muito.';

value $QPsessentaoito
A = 'Não contribuiu.'
B = 'Contribuiu pouco.'
C = 'Contribuiu razoavelmente.'
D = 'Contribuiu muito.';

value $QPsessentanove
A = 'Docente da turma.'
B = 'Todo o corpo docente da escola.'
C = 'Equipe gestora.'
D = 'Decisão externa à escola (Secretaria de Educação, sistema apostilado de ensino etc.).';

value $QPsetenta
A = 'Docente da turma.'
B = 'Todo o corpo docente da escola.'
C = 'Equipe gestora.'
D = 'Decisão externa à escola (Secretaria de Educação, sistema apostilado de ensino etc.).';

value $QPsetentaum
A = 'Docente da turma.'
B = 'Todo o corpo docente da escola.'
C = 'Equipe gestora.'
D = 'Decisão externa à escola (Secretaria de Educação, sistema apostilado de ensino etc.).';

value $QPsetentadois
A = 'Docente da turma.'
B = 'Todo o corpo docente da escola.'
C = 'Equipe gestora.'
D = 'Decisão externa à escola (Secretaria de Educação, sistema apostilado de ensino etc.).';

value $QPsetentatres
A = 'Docente da turma.'
B = 'Todo o corpo docente da escola.'
C = 'Equipe gestora.'
D = 'Decisão externa à escola (Secretaria de Educação, sistema apostilado de ensino etc.).';

value $QPsetentaquatro
A = 'Docente da turma.'
B = 'Todo o corpo docente da escola.'
C = 'Equipe gestora.'
D = 'Decisão externa à escola (Secretaria de Educação, sistema apostilado de ensino etc.).';

value $QPsetentacinco
A = 'Desconheço o projeto.'
B = 'Não.'
C = 'Sim.';

value $QPsetentaseis
A = 'Desconheço o projeto.'
B = 'Não.'
C = 'Sim.';

value $QPsetentasete
A = 'Desconheço o projeto.'
B = 'Não.'
C = 'Sim.';

value $QPsetentaoito
A = 'Desconheço o projeto.'
B = 'Não.'
C = 'Sim.';

value $QPsetentanove
A = 'Desconheço o projeto.'
B = 'Não.'
C = 'Sim.';

value $QPoitenta
A = ' Não existe Conselho de Classe nesta escola.'
B = ' Nenhuma vez.'
C = ' Uma vez.'
D = ' Duas vezes.'
E = ' Três vezes ou mais.';

value $QPoitentaum
A = 'Discordo fortemente.'
B = 'Discordo.'
C = 'Concordo.'
D = 'Concordo fortemente.';

value $QPoitentadois
A = 'Discordo fortemente.'
B = 'Discordo.'
C = 'Concordo.'
D = 'Concordo fortemente.';

value $QPoitentatres
A = 'Discordo fortemente.'
B = 'Discordo.'
C = 'Concordo.'
D = 'Concordo fortemente.';

value $QPoitentaquatro
A = 'Discordo fortemente.'
B = 'Discordo.'
C = 'Concordo.'
D = 'Concordo fortemente.';

value $QPoitentacinco
A = 'Discordo fortemente.'
B = 'Discordo.'
C = 'Concordo.'
D = 'Concordo fortemente.';

value $QPoitentaseis
A = 'Discordo fortemente.'
B = 'Discordo.'
C = 'Concordo.'
D = 'Concordo fortemente.';

value $QPoitentasete
A = 'Discordo fortemente.'
B = 'Discordo.'
C = 'Concordo.'
D = 'Concordo fortemente.';

value $QPoitentaoito
A = 'Discordo fortemente.'
B = 'Discordo.'
C = 'Concordo.'
D = 'Concordo fortemente.';

value $QPoitentanove
A = 'Nunca.'
B = 'Poucas vezes.'
C = 'Muitas vezes.'
D = 'Sempre.';

value $QPnoventa
A = 'Nunca.'
B = 'Poucas vezes.'
C = 'Muitas vezes.'
D = 'Sempre.';

value $QPnoventaum
A = 'Nunca.'
B = 'Poucas vezes.'
C = 'Muitas vezes.'
D = 'Sempre.';

value $QPnoventadois
A = 'Nunca.'
B = 'Poucas vezes.'
C = 'Muitas vezes.'
D = 'Sempre.';

value $QPnoventatres
A = 'Nunca.'
B = 'Poucas vezes.'
C = 'Muitas vezes.'
D = 'Sempre.';

value $QPnoventaquatro
A = 'Discordo fortemente.'
B = 'Discordo.'
C = 'Concordo.'
D = 'Concordo fortemente.';

value $QPnoventacinco
A = 'Discordo fortemente.'
B = 'Discordo.'
C = 'Concordo.'
D = 'Concordo fortemente.';

value $QPnoventaseis
A = 'Discordo fortemente.'
B = 'Discordo.'
C = 'Concordo.'
D = 'Concordo fortemente.';

value $QPnoventasete
A = 'Discordo fortemente.'
B = 'Discordo.'
C = 'Concordo.'
D = 'Concordo fortemente.';

value $QPnoventaoito
A = 'Discordo fortemente.'
B = 'Discordo.'
C = 'Concordo.'
D = 'Concordo fortemente.';

value $QPnoventanove
A = 'Discordo fortemente.'
B = 'Discordo.'
C = 'Concordo.'
D = 'Concordo fortemente.';

value $QPcem
A = 'Nunca.'
B = 'Poucas vezes.'
C = 'Várias vezes.';

value $QPcemum
A = 'Nunca.'
B = 'Poucas vezes.'
C = 'Várias vezes.';

value $QPcemdois
A = 'Nunca.'
B = 'Poucas vezes.'
C = 'Várias vezes.';

value $QPcemtres
A = 'Nunca.'
B = 'Poucas vezes.'
C = 'Várias vezes.';

value $QPcemquatro
A = 'Nunca.'
B = 'Poucas vezes.'
C = 'Várias vezes.';

value $QPcemcinco
A = 'Nunca.'
B = 'Poucas vezes.'
C = 'Várias vezes.';

value $QPcemseis
A = 'Nunca.'
B = 'Poucas vezes.'
C = 'Várias vezes.';

value $QPcemsete
A = 'Nunca.'
B = 'Poucas vezes.'
C = 'Várias vezes.';

value $QPcemoito
A = 'Nunca.'
B = 'Poucas vezes.'
C = 'Várias vezes.';

value $QPcemnove
A = 'Nunca.'
B = 'Poucas vezes.'
C = 'Várias vezes.';

value $QPcemdez
A = 'Nunca.'
B = 'Uma vez por ano.'
C = 'De 3 a 4 vezes ao ano.'
D = 'Mensalmente.'
E = 'Semanalmente.'
F = 'Diariamente.';

value $QPcemonze
A = 'Nunca.'
B = 'Uma vez por ano.'
C = 'De 3 a 4 vezes ao ano.'
D = 'Mensalmente.'
E = 'Semanalmente.'
F = 'Diariamente.';

value $QPcemdoze
A = 'Nunca.'
B = 'Uma vez por ano.'
C = 'De 3 a 4 vezes ao ano.'
D = 'Mensalmente.'
E = 'Semanalmente.'
F = 'Diariamente.';

value $QPcemtreze
A = 'Nunca.'
B = 'Uma vez por ano.'
C = 'De 3 a 4 vezes ao ano.'
D = 'Mensalmente.'
E = 'Semanalmente.'
F = 'Diariamente.';

value $QPcemcatorze
A = 'Nunca.'
B = 'Uma vez por ano.'
C = 'De 3 a 4 vezes ao ano.'
D = 'Mensalmente.'
E = 'Semanalmente.'
F = 'Diariamente.';

value $QPcemquinze
A = 'Nunca.'
B = 'Uma vez por ano.'
C = 'De 3 a 4 vezes ao ano.'
D = 'Mensalmente.'
E = 'Semanalmente.'
F = 'Diariamente.';

value $QPcemdezesseis
A = 'Nunca.'
B = 'Uma vez por ano.'
C = 'De 3 a 4 vezes ao ano.'
D = 'Mensalmente.'
E = 'Semanalmente.'
F = 'Diariamente.';

value $QPcemdezessete
A = 'Nunca.'
B = 'Uma vez por ano.'
C = 'De 3 a 4 vezes ao ano.'
D = 'Mensalmente.'
E = 'Semanalmente.'
F = 'Diariamente.';

value $QPcemdezoito
A = 'Nunca.'
B = 'Uma vez por ano.'
C = 'De 3 a 4 vezes ao ano.'
D = 'Mensalmente.'
E = 'Semanalmente.'
F = 'Diariamente.';

value $QPcemdezenove
A = 'Nunca.'
B = 'Uma vez por ano.'
C = 'De 3 a 4 vezes ao ano.'
D = 'Mensalmente.'
E = 'Semanalmente.'
F = 'Diariamente.';

value $QPcemvinte
A = 'Nunca.'
B = 'Uma vez por ano.'
C = 'De 3 a 4 vezes ao ano.'
D = 'Mensalmente.'
E = 'Semanalmente.'
F = 'Diariamente.';

value $QPcemvinteum
A = 'Nunca.'
B = 'Uma vez por ano.'
C = 'De 3 a 4 vezes ao ano.'
D = 'Mensalmente.'
E = 'Semanalmente.'
F = 'Diariamente.';

value $QPcemvintedois
A = 'Nunca.'
B = 'Uma vez por ano.'
C = 'De 3 a 4 vezes ao ano.'
D = 'Mensalmente.'
E = 'Semanalmente.'
F = 'Diariamente.';

value $QPcemvintetres
A = 'Nunca.'
B = 'Uma vez por ano.'
C = 'De 3 a 4 vezes ao ano.'
D = 'Mensalmente.'
E = 'Semanalmente.'
F = 'Diariamente.';

value $QPcemvintequatro
A = 'Nunca.'
B = 'Uma vez por ano.'
C = 'De 3 a 4 vezes ao ano.'
D = 'Mensalmente.'
E = 'Semanalmente.'
F = 'Diariamente.';

value $QPcemvintecinco
A = 'Nunca.'
B = 'Uma vez por ano.'
C = 'De 3 a 4 vezes ao ano.'
D = 'Mensalmente.'
E = 'Semanalmente.'
F = 'Diariamente.';

value $QPcemvinteseis
A = 'Nunca.'
B = 'Uma vez por ano.'
C = 'De 3 a 4 vezes ao ano.'
D = 'Mensalmente.'
E = 'Semanalmente.'
F = 'Diariamente.';

value $QPcemvintesete
A = 'Nunca.'
B = 'Uma vez por ano.'
C = 'De 3 a 4 vezes ao ano.'
D = 'Mensalmente.'
E = 'Semanalmente.'
F = 'Diariamente.';

value $QPcemvinteoito
A = 'Nunca.'
B = 'Uma vez por ano.'
C = 'De 3 a 4 vezes ao ano.'
D = 'Mensalmente.'
E = 'Semanalmente.'
F = 'Diariamente.';


run;

DATA WORK.TS_PROFESSOR;

INFILE 'C:\TS_PROFESSOR.csv' /*Endereço do arquivo*/
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
ID_ESCOLA : 8.                  
IN_PUBLICA : 1.         
ID_LOCALIZACAO : 1.      
ID_TURMA         : 6.
CO_PROFESSOR	 : 10.
ID_SERIE         : 2.
IN_PREENCHIMENTO_QUESTIONARIO : 1.
TX_RESP_Q001 : $CHAR1.
TX_RESP_Q002 : $CHAR1.
TX_RESP_Q003 : $CHAR1.
TX_RESP_Q004 : $CHAR1.
TX_RESP_Q005 : $CHAR1.
TX_RESP_Q006 : $CHAR1.
TX_RESP_Q007 : $CHAR1.
TX_RESP_Q008 : $CHAR1.
TX_RESP_Q009 : $CHAR1.
TX_RESP_Q010 : $CHAR1.
TX_RESP_Q011 : $CHAR1.
TX_RESP_Q012 : $CHAR1.
TX_RESP_Q013 : $CHAR1.
TX_RESP_Q014 : $CHAR1.
TX_RESP_Q015 : $CHAR1.
TX_RESP_Q016 : $CHAR1.
TX_RESP_Q017 : $CHAR1.
TX_RESP_Q018 : $CHAR1.
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
;

ATTRIB ID_REGIAO FORMAT=ID_REGIAO12.;
ATTRIB ID_UF FORMAT=ID_UF2.;
ATTRIB ID_AREA FORMAT=ID_AREA8.;
ATTRIB IN_PUBLICA FORMAT=IN_PUBLICA12.;
ATTRIB ID_LOCALIZACAO FORMAT=ID_LOCALIZACAO9.;
ATTRIB ID_SERIE FORMAT=ID_SERIE40.;
ATTRIB IN_PREENCHIMENTO_QUESTIONARIO FORMAT=IN_PREENCHIMENTO_QUESTIONARIO27.;
ATTRIB TX_RESP_Q001 FORMAT=$QPum.;
ATTRIB TX_RESP_Q002 FORMAT=$QPdois.;
ATTRIB TX_RESP_Q003 FORMAT=$QPtres.;
ATTRIB TX_RESP_Q004 FORMAT=$QPquatro.;
ATTRIB TX_RESP_Q005 FORMAT=$QPcinco.;
ATTRIB TX_RESP_Q006 FORMAT=$QPseis.;
ATTRIB TX_RESP_Q007 FORMAT=$QPsete.;
ATTRIB TX_RESP_Q008 FORMAT=$QPoito.;
ATTRIB TX_RESP_Q009 FORMAT=$QPnove.;
ATTRIB TX_RESP_Q010 FORMAT=$QPdez.;
ATTRIB TX_RESP_Q011 FORMAT=$QPonze.;
ATTRIB TX_RESP_Q012 FORMAT=$QPdoze.;
ATTRIB TX_RESP_Q013 FORMAT=$QPtreze.;
ATTRIB TX_RESP_Q014 FORMAT=$QPcatorze.;
ATTRIB TX_RESP_Q015 FORMAT=$QPquinze.;
ATTRIB TX_RESP_Q016 FORMAT=$QPdezesseis.;
ATTRIB TX_RESP_Q017 FORMAT=$QPdezessete.;
ATTRIB TX_RESP_Q018 FORMAT=$QPdezoito.;
ATTRIB TX_RESP_Q019 FORMAT=$QPdezenove.;
ATTRIB TX_RESP_Q020 FORMAT=$QPvinte.;
ATTRIB TX_RESP_Q021 FORMAT=$QPvinteum.;
ATTRIB TX_RESP_Q022 FORMAT=$QPvintedois.;
ATTRIB TX_RESP_Q023 FORMAT=$QPvintetres.;
ATTRIB TX_RESP_Q024 FORMAT=$QPvintequatro.;
ATTRIB TX_RESP_Q025 FORMAT=$QPvintecinco.;
ATTRIB TX_RESP_Q026 FORMAT=$QPvinteseis.;
ATTRIB TX_RESP_Q027 FORMAT=$QPvintesete.;
ATTRIB TX_RESP_Q028 FORMAT=$QPvinteoito.;
ATTRIB TX_RESP_Q029 FORMAT=$QPvintenove.;
ATTRIB TX_RESP_Q030 FORMAT=$QPtrinta.;
ATTRIB TX_RESP_Q031 FORMAT=$QPtrintaum.;
ATTRIB TX_RESP_Q032 FORMAT=$QPtrintadois.;
ATTRIB TX_RESP_Q033 FORMAT=$QPtrintatres.;
ATTRIB TX_RESP_Q034 FORMAT=$QPtrintaquatro.;
ATTRIB TX_RESP_Q035 FORMAT=$QPtrintacinco.;
ATTRIB TX_RESP_Q036 FORMAT=$QPtrintaseis.;
ATTRIB TX_RESP_Q037 FORMAT=$QPtrintasete.;
ATTRIB TX_RESP_Q038 FORMAT=$QPtrintaoito.;
ATTRIB TX_RESP_Q039 FORMAT=$QPtrintanove.;
ATTRIB TX_RESP_Q040 FORMAT=$QPquarenta.;
ATTRIB TX_RESP_Q041 FORMAT=$QPquarentaum.;
ATTRIB TX_RESP_Q042 FORMAT=$QPquarentadois.;
ATTRIB TX_RESP_Q043 FORMAT=$QPquarentatres.;
ATTRIB TX_RESP_Q044 FORMAT=$QPquarentaquatro.;
ATTRIB TX_RESP_Q045 FORMAT=$QPquarentacinco.;
ATTRIB TX_RESP_Q046 FORMAT=$QPquarentaseis.;
ATTRIB TX_RESP_Q047 FORMAT=$QPquarentasete.;
ATTRIB TX_RESP_Q048 FORMAT=$QPquarentaoito.;
ATTRIB TX_RESP_Q049 FORMAT=$QPquarentanove.;
ATTRIB TX_RESP_Q050 FORMAT=$QPcinquenta.;
ATTRIB TX_RESP_Q051 FORMAT=$QPcinquentaum.;
ATTRIB TX_RESP_Q052 FORMAT=$QPcinquentadois.;
ATTRIB TX_RESP_Q053 FORMAT=$QPcinquentatres.;
ATTRIB TX_RESP_Q054 FORMAT=$QPcinquentaquatro.;
ATTRIB TX_RESP_Q055 FORMAT=$QPcinquentacinco.;
ATTRIB TX_RESP_Q056 FORMAT=$QPcinquentaseis.;
ATTRIB TX_RESP_Q057 FORMAT=$QPcinquentasete.;
ATTRIB TX_RESP_Q058 FORMAT=$QPcinquentaoito.;
ATTRIB TX_RESP_Q059 FORMAT=$QPcinquentanove.;
ATTRIB TX_RESP_Q060 FORMAT=$QPsessenta.;
ATTRIB TX_RESP_Q061 FORMAT=$QPsessentaum.;
ATTRIB TX_RESP_Q062 FORMAT=$QPsessentadois.;
ATTRIB TX_RESP_Q063 FORMAT=$QPsessentatres.;
ATTRIB TX_RESP_Q064 FORMAT=$QPsessentaquatro.;
ATTRIB TX_RESP_Q065 FORMAT=$QPsessentacinco.;
ATTRIB TX_RESP_Q066 FORMAT=$QPsessentaseis.;
ATTRIB TX_RESP_Q067 FORMAT=$QPsessentasete.;
ATTRIB TX_RESP_Q068 FORMAT=$QPsessentaoito.;
ATTRIB TX_RESP_Q069 FORMAT=$QPsessentanove.;
ATTRIB TX_RESP_Q070 FORMAT=$QPsetenta.;
ATTRIB TX_RESP_Q071 FORMAT=$QPsetentaum.;
ATTRIB TX_RESP_Q072 FORMAT=$QPsetentadois.;
ATTRIB TX_RESP_Q073 FORMAT=$QPsetentatres.;
ATTRIB TX_RESP_Q074 FORMAT=$QPsetentaquatro.;
ATTRIB TX_RESP_Q075 FORMAT=$QPsetentacinco.;
ATTRIB TX_RESP_Q076 FORMAT=$QPsetentaseis.;
ATTRIB TX_RESP_Q077 FORMAT=$QPsetentasete.;
ATTRIB TX_RESP_Q078 FORMAT=$QPsetentaoito.;
ATTRIB TX_RESP_Q079 FORMAT=$QPsetentanove.;
ATTRIB TX_RESP_Q080 FORMAT=$QPoitenta.;
ATTRIB TX_RESP_Q081 FORMAT=$QPoitentaum.;
ATTRIB TX_RESP_Q082 FORMAT=$QPoitentadois.;
ATTRIB TX_RESP_Q083 FORMAT=$QPoitentatres.;
ATTRIB TX_RESP_Q084 FORMAT=$QPoitentaquatro.;
ATTRIB TX_RESP_Q085 FORMAT=$QPoitentacinco.;
ATTRIB TX_RESP_Q086 FORMAT=$QPoitentaseis.;
ATTRIB TX_RESP_Q087 FORMAT=$QPoitentasete.;
ATTRIB TX_RESP_Q088 FORMAT=$QPoitentaoito.;
ATTRIB TX_RESP_Q089 FORMAT=$QPoitentanove.;
ATTRIB TX_RESP_Q090 FORMAT=$QPnoventa.;
ATTRIB TX_RESP_Q091 FORMAT=$QPnoventaum.;
ATTRIB TX_RESP_Q092 FORMAT=$QPnoventadois.;
ATTRIB TX_RESP_Q093 FORMAT=$QPnoventatres.;
ATTRIB TX_RESP_Q094 FORMAT=$QPnoventaquatro.;
ATTRIB TX_RESP_Q095 FORMAT=$QPnoventacinco.;
ATTRIB TX_RESP_Q096 FORMAT=$QPnoventaseis.;
ATTRIB TX_RESP_Q097 FORMAT=$QPnoventasete.;
ATTRIB TX_RESP_Q098 FORMAT=$QPnoventaoito.;
ATTRIB TX_RESP_Q099 FORMAT=$QPnoventanove.;
ATTRIB TX_RESP_Q100 FORMAT=$QPcem.;
ATTRIB TX_RESP_Q101 FORMAT=$QPcemum.;
ATTRIB TX_RESP_Q102 FORMAT=$QPcemdois.;
ATTRIB TX_RESP_Q103 FORMAT=$QPcemtres.;
ATTRIB TX_RESP_Q104 FORMAT=$QPcemquatro.;
ATTRIB TX_RESP_Q105 FORMAT=$QPcemcinco.;
ATTRIB TX_RESP_Q106 FORMAT=$QPcemseis.;
ATTRIB TX_RESP_Q107 FORMAT=$QPcemsete.;
ATTRIB TX_RESP_Q108 FORMAT=$QPcemoito.;
ATTRIB TX_RESP_Q109 FORMAT=$QPcemnove.;
ATTRIB TX_RESP_Q110 FORMAT=$QPcemdez.;
ATTRIB TX_RESP_Q111 FORMAT=$QPcemonze.;
ATTRIB TX_RESP_Q112 FORMAT=$QPcemdoze.;
ATTRIB TX_RESP_Q113 FORMAT=$QPcemtreze.;
ATTRIB TX_RESP_Q114 FORMAT=$QPcemcatorze.;
ATTRIB TX_RESP_Q115 FORMAT=$QPcemquinze.;
ATTRIB TX_RESP_Q116 FORMAT=$QPcemdezesseis.;
ATTRIB TX_RESP_Q117 FORMAT=$QPcemdezessete.;
ATTRIB TX_RESP_Q118 FORMAT=$QPcemdezoito.;
ATTRIB TX_RESP_Q119 FORMAT=$QPcemdezenove.;
ATTRIB TX_RESP_Q120 FORMAT=$QPcemvinte.;
ATTRIB TX_RESP_Q121 FORMAT=$QPcemvinteum.;
ATTRIB TX_RESP_Q122 FORMAT=$QPcemvintedois.;
ATTRIB TX_RESP_Q123 FORMAT=$QPcemvintetres.;
ATTRIB TX_RESP_Q124 FORMAT=$QPcemvintequatro.;
ATTRIB TX_RESP_Q125 FORMAT=$QPcemvintecinco.;
ATTRIB TX_RESP_Q126 FORMAT=$QPcemvinteseis.;
ATTRIB TX_RESP_Q127 FORMAT=$QPcemvintesete.;
ATTRIB TX_RESP_Q128 FORMAT=$QPcemvinteoito.;

LABEL

ID_SAEB = 'Ano de Aplicação do Saeb'                                                                                                    
ID_REGIAO = 'Código da Região'                                                                                                                         
ID_UF = 'Código da Unidade da Federação'                                                                                                               
ID_MUNICIPIO = 'Máscaras dos Códigos de Municípios (são códigos fictícios)'
ID_AREA = 'Área'
ID_ESCOLA= 'Máscaras dos Códigos de Escola (são códigos fictícios)'
IN_PUBLICA= 'Indica se a escola é pública ou não'
ID_LOCALIZACAO= 'Localização'
ID_TURMA= 'Código da turma no Saeb'
ID_SERIE= 'Série'
IN_PREENCHIMENTO_QUESTIONARIO= 'Indicador de preenchimento do questionário'
TX_RESP_Q001= 'QUAL É A SUA COR OU RAÇA?'
TX_RESP_Q002= 'HÁ QUANTOS ANOS VOCÊ TRABALHA COMO PROFESSOR(A)?'
TX_RESP_Q003= 'HÁ QUANTOS ANOS VOCÊ TRABALHA COMO PROFESSOR(A) NESTA ESCOLA?'
TX_RESP_Q004= 'EM QUANTAS ESCOLAS VOCÊ TRABALHA?'
TX_RESP_Q005= 'QUAL O SEU TIPO DE VÍNCULO TRABALHISTA NESTA ESCOLA?'
TX_RESP_Q006= 'INDIQUE O QUANTO VOCÊ CONCORDA OU DISCORDA EM RELAÇÃO AOS SEGUINTES TEMAS ENVOLVENDO O SEU TRABALHO COMO PROFESSOR(A) DA EDUCAÇÃO BÁSICA: - Tornar-me professor(a) foi a realização de um dos meus sonhos.'
TX_RESP_Q007= 'INDIQUE O QUANTO VOCÊ CONCORDA OU DISCORDA EM RELAÇÃO AOS SEGUINTES TEMAS ENVOLVENDO O SEU TRABALHO COMO PROFESSOR(A) DA EDUCAÇÃO BÁSICA: - A profissão de professor(a) é valorizada pela sociedade.'
TX_RESP_Q008= 'INDIQUE O QUANTO VOCÊ CONCORDA OU DISCORDA EM RELAÇÃO AOS SEGUINTES TEMAS ENVOLVENDO O SEU TRABALHO COMO PROFESSOR(A) DA EDUCAÇÃO BÁSICA: - As vantagens de ser professor(a) superam claramente as desvantagens.'
TX_RESP_Q009= 'INDIQUE O QUANTO VOCÊ CONCORDA OU DISCORDA EM RELAÇÃO AOS SEGUINTES TEMAS ENVOLVENDO O SEU TRABALHO COMO PROFESSOR(A) DA EDUCAÇÃO BÁSICA: - No geral, estou satisfeito com o meu trabalho de professor(a).'
TX_RESP_Q010= 'INDIQUE O QUANTO VOCÊ CONCORDA OU DISCORDA EM RELAÇÃO AOS SEGUINTES TEMAS ENVOLVENDO O SEU TRABALHO COMO PROFESSOR(A) DA EDUCAÇÃO BÁSICA: - Repetir de ano é bom para o aluno que não apresentou desempenho satisfatório.'
TX_RESP_Q011= 'INDIQUE O QUANTO VOCÊ CONCORDA OU DISCORDA EM RELAÇÃO AOS SEGUINTES TEMAS ENVOLVENDO O SEU TRABALHO COMO PROFESSOR(A) DA EDUCAÇÃO BÁSICA: - A quantidade de avaliações externas (municipais, estaduais ou federais) é excessiva.'
TX_RESP_Q012= 'INDIQUE O QUANTO VOCÊ CONCORDA OU DISCORDA EM RELAÇÃO AOS SEGUINTES TEMAS ENVOLVENDO O SEU TRABALHO COMO PROFESSOR(A) DA EDUCAÇÃO BÁSICA: - As avaliações externas (municipais, estaduais ou federais) têm direcionado o que deve ser ensinado na escola.'
TX_RESP_Q013= 'INDIQUE O QUANTO VOCÊ CONCORDA OU DISCORDA EM RELAÇÃO AOS SEGUINTES TEMAS ENVOLVENDO O SEU TRABALHO COMO PROFESSOR(A) DA EDUCAÇÃO BÁSICA: - As avaliações externas têm ajudado a melhorar o processo de ensino e aprendizagem desta escola.'
TX_RESP_Q014= 'INDIQUE O QUANTO VOCÊ CONCORDA OU DISCORDA EM RELAÇÃO AOS SEGUINTES TEMAS ENVOLVENDO O SEU TRABALHO COMO PROFESSOR(A) DA EDUCAÇÃO BÁSICA: - Os estudantes apresentam problemas de aprendizagem.'
TX_RESP_Q015= 'NESTE ANO, O QUE NORMALMENTE VOCÊ TEM FEITO QUANDO ESTÁ FORA DO(S) SEU(S) LOCAL(IS) DE TRABALHO? - Leio notícias por meio de jornais, revistas, internet etc.'
TX_RESP_Q016= 'NESTE ANO, O QUE NORMALMENTE VOCÊ TEM FEITO QUANDO ESTÁ FORA DO(S) SEU(S) LOCAL(IS) DE TRABALHO? - Leio livros não relacionados à Educação.'
TX_RESP_Q017= 'NESTE ANO, O QUE NORMALMENTE VOCÊ TEM FEITO QUANDO ESTÁ FORA DO(S) SEU(S) LOCAL(IS) DE TRABALHO? - Acesso blogs, Youtube, redes sociais (Twitter, Instagram, Facebook etc.).'
TX_RESP_Q018= 'NESTE ANO, O QUE NORMALMENTE VOCÊ TEM FEITO QUANDO ESTÁ FORA DO(S) SEU(S) LOCAL(IS) DE TRABALHO? - Assisto a filmes.'
TX_RESP_Q019= 'NESTE ANO, O QUE NORMALMENTE VOCÊ TEM FEITO QUANDO ESTÁ FORA DO(S) SEU(S) LOCAL(IS) DE TRABALHO? - Vou a exposições (museus, centros culturais).'
TX_RESP_Q020= 'NESTE ANO, O QUE NORMALMENTE VOCÊ TEM FEITO QUANDO ESTÁ FORA DO(S) SEU(S) LOCAL(IS) DE TRABALHO? - Participo de festas da comunidade (igreja, bairro etc.).'
TX_RESP_Q021= 'NESTE ANO, O QUE NORMALMENTE VOCÊ TEM FEITO QUANDO ESTÁ FORA DO(S) SEU(S) LOCAL(IS) DE TRABALHO? - Estudo.'
TX_RESP_Q022= 'NESTE ANO, O QUE NORMALMENTE VOCÊ TEM FEITO QUANDO ESTÁ FORA DO(S) SEU(S) LOCAL(IS) DE TRABALHO? - Assisto a telejornal.'
TX_RESP_Q023= 'AVALIE AS CONDIÇÕES DA SALA DE AULA QUE VOCÊ UTILIZA NESTA ESCOLA COM RELAÇÃO AOS SEGUINTES ELEMENTOS: - Tamanho da sala com relação ao número de alunos.'
TX_RESP_Q024= 'AVALIE AS CONDIÇÕES DA SALA DE AULA QUE VOCÊ UTILIZA NESTA ESCOLA COM RELAÇÃO AOS SEGUINTES ELEMENTOS: - Acústica.'
TX_RESP_Q025= 'AVALIE AS CONDIÇÕES DA SALA DE AULA QUE VOCÊ UTILIZA NESTA ESCOLA COM RELAÇÃO AOS SEGUINTES ELEMENTOS: - Iluminação natural.'
TX_RESP_Q026= 'AVALIE AS CONDIÇÕES DA SALA DE AULA QUE VOCÊ UTILIZA NESTA ESCOLA COM RELAÇÃO AOS SEGUINTES ELEMENTOS: - Ventilação natural.'
TX_RESP_Q027= 'AVALIE AS CONDIÇÕES DA SALA DE AULA QUE VOCÊ UTILIZA NESTA ESCOLA COM RELAÇÃO AOS SEGUINTES ELEMENTOS: - Temperatura.'
TX_RESP_Q028= 'AVALIE AS CONDIÇÕES DA SALA DE AULA QUE VOCÊ UTILIZA NESTA ESCOLA COM RELAÇÃO AOS SEGUINTES ELEMENTOS: - Limpeza.'
TX_RESP_Q029= 'AVALIE AS CONDIÇÕES DA SALA DE AULA QUE VOCÊ UTILIZA NESTA ESCOLA COM RELAÇÃO AOS SEGUINTES ELEMENTOS: - Acessibilidade.'
TX_RESP_Q030= 'AVALIE AS CONDIÇÕES DA SALA DE AULA QUE VOCÊ UTILIZA NESTA ESCOLA COM RELAÇÃO AOS SEGUINTES ELEMENTOS: - Mobiliário (mesas e carteiras).'
TX_RESP_Q031= 'AVALIE AS CONDIÇÕES DA SALA DE AULA QUE VOCÊ UTILIZA NESTA ESCOLA COM RELAÇÃO AOS SEGUINTES ELEMENTOS: - Infraestrutura (paredes, teto, assoalho, portas).'
TX_RESP_Q032= 'AVALIE AS CONDIÇÕES DA SALA DE AULA QUE VOCÊ UTILIZA NESTA ESCOLA COM RELAÇÃO AOS SEGUINTES ELEMENTOS: - Lousa (quadro de giz ou quadro branco).'
TX_RESP_Q033= 'INDIQUE OS RECURSOS QUE VOCÊ NORMALMENTE USA NESTA ESCOLA E QUAL A SUA ADEQUAÇÃO PARA AS ATIVIDADES EM SALA DE AULA: - Livro didático.'
TX_RESP_Q034= 'INDIQUE OS RECURSOS QUE VOCÊ NORMALMENTE USA NESTA ESCOLA E QUAL A SUA ADEQUAÇÃO PARA AS ATIVIDADES EM SALA DE AULA: - Projetor multimídia (datashow).'
TX_RESP_Q035= 'INDIQUE OS RECURSOS QUE VOCÊ NORMALMENTE USA NESTA ESCOLA E QUAL A SUA ADEQUAÇÃO PARA AS ATIVIDADES EM SALA DE AULA: - Computador (de mesa, portátil, tablet).'
TX_RESP_Q036= 'INDIQUE OS RECURSOS QUE VOCÊ NORMALMENTE USA NESTA ESCOLA E QUAL A SUA ADEQUAÇÃO PARA AS ATIVIDADES EM SALA DE AULA: - Software.'
TX_RESP_Q037= 'INDIQUE OS RECURSOS QUE VOCÊ NORMALMENTE USA NESTA ESCOLA E QUAL A SUA ADEQUAÇÃO PARA AS ATIVIDADES EM SALA DE AULA: - Internet.'
TX_RESP_Q038= 'INDIQUE OS RECURSOS QUE VOCÊ NORMALMENTE USA NESTA ESCOLA E QUAL A SUA ADEQUAÇÃO PARA AS ATIVIDADES EM SALA DE AULA: - Acervo multimídia.'
TX_RESP_Q039= 'Considerando TODAS as suas atividades profissionais remuneradas, quantas horas você trabalha em uma semana normal?'
TX_RESP_Q040= 'Nesta escola, quantas horas você trabalha em uma semana normal (dando aulas, preparando murais, planejando aulas, corrigindo atividades, participando de reuniões etc.)?'
TX_RESP_Q041= 'Numa semana normal de trabalho, quantas horas você dedica exclusivamente a dar aulas aqui nesta escola?'
TX_RESP_Q042= 'EM QUE MEDIDA VOCÊ SE SENTE PREPARADO(A) PARA AS SEGUINTES ATIVIDADES: - Desenvolver o conteúdo da(s) área(s) de ensino que leciono.'
TX_RESP_Q043= 'EM QUE MEDIDA VOCÊ SE SENTE PREPARADO(A) PARA AS SEGUINTES ATIVIDADES: - Aplicar diferentes metodologias de ensino.'
TX_RESP_Q044= 'EM QUE MEDIDA VOCÊ SE SENTE PREPARADO(A) PARA AS SEGUINTES ATIVIDADES: - Relacionar as outras áreas do currículo com aquela que leciono.'
TX_RESP_Q045= 'EM QUE MEDIDA VOCÊ SE SENTE PREPARADO(A) PARA AS SEGUINTES ATIVIDADES: - Desenvolver instrumentos de avaliação de sala de aula.'
TX_RESP_Q046= 'EM QUE MEDIDA VOCÊ SE SENTE PREPARADO(A) PARA AS SEGUINTES ATIVIDADES: - Gestão de sala de aula.'
TX_RESP_Q047= 'EM QUE MEDIDA VOCÊ SE SENTE PREPARADO(A) PARA AS SEGUINTES ATIVIDADES: - Ensinar para o público-alvo da educação especial.'
TX_RESP_Q048= 'EM QUE MEDIDA VOCÊ SE SENTE PREPARADO(A) PARA AS SEGUINTES ATIVIDADES: - Usar novas tecnologias de informação e comunicação na prática pedagógica.'
TX_RESP_Q049= 'EM QUE MEDIDA VOCÊ SE SENTE PREPARADO(A) PARA AS SEGUINTES ATIVIDADES: - Comunicar-me com as famílias de alunos(as).'
TX_RESP_Q050= 'EM QUE MEDIDA VOCÊ SE SENTE PREPARADO(A) PARA AS SEGUINTES ATIVIDADES: - Utilizar conhecimentos sobre o desenvolvimento da aprendizagem.'
TX_RESP_Q051= 'EM QUE MEDIDA VOCÊ SE SENTE PREPARADO(A) PARA AS SEGUINTES ATIVIDADES: - Participar da gestão da escola.'
TX_RESP_Q052= 'EM QUE MEDIDA VOCÊ SE SENTE PREPARADO(A) PARA AS SEGUINTES ATIVIDADES: - Lidar com conflitos do cotidiano escolar.'
TX_RESP_Q053= 'DENTRE AS ATIVIDADES FORMATIVAS LISTADAS ABAIXO, INDIQUE QUANTAS VOCÊ REALIZOU NESSE ANO: - Atividades formativas com menos de 20 horas.'
TX_RESP_Q054= 'DENTRE AS ATIVIDADES FORMATIVAS LISTADAS ABAIXO, INDIQUE QUANTAS VOCÊ REALIZOU NESSE ANO: - Cursos de 20 a menos de 180 horas.'
TX_RESP_Q055= 'DENTRE AS ATIVIDADES FORMATIVAS LISTADAS ABAIXO, INDIQUE QUANTAS VOCÊ REALIZOU NESSE ANO: - Cursos de aperfeiçoamento de 180 a 360 horas.'
TX_RESP_Q056= 'CONSIDERANDO AS ATIVIDADES FORMATIVAS DE CURTA DURAÇÃO (INFERIORES A 360 HORAS) DAS QUAIS PARTICIPOU NESTE ANO, EM QUAIS DELAS ESTAVA PREVISTO: - Participação de colegas da(s) escola(s) em que leciono?'
TX_RESP_Q057= 'CONSIDERANDO AS ATIVIDADES FORMATIVAS DE CURTA DURAÇÃO (INFERIORES A 360 HORAS) DAS QUAIS PARTICIPOU NESTE ANO, EM QUAIS DELAS ESTAVA PREVISTO: - Atividades colaborativas de aprendizado?'
TX_RESP_Q058= 'CONSIDERANDO AS ATIVIDADES FORMATIVAS DE CURTA DURAÇÃO (INFERIORES A 360 HORAS) DAS QUAIS PARTICIPOU NESTE ANO, EM QUAIS DELAS ESTAVA PREVISTO: - Encontros de formação distribuídos por semanas ou meses?'
TX_RESP_Q059= 'DURANTE ESTE ANO, INDIQUE DE QUAIS CURSOS DE PÓS-GRADUAÇÃO VOCÊ PARTICIPOU E SE RECEBEU APOIO DA SECRETARIA OU MANTENEDORA PARA REALIZÁ-LO: - Especialização (mínimo de 360 horas).'
TX_RESP_Q060= 'DURANTE ESTE ANO, INDIQUE DE QUAIS CURSOS DE PÓS-GRADUAÇÃO VOCÊ PARTICIPOU E SE RECEBEU APOIO DA SECRETARIA OU MANTENEDORA PARA REALIZÁ-LO: - Mestrado (acadêmico ou profissional).'
TX_RESP_Q061= 'DURANTE ESTE ANO, INDIQUE DE QUAIS CURSOS DE PÓS-GRADUAÇÃO VOCÊ PARTICIPOU E SE RECEBEU APOIO DA SECRETARIA OU MANTENEDORA PARA REALIZÁ-LO: - Doutorado.'
TX_RESP_Q062= 'INDIQUE O NÍVEL DE CONTRIBUIÇÃO DAS ATIVIDADES FORMATIVAS E CURSOS REALIZADOS NESTE ANO PARA: - Aprofundar meus conhecimentos sobre as disciplinas que leciono.'
TX_RESP_Q063= 'INDIQUE O NÍVEL DE CONTRIBUIÇÃO DAS ATIVIDADES FORMATIVAS E CURSOS REALIZADOS NESTE ANO PARA: - Compreender o processo de aprendizagem.'
TX_RESP_Q064= 'INDIQUE O NÍVEL DE CONTRIBUIÇÃO DAS ATIVIDADES FORMATIVAS E CURSOS REALIZADOS NESTE ANO PARA: - Aprimorar os processos avaliativos de sala de aula.'
TX_RESP_Q065= 'INDIQUE O NÍVEL DE CONTRIBUIÇÃO DAS ATIVIDADES FORMATIVAS E CURSOS REALIZADOS NESTE ANO PARA: - Utilizar novas tecnologias para apoiar minhas atividades.'
TX_RESP_Q066= 'INDIQUE O NÍVEL DE CONTRIBUIÇÃO DAS ATIVIDADES FORMATIVAS E CURSOS REALIZADOS NESTE ANO PARA: - Colaborar com meus colegas na preparação de atividades e projetos.'
TX_RESP_Q067= 'INDIQUE O NÍVEL DE CONTRIBUIÇÃO DAS ATIVIDADES FORMATIVAS E CURSOS REALIZADOS NESTE ANO PARA: - Aprimorar as metodologias de ensino.'
TX_RESP_Q068= 'INDIQUE O NÍVEL DE CONTRIBUIÇÃO DAS ATIVIDADES FORMATIVAS E CURSOS REALIZADOS NESTE ANO PARA: - Auxiliar na mediação de conflitos em sala de aula.'
TX_RESP_Q069= 'NESTE ANO, INDIQUE O PRINCIPAL RESPONSÁVEL PELAS SEGUINTES DEFINIÇÕES: - Material didático.'
TX_RESP_Q070= 'NESTE ANO, INDIQUE O PRINCIPAL RESPONSÁVEL PELAS SEGUINTES DEFINIÇÕES: - Metodologia de ensino.'
TX_RESP_Q071= 'NESTE ANO, INDIQUE O PRINCIPAL RESPONSÁVEL PELAS SEGUINTES DEFINIÇÕES: - Conteúdos trabalhados em sala.'
TX_RESP_Q072= 'NESTE ANO, INDIQUE O PRINCIPAL RESPONSÁVEL PELAS SEGUINTES DEFINIÇÕES: - Instrumentos para avaliar os(as) alunos(as).'
TX_RESP_Q073= 'NESTE ANO, INDIQUE O PRINCIPAL RESPONSÁVEL PELAS SEGUINTES DEFINIÇÕES: - Peso de cada instrumento de avaliação na nota final do(a) aluno(a).'
TX_RESP_Q074= 'NESTE ANO, INDIQUE O PRINCIPAL RESPONSÁVEL PELAS SEGUINTES DEFINIÇÕES: - Seleção de conteúdos usados nas provas.'
TX_RESP_Q075= 'INDIQUE SE AS SITUAÇÕES ABAIXO SE APLICAM OU NÃO AO PROJETO POLÍTICO-PEDAGÓGICO DESTA ESCOLA: - Seu conteúdo é discutido em reuniões.'
TX_RESP_Q076= 'INDIQUE SE AS SITUAÇÕES ABAIXO SE APLICAM OU NÃO AO PROJETO POLÍTICO-PEDAGÓGICO DESTA ESCOLA: - Os(As) professores(as) participaram da sua elaboração.'
TX_RESP_Q077= 'INDIQUE SE AS SITUAÇÕES ABAIXO SE APLICAM OU NÃO AO PROJETO POLÍTICO-PEDAGÓGICO DESTA ESCOLA: - Estabelece metas de aprendizagem.'
TX_RESP_Q078= 'INDIQUE SE AS SITUAÇÕES ABAIXO SE APLICAM OU NÃO AO PROJETO POLÍTICO-PEDAGÓGICO DESTA ESCOLA: - Considera os resultados de avaliações externas (Saeb, estaduais, municipais etc.).'
TX_RESP_Q079= 'INDIQUE SE AS SITUAÇÕES ABAIXO SE APLICAM OU NÃO AO PROJETO POLÍTICO-PEDAGÓGICO DESTA ESCOLA: - Há metas de alcance de índices (Ideb, índices estaduais ou municipais).'
TX_RESP_Q080= 'O CONSELHO DE CLASSE É UM ÓRGÃO FORMADO POR TODOS(AS) OS(AS) PROFESSORES(AS) QUE LECIONAM EM CADA TURMA/SÉRIE. NESTE ANO E NESTA ESCOLA, QUANTAS VEZES SE REUNIU O CONSELHO DE CLASSE?'
TX_RESP_Q081= 'INDIQUE O QUANTO VOCÊ CONCORDA OU DISCORDA COM OS SEGUINTES TEMAS: - O(A) diretor(a) debate com frequência metas educacionais com os(as) professores(as) nas reuniões.'
TX_RESP_Q082= 'INDIQUE O QUANTO VOCÊ CONCORDA OU DISCORDA COM OS SEGUINTES TEMAS: - O(A) diretor(a) e os(as) professores(as) sempre tratam a qualidade de ensino como uma responsabilidade coletiva.'
TX_RESP_Q083= 'INDIQUE O QUANTO VOCÊ CONCORDA OU DISCORDA COM OS SEGUINTES TEMAS: - O(A) diretor(a) informa aos(às) professores(as) sobre as possibilidades de aperfeiçoamento profissional.'
TX_RESP_Q084= 'INDIQUE O QUANTO VOCÊ CONCORDA OU DISCORDA COM OS SEGUINTES TEMAS: - O(A) diretor(a) dá atenção especial a aspectos relacionados à aprendizagem dos alunos.'
TX_RESP_Q085= 'INDIQUE O QUANTO VOCÊ CONCORDA OU DISCORDA COM OS SEGUINTES TEMAS: - O(A) diretor(a) dá atenção especial a aspectos relacionados às normas administrativas.'
TX_RESP_Q086= 'INDIQUE O QUANTO VOCÊ CONCORDA OU DISCORDA COM OS SEGUINTES TEMAS: - O(A) diretor(a) com frequência me anima e me motiva para o trabalho.'
TX_RESP_Q087= 'INDIQUE O QUANTO VOCÊ CONCORDA OU DISCORDA COM OS SEGUINTES TEMAS: - Tenho confiança no(a) diretor(a) como profissional.'
TX_RESP_Q088= 'INDIQUE O QUANTO VOCÊ CONCORDA OU DISCORDA COM OS SEGUINTES TEMAS: - O(A) diretor(a) e os(as) professores(as) sempre asseguram que as questões relacionadas à qualidade da convivência e gestão de conflitos sejam uma responsabilidade coletiva.'
TX_RESP_Q089= 'NESTA ESCOLA E NESTE ANO, INDIQUE A FREQUÊNCIA COM QUE OCORREU: - Colaboração das famílias para superar problemas que interferem na aprendizagem dos(as) alunos(as) (ausências, indisciplinas, acompanhamento das tarefas escolares etc.).'
TX_RESP_Q090= 'NESTA ESCOLA E NESTE ANO, INDIQUE A FREQUÊNCIA COM QUE OCORREU: - Colaboração entre colegas (feedback, trocas, projetos interdisciplinares).'
TX_RESP_Q091= 'NESTA ESCOLA E NESTE ANO, INDIQUE A FREQUÊNCIA COM QUE OCORREU: - Colaboração da gestão da escola para superar dificuldades de sala de aula.'
TX_RESP_Q092= 'NESTA ESCOLA E NESTE ANO, INDIQUE A FREQUÊNCIA COM QUE OCORREU: - Colaboração da gestão da escola para superar problemas que interferem na qualidade das relações com os estudantes.'
TX_RESP_Q093= 'NESTA ESCOLA E NESTE ANO, INDIQUE A FREQUÊNCIA COM QUE OCORREU: - Apoio da Secretaria de Educação para superar as dificuldades do cotidiano escolar.'
TX_RESP_Q094= 'INDIQUE O QUANTO VOCÊ CONCORDA OU DISCORDA EM RELAÇÃO AOS SEGUINTES TEMAS ENVOLVENDO SEUS(SUAS) ALUNOS(AS) NESTA ESCOLA: - Respeitam os acordos estabelecidos em sala.'
TX_RESP_Q095= 'INDIQUE O QUANTO VOCÊ CONCORDA OU DISCORDA EM RELAÇÃO AOS SEGUINTES TEMAS ENVOLVENDO SEUS(SUAS) ALUNOS(AS) NESTA ESCOLA: - Chegam pontualmente.'
TX_RESP_Q096= 'INDIQUE O QUANTO VOCÊ CONCORDA OU DISCORDA EM RELAÇÃO AOS SEGUINTES TEMAS ENVOLVENDO SEUS(SUAS) ALUNOS(AS) NESTA ESCOLA: - Estão sempre presentes às minhas aulas.'
TX_RESP_Q097= 'INDIQUE O QUANTO VOCÊ CONCORDA OU DISCORDA EM RELAÇÃO AOS SEGUINTES TEMAS ENVOLVENDO SEUS(SUAS) ALUNOS(AS) NESTA ESCOLA: - São respeitosos(as) comigo.'
TX_RESP_Q098= 'INDIQUE O QUANTO VOCÊ CONCORDA OU DISCORDA EM RELAÇÃO AOS SEGUINTES TEMAS ENVOLVENDO SEUS(SUAS) ALUNOS(AS) NESTA ESCOLA: - São respeitosos(as) com os(as) colegas da turma.'
TX_RESP_Q099= 'INDIQUE O QUANTO VOCÊ CONCORDA OU DISCORDA EM RELAÇÃO AOS SEGUINTES TEMAS ENVOLVENDO SEUS(SUAS) ALUNOS(AS) NESTA ESCOLA: - Interessam-se pela disciplina que leciono.'
TX_RESP_Q100= 'SOBRE OS FATOS LISTADOS ABAIXO, INDIQUE A FREQUÊNCIA COM QUE OCORRERAM NESTA ESCOLA E NESTE ANO: - Os(As) alunos(as) frequentaram a escola sob efeito de bebida alcoólica.'
TX_RESP_Q101= 'SOBRE OS FATOS LISTADOS ABAIXO, INDIQUE A FREQUÊNCIA COM QUE OCORRERAM NESTA ESCOLA E NESTE ANO: - Os(As) alunos(as) frequentaram a escola sob efeito de drogas ilícitas.'
TX_RESP_Q102= 'SOBRE OS FATOS LISTADOS ABAIXO, INDIQUE A FREQUÊNCIA COM QUE OCORRERAM NESTA ESCOLA E NESTE ANO: - Os(As) alunos(as) frequentaram a escola portando arma (revólver, faca, canivete etc.).'
TX_RESP_Q103= 'SOBRE OS FATOS LISTADOS ABAIXO, INDIQUE A FREQUÊNCIA COM QUE OCORRERAM NESTA ESCOLA E NESTE ANO: - Fui ameaçado(a) por algum(a) aluno(a).'
TX_RESP_Q104= 'SOBRE OS FATOS LISTADOS ABAIXO, INDIQUE A FREQUÊNCIA COM QUE OCORRERAM NESTA ESCOLA E NESTE ANO: - Fui ameaçado(a) por familiares de alunos(as).'
TX_RESP_Q105= 'SOBRE OS FATOS LISTADOS ABAIXO, INDIQUE A FREQUÊNCIA COM QUE OCORRERAM NESTA ESCOLA E NESTE ANO: - Fui agredido(a) fisicamente por algum(a) aluno(a).'
TX_RESP_Q106= 'SOBRE OS FATOS LISTADOS ABAIXO, INDIQUE A FREQUÊNCIA COM QUE OCORRERAM NESTA ESCOLA E NESTE ANO: - Fui agredido(a) fisicamente por familiares dos(as) alunos(as).'
TX_RESP_Q107= 'SOBRE OS FATOS LISTADOS ABAIXO, INDIQUE A FREQUÊNCIA COM QUE OCORRERAM NESTA ESCOLA E NESTE ANO: - Fui vítima de roubo com uso de violência.'
TX_RESP_Q108= 'SOBRE OS FATOS LISTADOS ABAIXO, INDIQUE A FREQUÊNCIA COM QUE OCORRERAM NESTA ESCOLA E NESTE ANO: - Fui vítima de atentado à vida.'
TX_RESP_Q109= 'SOBRE OS FATOS LISTADOS ABAIXO, INDIQUE A FREQUÊNCIA COM QUE OCORRERAM NESTA ESCOLA E NESTE ANO: - Outro(a) profissional foi vítima de atentado à vida.'
TX_RESP_Q110= 'INDIQUE A FREQUÊNCIA COM QUE VOCÊ DESENVOLVE AS SEGUINTES PRÁTICAS PEDAGÓGICAS NESTA TURMA: - Propor dever de casa.'
TX_RESP_Q111= 'INDIQUE A FREQUÊNCIA COM QUE VOCÊ DESENVOLVE AS SEGUINTES PRÁTICAS PEDAGÓGICAS NESTA TURMA: - Corrigir com os(as) alunos(as) o dever de casa.'
TX_RESP_Q112= 'INDIQUE A FREQUÊNCIA COM QUE VOCÊ DESENVOLVE AS SEGUINTES PRÁTICAS PEDAGÓGICAS NESTA TURMA: - Desenvolver atividades em grupo, em sala de aula, para que os(as) alunos(as) busquem soluções de problemas.'
TX_RESP_Q113= 'INDIQUE A FREQUÊNCIA COM QUE VOCÊ DESENVOLVE AS SEGUINTES PRÁTICAS PEDAGÓGICAS NESTA TURMA: - Desenvolver projetos temáticos com o objetivo de aprimorar as habilidades de trabalho em equipe.'
TX_RESP_Q114= 'INDIQUE A FREQUÊNCIA COM QUE VOCÊ DESENVOLVE AS SEGUINTES PRÁTICAS PEDAGÓGICAS NESTA TURMA: - Solicitar que os(as) alunos(as) copiem textos e atividades do livro didático ou do quadro negro (lousa).'
TX_RESP_Q115= 'INDIQUE A FREQUÊNCIA COM QUE VOCÊ DESENVOLVE AS SEGUINTES PRÁTICAS PEDAGÓGICAS NESTA TURMA: - Estimular os(as) alunos(as) a expressarem suas opiniões e a desenvolverem argumentos a partir de temas diversos.'
TX_RESP_Q116= 'INDIQUE A FREQUÊNCIA COM QUE VOCÊ DESENVOLVE AS SEGUINTES PRÁTICAS PEDAGÓGICAS NESTA TURMA: - Propor situações de aprendizagem que sejam familiares ou de interesse dos(as) alunos(as).'
TX_RESP_Q117= 'INDIQUE A FREQUÊNCIA COM QUE VOCÊ DESENVOLVE AS SEGUINTES PRÁTICAS PEDAGÓGICAS NESTA TURMA: - Promover discussões a partir de textos de jornais ou revistas.'
TX_RESP_Q118= 'INDIQUE A FREQUÊNCIA COM QUE VOCÊ DESENVOLVE AS SEGUINTES PRÁTICAS PEDAGÓGICAS NESTA TURMA: - Propor atividades gramaticais relacionadas aos textos de jornais ou revistas.'
TX_RESP_Q119= 'INDIQUE A FREQUÊNCIA COM QUE VOCÊ DESENVOLVE AS SEGUINTES PRÁTICAS PEDAGÓGICAS NESTA TURMA: - Promover a leitura e discussão de contos, crônicas, poesias ou romances.'
TX_RESP_Q120= 'INDIQUE A FREQUÊNCIA COM QUE VOCÊ DESENVOLVE AS SEGUINTES PRÁTICAS PEDAGÓGICAS NESTA TURMA: - Utilizar contos, crônicas, poesias ou romances para exercitar aspectos da gramática.'
TX_RESP_Q121= 'INDIQUE A FREQUÊNCIA COM QUE VOCÊ DESENVOLVE AS SEGUINTES PRÁTICAS PEDAGÓGICAS NESTA TURMA: - Utilizar revistas em quadrinhos como instrumento de aprendizado.'
TX_RESP_Q122= 'INDIQUE A FREQUÊNCIA COM QUE VOCÊ DESENVOLVE AS SEGUINTES PRÁTICAS PEDAGÓGICAS NESTA TURMA: - Fixar os nomes de conceitos gramaticais e linguísticos.'
TX_RESP_Q123= 'INDIQUE A FREQUÊNCIA COM QUE VOCÊ DESENVOLVE AS SEGUINTES PRÁTICAS PEDAGÓGICAS NESTA TURMA: - Fazer exercícios para fixar procedimentos e regras.'
TX_RESP_Q124= 'INDIQUE A FREQUÊNCIA COM QUE VOCÊ DESENVOLVE AS SEGUINTES PRÁTICAS PEDAGÓGICAS NESTA TURMA: - Discutir se os resultados numéricos obtidos na solução de um problema são adequados à situação apresentada.'
TX_RESP_Q125= 'INDIQUE A FREQUÊNCIA COM QUE VOCÊ DESENVOLVE AS SEGUINTES PRÁTICAS PEDAGÓGICAS NESTA TURMA: - Discutir diferentes modos para resolver problemas e cálculos.'
TX_RESP_Q126= 'INDIQUE A FREQUÊNCIA COM QUE VOCÊ DESENVOLVE AS SEGUINTES PRÁTICAS PEDAGÓGICAS NESTA TURMA: - Lidar com temas que aparecem em jornais e/ou revistas, discutindo a relação dos temas com a matemática.'
TX_RESP_Q127= 'INDIQUE A FREQUÊNCIA COM QUE VOCÊ DESENVOLVE AS SEGUINTES PRÁTICAS PEDAGÓGICAS NESTA TURMA: - Fornecer esquemas/regras que permitem obter as respostas certas dos cálculos e problemas.'
TX_RESP_Q128= 'INDIQUE A FREQUÊNCIA COM QUE VOCÊ DESENVOLVE AS SEGUINTES PRÁTICAS PEDAGÓGICAS NESTA TURMA: - Experimentar diferentes ações (coletar informações, recortar, explorar, manipular etc.) para resolver problemas.'
;

run;quit;
