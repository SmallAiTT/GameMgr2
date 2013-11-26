<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<div class="tt-dlg" data-options="width : 500"
	titles="r:方案查看;c:方案新增;u:方案修改"
	attrs="id:$[dlg]"
	btnExps="c|u:submit->?*;">
	<div class="tt-tmp" args="defOper='c'" lnkOpers="c">
		<jsp:include page="./Sche_Frm.jsp"></jsp:include>
	</div>
	<div class="tt-tmp" args="defOper='u'" lnkOpers="u">
		<jsp:include page="./Sche_Frm.jsp"></jsp:include>
	</div>
	<div class="tt-tmp" args="defOper='r'" lnkOpers="r">
		<jsp:include page="./Sche_Frm.jsp"></jsp:include>
	</div>
</div>   