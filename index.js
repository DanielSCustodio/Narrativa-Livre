const express = require('express');
const exphbs = require('express-handlebars');
require('custom-env').env('development.local');
const pool = require('./database/connection');

const app = express();

app.engine('handlebars', exphbs.engine());
app.set('view engine', 'handlebars');
app.use(express.static('public'));

app.use(
  //capturar o body
  express.urlencoded({
    extended: true,
  }),
);

app.use(express.json()); //capturar o body

app.get('/', (req, res) => {
  res.render('home');
});

app.get('/register', (req, res) => {
  res.render('register');
});

app.post('/stories/insertstory', (req, res) => {
  const title = req.body.title;
  const author = req.body.author;
  const image = req.body.image;
  const content = req.body.content;

  const sql = 'INSERT INTO story (??, ??, ??, ??) VALUES (?,?,?,?)';
  const data = [
    'title',
    'author',
    'image',
    'content',
    title,
    author,
    image,
    content,
  ];

  pool.query(sql, data, (err) => {
    if (err) {
      console.log(err);
      return;
    }
    res.redirect('/stories');
  });
});

app.get('/stories/:id', (req, res) => {
  const id = req.params.id;
  const sql = 'SELECT * FROM story WHERE ??=?';
  const data = ['id', id];
  pool.query(sql, data, (err, data) => {
    if (err) {
      console.log(err);
      return;
    }

    const story = data[0];

    res.render('story', { story });
  });
});

app.get('/stories/edit/:id', (req, res) => {
  const id = req.params.id;
  const sql = 'SELECT * FROM story WHERE ??=?';
  const data = ['id', id];

  pool.query(sql, data, (err, data) => {
    if (err) {
      console.log(err);
      return;
    }
    const story = data[0];
    res.render('editstory', { story });
  });
});

app.get('/stories', (req, res) => {
  const sql = 'SELECT * FROM story';

  pool.query(sql, (err, data) => {
    if (err) {
      console.log(err);
      return;
    }

    const stories = data;
    res.render('stories', { stories });
  });
});

app.post('/stories/updatestory', (req, res) => {
  const id = req.body.id;
  const title = req.body.title;
  const author = req.body.author;
  const image = req.body.image;
  const content = req.body.content;

  const sql = 'UPDATE story SET ??=?, ??=?, ??=?, ??=? WHERE ??=?';
  const data = [
    'title',
    title,
    'author',
    author,
    'image',
    image,
    'content',
    content,
    'id',
    id,
  ];

  pool.query(sql, data, (err) => {
    if (err) {
      console.log(err);
      return;
    }
    res.redirect('/stories');
  });
});

app.post('/stories/remove/:id', (req, res) => {
  const id = req.params.id;
  const sql = 'DELETE  FROM story WHERE ??=?';
  const data = ['id', id];

  pool.query(sql, data, (err) => {
    if (err) {
      console.log(err);
    }
    res.redirect('/stories');
  });
});

app.listen(process.env.PORT, () => {
  console.log(`Aplicação em execução na porta ${process.env.PORT}`);
});
