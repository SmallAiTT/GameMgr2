<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<div class="tt-dlg" data-options="width : 800 , height : 450"
	titles="sel:零件选择"
	attrs="id:$[selCompDlg]"
	btnExps="sel:sel->?*">
	<div class="tt-tmp" args="*" lnkChgs="*:sel" data-options="height : 250" lnkOpers="sel">
		<jsp:include page="./Comp_Qry.jsp"></jsp:include>
	</div>
</div>   
