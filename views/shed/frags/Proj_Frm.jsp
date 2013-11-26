<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<form class="tt-frm" acts="c:shed/ProjCtrl/create;u:shed/ProjCtrl/update;">
	<input name="id" type="hidden">
    <table>
      <tr>
        <td><label >项目名称：</label></td>
        <td>
          <input class="tt-fld" name="name" requireds="c;u"/>  
        </td>
      <tr>
      <tr>
        <td><label >状态：</label></td>
        <td>
          <input class="tt-fld" name="state" types="*:combobox" readonlys="c;u" datas="*:ShedSel.projState"/>  
        </td>
      <tr>
        <td><label >备注：</label></td>
        <td><textarea class="tt-fld" cols="50" name="remark"></textarea></td>
      </tr>
    </table>
</form>