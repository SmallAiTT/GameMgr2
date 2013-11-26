<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<div class="tt-dlg" data-options="width : 700 , height : 460"
	titles="list:大棚列表"
	attrs="id:$[shedListDlg]">
	<div class="tt-tmp" args="crListDlg&dlg=shedDlg" lnkChgs="list:q" data-options="height : 250" lnkOpers="list">
		<jsp:include page="./Shed_Qry.jsp"></jsp:include>
	</div>
</div>   