# Diagramas: Relacionamentos e Cardinalidades


## 1. Introdução
Os modelos de dados são fundamentais para a organização eficiente de um banco de dados. Dentro dos modelos conceituais e lógicos, os relacionamentos e as cardinalidades desempenham um papel essencial, pois determinam como as entidades se conectam entre si.

> ### Objetivos da Aula
>Compreender o que são relacionamentos e sua importância.
>Entender os diferentes tipos de cardinalidades e como representá-las em diagramas.
>Aprender a modelar corretamente um banco de dados levando em conta essas características.



## 2. Relacionamentos
#### O que é um relacionamento?
Um relacionamento define a associação entre duas ou mais entidades. Em um banco de dados relacional, um relacionamento pode representar ligações naturais entre dados armazenados em diferentes tabelas.

#### Tipos de Relacionamento
##### 2.1 Relacionamento 1:1 (Um para Um)
* Cada entidade A está associada a, no máximo, uma entidade B, e vice-versa.
  * Exemplo: Pessoa e Passaporte
      * Cada pessoa pode ter apenas um passaporte.
      * Cada passaporte pertence a apenas uma pessoa.

📌 **Representação Gráfica (Modelo Conceitual)**

![image](https://github.com/user-attachments/assets/1597949b-c31f-4602-8a7a-615f15fc4af4)

📌 **Como ficaria no modelo lógico?**

* Uma das tabelas pode conter uma chave estrangeira apontando para a outra.

  ![image](https://github.com/user-attachments/assets/0f65e425-6050-470e-93bf-5767cb705cb0)


##### 2.2 Relacionamento 1:N (Um para Muitos)
* Uma entidade A pode estar associada a várias entidades B, mas uma entidade B está associada a apenas uma entidade A.
  * Exemplo: Cliente e Pedido
      * Um cliente pode realizar vários pedidos.
      * Cada pedido pertence a apenas um cliente.

  📌 **Representação Gráfica (Modelo Conceitual)**

  ![image](https://github.com/user-attachments/assets/2bffa5f7-0488-48df-8001-b89b4dc9a140)

  📌 **Como ficaria no modelo lógico?**

* A tabela Pedido recebe a chave estrangeira de Cliente.

![image](https://github.com/user-attachments/assets/3f26c972-b3ff-494f-bc26-c073f485cb49)

###### 2.3 Relacionamento N:N (Muitos para Muitos)
* Uma entidade A pode estar associada a várias entidades B, e vice-versa.
  * Exemplo: Alunos e Disciplinas
    * Um aluno pode cursar várias disciplinas.
    * Uma disciplina pode ser cursada por vários alunos.
      
📌 **Representação Gráfica (Modelo Conceitual)**

![image](https://github.com/user-attachments/assets/5d9b78f8-72a2-46af-82cf-8de44f630441)

📌 **Como ficaria no modelo lógico?**

Criamos uma tabela intermediária (Aluno_Disciplina) para armazenar a relação entre as tabelas Aluno e Disciplina.

![image](https://github.com/user-attachments/assets/a88f80f9-7b47-42cd-9464-952de88e62b1)

## 3. Cardinalidade
A cardinalidade define quantas ocorrências de uma entidade podem se associar a outra. Ela é representada por mínimo e máximo.

📌 **Principais Cardinalidades:**

* (0,1) → Opcional, no máximo uma ocorrência.
* (1,1) → Obrigatório, exatamente uma ocorrência.
* (0,N) → Opcional, várias ocorrências.
* (1,N) → Obrigatório, várias ocorrências.

**Exemplos Práticos de Cardinalidades**

**3.1 Cardinalidade (1,1) - Relacionamento Obrigatório** 
**Exemplo:** Cada motorista deve ter exatamente um carro oficial.

📌 Representação:
![image](https://github.com/user-attachments/assets/a024b7ca-21ca-4561-804f-94175775adbc)

![image](https://github.com/user-attachments/assets/b1bcb253-83a8-4999-96a3-c31268423fc7)


**3.2 Cardinalidade (0,N) - Relacionamento Opcional**
* Exemplo: Um cliente pode fazer vários pedidos, mas pode não ter feito nenhum ainda.

📌 Representação:

![image](https://github.com/user-attachments/assets/48ab680f-9238-4e5d-bff1-e4e3e053ae3c)


![image](https://github.com/user-attachments/assets/ba2f9970-da62-4b17-97b4-6e246ba291fc)

**3.3 Cardinalidade (1,N) - Relacionamento Obrigatório**
 * Exemplo: Cada pedido deve ter pelo menos um produto.

📌 Representação:

![image](https://github.com/user-attachments/assets/54df6642-feb7-4b06-a14f-0d8ca056e89b)


![image](https://github.com/user-attachments/assets/348a4702-41a6-49b0-8fb5-9c69e6a6cc06)


#### 4. Exercício Prático
Vamos construir um **diagrama para um sistema de biblioteca** contendo:

* Livros (cada livro pode ter vários autores).
* Autores (cada autor pode ter escrito vários livros).
* Usuários (podem pegar vários livros emprestados).
* Empréstimos (cada empréstimo pertence a um único usuário e pode conter vários livros).

 ### 5. Conclusão
Apendemos:<br>
✅ O que são relacionamentos e os diferentes tipos (1:1, 1:N, N:M).<br>
✅ Como identificar e representar cardinalidades.<br>
✅ Como implementar esses conceitos em SQL.<br>

#### Dica:
Sempre pense na melhor forma de estruturar os dados para evitar redundâncias e facilitar consultas no banco!










  







