<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<div class="tt-dlg" data-options="width : 500"
	titles="r:大棚浏览;c:大棚新增;u:大棚修改"
	attrs="id:$[dlg]"
	btnExps="c|u:submit->?*;">
	<div class="tt-tmp" args="*&defOper='c'" lnkOpers="c">
		<jsp:include page="./Shed_Frm.jsp"></jsp:include>
	</div>
	<div class="tt-tmp" args="*&defOper='u'" lnkOpers="u">
		<jsp:include page="./Shed_Frm.jsp"></jsp:include>
	</div>
	<div class="tt-tmp" args="*&defOper='r'" lnkOpers="r">
		<jsp:include page="./Shed_Frm.jsp"></jsp:include>
	</div>
</div>   