var ScheMgr = {
	/**
	 * Desc:初始化方案信息。
	 * @param {TReq} req
	 */
	initSche : function(req){
		var sche = $tt.callAjaxSync("shed/SchemaCtrl/select", {id : req.data.schemaId});
		if(sche == null) return $tt.alertErr("大棚方案信息获取失败！");
		req.data = sche;
		return true;
	},
};
