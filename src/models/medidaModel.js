var database = require("../database/config");

function buscarUltimasMedidas(idAquario, limite_linhas) {

    instrucaoSql = ''
 // buscando as metricas do analytcs dos graficos
    if (process.env.AMBIENTE_PROCESSO == "desenvolvimento") {
        instrucaoSql = `select (select count(ingredientes) from receitas  where ingredientes like '%alho%') as 'alho',
        (select count(ingredientes) from receitas where ingredientes like '%azeite%') as 'azeite',
        (select count(ingredientes)  from receitas where ingredientes like '%cebola%')as 'cebola',
        (select count(ingredientes) from receitas where ingredientes like '%sal%') as 'sal',
        (select count(ingredientes)  from receitas where ingredientes like '%tomate%') as 'tomate' from receitas limit 1`;
    } else {
        console.log("\nO AMBIENTE (produção OU desenvolvimento) NÃO FOI DEFINIDO EM app.js\n");
        return
    }

    console.log("Executando a instrução SQL: \n" + instrucaoSql);
    return database.executar(instrucaoSql);
}

function buscarMedidasEmTempoReal() {

    instrucaoSql = ''

    if (process.env.AMBIENTE_PROCESSO == "producao") {
        instrucaoSql = `select top 1
        dht11_temperatura as temperatura, 
        dht11_umidade as umidade,  
                        CONVERT(varchar, momento, 108) as momento_grafico, 
                        fk_aquario 
                        from medida where fk_aquario = ${idAquario} 
                    order by id desc`;

    } else if (process.env.AMBIENTE_PROCESSO == "desenvolvimento") {
        instrucaoSql = `select 
        dht11_temperatura as temperatura, 
        dht11_umidade as umidade,
                        DATE_FORMAT(momento,'%H:%i:%s') as momento_grafico, 
                        fk_aquario 
                        from medida where fk_aquario = ${idAquario} 
                    order by id desc limit 1`;
    } else {
        alert('não temos nenhuma receita com esse ingrediente')

        console.log("else da pesquisa não esta funcionando");
        return
    }

    console.log("Executando a instrução SQL: \n" + instrucaoSql);
    return database.executar(instrucaoSql);
    // functionsomardoisnumeros (valorA,valorB){return valorA + valorB}
}
function buscarReceita (body) {
    instrucaoSql = ''
 // buscando as receitas
    if (process.env.AMBIENTE_PROCESSO == "desenvolvimento") {
        instrucaoSql = `select nome,ingredientes,descrição from receitas join tipo on fk_tipo_rec=idtipo where fk_tipo_rec= ${body.fkTipoUser} and ingredientes like '%${body.pesquisa}%';`;

    } else {
        alert(`Não encontramos nenhuma receita`)
        console.log("\nO AMBIENTE (produção OU desenvolvimento) NÃO FOI DEFINIDO EM app.js\n");
        return
    }

    console.log("Executando a instrução SQL: \n" + instrucaoSql);
    return database.executar(instrucaoSql);
}


module.exports = {
    buscarUltimasMedidas,
    buscarMedidasEmTempoReal,
    buscarReceita
}
