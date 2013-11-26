<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<div class="tt-qry">  
	<div class="tt-qry-area" titles="q|sel:零件查询" lnkOpers="q;sel" >
		<div>
			<form class="tt-frm" >
				<table>
					<tr>
						<td><label>零件编码:</label></td>
						<td><input class="tt-fld" name="code"></td>
						<td><label>零件名称:</label></td>
						<td><input class="tt-fld" name="name"></td>
						<td><label>是否是基础零件:</label></td>
						<td><input class="tt-fld" name="isBase" types="*:combobox" datas="*:ShedSel.isBase"></td>
					</tr>
				</table>
			</form>
		</div>
	</div>
	<jsp:include page="./Comp_Tbl.jsp"></jsp:include>
</div>