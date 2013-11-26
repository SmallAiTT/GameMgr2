<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<form class="tt-frm" acts="c:shed/CompExpCtrl/create;u:shed/CompExpCtrl/update">
   	<input name="id" type="hidden">
   	<input name="schemaId" type="hidden">
   	<input name="compId" type="hidden">
     <table>
       <tr>
         <td><label >零件公式名称：</label></td>
         <td><input name="name" class="tt-fld" requireds="c;u"></td>
         <td><label >计算顺序：</label></td>
         <td><input name="seq" class="tt-fld" requireds="c;u" types="*:numberbox"></td>
       </tr>
       <tr>
         <td><label >零件代码：</label></td>
         <td><input name="compCode" class="tt-fld" readonlys="c;u" requireds="c;u"></td>
         <td><label >零件名称：</label></td>
         <td>
         	<input name="compName" class="tt-fld" readonlys="c;u" requireds="c;u">
         	<a class="tt-btn" 
         		btnTxts="c|u:选择" 
         		btnExps="r:jq->$[viewCompDlg]?id=compId;c|u:jq->$[selCompDlg]"
         		btnChgs="c|u:sel"
         		btnOks="c|u:_self.sel"
         		btnMaps="c|u|sel:compId=id&compCode=code&compName=name"
         		validCusts="r:CompMgr.initCompInfo;"
         		validRels="*:0"></a>
         </td>
       </tr>
       <tr>
         <td><label >公式ID：</label></td>
         <td><input name="expId" class="tt-fld" readonlys="c;u" requireds="c;u"></td>
         <td><label >公式名称：</label></td>
         <td>
         	<input name="expName" class="tt-fld" readonlys="c;u" requireds="c;u">
         	<a class="tt-btn" 
         		btnTxts="c|u:选择" 
         		btnExps="r:jq->$[viewExpDlg]?id=expId;c|u:jq->$[selExpDlg]"
         		btnChgs="c|u:sel"
         		btnOks="c|u:_self.sel"
         		btnMaps="c|u|sel:expId=id&expName=name"
         		validCusts="r:ExpMgr.initExp;"
         		validRels="*:0"></a>
         </td>
       </tr>
       <tr>
         <td><label >参数：</label></td>
         <td><input name="calcArgs" class="tt-fld"></td>
         <td><label >备注：</label></td>
         <td><input name="remark" class="tt-fld"></td>
       </tr>
     </table>
</form>