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
<title>公式管理</title>
</head>
<body>
<div class="tt-tmp" args="dlg='#expDlg'">
	<div class="tt-tmp tt-fire" target=".tt-qry" args="*" data-options="height : 400">
		<jsp:include page="./frags/Exp_Qry.jsp"></jsp:include>
	</div>
	<jsp:include page="./frags/Exp_Dlg.jsp"></jsp:include>
</div>	
</body>
</html>