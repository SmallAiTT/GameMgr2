var fs = require("fs");
var path = require("path");

module.exports = function(app){
    app.get("/demo/*", function(req, res){
        res.render(req.url.substring(1), {});
    });


    var files = fs.readdirSync(__dirname);
    for(var i = 0, li = files.length; i < li; i++){
        var file = files[i];
        if(file == "index.js") continue;
        if(fs.statSync(path.join(__dirname, file)).isDirectory()) continue;
        var ctrlName = path.basename(file, ".js");
        var ctrl = require("./" + ctrlName);
        ctrl(app, "/demo/" + ctrlName + "/");
    }
}
