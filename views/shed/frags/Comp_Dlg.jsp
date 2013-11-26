<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<div class="tt-dlg" data-options="width : 550"
	titles="r:零件查看;c:零件新增;u:零件修改"
	attrs="id:$[dlg]"
	btnExps="c|u:submit->?*;">
	<div class="tt-tmp" args="defOper='c'" lnkOpers="c">
		<jsp:include page="./Comp_Frm.jsp"></jsp:include>
	</div>
	<div class="tt-tmp" args="defOper='u'" lnkOpers="u">
		<jsp:include page="./Comp_Frm.jsp"></jsp:include>
	</div>
	<div class="tt-tmp" args="defOper='r'" lnkOpers="r">
		<jsp:include page="./Comp_Frm.jsp"></jsp:include>
	</div>
</div>   
