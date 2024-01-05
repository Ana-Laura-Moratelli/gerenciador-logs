<h1>:page_with_curl:Gerenciador de Logs</h1>
O projeto consiste em desenvolver uma tela para um sistema de autenticação e cadeia de custódia, focalizando especificamente no gerenciamento do histórico de logs em um site de compras. A interface projetada terá a capacidade de apresentar detalhes cruciais, como registros de compras, informações de pagamento e conteúdo do carrinho. Além disso, a tela incluirá elementos visuais, como gráficos, para fornecer uma representação visual intuitiva do histórico de atividades. O objetivo é criar uma ferramenta eficaz que permita aos usuários monitorar e compreender facilmente suas interações passadas no site, promovendo assim a transparência e a confiança no ambiente de compras online.

<h2>:movie_camera: MVP</h2>

https://github.com/Ana-Laura-Moratelli/gerenciador-logs/assets/127795446/dfb28f77-40a4-4137-ab62-d686d164c939

<h2>💻 Tecnologias utilizadas: </h2>

<div>
    <img src="https://img.shields.io/badge/HTML5-239120?style=for-the-badge&logo=html5&logoColor=white&color=1c3144" />
    <img src="https://img.shields.io/badge/CSS3-239120?&style=for-the-badge&logo=css3&logoColor=white&color=1c3144" />
    <img src="https://img.shields.io/badge/Flask-000000?style=for-the-badge&logo=flask&logoColor=white&color=1c3144" />
    <img src="https://img.shields.io/badge/Python-3776AB?style=for-the-badge&logo=python&logoColor=white&color=1c3144" />
    <img src="https://img.shields.io/badge/Mysql-000000?style=for-the-badge&logo=mysql&logoColor=white&color=1c3144"/>

    
</div>
<h2>:hammer_and_wrench: Como executar</h2>

  <h3>Passo 1: Certifique-se de ter o Git, Python e MySQL instalados.</h3>
    <p>Para baixar o Git, acesse <a href="https://git-scm.com/downloads">https://git-scm.com/downloads</a>.</p>
    <p>Para baixar o Python, acesse <a href="https://www.python.org/downloads/">https://www.python.org/downloads/</a>.</p>
    <p>Para baixar o MySQL, acesse <a href="https://dev.mysql.com/downloads/mysql/"</a>https://dev.mysql.com/downloads/mysql/.</p>
  <h3>Passo 2: Abra o Terminal</h3>
  <p>Pesquise por "Terminal" na barra de tarefas do seu dispositivo e abra o terminal.</p>

  <h3>Passo 3: Clone o Repositório</h3>
  <pre><code>git clone https://github.com/Ana-Laura-Moratelli/gerenciador-logs</code></pre>

  <h3>Passo 4: Entre na Pasta src</h3>
  <pre><code>cd gerenciador-logs/src</code></pre>

  <h3>Passo 5: Crie o Ambiente Virtual</h3>
  <pre><code>python -m venv venv</code></pre>
  <pre><code>.\venv\Scripts\activate</code></pre>
  <pre><code>pip install -r requirements.txt</code></pre>

  <h3>Passo 5: Para Usuários Linux e Mac</h3>
  <pre><code>python3 -m venv venv</code></pre>
  <pre><code>source venv/bin/activate</code></pre>
  <pre><code>pip install -r requirements.txt</code></pre>

  <h3>Passo 6: Configure o MySQL no Arquivo app.py</h3>
<pre><code>db_config = {
    'host': 'localhost',
    'user': 'root',
    'password': 'suasenha',
    'database': 'LOGS',
}
</code></pre>
<p>Altere o valor da chave 'password' para a senha do seu MySQL.

<h3>Passo 7: Importe o Banco de Dados</h3>
<p>Execute o seguinte comando para importar o banco de dados:</p>
<pre><code>mysql -u root -p < logs.sql</code></pre>
<p>Quando solicitado, insira a senha do usuário root do MySQL que você configurou durante a instalação e alterou no passo 8.</p>

  <h3>Passo 8: Execute a Aplicação</h3>
  <pre><code>python app.py</code></pre>

  <h3>Passo 9: Abra o Link no Navegador</h3>
  <p>Abrir o seguinte link em seu navegador de preferência: <a href="http://127.0.0.1:5000">http://127.0.0.1:5000</a></p>

  <h3>Passo 10: Encerrando o Ambiente Virtual</h3>
  <pre><code>deactivate</code></pre>
