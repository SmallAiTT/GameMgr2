var ExpMgr = {

		/**
		 * Desc:根据id初始化零件信息。
		 * @param {TReq} req
		 */
		initExp : function(req){
			data = req.data;
			var compInfo = $tt.callAjaxSync("shed/ExpCtrl/select", {id : data.id});
			if(compInfo == null) return false;
			req.data = compInfo;
			return true;
		}
};