<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<div class="tt-dlg" data-options="width : 800"
	titles="test:表达式测试"
	attrs="id:$[dlg]"
	btnExps="test:submit->?*;">
	<div class="tt-tmp" args="defOper='test'" lnkOpers="test">
		<jsp:include page="./ExpTest_Frm.jsp"></jsp:include>
	</div>
</div>   