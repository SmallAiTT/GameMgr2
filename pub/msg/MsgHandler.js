var INFO = "info";
var WARN = "warning";
var ERR = "err";
var QUEST = "quest";

function MsgVo(type, msg){
    this.msgType = type;
    this.msg = msg;
}

function doInfo(res, msg){
    res.json(new MsgVo(INFO, msg || "Success!"));
};

function doWarn(res, msg){
    res.json(new MsgVo(WARN, msg || "Warning!"));
};

function doErr(res, err){
    res.json(new MsgVo(ERR, err));
};

function doQuest(res, msg){
    res.json(new MsgVo(QUEST, msg));
};

module.exports = function(app){
    app.doInfo = doInfo;
    app.doWarn = doWarn;
    app.doErr = doErr;
    app.doQuest = doQuest;
};