<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<table class="tt-tbl" rownumbers="true" singleSelect="true" pagination="true"
	titles="q:大棚列表"
	btnExps="
		c:jq->$[dlg]?projId=_pre.projId&state='000';u|r:jq->$[dlg]?*;d:act->shed/ShedCtrl/delete?id;
		test:act->shed/ShedCtrl/test?*;q4Shed:jq->$[crListDlg]?state&shedId=id;
		"
	btnTxts="test:测算;q4Shed:零件清单"
	btnIcons="test:icon-tip"
	btnOpers="q:c,u,r,d,test,q4Shed;view:r,q4Shed"
	btnFilters="r|c|u:shedFilter;"
	validCusts="q4Shed:ShedMgr.valid4ShowComp"
	acts="q:shed/ShedCtrl/queryVo4Proj"
	
	qryDatas="q:name&schemaName&projId"
	qryCndExps="q:name=like&schemaName=like"
	qryParaExps="q:projId"
	qryDefSorts="q:name,schemaName"
	>
     <thead>
       <tr>
         <th field="id" width="100" hidden="true">大棚ID</th>
         <th field="projId" width="100" hidden="true">项目ID</th>
         <th field="schemaId" width="100" hidden="true">方案ID</th>
         <th field="name" width="100" sortable="true">大棚名称</th>
         <th field="schemaName" width="100" sortable="true">方案名称</th>
         <th field="lengths" width="100">棚长</th>
         <th field="topScrolls" width="100">顶卷膜器</th>
         <th field="edgeScrolls" width="100">侧卷膜器</th>
         <th field="frontScrolls" width="100">前卷膜器</th>
         <th field="num" width="100">棚数量</th>
         <th field="state" width="100" formatter="ShedFmt.shedState">状态</th>
         <th field="remark" width="100">备注</th>
       </tr>
     </thead>
</table>