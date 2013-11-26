<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<table class="tt-tbl" rownumbers="true" singleSelect="true" pagination="true"
	titles="q4Shed:大棚零件列表;q4Proj:项目零件列表"
	acts="
		q4Shed:shed/CompResultCtrl/queryVo4Shed;q4Proj:shed/CompResultCtrl/queryVo4Proj;
		"
	qryDatas="
		q4Shed:compCode&compName&isBase&shedId&type='000';
		q4Proj:compCode&compName&isBase&projId&type='001'
		"
	qryCndExps="q4Shed|q4Proj:compCode=like+&compName=like&type"
	qryParaExps="q4Shed:shedId;q4Proj:projId"
	qryDefSorts="*:compCode,compName"
	>
     <thead>
       <tr>
         <th field="id" width="100" hidden="true">ID</th>
         <th field="compCode" width="100" sortable="true">零件代码</th>
         <th field="compName" width="100" sortable="true">零件名称</th>
         <th field="isBase" width="100" formatter="ShedFmt.isBase">是否是基础零件</th>
         <th field="img" width="100" formatter="ShedFmt.compImg">零件图示</th>
         <th field="spec" width="100">规格</th>
         <th field="mates" width="100" formatter="ShedFmt.mate">材质</th>
         <th field="value" width="100">结果</th>
         <th field="compUnit" width="100">单位</th>
         <th field="remark" width="100">备注</th>
       </tr>
     </thead>
</table>