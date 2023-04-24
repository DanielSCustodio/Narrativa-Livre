<!DOCTYPE html>
<html lang="pt-br">
<head>
  <meta charset="UTF-8">
</head>
<body>
  <h1>Narrativa Livre</h1>
  <img src="https://user-images.githubusercontent.com/29557187/234066450-54e8813c-e98a-414a-aa5a-824fa1d581da.png"/>
  <p>Este é um projeto de uma aplicação web que permite aos usuários postar suas próprias histórias e realizar operações básicas de CRUD (criação, leitura, atualização, edição e exclusão). O projeto foi desenvolvido com as seguintes tecnologias: Node, Express, Handlebars, MySQL e SASS.</p>
  <h2>Guia de Instalação</h2>
  <ol>
    <li>Clone este repositório usando o comando   <pre><code>git clone git@github.com:DanielSCustodio/Narrativa-Livre.git</code></pre></li>
    <li>Importe o arquivo <code>storyBD_story.sql </code> que está na raiz do projeto para criar a tabela  <code>story</code></li>
    <li>Crie um arquivo chamado  <code>.env.development.local </code> na raiz do projeto e adicione as seguintes informações de conexão do banco de dados, substituindo os valores xxx pelos dados corretos:</li>
    <pre><code>DB_PASS=xxx
DB_HOST=localhost
DB_USER=xxxx
DB_NAME=xxxx
PORT=xxx</code></pre>
    <li>Execute o comando <code>npm install</code> para instalar todas as dependências necessárias do projeto.</li>
    <li>Execute o comando <code>sass --watch styles/main.sass:public/css/style.css</code> para compilar o SASS em tempo real.</li>
    <li>Finalmente, execute o comando <code>npm start</code> para iniciar o servidor. O aplicativo estará disponível em <code>http://localhost:PORT/</code>, onde <code>PORT</code> é a porta especificada no arquivo <code>.env.development.local</code>.</li>
  </ol>
  <h2>Funcionalidades</h2>
  <ul>
    <li>Criação de histórias com título, autor e conteúdo.</li>
    <li>Edição de histórias existentes.</li>
    <li>Exclusão de histórias.</li>
    <li>Listagem de todas as histórias existentes.</li>
    <li>Visualização de uma história específica.</li>
  </ul>
  <h2>Contribuindo</h2>
  <p>Sinta-se à vontade para contribuir com este projeto. Basta seguir os seguintes passos:</p>
  <ol>
    <li>Faça um fork deste repositório.</li>
    <li>Crie um branch com suas alterações (<code>git checkout -b minha-alteracao</code>).</li>
    <li>Commit suas alterações (<code>git commit -m "Minha alteração"</code>).</li>
    <li>Faça um push para o branch (<code>git push origin minha-alteracao</code>).</li>
    <li>Abra um Pull Request.</li>
  </ol>
</body>
</html>
