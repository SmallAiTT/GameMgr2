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
<script type="text/javascript" src="script/shed/ScheMgr.js"></script>
<script type="text/javascript" src="script/shed/ShedMgr.js"></script>
<script type="text/javascript" src="script/shed/ProjMgr.js"></script>
<title>项目管理</title>
</head>
<body>
<div class="tt-tmp" 
	args="
		dlg='#projDlg'&shedListDlg='#shedListDlg'&
		shedDlg='#shedDlg'&selScheDlg='#selScheDlg'&viewShedDlg='#viewShedDlg'&
		crListDlg='#crListDlg'
		">
	<div class="tt-tmp tt-fire" target=".tt-qry" args="*" data-options="height : 400">
		<jsp:include page="./frags/Proj_Qry.jsp"></jsp:include>
	</div>
	<jsp:include page="./frags/Proj_Dlg.jsp"></jsp:include>
	<jsp:include page="./frags/ShedList_Dlg.jsp"></jsp:include>
	<div class="tt-tmp" args="*&dlg=shedDlg">
		<jsp:include page="./frags/Shed_Dlg.jsp"></jsp:include>
	</div>
	<jsp:include page="./frags/ScheSel_Dlg.jsp"></jsp:include>
	<div class="tt-tmp" args="dlg=viewShedDlg">
		<jsp:include page="./frags/Sche_Dlg.jsp"></jsp:include>
	</div>
	<jsp:include page="./frags/CompResultList_Dlg.jsp"></jsp:include>
</div>	
</body>
</html>