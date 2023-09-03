
# Proposta

Mapear um ER e, a partir deste, gerar o esquema SQL para a criação do BD. Realizar a inserção de valores e recuperar essas informações com queries DML pensadas para responder "perguntas".

Mapeamento do esquema ER para Relacional
Definição do script SQL para criação do esquema de banco de dados
Persistência de dados para testes
Recuperação de informações com queries SQL

# Diagrama EER
![modelo](https://github.com/asantos6/Ecommerce--SQL--DIO/assets/140283357/45b98480-d515-4b83-9105-877547c5e645)

# Perguntas abordadas
1)	Quantos clientes temos?
   
        select count(*) from clientes;

    ![image](https://github.com/asantos6/Ecommerce--SQL--DIO/assets/140283357/a0cf6d3c-8ec7-49b7-8bb8-e58177d526c6)

 
2)	Quais pedidos foram feitos por quais clientes?
   
          select c.idcliente, c.nome, o.IdOrdem  as 'Numero da ordem'
          from clientes c, ordens o
          where c.idcliente = o.idcliente
  	
   ![image](https://github.com/asantos6/Ecommerce--SQL--DIO/assets/140283357/0665061b-1cdc-4280-a119-de6febdeb3b3)


3)	Quanto cada cliente gastou com frete?
   
        select c.idcliente, c.nome, o.IdOrdem  as 'Numero da ordem' , o.frete as 'Valor do frete'
        from clientes c, ordens o
        where c.idcliente = o.idcliente

    ![image](https://github.com/asantos6/Ecommerce--SQL--DIO/assets/140283357/c6727a60-4771-4f94-826d-893eabf9ef4a)
 

4)	Quantos pedidos foram realizados?
	
          select count(*) from ordens;
  	
  	![image](https://github.com/asantos6/Ecommerce--SQL--DIO/assets/140283357/21f1afb7-e059-41b7-90be-c74f137d364c)

 
5)	Qual a quantidade de pedidos por Categoria de produto?
   
        select p.categoria as 'Categoria', count(DISTINCT p.categoria) as 'Quantidade de ordem'
        from ordem_produto op , ordens o, produto p
        where op.Idordem = o.Idordem
         group by p.categoria
  	
  	![image](https://github.com/asantos6/Ecommerce--SQL--DIO/assets/140283357/7d4877f4-1b33-493e-b87d-72e62e89de1b)
  	
6)	Qual(is) a(s) forma(s) de pagamento mais usada(s)?
    
         select distinct p.forma_pagamento, rank()over( order by p.forma_pagamento desc) as 'forma(s) de pagamento mais usada(s)'
         from pagamentos p, ordens o
         where o.Idpagamentos = p.Idpagamentos
  	
  	![image](https://github.com/asantos6/Ecommerce--SQL--DIO/assets/140283357/4a85000f-b90c-46ba-a885-29c46e9c8566)
  	
7)	Que tipo de pagamento cada cliente tem?
   
        select distinct p.forma_pagamento, concat(c.nome, ' ',c.sobrenome) as 'nome do cliente'
         from pagamentos p, clientes c
        where p.Idcliente = c.Idcliente
  	
  	![image](https://github.com/asantos6/Ecommerce--SQL--DIO/assets/140283357/a794719b-d09b-43ec-90af-61ddcefc7233)

8)	Qual o Limite médio que cada cliente tem?

       select avg(round( p.avaliacao_limite,1)) as 'Limite médio'
       from pagamentos p
  	
     ![image](https://github.com/asantos6/Ecommerce--SQL--DIO/assets/140283357/447a7cab-1d9e-41d0-8bc2-1ce49e9a20aa)
