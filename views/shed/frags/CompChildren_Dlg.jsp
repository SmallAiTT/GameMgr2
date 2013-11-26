<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<div class="tt-dlg" data-options="width : 800 , height : 450"
  	titles="children:子零件列表"
	attrs="id:$[childrenDlg]">
	<div class="tt-tmp" args="*" data-options="height : 250" lnkChgs="*:q" lnkOpers="children">
		<jsp:include page="./CompChild_Qry.jsp"></jsp:include>
	</div>
</div>   
