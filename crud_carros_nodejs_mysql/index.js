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

server.use(
  function crossOrigin(req,res,next){
      res.header("Access-Control-Allow-Origin", "*");
      res.header("Access-Control-Allow-Headers", "X-Requested-With");
      return next();
    }
);

server.get('/carros', function (req, res, next) {
  res.send({"resposta": "conteúdo"});
});

server.listen(8080, function () {
  console.log('%s listening at %s', server.name, server.url);
});

con.connect(function(err) {
  if (err) throw err;
  console.log("Connected!");
});