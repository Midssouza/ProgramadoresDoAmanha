# ROLLBACK

O comando ROLLBACK é usado para desfazer todas as operações realizadas desde o início da transação. Caso ocorra um erro ou qualquer problema durante a transação, podemos usar o ROLLBACK para garantir que os dados não sejam alterados.
O ROLLBACK é específico para transações em bancos de dados que suportam o conceito de transação (como MySQL com InnoDB, PostgreSQL, SQL Server, etc.). Ele desfaz todas as operações realizadas desde o último START TRANSACTION, retornando o banco ao estado anterior.

![image](https://github.com/user-attachments/assets/81918061-4042-4c34-aadf-3c6b9bae4fa8)


Exemplo: 


![image](https://github.com/user-attachments/assets/152e3876-c6d6-4ce2-b56d-d4e2b711c6a6)



Se, por exemplo, a segunda atualização falhar, o comando ROLLBACK irá reverter a transação, fazendo com que as alterações não sejam persistidas no banco de dados.

1. **Exemplo de ROLLBACK em uma Transação**
Se estivermos usando START TRANSACTION, podemos fazer um ROLLBACK para cancelar as operações:

![image](https://github.com/user-attachments/assets/e1daeb3f-4978-4b83-873b-df8e8a5824ba)


🔹 Sem ROLLBACK, os dados ficariam no banco.
🔹 Com ROLLBACK, nada foi efetivado.


2.** ROLLBACK Fora de Transações**
Se você não estiver dentro de uma transação, o ROLLBACK não fará nada. Por exemplo:

![image](https://github.com/user-attachments/assets/bfa76e16-e3b8-4316-84ce-3a13d00bd6e2)

Isso acontece porque, se o banco de dados estiver operando no modo autocommit (padrão do MySQL), cada comando é executado imediatamente e não pode ser desfeito sem uma transação.

3. **Exceções Onde Algo "Semelhante" a ROLLBACK Pode Ocorre**
Se você não está lidando com transações diretamente, mas quer um efeito parecido, pode:

1. Usar backups para restaurar dados antigos.
2. Criar triggers ou logs para "desfazer" mudanças manualmente.






