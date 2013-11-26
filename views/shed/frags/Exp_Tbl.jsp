<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<table class="tt-tbl" rownumbers="true" singleSelect="true" pagination="true"
	titles="q:公式列表"
	btnExps="
		c:jq->$[dlg];u|r:jq->$[dlg]?*;d:act->shed/ExpCtrl/delete?id;test:jq->$[dlg]?*
		"
	btnTxts="test:测试"
	btnIcons="test:icon-tip"
	btnOpers="q:c,u,r,d,test"
	acts="q|sel:shed/ExpCtrl/query"
	
	qryDatas="q|sel:name"
	qryCndExps="q|sel:name=like"
	>
     <thead>
        <tr>
          <th field="id" width="100" hidden="true">公式ID</th>
          <th field="name" width="100">公式名称</th>
          <th field="exp" width="400">公式内容</th>
          <th field="remark" width="100">备注</th>
        </tr>
      </thead>
</table>