<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<table class="tt-tbl" rownumbers="true" singleSelect="true" pagination="true"
	titles="q:项目列表"
	btnExps="
		c:jq->$[dlg]?state='000';u|r:jq->$[dlg]?*;d:act->shed/ProjCtrl/delete?id;
		sheds:jq->$[shedListDlg]?projId=id;q4Proj:jq->$[crListDlg]?projId=id;
		finish:act->shed/ProjCtrl/finish?*;
		download:actSync->shed/CompResultCtrl/downloadXls
		"
	btnChgs="sheds:list;"
	btnTxts="sheds:大棚列表;finish:完成;q4Proj:零件清单;download:下载"
	btnIcons="finish:icon-ok"
	validConfirms="finish:完成之后将无法修改项目信息，是否继续？"
	btnOpers="q:c,u,r,d,sheds,q4Proj,finish,download"
	acts="q:shed/ProjCtrl/query"
	
	qryDatas="q:name&state"
	qryCndExps="q:name=like&state"
	>
     <thead>
       <tr>
         <th field="id" width="100" hidden="true">项目ID</th>
         <th field="name" width="100">项目名称</th>
         <th field="state" width="100" formatter="ShedFmt.projState">状态</th>
         <th field="remark" width="200">备注</th>
         <th field="xls" width="100" formatter="ShedFmt.xls4Proj">下载零件清单</th>
       </tr>
     </thead>
</table>