var _poolModule = require('generic-pool');

/*
 * Create mysql connection pool.
 */
var createMysqlPool = function(app, cnnInfo) {
	return _poolModule.Pool({
		name: cnnInfo.name || 'mysql',
		create: function(callback) {
            var mysql = require(cnnInfo.dbModule || 'mysql');
			var client = mysql.createConnection({
				host: cnnInfo.host,
				user: cnnInfo.user,
				password: cnnInfo.password,
				database: cnnInfo.database,
                debug : cnnInfo.debug || false
			});
			callback(null, client);
		},
		destroy: function(client) {
			client.destroy();
		},
		max: 10,
		idleTimeoutMillis : 30000,
		log : false
	});
};

exports.createMysqlPool = createMysqlPool;
