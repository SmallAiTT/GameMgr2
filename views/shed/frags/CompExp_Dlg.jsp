<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<div class="tt-dlg" data-options="width : 600"
	titles="r:零件公式浏览;c:零件公式新增;u:零件公式修改"
	attrs="id:$[dlg]"
	btnExps="c|u:submit->?*">
	<div class="tt-tmp" args="*&defOper='c'" lnkOpers="c">
		<jsp:include page="./CompExp_Frm.jsp"></jsp:include>
	</div>
	<div class="tt-tmp" args="*&defOper='u'" lnkOpers="u">
		<jsp:include page="./CompExp_Frm.jsp"></jsp:include>
	</div>
	<div class="tt-tmp" args="*&defOper='r'" lnkOpers="r">
		<jsp:include page="./CompExp_Frm.jsp"></jsp:include>
	</div>
</div>   
