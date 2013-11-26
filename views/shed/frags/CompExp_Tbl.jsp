<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<table class="tt-tbl" rownumbers="true" singleSelect="true" pagination="true"
	btnExps="
		c:jq->$[dlg];u|r:jq->$[dlg]?*;d:act->shed/CompExpCtrl/delete?id;
		"
	validCusts="r|c|u:CompExpMgr.ceFilter"
	acts="q:shed/CompExpCtrl/query4Vo"
	
	qryDatas="q:schemaId&name&compName&expName"
	qryCndExps="q:name=like&compName=like&expName=like"
	qryParaExps="q:schemaId"
	qryDefSorts="*:seq,name,compName,expName"
	>
     <thead>
       <tr>
         <th field="id" width="100" hidden="true">ID</th>
         <th field="schemaId" width="100" hidden="true">方案ID</th>
         <th field="compId" width="100" hidden="true">零件ID</th>
         <th field="expId" width="100" hidden="true">公式ID</th>
         <th field="name" width="100" sortable="true">零件公式名称</th>
         <th field="compName" width="100" sortable="true">零件名称</th>
         <th field="expName" width="100" sortable="true">公式名称</th>
         <th field="term" width="100">term</th>
         <th field="seq" width="100" sortable="true">计算顺序</th>
         <th field="calcArgs" width="100">参数</th>
         <th field="remark" width="100">备注</th>
       </tr>
     </thead>
</table>