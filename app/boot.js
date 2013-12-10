
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

function jsonReplacer(key, value){
    if(typeof value == "string"){
        var exp = /^(\d{4})-(\d{2})-(\d{2})T(\d{2}):(\d{2}):(\d{2}(?:\.\d*)?)Z$/
        var dArr = exp.exec(value);
        if(dArr){
            var nd = new Date(Date.UTC(dArr[1], dArr[2] - 1, dArr[3], dArr[4], dArr[5], dArr[6]));
            return nd.format("yyyy-MM-dd hh:mm:ss");
        }
    }
    return value;
}

module.exports = function(app){
    app.set('json replacer', jsonReplacer);
    require("tt-route")(app);
}