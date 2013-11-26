<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<form class="tt-frm" acts="c:shed/SchemaCtrl/create;u:shed/SchemaCtrl/update;">
	<input name="id" type="hidden">
    <table>
      <tr>
        <td><label >方案名称：</label></td>
        <td>
          <input class="tt-fld" name="name" requireds="c;u"/>  
        </td>
      <tr>
        <td><label >备注：</label></td>
        <td><textarea class="tt-fld" cols="50" name="remark"></textarea></td>
      </tr>
    </table>
</form>