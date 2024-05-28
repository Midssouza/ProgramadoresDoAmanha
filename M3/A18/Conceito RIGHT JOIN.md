 # Right JOIN
## O que é Right JOIN?
O **Right JOIN** é um tipo de junção em bancos de dados relacionais que retorna todas as linhas da tabela à direita (tabela B) e as linhas correspondentes da tabela à esquerda (tabela A). Se não houver uma correspondência entre as tabelas, os resultados ainda incluirão todas as linhas da tabela B, mas com valores nulos nas colunas da tabela A.

##### Sintaxe
A sintaxe básica de um Right JOIN é:<br>

![image](https://github.com/Midssouza/ProgramadoresDoAmanha/assets/60756132/adc80785-a566-48f1-8ec1-695ceb6569c9)<br>

**Exemplo**

Considere duas tabelas: Clientes e Pedidos.

- **Cliente**

  ![image](https://github.com/Midssouza/ProgramadoresDoAmanha/assets/60756132/88cfad3e-082b-43da-aeea-b018f2ad0109)
  

- **Pedido**
 
![image](https://github.com/Midssouza/ProgramadoresDoAmanha/assets/60756132/9b691887-2b6d-4f69-b16b-acfe365087c4)<br>

Queremos listar todos os pedidos e incluir as informações dos clientes, mesmo que alguns pedidos possam não ter um cliente correspondente na tabela Clientes, usamos o Right JOIN:<br>

![image](https://github.com/Midssouza/ProgramadoresDoAmanha/assets/60756132/d235a338-9ef8-4265-85e1-b18fa7abe4dc)<br>

    O resultado será:
  
![image](https://github.com/Midssouza/ProgramadoresDoAmanha/assets/60756132/41c1f57d-9acc-4c37-84a3-c4c3e7eecdb6)<br>
O Pedido_id 5 não tem um Cliente_id correspondente na tabela Cliente, então o resultado mostra NULL nas colunas Cliente_id e Nome.
Todos os pedidos da tabela Pedido são retornados, mesmo que não haja correspondência na tabela Cliente.<br>

💻[Código do Exemplo](https://github.com/Midssouza/ProgramadoresDoAmanha/blob/main/M3/A18/Exemplo_2.sql)

### Diferença entre Right JOIN e Left JOIN
A principal diferença entre Right JOIN e Left JOIN é a tabela de referência principal:<br>

- **Right JOIN** retorna todas as linhas da tabela à direita (tabela B) e as correspondências da tabela à esquerda (tabela A).<br>
- **Left JOIN** retorna todas as linhas da tabela à esquerda (tabela A) e as correspondências da tabela à direita (tabela B).<br>
Escolher entre usar Right JOIN ou Left JOIN depende da estrutura das suas tabelas e da lógica que você deseja aplicar na sua consulta.


>**Quando Usar Right JOIN?**<br>
Utilize Right JOIN quando você precisar garantir que todas as linhas da tabela à direita estejam no resultado, independentemente de haver correspondências na tabela à esquerda. Ele é útil quando a tabela à direita contém informações essenciais que devem sempre ser exibidas.


