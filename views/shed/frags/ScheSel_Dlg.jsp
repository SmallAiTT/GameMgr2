<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<div class="tt-dlg" data-options="width : 800, height : 450"
	titles="sel:方案选择"
	attrs="id:$[selScheDlg]"
	btnExps="sel:sel->?*">
	<div class="tt-tmp" args="*" data-options="height : 250" lnkOpers="sel">
		<jsp:include page="./Sche_Qry.jsp"></jsp:include>
	</div>
</div>   
