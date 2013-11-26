var CompMgr = {
		/**
		 * Desc:检查是否可以显示子零列表。
		 * @param {TReq} req
		 */
		checkChildren : function(req){
			var data = req.data;
			if(data.isBase != "F") return $tt.alertWarn("请选择非基础零件！");
			data.isBase = null;//避免对查询照成影响
			return true;
		},

		/**
		 * Desc:检查子零件。
		 * @param {TReq} req
		 */
		compChildFilter : function(req){
			data = req.data;
			data.parentId = data.parentId || req.preReq.data.parentId;
			data.oldId = data.id;
			return true;
		},
		/**
		 * Desc:根据id初始化零件信息。
		 * @param {TReq} req
		 */
		initCompInfo : function(req){
			data = req.data;
			var compInfo = $tt.callAjaxSync("shed/CompCtrl/select", {id : data.id});
			if(compInfo == null) return false;
			req.data = compInfo;
			return true;
		}
};