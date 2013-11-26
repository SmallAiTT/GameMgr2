<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<form class="tt-frm" acts="c:shed/CompChildCtrl/create;u:shed/CompChildCtrl/update">
	<input name="id" class="tt-fld" type="hidden">
	<input name="parentId" class="tt-fld" type="hidden">
	<input name="oldId" class="tt-fld" type="hidden">
     <table>
       <tr>
         <td><label >子零件代码：</label></td>
         <td>
           <input name="code" class="tt-fld" readonlys="c;u"/>  
         </td>
       </tr>
       <tr>
         <td><label >子零件名称：</label></td>
         <td>
         	<input name="name" class="tt-fld" requireds="c;u" readonlys="c;u">
         	<a class="tt-btn" 
         		btnTxts="r:查看;c|u:选择" 
         		btnExps="r:jq->$[viewCompDlg]?*;c|u:jq->$[selCompDlg]"
         		btnChgs="c|u:sel"
         		btnOks="c|u:_self.sel"
         		btnMaps="sel:id&code&name"
         		validCusts="r:CompMgr.initCompInfo"
         		validRels="*:0"></a>
         </td>
       </tr>
       <tr>
         <td><label>数量：</label></td>
         <td><input name="count" class="tt-fld" types="*:numberbox" requireds="c;u"></td>
       </tr>
     </table>
</form>