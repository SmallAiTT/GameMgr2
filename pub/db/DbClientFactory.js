module.exports = function(app){
    var dbCfg = require("../../cfg/db");
    var DbClient = require("./DbClient");
    for (var i = 0, li = dbCfg.length; i < li; i++) {
        var itemi = dbCfg[i];
        app[itemi.name] = new DbClient(app, itemi);
    }
};