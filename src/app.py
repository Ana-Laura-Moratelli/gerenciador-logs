from flask import Flask, render_template, request
import mysql.connector

app = Flask(__name__)

# Configurações do banco de dados (substitua com suas próprias configurações)
db_config = {
    'host': 'localhost',
    'user': 'root',
    'password': '12345',
    'database': 'LOGS',
}

@app.route("/", methods=['GET', 'POST'])
def dashboard():
    if request.method == 'POST':
        # Dados recebidos do formulário (ajuste conforme necessário)
        tipo = request.form['tipo']
        usuario = request.form['usuario']
        valor = float(request.form['valor'])  # Converte para float
        produto = request.form['produto']
        pagamento = request.form['pagamento']
        hora_transacao = request.form['hora_transacao']
        navegador = request.form['navegador']
        servidor = request.form['servidor']
        status = request.form['status']

        # Conecta-se ao banco de dados
        connection = mysql.connector.connect(**db_config)
        cursor = connection.cursor()

        # Executa a query de inserção
        sql = "INSERT INTO transacoes (tipo, usuario, valor, produto, pagamento, hora_transacao, navegador, servidor, status) VALUES (%s, %s, %s, %s, %s, %s, %s, %s, %s)"
        values = (tipo, usuario, valor, produto, pagamento, hora_transacao, navegador, servidor, status)

        cursor.execute(sql, values)
        connection.commit()

        # Fecha a conexão
        cursor.close()
        connection.close()

    # Conecta-se novamente ao banco de dados para obter os resultados
    connection = mysql.connector.connect(**db_config)
    cursor = connection.cursor()

    # Executa a query de seleção
    sql = "SELECT * FROM transacoes"
    cursor.execute(sql)

    # Obtém os resultados
    resultados = cursor.fetchall()

    # Fecha a conexão
    cursor.close()
    connection.close()

    return render_template("dashboard.html", resultados=resultados)


if __name__ == '__main__':
    app.run(debug=True)
