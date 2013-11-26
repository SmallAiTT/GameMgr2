<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<form class="tt-frm" acts="c:shed/CompCtrl/create;u:shed/CompCtrl/update">
   	<input name="id" type="hidden">
     <table>
       <tr>
         <td><label >零件代码：</label></td>
         <td><input name="code" class="tt-fld" requireds="c;u"></td>
         <td><label >零件名称：</label></td>
         <td><input name="name" class="tt-fld" requireds="c;u"></td>
       </tr>
       <tr>
         <td><label >是否是基础零件：</label></td>
         <td>
           <input name="isBase" class="tt-fld" datas="*:ShedSel.isBase" types="*:combobox" requireds="c;u"/>  
         </td>
         <td><label >零件图示：</label></td>
         <td><input name="img" class="tt-fld"></td>
       </tr>
       <tr>
         <td><label >规格：</label></td>
         <td><input name="spec" class="tt-fld"></td>
         <td><label >材质：</label></td>
         <td><input name="mates" class="tt-fld" datas="*:ShedSel.mate" types="*:combobox"></td>
       </tr>
       <tr>
         <td><label >单位：</label></td>
         <td><input name="unit" class="tt-fld"></td>
         <td><label >备注：</label></td>
         <td><input name="remark" class="tt-fld"></td>
       </tr>
     </table>
</form>