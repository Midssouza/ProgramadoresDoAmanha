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

2. **ROLLBACK**

O comando ROLLBACK é usado para desfazer todas as operações realizadas desde o início da transação. Caso ocorra um erro ou qualquer problema durante a transação, podemos usar o ROLLBACK para garantir que os dados não sejam alterados.


![image](https://github.com/user-attachments/assets/76a7d5f1-1eac-419c-ae67-aa5f2f9fd9ae)

Exemplo: 


![image](https://github.com/user-attachments/assets/2a97ec27-2bb3-4578-ba63-a43c67817ce0)


Se, por exemplo, a segunda atualização falhar, o comando ROLLBACK irá reverter a transação, fazendo com que as alterações não sejam persistidas no banco de dados.

3. **COMMIT**
   
O comando COMMIT é utilizado para confirmar as operações realizadas durante a transação. Após o COMMIT, as mudanças realizadas são permanentes e visíveis para outras transações.


![image](https://github.com/user-attachments/assets/3f889a0b-1e6a-48c2-ab19-44a2f09279de)

Neste caso, se ambas as atualizações ocorrerem com sucesso, o comando COMMIT confirma as alterações e elas são permanentemente registradas no banco de dados.

**Fluxo de Trabalho com Transações**

1. **Iniciar a transação**  com *START TRANSACTION.*
2. **Realizar operações** (INSERT, UPDATE, DELETE) necessárias.
3. Caso tudo ocorra bem, **confirmar a transação** com *COMMIT.*
4. Se ocorrer algum erro, **reverter as operações** com *ROLLBACK.*

**Exemplo Completo**

Aqui está um exemplo completo de como usar transações para transferir dinheiro entre duas contas bancárias:

![image](https://github.com/user-attachments/assets/d807bc05-0442-4326-af52-b5daa4cc63e1)

Se algum erro ocorrer durante as operações, podemos utilizar o ROLLBACK para reverter qualquer alteração:


![image](https://github.com/user-attachments/assets/0df20369-a667-48f7-9152-083062a4c769)

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







