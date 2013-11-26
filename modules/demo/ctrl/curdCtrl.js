var ttUtils = require("tt-utils");
var Curd = require("../do/Curd");
var ttData = require("tt-data");
var curdUrl = ttData.DEMO_CTRL.curd;

module.exports = function(app, ctrlName){
    app.post(curdUrl.create, function(req, res){
        var curd = ttUtils.transReq(req, Curd);
        return ttMsg.doInfo(res, curd);
        app.gmClient.insert("insert into demo_curd set ? ",
            {code : 1, name : "Name1", sel : "T", date : new Date()},
            function(err, result){
                if(err) return ttMsg.doErr(res, err);
                ttMsg.doInfo(res);
        });
    });
    app.post(curdUrl.update, function(req, res){

    });
    app.post(curdUrl.read, function(req, res){

    });
    app.post(curdUrl.del, function(req, res){

    });
    app.post(curdUrl.list, function(req, res){
        res.json([{
            id : 1, code : 1, name : "Name1", sel : [], date : "2011/11/11"
        }]);
    });

};
