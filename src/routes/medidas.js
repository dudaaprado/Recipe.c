var express = require("express");
var router = express.Router();

var medidaController = require("../controllers/medidaController");
// esta aqui veio de obter dados graficos
router.get("/ultimas/:idAquario", function (req, res) {
    // duda funções com parametros req requisição res resposta
    medidaController.buscarUltimasMedidas(req, res);
});

router.get("/tempo-real/:idAquario", function (req, res) {
    medidaController.buscarMedidasEmTempoReal(req, res);
})

module.exports = router;