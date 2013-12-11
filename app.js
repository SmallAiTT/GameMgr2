/**
 * Module dependencies.
 */
var express = require('express');
var http = require('http');
var path = require('path');
var flash = require('connect-flash');
var domain = require('domain');

var app = express();


// all environments
app.set('port', process.env.PORT || 3000);
app.set('views', path.join(__dirname, 'views'));
app.set('view engine', 'ejs');

//引入一个domain的中间件，将每一个请求都包裹在一个独立的domain中
//domain来处理异常
app.use(function (req,res, next) {
    var d = domain.create();
    //监听domain的错误事件
    d.on('error', function (err) {
        console.error(err);
        res.statusCode = 500;
        res.json({sucess:false, messag: '服务器异常'});
    });

    d.add(req);
    d.add(res);
    d.run(next);
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
process.on('uncaughtException', function (err) {
    console.log('Caught exception: ' + err);
});




http.createServer(app).listen(app.get('port'), function(err){
    console.log('Express server listening on port ' + app.get('port'));
});