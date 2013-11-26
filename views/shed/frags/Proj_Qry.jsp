<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<div class="tt-qry">  
	<div class="tt-qry-area" titles="q:项目查询" lnkOpers="q;sel" >
		<div>
			<form>
				<table>
					<tr>
						<td><label>公式名称:</label></td>
						<td><input class="tt-fld" name="name"></td>
					</tr>
				</table>
			</form>
		</div>
	</div>
	<jsp:include page="./Proj_Tbl.jsp"></jsp:include>
</div>