# Introdução a Bancos de Dados e Conceitos Fundamentais

## 1. Contexto de Dados

O contexto de dados refere-se ao ambiente e às necessidades em torno dos dados que uma organização ou sistema gerencia. Isso inclui:

* Quem utiliza os dados?

* Quais são os objetivos dos dados?

* Como os dados são organizados e protegidos?

**Exemplo:**
Uma escola precisa gerenciar informações sobre estudantes, professores, disciplinas e notas. Nesse contexto, os dados devem estar organizados de forma que facilite consultas rápidas, como encontrar a nota de um aluno em uma disciplina.


## 2. Banco de Dados

Um banco de dados é um conjunto organizado de informações que podem ser acessadas, gerenciadas e atualizadas. Os bancos de dados ajudam a armazenar dados de maneira eficiente e segura.

**Exemplo:**
Um banco de dados pode conter uma tabela chamada **Estudantes** com as colunas: ID, Nome, Data de Nascimento e Turma.


![image](https://github.com/user-attachments/assets/665558f5-2990-4bc7-a85d-52b62e3efd9d)


## 3. Banco de Dados Relacionais

Os bancos de dados relacionais organizam dados em tabelas conectadas por relações. Eles utilizam tabelas para representar entidades e permitem consultas complexas por meio da linguagem SQL.

**Exemplo:**
Uma loja possui duas tabelas:

![image](https://github.com/user-attachments/assets/d693f606-63d2-4933-b442-3bcfad91bf63)

A relação entre **Clientes** e **Pedidos** permite consultar todos os pedidos feitos por Maria Lima.


## 4. Chaves Primárias e Chaves Estrangeiras

**Chave Primária:** Um identificador único para cada registro em uma tabela.

**Chave Estrangeira:** Uma coluna em uma tabela que referencia a chave primária de outra tabela.

**Exemplo:**
Na tabela **Pedidos**, a coluna **ID_Cliente** é uma chave estrangeira que referencia a chave primária da tabela **Clientes**.

![image](https://github.com/user-attachments/assets/b72c719e-c2b8-4ab8-9330-850358920f66)


## 5. Levantamento de Requisitos

O **levantamento de requisitos** consiste em entender as necessidades do sistema para projetar o banco de dados corretamente. Isso inclui:

* Identificar os dados necessários.

* Entender os fluxos de trabalho.

* Determinar os relatórios e consultas necessárias.

**Passos:**

Entrevistar os stakeholders.

Identificar as entidades e atributos.

Definir os relacionamentos.

**Exemplo Prático:**  Uma clínica médica precisa de um sistema para agendamentos:

* Entidades:

    1. Pacientes: ID, Nome, Data de Nascimento.

    2. Médicos: ID, Nome, Especialidade.

    3. Consultas: ID, Data, Horário, ID_Paciente, ID_Médico.

* Relacionamentos:

    * Um paciente pode ter várias consultas (1:N).

    * Um médico pode atender várias consultas (1:N).
 
##### Diagrama Conceitual:


![image](https://github.com/user-attachments/assets/d54877a4-2dd3-469b-9bc7-5dcd57350a3a)

      



