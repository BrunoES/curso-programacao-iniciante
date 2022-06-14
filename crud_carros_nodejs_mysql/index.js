const mysql = require('mysql');
const restify = require('restify');

var con = mysql.createConnection({
  host: "localhost",
  user: "root",
  password: "1234"
});

const server = restify.createServer({
  name: 'crud-carros-server',
  version: '1.0.0'
});

server.use(restify.plugins.bodyParser({ mapParams: true }));
server.use(
  function crossOrigin(req,res,next){
      res.header("Access-Control-Allow-Origin", "*");
      res.header("Access-Control-Allow-Headers", "X-Requested-With");
      return next();
    }
);

server.get('/carros', function (req, res, next) {
  con.query("SELECT * FROM crud_carros.carros", function (err, result, fields) {
    if (err) throw err;
    console.log(result);
    res.send(result);
  });
});

server.get('/carros/:idCarro', function (req, res, next) {
  var sql = "SELECT * FROM crud_carros.carros WHERE id_carro = ?";
  var idCarro = req.params.idCarro;
  con.query(sql, idCarro, function (err, result, fields) {
    if (err) throw err;
    console.log(result);
    res.send(result[0]); // Pega apenas o primeiro objeto, para não retornar um array
  });
});

server.post('/carros', function (req, res, next) {
  var carro = req.body;
  var sql = `INSERT INTO crud_carros.carros (placa, nome_modelo, nome_marca, cor, ano_fabricacao, ativo) VALUES ('${carro.placa}', '${carro.nomeModelo}', '${carro.nomeMarca}', '${carro.cor}', ${carro.anoFabricacao}, ${carro.ativo})`;
  
  console.dir(req.body);
  console.log(sql);

  con.query(sql, function (err, result) {
    if (err) throw err;
    console.log(result);
    res.send('Linhas Inseridas: ' + result.affectedRows);
  });
});

server.put('/carros', function (req, res, next) {
  var carro = req.body;
  var sql = `UPDATE crud_carros.carros
              SET placa = '${carro.placa}',
                  nome_modelo = '${carro.nomeModelo}',
                  nome_marca = '${carro.nomeMarca}',
                  cor = '${carro.cor}',
                  ano_fabricacao = ${carro.anoFabricacao},
                  ativo = ${carro.ativo}
              WHERE id_carro = ${carro.idCarro}`;

  console.dir(req.body);
  console.log(sql);

  con.query(sql, function (err, result) {
    if (err) throw err;
    console.log(result);
    res.send('Linhas Alteradas: ' + result.affectedRows);
  });
});

server.del('/carros/:idCarro', function (req, res, next) {
  var sql = "DELETE FROM crud_carros.carros WHERE id_carro = ?";
  var idCarro = req.params.idCarro;
  con.query(sql, idCarro, function (err, result, fields) {
    if (err) throw err;
    console.log(result);
    res.send('Linhas deletadas: ' + result.affectedRows);
  });
});

server.listen(8080, function () {
  console.log('%s listening at %s', server.name, server.url);
});

con.connect(function(err) {
  if (err) throw err;
  console.log("Connected!");
});