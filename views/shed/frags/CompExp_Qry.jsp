<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<div class="tt-qry">  
	<div class="tt-qry-area" titles="q|sel:零件公式查询" lnkOpers="q;sel" >
		<div>
			<form>
				<input name="schemaId" type="hidden">
				<table>
					<tr>
						<td><label>零件公式:</label></td>
						<td><input class="tt-fld" name="name"></td>
						<td><label>零件名称:</label></td>
						<td><input class="tt-fld" name="compName"></td>
						<td><label>公式名称:</label></td>
						<td><input class="tt-fld" name="expName"></td>
					</tr>
				</table>
			</form>
		</div>
	</div>
	<jsp:include page="./CompExp_Tbl.jsp"></jsp:include>
</div>