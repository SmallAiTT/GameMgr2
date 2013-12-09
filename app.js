/**
 * Module dependencies.
 */
Date.prototype.format = function(format)
{
    var o = {
        "M+" : this.getMonth()+1, //month
        "d+" : this.getDate(),    //day
        "h+" : this.getHours(),   //hour
        "m+" : this.getMinutes(), //minute
        "s+" : this.getSeconds(), //second
        "q+" : Math.floor((this.getMonth()+3)/3),  //quarter
        "S" : this.getMilliseconds() //millisecond
    }
    if(/(y+)/.test(format)) format=format.replace(RegExp.$1, (this.getFullYear()+"").substr(4 - RegExp.$1.length));
    for(var k in o){
        if(new RegExp("("+ k +")").test(format))
            format = format.replace(RegExp.$1, RegExp.$1.length==1 ? o[k] : ("00"+ o[k]).substr((""+ o[k]).length));
    }
    return format;
}
var express = require('express');
var http = require('http');
var path = require('path');
var flash = require('connect-flash');

var app = express();

// all environments
app.set('port', process.env.PORT || 3000);
app.set('views', path.join(__dirname, 'views'));
app.set('view engine', 'ejs');
app.set('json replacer', function(key, value){
    if(typeof value == "string"){
        var exp = /^(\d{4})-(\d{2})-(\d{2})T(\d{2}):(\d{2}):(\d{2}(?:\.\d*)?)Z$/
        var dArr = exp.exec(value);
        if(dArr){
            var nd = new Date(Date.UTC(dArr[1], dArr[2] - 1, dArr[3], dArr[4], dArr[5], dArr[6]));
            return nd.format("yyyy-MM-dd hh:mm:ss");
        }
    }
    return value;
});
app.use(express.favicon());
app.use(express.logger('dev'));
app.use(express.json());
app.use(express.urlencoded());
app.use(express.methodOverride());

app.use(express.bodyParser());

app.use(express.cookieParser('keyboard cat'));
app.use(express.session({ cookie: { maxAge: 60000 }}));
app.use(flash());

//app.use(express.cookieParser());
//app.use(express.session({ secret: "keyboard cat", store: new RedisStore }));
//app.use(flash());

app.use(app.router);
app.use(express.static(path.join(__dirname, 'public')));

// development only
if ('development' == app.get('env')) {
    app.use(express.errorHandler());
}

require("./app/boot")(app);

http.createServer(app).listen(app.get('port'), function(){
    console.log('Express server listening on port ' + app.get('port'));
});