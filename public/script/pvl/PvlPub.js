var PvlSel = {
		pvlType : [{
			value : "menu", text : "菜单"
		},{
			value : "url", text : "URL"
		},{
			value : "btn", text : "按键"
		}],
		module : [{
			value : "GAME", text : "权限模块"
		},{
			value : "SHED", text : "大棚模块"
		},{
			value : "MODULE", text : "DEMO模块"
		}]
};

var PvlFmt = {
		pvlType : function(value){return $tt.fmtSel(value, PvlSel.pvlType);},
		module : function(value){return $tt.fmtSel(value, PvlSel.module);},
};
