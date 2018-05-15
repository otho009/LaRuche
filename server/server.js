/*IMPORTING DEPENDENCIES*/
const express = require("express");
const bodyParser = require("body-parser");
// const logger = require("morgan");
// const users_module = require("./users");
// const Client = users_module.Client;
// const Fournisseur = users_module.Fournisseur;

/*CREATING EXPRESS APP & EXPRESS ROUTER*/
const app = express();
const router = express.Router();

/*SETTING THE PORT TO A PREDETERMINED PORT NUMBER OR 3030*/
const API_PORT = 3030;

/*CONNECTING TO THE DATABASE*/
// const mysql = require("mysql");
// const mysql_user = {
//   login: "root",
//   password: "nyehenyehe123"
// };
//
// const connection = mysql.createConnection({
//   host: "localhost",
//   user: mysql_user.login,
//   password: mysql_user.password,
//   database: "LARUCHE"
// });
//
// connection.connect(err =>{
//   if (err)
//     throw new Error(`Failed to connect to Database : ${err.message}`);
//   console.log("Connected successfully to Database");
// });

/*MIDDLEWARE*/
const logger = (req, res, next) => {
console.log(`${req.method} request for '${req.url}'`);
next();
};

const sayHello = (req, res) => res.status(200).send("<h1>Hello World</h1>");
app.use(logger);
app.use(sayHello);


/*TESTING LMD QUERIES OVER THE DATABASE*/
// connection.query('SELECT * FROM Fournisseur', function(err, rows){
//   if (err)
//     throw err;
//
//   console.log('Data received from db :\n');
//   g = rows;
//   console.log(rows);
// });

app.listen(API_PORT, () => console.log(`Server started listening on port ${API_PORT}`));
