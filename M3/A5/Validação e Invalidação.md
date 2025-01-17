#  Validação e Invalidação de Modelos

Validação de modelos garante que eles estão alinhados com os requisitos e funcionam corretamente no contexto do sistema. A invalidação ocorre quando um modelo apresenta inconsistências ou não atende aos requisitos.

#### Validação:

1. **Alinhamento com os requisitos:**

    * Verifique se todos os requisitos estão contemplados no modelo.

2. **Consistência interna:**

    * Certifique-se de que não existem conflitos entre os elementos do modelo.

3. **Teste do modelo:**

    * Simule cenários reais para verificar se o modelo atende às expectativas.

#### Invalidação:

1. **Falha em atender requisitos:**

    *  Um requisito importante foi ignorado ou mal interpretado.

2. **Inconsistência lógica:**

    * O modelo apresenta conflitos que impossibilitam sua implementação.
  

  **Exemplo:**

  **Cenário:**
  * Requisito: Cada cliente em um sistema de vendas pode fazer apenas uma compra por dia.

**Modelo inicial:**
  * Relacionamento entre as tabelas "Cliente" e "Compra" está 1:N.

**Invalidação:**
  * O relacionamento 1:N permite várias compras no mesmo dia, violando o requisito.

**Correção:**
* Adicione um campo "Data" à tabela "Compra" e crie uma restrição única (cliente, data).

