##  Sistema de Gerenciamento de Banco de Dados

Primeiramente, os Sistemas de Gerenciamento de Banco de Dados (SGBD) são fundamentais no mundo da tecnologia da informação. Eles não apenas gerenciam bases de dados de forma eficiente, mas também se adaptam a diferentes necessidades e contextos. Além disso, existem diversos tipos de SGBD, cada um com suas características, vantagens e usos específicos. Bem como os tradicionais SGBDs relacionais até os mais modernos SGBDs não relacionais, a variedade é vasta e atende a diferentes demandas. Em outras palavras, esses sistemas desoneram as aplicações dos clientes de manipular e organizar dados, atuando como intermediários e oferecendo uma interface para inclusão, alteração e consulta de informações. Por exemplo, nos bancos de dados relacionais, essa interface é amplamente baseada em APIs ou drivers do SGBD que executam comandos em SQL.<br>


## O que é um SGBD?

Em outras palavras, um banco de dados consiste em uma coleção de tabelas relacionadas que geralmente se integram, se vinculam ou se referenciam umas às outras. Além disso, o banco de dados permite organizar e recuperar facilmente os dados e registros de diferentes tabelas usando um software especializado chamado sistema gerenciador de banco de dados (SGBD) ou gerente de banco de dados.<br>
Um SGBD deve possuir as seguintes características:

###### CONTROLE DE REDUNDÂNCIAS

A redundância consiste no armazenamento de uma mesma
informação em locais diferentes, provocando inconsistências. Em
um Banco de Dados as informações só se encontram armazenadas
em um único local, não existindo duplicação descontrolada dos
dados. Quando existem replicações dos dados, estas são
decorrentes do processo de armazenagem típica do ambiente
Cliente-Servidor, totalmente sob controle do Banco de Dados.

###### COMPARTILHAMENTO DOS DADOS

O SGBD deve incluir software de controle de concorrência ao
acesso dos dados, garantindo em qualquer tipo de situação a escrita/leitura de dados sem erros.

###### CONTROLE DE ACESSO.

O SGDB deve dispor de recursos que possibilitem selecionar
a autoridade de cada usuário. Assim um usuário poderá realizar
qualquer tipo de acesso, outros poderão ler alguns dados e atualizar outros e outros ainda poderão somente acessar um conjunto restrito de dados para escrita e leitura.

###### INTERFACEAMENTO

Um Banco de Dados deverá disponibilizar formas de acesso
gráfico, em linguagem natural, em SQL ou ainda via menus de
acesso, não sendo uma "caixa-preta" somente sendo passível de
ser acessada por aplicações.

###### ESQUEMATIZAÇÃO

Um Banco de Dados deverá fornecer mecanismos que
possibilitem a compreensão do relacionamento existentes entre
as tabelas e de sua eventual manutenção.

###### CONTROLE DE INTEGRIDADE
Um Banco de Dados deverá impedir que aplicações ou
acessos pelas interfaces possam comprometer a integridade dos
dados.

###### CÓPIAS DE SEGURANÇA
O SGBD deverá apresentar facilidade para recuperar falhas
de hardware e software, através da existência de arquivos de "préimagem" ou de outros recursos automáticos, exigindo
minimamente a intervenção de pessoal técnico.
Em certos casos pode ocorrer de um SGBD não obedecer
uma ou outra regra das vistas acima, mas ainda assim continuar
sendo considerado um SGBD. Porém alguns "Bancos de Dados"
atualmente comercializados não são SGBD reais, justamente por
não atenderem algumas dessas características.
Existem vários tipos de bancos de dados (hierárquico,
orientado ao objeto, em redes), nós utilizaremos nesse curso um
SGBD Relacional, o MySQL.

**Exemplo de uma tabela de um Banco de Dados Relacional:**

