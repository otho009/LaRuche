const users_module = require("./users");
const Client = users_module.Client;
const Fournisseur = users_module.Fournisseur;
const express = require("express");
const app = express();
const port = process.env.PORT || 3030;

app.use(express.json());

const mysql = require("mysql");
const mysql_user = {
  login: "courcircuit",
  password: "nyehenyehe123"
};

const connection = mysql.createConnection({
  host: "localhost",
  user: mysql_user.login,
  password: mysql_user.password,
  database: "LARUCHE"
});

connection.connect(err =>{
  if (err)
    throw new Error(`Failed to connect to Database : ${err.message}`);
  console.log("Connected successfully to Database");
});


/*TESTING LMD QUERIES OVER THE DATABASE*/
connection.query('SELECT * FROM Fournisseur', function(err, rows){
  if (err)
    throw err;

  console.log('Data received from db :\n');
  g = rows;
  console.log(rows);
});

app.listen(3000, () => console.log(`Server started listening on port ${port}`));
