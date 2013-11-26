<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<div class="tt-qry">  
	<div class="tt-qry-area" titles="q|sel:大棚查询" lnkOpers="q;sel" >
		<div>
			<form>
				<input name="projId" type="hidden">
				<table>
					<tr>
						<td><label>公式名称:</label></td>
						<td><input class="tt-fld" name="name"></td>
						<td><label>方案名称:</label></td>
						<td><input class="tt-fld" name="schemaName"></td>
					</tr>
				</table>
			</form>
		</div>
	</div>
	<jsp:include page="./Shed_Tbl.jsp"></jsp:include>
</div>