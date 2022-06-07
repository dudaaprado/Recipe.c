var express = require("express");
var router = express.Router();

var medidaController = require("../controllers/medidaController");
// graficos
router.get("/ultimas/:idAquario", function (req, res) {
   
    medidaController.buscarUltimasMedidas(req, res);
});

// Mudar aqui
router.get("/tempo-real/:idAquario", function (req, res) {
    medidaController.buscarMedidasEmTempoReal(req, res);
})

// Mudar aqui
router.get("/listarReceitas:ingredientes", function (req, res) {
    medidaController.buscarReceitas(req, res);
})

module.exports = router;