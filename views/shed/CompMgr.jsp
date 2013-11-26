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
<title>零件管理</title>
</head>
<body>

<div class="tt-tmp" args="dlg='#compDlg'&childrenDlg='#childrenDlg'&compChildDlg='#compChildDlg'">
	<div class="tt-tmp tt-fire" args="*" target=".tt-qry" data-options="height : 400">
		<jsp:include page="./frags/Comp_Qry.jsp"></jsp:include>
	</div>
	<jsp:include page="./frags/Comp_Dlg.jsp"></jsp:include>
	<jsp:include page="./frags/CompChildren_Dlg.jsp"></jsp:include>
	<div class="tt-tmp" args="*&viewCompDlg='#compDlg'&selCompDlg='#selCompDlg'" data-options="height : 400">
		<jsp:include page="./frags/CompChild_Dlg.jsp"></jsp:include>
	</div>
	<div class="tt-tmp" args="*&selCompDlg='#selCompDlg'" data-options="height : 400">
		<jsp:include page="./frags/CompSel_Dlg.jsp"></jsp:include>
	</div>
</div>
</body>
</html>