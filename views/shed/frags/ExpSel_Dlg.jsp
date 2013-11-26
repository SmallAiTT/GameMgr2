<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<div class="tt-dlg" data-options="width : 800"
	titles="sel:公式选择"
	attrs="id:$[selExpDlg]"
	btnExps="sel:sel->?*">
	<div class="tt-tmp" args="defOper='sel'" lnkOpers="sel">
		<jsp:include page="./Exp_Tbl.jsp"></jsp:include>
	</div>
</div>