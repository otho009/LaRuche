const users_module = require("./users");
const Client = users_module.Client;
const Fournisseur = users_module.Fournisseur;
const express = require("express");
const app = express();
app.use(express.json());
const port = process.env.PORT || 3030;

const mysql = require("mysql");
const connection = mysql.createConnection({
  host: "localhost",
  user: "root",
  password: "nyehenyehe123",
  database: "LARUCHE"
});

connection.connect(err =>{
  if (err)
    throw new Error(`Failed to connect to Database : ${err.message}`);
  console.log("Connected successfully to Database");
});

// var http = require("http");
// var g;
// const mysql = require("mysql");
//
// /*CONFIGURING THE DATABASE CONNECTION*/
// const connection = mysql.createConnection({
//   host: "localhost",
//   user: "root",
//   password: "nyehenyehe123",
//   database: "LARUCHE"
// });
//
// /*TESTING DATABASE CONNECTION*/
// connection.connect(function(err){
//   if (err)
//     throw err;
//   console.log("Connected");
// });
//
// /*TESTING LMD QUERIES OVER THE DATABASE*/
// connection.query('SELECT * FROM Fournisseur', function(err, rows){
//   if (err)
//     throw err;
//
//   console.log('Data received from db :\n');
//   g = rows;
//   console.log(rows);
// });
//
// // /*TESTING LDD QUERIES OVER THE DATABASE*/
// connection.query('INSERT INTO Fournisseur(prenom, nom, email, password, date_naissance, tel_portable, num_rue, nom_rue, ville, code_postal) VALUES("Jacques", "Durand", "nyehe@gmail.com", "shtabro", "1978-06-24", 0615487923, 6, "Cliché", "Montpellier", 34070)', function(err, res){
//   if (err)
//     throw err;
//   g.push(res);
//   console.log("last inserted ID : " + res.insertId);
// });
//
// http.createServer(function(req,res){
//   res.write("Hello world\n"+g[0].email);
//   res.end();
// }).listen(8080);
