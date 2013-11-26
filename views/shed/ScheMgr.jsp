<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%> 
<!DOCTYPE html>
<html>
<head>
<base href="<%=basePath%>" />
<jsp:include page="/pub/Metas4Base.jsp"></jsp:include>
 
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript" src="script/shed/ShedPub.js"></script>
<script type="text/javascript" src="script/shed/CompMgr.js"></script>
<script type="text/javascript" src="script/shed/ExpMgr.js"></script>
<script type="text/javascript" src="script/shed/CompExpMgr.js"></script>
<title>大棚方案管理</title>
</head>
<body>
<div class="tt-tmp" 
	args="
		dlg='#scheDlg'&ceListDlg='#ceListDlg'&compExpDlg='#compExpDlg'&
		selCompDlg='#selCompDlg'&viewCompDlg='#viewCompDlg'
		&selExpDlg='#selExpDlg'&viewExpDlg='#viewExpDlg'
		">
	<div class="tt-tmp tt-fire" target=".tt-qry" args="*" data-options="height : 400">
		<jsp:include page="./frags/Sche_Qry.jsp"></jsp:include>
	</div>
	<jsp:include page="./frags/Sche_Dlg.jsp"></jsp:include>
	<jsp:include page="./frags/CompExpList_Dlg.jsp"></jsp:include>
	<div class="tt-tmp" args="*&dlg=compExpDlg">
		<jsp:include page="./frags/CompExp_Dlg.jsp"></jsp:include>
	</div>
	<div class="tt-tmp" args="*">
		<jsp:include page="./frags/CompSel_Dlg.jsp"></jsp:include>
	</div>
	<jsp:include page="./frags/ExpSel_Dlg.jsp"></jsp:include>
	<div class="tt-tmp" args="dlg=viewCompDlg">
		<jsp:include page="./frags/Comp_Dlg.jsp"></jsp:include>
	</div>
	<div class="tt-tmp" args="dlg=viewExpDlg">
		<jsp:include page="./frags/Exp_Dlg.jsp"></jsp:include>
	</div>
</div>	
</body>
</html>