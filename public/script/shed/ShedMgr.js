var ShedMgr = {
	/**
	 * Desc:验证是否可以打开零件清单窗口。
	 * @param {TReq} req
	 * @returns
	 */
	valid4ShowComp : function(req){
		if(req.data.state == "001") return true;
		return $tt.alertWarn("大棚未测算，请先进行测算！");
	},
	/**
	 * Desc:校验大棚信息是否填写合法。
	 * @param {TReq} req
	 */
	checkShed : function(req){
		var jqData = req.jqData;
		var lengths = jqData.find("[name='lengths']").val();
		var topScrolls = jqData.find("[name='topScrolls']").val();
		var edgeScrolls = jqData.find("[name='edgeScrolls']").val();
		var frontScrolls = jqData.find("[name='frontScrolls']").val();
		if(!/^[0-9][0-9,]*$/.test(lengths)) return $tt.alertWarn("棚长输入不符合规范，请修改！格式为：“11,22,33”");
		if(!/^[0-2][0-2,]*$/.test(topScrolls)) return $tt.alertWarn("顶卷膜器输入不符合规范，请修改！格式为：“0,1,2”");
		if(!/^[0-9][0-9,]*$/.test(edgeScrolls)) return $tt.alertWarn("侧卷膜器输入不符合规范，请修改！格式为：“11,22,33”");
		if(!/^[0-9][0-9,]*$/.test(frontScrolls)) return $tt.alertWarn("前卷膜器输入不符合规范，请修改！格式为：“11,22,33”");
		if(lengths.split(",").length != topScrolls.split(",").length) return $tt.alertWarn("顶卷膜器数组长度必须与棚长数组长度保持一致！");
		return true;
	}
};
