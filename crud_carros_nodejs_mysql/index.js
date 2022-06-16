const mysql = require("mysql");
const restify = require("restify");
const corsMiddleware = require("restify-cors-middleware");
const cors = corsMiddleware({
  origins: ["*"],
  allowHeaders: ["Authorization"],
  exposeHeaders: ["Authorization"]
});

var con = mysql.createConnection({
  host: "localhost",
  user: "root",
  password: "1234"
});

const server = restify.createServer({
  name: "crud-carros-server",
  version: "1.0.0"
});

server.use(restify.plugins.bodyParser({ mapParams: true }));
server.pre(cors.preflight); // Precisa usar restify 7.x.x + restify-cors-middleware para ser compatível com cors preflight.
server.use(cors.actual);

server.get("/carros", function (req, res, next) {
  con.query("SELECT * FROM crud_carros.carros", function (err, result, fields) {
    if (err) throw err;
    console.log(result);
    res.send(result);
  });
});

server.get("/carros/:id", function (req, res, next) {
  var sql = "SELECT * FROM crud_carros.carros WHERE id = ?";
  var id = req.params.id;
  con.query(sql, id, function (err, result, fields) {
    if (err) throw err;
    console.log(result);
    res.send(result[0]); // Pega apenas o primeiro objeto, para não retornar um array
  });
});

server.post("/carros", function (req, res, next) {
  var carro = req.body;
  var sql = `INSERT INTO crud_carros.carros (placa, modelo, marca, cor, ano, ativo) VALUES ('${carro.placa}', '${carro.modelo}', '${carro.marca}', '${carro.cor}', ${carro.ano}, ${carro.ativo})`;
  
  console.dir(req.body);
  console.log(sql);

  con.query(sql, function (err, result) {
    if (err) throw err;
    console.log(result);
    res.send("Linhas Inseridas: " + result.affectedRows);
  });
});

server.put("/carros", function (req, res, next) {
  var carro = req.body;
  var sql = `UPDATE crud_carros.carros
              SET placa = '${carro.placa}',
                  modelo = '${carro.modelo}',
                  marca = '${carro.marca}',
                  cor = '${carro.cor}',
                  ano = ${carro.ano},
                  ativo = ${carro.ativo}
              WHERE id = ${carro.id}`;

  console.dir(req.body);
  console.log(sql);

  con.query(sql, function (err, result) {
    if (err) throw err;
    console.log(result);
    res.send("Linhas Alteradas: " + result.affectedRows);
  });
});

server.del("/carros/:id", function (req, res, next) {
  var sql = "DELETE FROM crud_carros.carros WHERE id = ?";
  var id = req.params.id;
  con.query(sql, id, function (err, result, fields) {
    if (err) throw err;
    console.log(result);
    res.send("Linhas deletadas: " + result.affectedRows);
  });
});

server.listen(8080, function () {
  console.log("%s listening at %s", server.name, server.url);
});

con.connect(function(err) {
  if (err) throw err;
  console.log("Connected!");
});