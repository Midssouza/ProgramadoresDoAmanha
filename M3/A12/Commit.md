# COMMIT
   
O comando COMMIT é utilizado para confirmar as operações realizadas durante a transação. Após o COMMIT, as mudanças realizadas são permanentes e visíveis para outras transações.

O COMMIT está diretamente ligado ao conceito de Durabilidade (D) no modelo ACID dos bancos de dados transacionais.

Vamos relembrar rapidamente o que significa ACID:

* Atomacidade: Ou tudo acontece, ou nada acontece.
* Consistência: O banco deve sempre estar em um estado válido.
* Isolamento: Transações concorrentes não interferem entre si.
* Durabilidade: Uma vez que uma transação é confirmada (COMMIT), os dados são permanentemente salvos, mesmo que ocorra uma falha no sistema.

  ## COMMIT = Garantia de Durabilidade
Quando você executa um COMMIT, os dados são gravados de forma definitiva no banco de dados. Isso significa que, mesmo que haja um problema (queda de energia, falha no servidor), as alterações não serão perdidas.

**Exemplo de COMMIT garantindo Durabilidade**
![image](https://github.com/user-attachments/assets/3956e316-0fe1-49e6-aa1a-ec08ed4579b0)


Se o sistema falhar logo após o COMMIT, os dados ainda estarão no banco na próxima vez que o banco de dados for iniciado.

E se não der COMMIT?
Se a transação não for confirmada (COMMIT), e houver um problema antes disso, os dados podem ser perdidos porque ainda não foram gravados de forma permanente.

![image](https://github.com/user-attachments/assets/14e9f382-08f7-4dd6-a876-6ed881d1ace4)

❌ Como não houve COMMIT, o banco "esquece" essa operação.



* Neste caso, se ambas as atualizações ocorrerem com sucesso, o comando COMMIT confirma as alterações e elas são permanentemente registradas no banco de dados.

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


> Resumo
> **COMMIT** = Garante que os dados sejam permanentes (Durabilidade).
> **ROLLBACK** = Desfaz a transação antes do COMMIT.
> **Sem COMMIT** = Dados podem ser perdidos em caso de falha.
