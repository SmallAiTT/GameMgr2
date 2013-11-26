var ShedSel = {
	mate : [{
		type : "Guan", value : "RDC", text : "热镀锌"
	}, {
		type : "Guan", value : "PT", text : "普通"
	}, {
		type : "Ban", value : "LZB", text : "冷扎板"
	}, {
		type : "GangJin", value : "Q235", text : "Q235"
	}, {
		type : "Ban", value : "0.5DC", text : "0.5镀锌"
	}, {
		type : "KaHuang", value : "浸塑", text : "浸塑"
	}, {
		type : "LouDou", value : "PVC", text : "PVC"
	}, {
		type : "Ban", value : "1.0DC", text : "1.0镀锌"
	}, {
		type : "Jia", value : "PE", text : "PE"
	}, {
		type : "", value : "4.8Ji", text : "4.8级"
	}, {
		type : "", value : "PTM", text : "普通膜"
	}],
	
	isBase : [{
		value : "T", text : "是"
	},{
		value : "F", text : "否"
	}],

	projState : [{
		value : "000", text : "未计算"
	},{
		value : "001", text : "已完成"
	}],
	
	shedState : [{
		value : "000", text : "未计算"
	},{
		value : "001", text : "已完成"
	},{
		value : "999", text : "失败"
	}]
};

var ShedFmt = {
		isBase : function(value){return $tt.fmtSel(value, ShedSel.isBase);},
		mate : function(value){return $tt.fmtSel(value, ShedSel.mate);},
	    compImg : function(value){
	    	if($tt.isEmpty(value)) return "";
	        var src = "img/shed/comp/" + value;
	        return "<img src='" + src + "'/>";
	    },
	    projState : function(value){return $tt.fmtSel(value, ShedSel.projState);},
	    shedState : function(value){return $tt.fmtSel(value, ShedSel.shedState);},
	    xls4Proj : function(value, row){
	    	return '<a href="shed/CompResultCtrl/downloadXls?projId=' + row.id + '">下载</a>';
	    },
};
