use ecommerce;

insert into clientes values (1, 'Antonia', 'Julia','Silva','17154855053','Quadra QE 9 Conjunto H','1991/06/08'),
							(2, 'Marcela', 'Benedita','Corte Real','19803972286','Estrada EW 1','1972/07/02'),
                            (3, 'Pedro', 'Geraldo','Rezende','65886221719','Rua JT-12','1988/09/02'),
                            (4, 'Alice', 'Giovana','Gonçalves','08041015158','Rua Thomaz Silveira Ventura','1979/07/16'),
                            (5, 'Leandro', 'Vitor','Monteiro','08153575910','Rua Liberdade','1976/06/19');
                            
                            
insert into estoque values (100,'TFK64U1Y'),
							(200, 'ZDDDJNPX'),
                            (300, 'YNT1P9UX'),
                            (400, 'EC9G372C'),
                            (500, 'W1PO920O'),
                            (600, '43YNT1LH'),
                            (700, '1JZ4J6J7'),
                            (800, '52MD03QL');
                            



                            
 select* from produto;
 
 
 insert into fornecedor values (101, 'Aparecida e Sebastiana Eletrônica ME', '43822112000130','1128374598'),
							 (102, 'Osvaldo e Caroline Telecom Ltda', '30175436000182','5129132884'),
                             (103, 'Fátima e Pietro Limpeza Ltda', '37734114000175','9636683279'),
                             (104, 'Igor e Luís Marcenaria Ltda', '36306213000193','6138971706'),
							 (105, 'Sebastião e Fernanda Alimentos ME', '78307761000188','5437588284');
                             
insert into produto values (1, 'cama', '1' ,'casa','4','158x198','905.08'),
                           (2, 'vinho', '2' ,'alimento','3','300ml','181.00'),
                           (3, 'shampoo', '3' ,'perfumaria','5','200ml','20.59'),
                           (4, 'Bolsa', '4' ,'moda','2','26cmX19cmX9cm','250.00'),
                           (5, 'Geladeira', '5' ,'eletrodomestico','5','410L','3199.06');
                           
 insert into vendedor values (201, 'Breno e Fernando Doces & Salgados Ltda', 'Breno Fernando','92997281000117', '04743041830', 'Rua Jayme Pinheiro de Ulhoa Cintra','1937128779'),
							 (202, 'Osvaldo e Evelyn Construções Ltda', 'Osvaldo Evelyn','50561721000149', '80850391253', 'Rua Almério Mota Pereira','9537306932'),
                             (203, 'Renata e Benedita Corretores Associados ME', 'Renata Benedita','87743017000117', '97838898269', 'Avenida Malaquita','6936550825'),
                             (204, 'Sebastião e Lorenzo Publicidade e Propaganda Ltda', 'Lorenzo Sebatião','81816707000172', '49905214046', 'Rua Idaly Schio','5425734312'),
                             (205, 'Fernanda e Leonardo Pães e Doces ME', 'Fernanda Leandro','38380626000143', '40204910463', 'Rua Edgar Cunha','53226155816');
							
select* from pagamentos;
delete from pagamentos;
select idEstoque, Idproduto from estoque inner join produto;
desc produto_fornecedor;
alter table produto_fornecedor add primary key (idProduto_Fornecedor);

insert into Produto_Fornecedor values (1, default, default ,'5'),
                                      (2, default, default ,'10'),
                                      (3, default, default ,'15'),
                                      (4, default, default ,'20'),
                                      (5, default, default,'25');
                                      
UPDATE Produto_Fornecedor
SET IdFornecedor = 103,
         IdProduto = 5
WHERE idProduto_Fornecedor = 5;   

insert into Produto_vendedor values (1, '10', '4' ,'203'),
                                      (2, '15','2' ,'205'),
                                      (3, '5', '1' ,'202'),
                                      (4,'20', '5' ,'204'),
                                      (5, '16', '3','201');   
                                      
                                      
insert into Produto_estoque values (600, '4', '40'),
									(400, '3','20'),
									(800, '5', '10'),
									(100,'2', '50' ),
									(500, '1', '30');


INSERT INTO pagamentos (idPagamentos, IdCliente, Forma_Pagamento, Avaliacao_Limite)
VALUES
(1, 5, 'aprazo', 5000.00),
(2, 3, 'avista', 2050.00),
(3, 1, 'avista', 3159.87),
(4, 2, 'avista', 2004.52),
(5, 4, 'aprazo', 2010.65);

insert into Ordens values (1, 201, 4, 'paga','Substituir teclado defeituoso no escritório do terceiro andar.', 50.00, 1),
						  (2, 202, 1, 'aberta','Verificar vazamento de água no banheiro do setor de TI.', 70.00, 1),
						  (3,203, 5, 'faturada','Realizar manutenção de rotina na máquina de café.', 80.00, 1),
						  (4, 204, 3, 'cancelada','Reparar a cerca danificada na área de armazenamento externo', 50.00, 1),
						  (5, 205, 2, 'fechada','Instalar novo software de segurança nos computadores da equipe de vendas.', 60.00, 1);

                                      