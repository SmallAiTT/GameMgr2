<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<div class="tt-dlg" data-options="width : 800"
	titles="r:表达式查看;c:表达式新增;u:表达式修改;test:表达式测试"
	attrs="id:$[dlg]"
	closes="test:false"
	btnTxts="test:测试"
	btnOpers="c:c,test;u:u,test;test;"
	btnExps="c|u:submit->?*;test:act->shed/ExpCtrl/test?*">
	<div class="tt-tmp" args="defOper='c'" lnkOpers="c">
		<jsp:include page="./Exp_Frm.jsp"></jsp:include>
	</div>
	<div class="tt-tmp" args="defOper='u'" lnkOpers="u">
		<jsp:include page="./Exp_Frm.jsp"></jsp:include>
	</div>
	<div class="tt-tmp" args="defOper='r'" lnkOpers="r">
		<jsp:include page="./Exp_Frm.jsp"></jsp:include>
	</div>
	<div class="tt-tmp" args="defOper='test'" lnkOpers="test">
		<jsp:include page="./Exp_Frm.jsp"></jsp:include>
	</div>
</div>   
