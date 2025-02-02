# Levantamento de Requisitos para um E-commerce

## Entidades e Atributos

**1. Usuário (Cliente/Administrador)**
  * **id_usuario** (INT, PK, auto incremento)
  * **nome** (VARCHAR)
  * **email** (VARCHAR, único)
  * **senha** (VARCHAR)
  * **tipo_usuario** (ENUM: 'cliente', 'admin')
  * **endereco** (VARCHAR)
  * **telefone** (VARCHAR)
  * **data_cadastro** (DATETIME)

**2. Produto**
  * **id_produto** (INT, PK, auto incremento)
  * **nome** (VARCHAR)
  * **descricao** (TEXT)
  * **preco** (DECIMAL)
  * **estoque** (INT)
  * **categoria** (VARCHAR)
  * **imagem_url** (VARCHAR)
  * **data_cadastro** (DATETIME)

**3. Pedido**
  * **id_pedido** (INT, PK, auto incremento)
  * **id_usuario** (INT, FK → Usuário)
  * **data_pedido** (DATETIME)
  * **status** (ENUM: 'pendente', 'enviado', 'entregue', 'cancelado')
  * **total** (DECIMAL)

**4. Item do Pedido**
  * **id_item_pedido** (INT, PK, auto incremento)
  * **id_pedido** (INT, FK → Pedido)
  * **id_produto** (INT, FK → Produto)
  * **quantidade** (INT)
  * **preco_unitario** (DECIMAL)
  * **subtotal** (DECIMAL)

**5. Carrinho**
  * **id_carrinho** (INT, PK, auto incremento)
  * **id_usuario** (INT, FK → Usuário)
  * **id_produto** (INT, FK → Produto)
  * **quantidade** (INT) 
