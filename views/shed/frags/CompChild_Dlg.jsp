<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>

<div class="tt-dlg" data-options="width : 400"
	titles="r:子零件查看;c:子零件新增;u:子零件修改"
	attrs="id:$[compChildDlg]"
	btnExps="c|u:submit->?*;">
	<div class="tt-tmp" args="*&defOper='c'" lnkOpers="c">
		<jsp:include page="./CompChild_Frm.jsp"></jsp:include>
	</div>
	<div class="tt-tmp" args="*&defOper='u'" lnkOpers="u">
		<jsp:include page="./CompChild_Frm.jsp"></jsp:include>
	</div>
	<div class="tt-tmp" args="*&defOper='r'" lnkOpers="r">
		<jsp:include page="./CompChild_Frm.jsp"></jsp:include>
	</div>
</div>   
