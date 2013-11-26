var ProjMgr = {
	/**
	 * Desc:验证是否可以打开零件清单窗口。
	 * @param {TReq} req
	 * @returns
	 */
	valid4ShowComp : function(req){
		if(req.data.state == "001") return true;
		return $tt.alertWarn("项目未测算，请先进行测算！");
	}	
};
