<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<div class="tt-dlg" data-options="width : 800, height : 460"
	titles="ceList:零件公式列表"
	attrs="id:$[ceListDlg]">
	<div class="tt-tmp" args="dlg=compExpDlg" data-options="height : 250" 
		lnkChgs="ceList:q" lnkOpers="ceList">
		<jsp:include page="./CompExp_Qry.jsp"></jsp:include>
	</div>
</div>
