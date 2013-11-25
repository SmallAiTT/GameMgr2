// mysql CRUD
module.exports = function(app, cnnInfo){
    var _pool;
    var NND = {};
    /*
     * Init sql connection pool
     * @param {Object} app The app for the server.
     */
    NND.init = function(app){
        _pool = require('./dbPool').createMysqlPool(app, cnnInfo);
    };

    /**
     * Excute sql statement
     * @param {String} sql Statement The sql need to excute.
     * @param {Object} args The args for the sql.
     * @param {fuction} cb Callback function.
     *
     */
    NND.query = function(sql, args, cb){
        _pool.acquire(function(err, client) {
            if (!!err) {
                console.error('[sqlqueryErr] '+err.stack);
                return;
            }
            client.query(sql, args, function(err, res) {
                _pool.release(client);
                cb(err, res);
            });
        });
    };

    /**
     * Close connection pool.
     */
    NND.shutdown = function(){
        _pool.destroyAllNow();
    };


    NND.init(app);
    this.insert = NND.query;
    this.update = NND.query;
    this.delete = NND.query;
    this.query = NND.query;

    /**
     * shutdown database
     */
    this.shutdown = function(app) {
        NND.shutdown(app);
    };

    this.destroy = function(){
        //TODO
    };
};


