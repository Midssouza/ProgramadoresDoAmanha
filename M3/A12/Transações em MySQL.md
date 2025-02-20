# Transações em MySQL

**Objetivo**
Compreender o funcionamento das transações em MySQL e aprender a utilizar os comandos START TRANSACTION, ROLLBACK e COMMIT para garantir a integridade e o controle das operações no banco de dados.

**O que são Transações?**
Uma transação é uma unidade de trabalho que consiste em um ou mais comandos de banco de dados executados como um único bloco. As transações garantem que todas as operações sejam bem-sucedidas ou nenhuma delas seja aplicada. Isso é essencial para garantir a integridade e a coerência dos dados.

Características das transações:

1. **Atomicidade:** A transação é atômica, ou seja, ou todas as operações da transação são concluídas com sucesso, ou nenhuma delas é aplicada.
2. **Consistência:** As transações devem levar o banco de dados de um estado consistente para outro estado consistente.
3. **Isolamento:** As transações executadas de forma simultânea não devem interferir umas nas outras.
4. **Durabilidade:** Após a confirmação (commit), as alterações são permanentes, mesmo em caso de falha.


#### Comandos Principais

1. **START TRANSACTION**

O comando START TRANSACTION inicia uma transação. A partir deste momento, qualquer modificação no banco de dados não será visível para outras transações até que seja confirmada ou revertida.


![image](https://github.com/user-attachments/assets/86329a31-1f31-41cb-8b7c-e5153886417d)

Exemplo:


![image](https://github.com/user-attachments/assets/2241f34c-f679-4dba-91b6-2a907e2dbcbc)

Neste exemplo, iniciamos uma transação onde estamos transferindo dinheiro de uma conta para outra. Se houver um erro durante o processo, queremos garantir que nenhuma mudança seja salva.


✅ **Quando usar transações?**
 * Operações que envolvem múltiplas tabelas
Exemplo: Criar um pedido e salvar seus itens.
* Evitar dados inconsistentes
Exemplo: Transferência bancária (deve debitar de um lado e creditar do outro).
* Evitar registros parciais em caso de erro
Exemplo: Se um dos INSERTs falhar, os anteriores não devem ser salvos.
* Manter a integridade do banco
Exemplo: Evitar que uma venda seja confirmada sem estoque suficiente.


📌 **Quando NÃO precisa de transação?**
Consultas simples (SELECT)
INSERT, UPDATE, DELETE que não dependem de múltiplas operações
Criação do banco (CREATE DATABASE) ou tabelas (CREATE TABLE)
Essas operações já são "auto commit", ou seja, são permanentes sem precisar de transação.


📌 ### Exemplo de Quando Usar Transação
📌 Cenário: Criar um pedido e salvar os itens na tabela itens_pedido. Se uma das inserções falhar, nenhuma deve ser salva.

![image](https://github.com/user-attachments/assets/4735fa26-46ec-4083-84e3-a911939f822a)


**Boas Práticas com Transações**

* Minimize o tempo da transação: Execute a transação o mais rápido possível para reduzir o tempo que outros processos ficam esperando por bloqueios.
* Use transações em operações críticas: Para garantir que a operação seja executada com sucesso ou revertida em caso de falha.
* Não deixe transações abertas: Sempre finalize com COMMIT ou ROLLBACK para evitar bloqueios no banco de dados.

> **Resumo**
> * As transações garantem a integridade dos dados no banco de dados.
> * START TRANSACTION inicia uma transação.
> * ROLLBACK reverte as alterações feitas durante a transação.
> * COMMIT confirma as alterações feitas e as torna permanentes.

Esses comandos são essenciais para manter a consistência dos dados, especialmente em sistemas críticos como sistemas bancários, e-commerce, e outras aplicações que lidam com dados sensíveis.







