-- Criação do Banco de Dados
CREATE DATABASE loja_web;
USE loja_web;

-- Tabela de Produtos
CREATE TABLE produtos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    preco DECIMAL(10, 2) NOT NULL,
    estoque INT NOT NULL
);

-- Tabela de Vendas
CREATE TABLE vendas (
    id INT AUTO_INCREMENT PRIMARY KEY,
    data_venda DATETIME NOT NULL,
    total DECIMAL(10, 2) NOT NULL
);

-- Tabela de Itens de Venda
CREATE TABLE itens_venda (
    id INT AUTO_INCREMENT PRIMARY KEY,
    venda_id INT NOT NULL,
    produto_id INT NOT NULL,
    quantidade INT NOT NULL,
    preco_unitario DECIMAL(10, 2) NOT NULL,
    subtotal DECIMAL(10, 2) NOT NULL,
    FOREIGN KEY (venda_id) REFERENCES vendas(id),
    FOREIGN KEY (produto_id) REFERENCES produtos(id)
);

-- Inserção de Dados na Tabela Produtos
INSERT INTO produtos (nome, preco, estoque) VALUES
('Camiseta', 49.90, 100),
('Calça Jeans', 119.90, 50),
('Tênis Esportivo', 199.90, 30),
('Mochila', 89.90, 40),
('Relógio Digital', 149.90, 20),
('Boné', 39.90, 70),
('Jaqueta de Couro', 299.90, 15),
('Bermuda', 59.90, 60),
('Cinto de Couro', 69.90, 35),
('Carteira', 79.90, 25);

-- Inserção de Dados na Tabela Vendas
INSERT INTO vendas (data_venda, total) VALUES
('2024-12-01 10:15:00', 249.70),
('2024-12-02 11:30:00', 399.80),
('2024-12-03 15:45:00', 589.60),
('2024-12-04 13:20:00', 199.90),
('2024-12-05 16:10:00', 299.80);

-- Inserção de Dados na Tabela Itens de Venda
INSERT INTO itens_venda (venda_id, produto_id, quantidade, preco_unitario, subtotal) VALUES
(1, 1, 2, 49.90, 99.80),
(1, 3, 1, 199.90, 199.90),
(2, 2, 2, 119.90, 239.80),
(2, 4, 2, 89.90, 179.80),
(3, 7, 1, 299.90, 299.90),
(3, 5, 2, 149.90, 299.80),
(4, 3, 1, 199.90, 199.90),
(5, 1, 1, 49.90, 49.90),
(5, 8, 2, 59.90, 119.80),
(5, 9, 2, 69.90, 139.80);

-- Dados adicionais na Tabela Vendas
INSERT INTO vendas (data_venda, total) VALUES
('2024-12-06 09:00:00', 429.50),
('2024-12-07 14:40:00', 549.60),
('2024-12-08 17:15:00', 219.80),
('2024-12-09 10:10:00', 479.70),
('2024-12-10 12:30:00', 339.80);

-- Dados adicionais na Tabela Itens de Venda
INSERT INTO itens_venda (venda_id, produto_id, quantidade, preco_unitario, subtotal) VALUES
(6, 6, 5, 39.90, 199.50),
(6, 2, 1, 119.90, 119.90),
(6, 10, 1, 79.90, 79.90),
(7, 4, 3, 89.90, 269.70),
(7, 5, 2, 149.90, 299.80),
(8, 8, 2, 59.90, 119.80),
(8, 9, 1, 69.90, 69.90),
(9, 1, 3, 49.90, 149.70),
(9, 3, 1, 199.90, 199.90),
(10, 7, 1, 299.90, 299.90);
