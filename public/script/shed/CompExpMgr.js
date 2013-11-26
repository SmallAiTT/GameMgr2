var CompExpMgr = {
		/**
		 * Desc:数据处理过滤。
		 * @param {TReq} req
		 * @returns
		 */
		ceFilter: function(req){
			data = req.data;
			if(req.oper == "u" || req.oper == "r") {
				var comp = $tt.callAjaxSync("shed/CompCtrl/select", {id : data.compId});
				if(comp == null) return $tt.alertErr("零件信息获取失败！");
				data.compCode = comp.code;
				data.compName = comp.name;
				var exp = $tt.callAjaxSync("shed/ExpCtrl/select", {id : data.expId});
				if(exp == null) return $tt.alertErr("公式获取失败！");
				data.expName = exp.name;
			}
			data.schemaId = req.preReq.data.schemaId;
			return true;
		}
};