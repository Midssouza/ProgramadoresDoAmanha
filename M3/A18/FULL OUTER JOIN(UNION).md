# FULL OUTER JOIN

### Definição:
O FULL OUTER JOIN retorna todas as linhas quando há uma correspondência em uma das tabelas.
Ele combina os resultados de LEFT JOIN e RIGHT JOIN.
Se não houver correspondência, os resultados contêm NULL para cada coluna da tabela que não possui correspondência.

> [!IMPORTANT]
>**ATENÇÃO** no MySQL não temos a query  para realiza o **Full Outer Join**, sendo assim utilizamos a cláusula **UNION** para realizar essa pesquisa.

# Union
A cláusula **UNION** no SQL é uma ferramenta poderosa que permite combinar os resultados de duas ou mais instruções **SELECT** em uma única tabela de resultados.
Esta cláusula é muito útil quando se deseja unir dados que estão em tabelas diferentes mas que compartilham a mesma estrutura, ou seja, o mesmo número de colunas e tipos de dados correspondentes.

A cláusula **UNION**combina os resultados de duas ou mais consultas **SELECT** em uma única tabela. Aqui estão alguns pontos chave sobre a **UNION**:

1- **Estrutura de Colunas:** As consultas a serem combinadas devem ter o mesmo número de colunas e os tipos de dados das colunas correspondentes devem ser compatíveis.<br>
2- **Remoção de Duplicatas:** Por padrão, a cláusula UNION remove duplicatas dos resultados combinados. Se você deseja incluir duplicatas, deve usar a cláusula UNION ALL<br>
3- **Ordem dos Resultados:** A ordem dos resultados combinados pode ser ajustada usando a cláusula ORDER BY no final da última instrução SELECT.<br>

**Sintaxe UNION**<br>
- A sintaxe básica da cláusula UNION é a seguinte:<br>
SELECT coluna1, coluna2, ...<br>
FROM tabela1<br>
UNION<br>
SELECT coluna1, coluna2, <br>
FROM tabela2;<br>

- Se você quiser incluir duplicatas:<br>
SELECT coluna1, coluna2, ...<br>
FROM tabela1<br>
UNION ALL<br>
SELECT coluna1, coluna2, ...<br>
FROM tabela2;<br>

**Exemplo**

Suponha que temos duas tabelas: alunos_2023 e alunos_2024. Queremos obter uma lista única de todos os alunos registrados em qualquer um dos anos.

- **Tabela alunos_2023:** <br>

 ![image](https://github.com/Midssouza/ProgramadoresDoAmanha/assets/60756132/f4b09083-744b-401d-ab31-160fb77beca0)<br>

 - **Tabela alunos_2024:** <br>
 ![image](https://github.com/Midssouza/ProgramadoresDoAmanha/assets/60756132/17757313-0436-4675-882e-4eefe9f31811)<br>

Para combinar estas duas tabelas e obter uma lista única de alunos, usamos a cláusula UNION:<br>

![image](https://github.com/Midssouza/ProgramadoresDoAmanha/assets/60756132/820f334c-67bb-47c2-823f-d6e2f92df531)

- Resultado <br>
![image](https://github.com/Midssouza/ProgramadoresDoAmanha/assets/60756132/56d22841-13ee-49a7-adbb-87f8c67f23a7)<br>

Observe que o aluna "Maria " aparece apenas uma vez no resultado final, apesar de estar presente em ambas as tabelas.

#### Diferença entre UNION e UNION ALL
Se quisermos incluir todas as ocorrências de alunos, incluindo duplicatas, usamos UNION ALL:<br>
![image](https://github.com/Midssouza/ProgramadoresDoAmanha/assets/60756132/ab37b502-c400-4807-bc0c-61c743518132)

- Resultado <br>
![image](https://github.com/Midssouza/ProgramadoresDoAmanha/assets/60756132/aa0e2bfc-f9c3-43a5-b7a5-5e39b2eefc14)

Neste caso, o aluna "Maria" aparece duas vezes, uma vez de cada tabela.

>[!note]
>A cláusula UNION é essencial para combinar resultados de múltiplas consultas SELECT em SQL. Ela é útil para consolidar dados de várias fontes e garantir que os dados combinados tenham uma estrutura consistente. Ao entender a cláusula UNION, podemos manipular e integrar dados de maneira mais eficiente e eficaz.

💻[Código do Exemplo](https://github.com/Midssouza/ProgramadoresDoAmanha/blob/main/M3/A18/Exemplo_3.sql)

              



