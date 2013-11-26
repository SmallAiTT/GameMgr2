<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<div class="tt-dlg" data-options="width : 500"
	titles="r:项目浏览;c:项目新增;u:项目修改"
	attrs="id:$[dlg]"
	btnExps="c|u:submit->?*;">
	<div class="tt-tmp" args="defOper='c'" lnkOpers="c">
		<jsp:include page="./Proj_Frm.jsp"></jsp:include>
	</div>
	<div class="tt-tmp" args="defOper='u'" lnkOpers="u">
		<jsp:include page="./Proj_Frm.jsp"></jsp:include>
	</div>
	<div class="tt-tmp" args="defOper='r'" lnkOpers="r">
		<jsp:include page="./Proj_Frm.jsp"></jsp:include>
	</div>
</div>   