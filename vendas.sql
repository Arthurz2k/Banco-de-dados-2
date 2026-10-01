Table Filial {

  id_filial int [primary key]
  nome_filial varchar
  endereco varchar 
  telefone varchar
  cnpj int [unique]

  }

Table Cliente {

  id_cliente int [primary key]
  nome varchar 
  endereco varchar
  cpf int [unique]
  email varchar
  Telefone int 
}

Table Pedido {
 id_cliente int
 id_filial int
 id_pedido int [primary key]
 data_pedido date 
 valor_pedido int 
 status_pedido varchar
 forma_pagamento varchar 
 frete int 
}

Table Produto {

 id_produto int [primary key]
 id_pedido int 
 nome_produto varchar
 descricao varchar 
 preco_unitario int
 quantidade_estoque int 
}

// Item_pedido é uma Entidade Associativa
Table Item_pedido {
 id_pedido int
 id_item_pedido int [primary key]
 quantidade int
 preco_unitario_item int
 subtotal int
 desconto int

}



Ref: "Filial"."id_filial" ?<? "Pedido"."id_filial"

Ref: "Pedido"."id_pedido" ?<? "Item_pedido"."id_pedido"

Ref: "Produto"."id_produto" -? "Pedido"."id_pedido"

Ref: "Cliente"."id_cliente" ?<? "Pedido"."id_cliente"