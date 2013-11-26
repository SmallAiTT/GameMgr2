<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<table class="tt-tbl" rownumbers="true" singleSelect="true" pagination="true"
	titles="q:零件列表"
	btnExps="
		c:jq->$[dlg];u|r:jq->$[dlg]?*;
		d:act->shed/CompCtrl/delete?code;children:jq->$[childrenDlg]?isBase&parentId=id
		"
	btnTxts="children:子零件;"
	btnOpers="q:c,u,r,d,children;"
	validCusts="children:CompMgr.checkChildren"
	acts="q|sel:shed/CompCtrl/query"
	
	qryDatas="q|sel:code&name&isBase"
	qryCndExps="q|sel:code=like+&name=like&isBase"
	qryDefSorts="*:code,name"
	>
     <thead>
       <tr>
         <th field="id" width="100" hidden="true">零件ID</th>
         <th field="code" width="100" sortable="true">零件代码</th>
         <th field="name" width="100" sortable="true">零件名称</th>
         <th field="isBase" width="100" formatter="ShedFmt.isBase">是否是基础零件</th>
         <th field="img" width="100" formatter="ShedFmt.compImg">零件图示</th>
         <th field="spec" width="100">规格</th>
         <th field="mates" width="100" formatter="ShedFmt.mate">材质</th>
         <th field="unit" width="100">单位</th>
         <th field="remark" width="100">备注</th>
       </tr>
     </thead>
</table>