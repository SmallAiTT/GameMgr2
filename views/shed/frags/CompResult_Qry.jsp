<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<div class="tt-qry">  
	<div class="tt-qry-area" titles="q4Shed|q4Proj:零件查询" lnkOpers="q4Shed;q4Proj" >
		<div>
			<form>
				<input name="projId" type="hidden">
				<input name="shedId" type="hidden">
				<table>
					<tr>
						<td><label>零件代码:</label></td>
						<td><input class="tt-fld" name="compCode"></td>
						<td><label>零件名称:</label></td>
						<td><input class="tt-fld" name="compName"></td>
					</tr>
				</table>
			</form>
		</div>
	</div>
	<jsp:include page="./CompResult_Tbl.jsp"></jsp:include>
</div>