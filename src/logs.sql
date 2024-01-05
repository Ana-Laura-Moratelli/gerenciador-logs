DROP DATABASE IF EXISTS LOGS;
CREATE DATABASE LOGS; 
USE LOGS;
CREATE TABLE transacoes (
    id INT AUTO_INCREMENT PRIMARY KEY,
    tipo VARCHAR(50),
    usuario VARCHAR(100),
    valor DECIMAL(10, 2),
    produto VARCHAR(100),
    pagamento VARCHAR(50),
    hora_transacao DATETIME,
    navegador VARCHAR(50),
    servidor VARCHAR(50),
    status VARCHAR(50)
);

INSERT INTO transacoes (tipo, usuario, valor, produto, pagamento, hora_transacao, navegador, servidor, status)
VALUES ('Pagamento', 'UsuarioPagamento', 50.00, 'ProdutoPagamento', 'Cartão de Crédito', '2023-01-01 12:34:56', 'Chrome', 'Servidor1', 'Aprovado');
INSERT INTO transacoes (tipo, usuario, valor, produto, pagamento, hora_transacao, navegador, servidor, status)
VALUES ('Compra', 'UsuarioCompra', 100.00, 'ProdutoCompra', 'Boleto Bancário', '2023-01-02 14:00:00', 'Firefox', 'Servidor2', 'Pendente');
INSERT INTO transacoes (tipo, usuario, valor, produto, pagamento, hora_transacao, navegador, servidor, status)
VALUES ('Carrinho', 'UsuarioCarrinho', 30.00, 'ProdutoCarrinho', 'N/A', '2023-01-03 10:30:00', 'Safari', 'Servidor3', 'Em Andamento');
INSERT INTO transacoes (tipo, usuario, valor, produto, pagamento, hora_transacao, navegador, servidor, status)
VALUES ('Pagamento', 'UsuarioPagamento2', 75.50, 'ProdutoPagamento2', 'PayPal', '2023-01-04 16:45:00', 'Edge', 'Servidor4', 'Aprovado');
