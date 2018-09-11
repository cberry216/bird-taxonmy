// Import the mysql module
const mysql = require("mysql");

// Configure connection
var connection = mysql.createConnection({
  host: "localhost",
  user: "root",
  pass: "password",
  database: "taxonomy"
});

connection.connect();

module.exports = { connection };
