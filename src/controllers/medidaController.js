var medidaModel = require("../models/medidaModel");

function buscarUltimasMedidas(req, res) {
    var idAquario = req.params.idAquario;
    // esse req e de requisição fizemos uma requisição no nosso back-end

    medidaModel.buscarUltimasMedidas(idAquario).then(function (resultado) {
        if (resultado.length > 0) {
            res.status(200).json(resultado);
        } else {
            res.status(204).send("Nenhum resultado encontrado!")
        }
    }).catch(function (erro) {
        console.log(erro);
        console.log("Houve um erro ao buscar as ultimas medidas.", erro.sqlMessage);
        res.status(500).json(erro.sqlMessage);
    });
}


function buscarMedidasEmTempoReal(req, res) {
    var idAquario = req.params.idAquario;

    console.log(`Recuperando medidas em tempo real`);

    medidaModel.buscarMedidasEmTempoReal(idAquario).then(function (resultado) {
        if (resultado.length > 0) {
            res.status(200).json(resultado);
        } else {
            res.status(204).send("Nenhum resultado encontrado!")
        }
    }).catch(function (erro) {
        console.log(erro);
        console.log("Houve um erro ao buscar as ultimas medidas.", erro.sqlMessage);
        res.status(500).json(erro.sqlMessage);
    });
}


function buscarReceitas(req, res) {
    // req vai conter as informações dos usuarios  . body e o corpo do req aonde esta o meu json 
    var body = req.body;

    medidaModel.buscarReceita(body).then(function (resultado) {
        res.status(200).json(resultado);

    }).catch(function (erro) {
        console.log(erro);
        console.log("erro em buscar ultimas receitas.", erro.sqlMessage);
        res.status(500).json(erro.sqlMessage);
    });
}


module.exports = {
    buscarUltimasMedidas,
    buscarMedidasEmTempoReal,
    buscarReceitas

}
