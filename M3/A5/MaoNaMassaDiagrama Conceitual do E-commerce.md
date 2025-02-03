# Diagrama Conceitual do E-commerce

### Entidades e Relacionamentos

1- **Usuário** (id_usuario, nome, email, senha, tipo_usuario, endereco, telefone, data_cadastro)

  * Um usuário pode realizar vários pedidos (1,N)

  * Um usuário pode adicionar vários produtos ao carrinho (1,N)

2- **Produto** (id_produto, nome, descricao, preco, estoque, categoria, imagem_url, data_cadastro)

  * Um produto pode estar em vários pedidos (N,M)
  
  * Um produto pode estar no carrinho de vários usuários (N,M)

3- **Pedido** (id_pedido, id_usuario (FK), data_pedido, status, total)

  * Um pedido pertence a um único usuário (N,1)
  
  * Um pedido contém vários produtos (1,N)
  
4- **Item do Pedido** (id_item_pedido, id_pedido (FK), id_produto (FK), quantidade, preco_unitario, subtotal)

  * Relaciona Pedido e Produto em um relacionamento N*:M*
  
  * Carrinho (id_carrinho, id_usuario (FK), id_produto (FK), quantidade)
  
  * Relaciona Usuário e Produto para indicar produtos temporários no carrinho (N*:M**)*

5- **Carrinho** (id_carrinho, id_usuario (FK), id_produto (FK), quantidade)

  * Relaciona Usuário e Produto para indicar produtos temporários no carrinho (N*:M**)* 

