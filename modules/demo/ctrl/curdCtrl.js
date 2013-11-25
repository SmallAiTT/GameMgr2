module.exports = function(app, ctrlName){

    var CTRL_C = ctrlName + "create";
    var CTRL_U = ctrlName + "update";
    var CTRL_R = ctrlName + "read";
    var CTRL_D = ctrlName + "del";
    var CTRL_L = ctrlName + "list";

    app.post(CTRL_C, function(req, res){
        return app.doInfo(res);
        app.gmClient.insert("insert into demo_curd set ? ",
            {code : 1, name : "Name1", sel : "T", date : new Date()},
            function(err, result){
                if(err) return app.doErr(res, err);
                app.doInfo(res);
        });
    });
    app.post(CTRL_U, function(req, res){

    });
    app.post(CTRL_R, function(req, res){

    });
    app.post(CTRL_D, function(req, res){

    });
    app.post(CTRL_L, function(req, res){
        res.json([{
            id : 1, code : 1, name : "Name1", sel : [], date : "2011/11/11"
        }]);
    });

};
