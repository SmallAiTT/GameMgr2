<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<div class="tt-dlg" data-options="width : 800, height : 460"
	titles="q4Shed|q4Proj:零件清单"
	attrs="id:$[crListDlg]">
	<div class="tt-tmp" args="*" data-options="height : 250" lnkOpers="q4Shed;q4Proj">
		<jsp:include page="./CompResult_Qry.jsp"></jsp:include>
	</div>
</div>  
