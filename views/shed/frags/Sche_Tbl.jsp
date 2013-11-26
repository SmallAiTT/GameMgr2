<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<table class="tt-tbl" rownumbers="true" singleSelect="true" pagination="true"
	titles="q:方案列表"
	btnExps="
		c:jq->$[dlg];u|r:jq->$[dlg]?*;d:act->shed/SchemaCtrl/delete?id;
		ceList:jq->$[ceListDlg]?schemaId=id;
		"
	btnTxts="ceList:零件公式列表"
	btnOpers="q:c,u,r,d,ceList"
	acts="q|sel:shed/SchemaCtrl/query"
	
	qryDatas="q|sel:name"
	qryCndExps="q|sel:name=like"
	>
     <thead>
       <tr>
         <th field="id" width="100" hidden="true">方案ID</th>
         <th field="name" width="100">方案名称</th>
         <th field="remark" width="300">备注</th>
       </tr>
     </thead>
</table>