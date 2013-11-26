<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<table class="tt-tbl" rownumbers="true" singleSelect="true" pagination="true"
	btnExps="
		c:jq->$[compChildDlg];u|r:jq->$[compChildDlg]?*;d:act->shed/CompChildCtrl/delete
		"
	validCusts="r|c|u|d:CompMgr.compChildFilter;"
	acts="q:shed/CompChildCtrl/query"
	
	qryDatas="q:code&name&isBase&parentId"
	qryCndExps="q:code=like+&name=like&isBase"
	qryParaExps="q:parentId" 
	qryDefSorts="*:code,name"
	>
     <thead>
       <tr>
         <th field="parentId" width="100" hidden="true">父零件ID</th>
         <th field="id" width="100" hidden="true">零件ID</th>
         <th field="code" width="100">零件编码</th>
         <th field="name" width="100">零件名称</th>
         <th field="count" width="100">数量</th>
         <th field="isBase" width="100" formatter="ShedFmt.isBase">是否是基础零件</th>
         <th field="img" width="100">零件图示</th>
         <th field="spec" width="100">规格</th>
         <th field="mates" width="100">材质</th>
         <th field="unit" width="100">单位</th>
         <th field="remark" width="100">备注</th>
       </tr>
     </thead>
</table>