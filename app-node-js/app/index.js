const express = require('express');
const mysql = require('mysql2');
const path = require('path');

const app = express();
const port = 3000;

// Middleware
app.use(express.urlencoded({ extended: true }));
app.use(express.json());
app.use(express.static('public')); // Serve HTML/CSS/JS from /public

// DB connection
const connection = mysql.createConnection({
  host: 'mysql-service',
  user: 'root',
  password: 'password',
  database: 'usersdb'
});

connection.connect(err => {
  if (err) {
    console.error('DB connection failed:', err);
    process.exit(1);
  }
  console.log('Connected to MySQL DB');
});

// Root route: serve index.html
app.get('/', (req, res) => {
  res.sendFile(path.join(__dirname, 'public/index.html'));
});

// POST /users — add user
app.post('/users', (req, res) => {
  const { name, email } = req.body;
  if (!name || !email) return res.status(400).send('Missing fields');

  const query = 'INSERT INTO users (name, email) VALUES (?, ?)';
  connection.query(query, [name, email], (err) => {
    if (err) {
      console.error('Insert error:', err);
      return res.status(500).send('Error adding user');
    }
    res.send('User added successfully');
  });
});

// GET /users — retrieve all users
app.get('/users', (req, res) => {
  connection.query('SELECT * FROM users', (err, results) => {
    if (err) {
      console.error('Fetch error:', err);
      return res.status(500).send('Error retrieving users');
    }
    res.json(results);
  });
});

app.listen(port, () => {
  console.log(`App running on http://localhost:${port}`);
});