![](https://i.imgur.com/zHEExYY.png)

## Fundamentos SGBD
Do mesmo modo, um sistema de gerenciamento de banco de dados é um conjunto de programas de software que permite aos usuários criar, editar, atualizar, armazenar e recuperar dados em tabelas de banco de dados. Além disso, usando um SGBD, você pode acrescentar, apagar, alterar e classificar dados em um banco de dados. Ademais, em uma grande organização, diferentes tabelas provavelmente armazenariam informações sobre um empregado. Ou seja, ao fazer referência cruzada dessas tabelas, alguém poderia alterar o endereço de uma pessoa em uma tabela, e essa mudança refletiria automaticamente em todas as outras tabelas.


## Diferentes Tipos de SGBD:
### SGBD Relacional (RDBMS):
Estes são os SGBD mais populares e armazenam dados em tabelas relacionadas. Cada tabela tem chaves e índices que permitem estabelecer relações entre diferentes tabelas.
**Exemplo**: Oracle, MySQL, Microsoft SQL Server e PostgreSQL.
### SGBD Não Relacional (NoSQL):
Estes SGBD são projetados para armazenar dados não estruturados ou semi-estruturados, como documentos JSON ou pares chave-valor.
**Exemplo**: MongoDB, Cassandra e Redis.
### SGBD Orientado a Objetos:
Estes SGBD armazenam dados na forma de objetos, assim como são tratados nas linguagens de programação orientadas a objetos.
**Exemplo**: ObjectDB e db4o.
### SGBD Hierárquico:
Os dados são organizados em uma estrutura de árvore, onde um registro tem apenas um proprietário.
**Exemplo**: IBM IMS.
### SGBD de Rede:
Semelhante ao hierárquico, mas permite que cada registro tenha múltiplos pais.
**Exemplo**: IDMS.
## Vantagens do SGBD:
Centralização dos Dados: Em um SGBD, os dados são armazenados em um local centralizado, facilitando o acesso e a gestão. Isso elimina a necessidade de múltiplas cópias dos mesmos dados em diferentes locais.<br>
**Exemplo**: Uma empresa multinacional tem filiais em vários países. Em vez de cada filial manter seu próprio banco de dados, um SGBD centralizado permite que todas as filiais acessem e atualizem informações em tempo real a partir de um único local.<br>
-***Redução de Redundâncias:*** O SGBD evita a duplicação desnecessária de dados, garantindo que cada item de informação seja armazenado apenas uma vez.<br>
**Exemplo**: Em uma universidade, tanto o departamento de admissões quanto o departamento financeiro precisam de informações sobre os alunos. Sem um SGBD, ambos os departamentos podem manter cópias separadas desses dados. Com um SGBD, eles podem acessar a mesma informação, evitando duplicações.<br>
-***Integridade dos Dados:*** Através de regras e restrições, o SGBD garante que os dados armazenados sejam precisos e consistentes.<br>
**Exemplo**: Uma loja online tem um SGBD que garante que o estoque de um produto nunca caia abaixo de zero, evitando vendas de produtos não disponíveis.<br>
-***Independência de Dados:*** Alterações na estrutura física do banco de dados não afetam os programas e consultas, garantindo flexibilidade e escalabilidade.<br>
**Exemplo**: Uma empresa decide mudar seu sistema de armazenamento de discos rígidos para armazenamento em nuvem. Com um SGBD, os aplicativos que acessam o banco de dados não precisam ser modificados, pois a mudança é transparente para eles.<br>
-***Segurança:*** Os SGBDs oferecem recursos robustos de segurança, como autenticação e autorização, para proteger os dados contra acessos não autorizados.<br>
**Exemplo**: Um hospital usa um SGBD para armazenar registros médicos de pacientes. O SGBD garante que apenas médicos autorizados possam acessar informações sensíveis, protegendo a privacidade dos pacientes.<br>
-***Multiusuário:*** Permite que vários usuários acessem o banco de dados simultaneamente sem conflitos.<br>
**Exemplo**: Em uma biblioteca, vários bibliotecários podem acessar e atualizar simultaneamente o banco de dados de livros, sem interferir nas transações uns dos outros.<br>
-***Backup e Recuperação:*** Em caso de falhas ou erros, os SGBDs têm mecanismos para restaurar os dados a partir de backups.<br>
**Exemplo**: Uma empresa sofre um apagão e perde dados recentes. Com o recurso de recuperação do SGBD, a empresa pode restaurar seus dados a partir do último backup, minimizando a perda de informações.<br>
## Desvantagens:
-***Complexidade:*** Os SGBDs podem ser complexos e exigir treinamento especializado para sua operação e manutenção.<br>
**Exemplo**: Uma pequena empresa decide implementar um SGBD avançado. No entanto, eles descobrem que precisam de treinamento especializado para configurar e gerenciar o sistema, tornando o processo mais complicado do que o esperado.<br>
-***Custo:*** A aquisição e manutenção de um SGBD comercial pode ser cara, especialmente para pequenas empresas.<br>
**Exemplo**: Uma startup está considerando usar um SGBD comercial de ponta. No entanto, ao avaliar os custos de licença e manutenção, eles percebem que o investimento é muito alto para o seu orçamento atual.<br>
-***Desempenho:*** Em alguns casos, especialmente quando mal configurados, os SGBDs podem apresentar lentidão nas operações.<br>
**Exemplo**: Uma empresa de comércio eletrônico percebe que seu site está lento durante picos de tráfego. Após investigação, descobrem que o SGBD não está otimizado para lidar com um grande volume de consultas simultâneas.<br>
-***Limitações de Design:*** Alguns SGBDs podem não oferecer a flexibilidade necessária para atender a requisitos específicos de design ou modelagem de dados.<br>
**Exemplo**: Uma organização de pesquisa deseja armazenar dados em um formato específico que não é suportado pelo SGBD que estão usando. Eles precisam encontrar soluções alternativas ou considerar a mudança para um sistema diferente.<br>


## Quem utiliza os Banco de Dados?

###### USUÁRIOS
Para um grande banco de dados, existe um grande número
de pessoas envolvidas, desde o projeto, uso até manutenção.

###### ADMINISTRADOR DE BANCO DE DADOS (DBA)
Em um ambiente de banco de dados, o recurso primário é o
banco de dados por si só e o recurso secundário é o SGBD e ossoftwares relacionados. A administração destes recursos cabe ao
Administrador de Banco de Dados, o qual é responsável pela
autorização de acesso ao banco de dados e pela coordenação e
monitoração de seu uso.

###### PROJETISTA DE BANCO DE DADOS

O Projetista de Banco de Dados é responsável pela
identificação dos dados que devem ser armazenados no banco de
dados, escolhendo a estrutura correta para representar e armazenar
dados. Muitas vezes, os projetistas de banco de dados atuam como
"staff" do DBA, assumindo outras responsabilidades após a
construção do banco de dados. É função do projetista também
avaliar as necessidades de cada grupo de usuários.

###### USUÁRIOS FINAIS

Existem basicamente três categorias de usuários finais que
são os usuários finais do banco de dados, fazendo consultas,
atualizações e gerando documentos:

• usuários casuais: acessam o banco de dados casualmente,
mas que podem necessitar de diferentes informações a cada
acesso; utilizam sofisticadas linguagens de consulta para
especificar suas necessidades;
• usuários novatos ou paramétricos: utilizam porções prédefinidas do banco de dados, utilizando consultas preestabelecidas
que já foram exaustivamente testadas;
• usuários sofisticados: são usuários que estão familiarizados
com o SGBD e realizam consultas complexas.


###### ANALISTAS DE SISTEMAS E PROGRAMADORES DE APLICAÇÕES
Os analistas determinam os requisitos dos usuários finais e
desenvolvem especificações para transações que atendam estes
requisitos, e os programadores implementam estas especificações como programas, testando, depurando, documentando e dando manutenção no mesmo. É importante que, tanto analistas quanto
programadores, estejam a par dos recursos oferecidos pelo SGBD.
