<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<form class="tt-frm" 
	acts="c:shed/ExpCtrl/create;u:shed/ExpCtrl/update;test:shed/ExpCtrl/test">
	<input name="id" type="hidden">
    <table>
      <tr>
        <td><label >公式名称：</label></td>
        <td>
          <input class="tt-fld" name="name"/>  
        </td>
      </tr>
      <tr>
        <td><label >公式：</label></td>
        <td><textarea class="tt-fld" rows="10" cols="80" name="exp"></textarea></td>
      </tr>
      <tr>
        <td><label >传参：</label></td>
        <td><textarea class="tt-fld" rows="10" cols="80" name="args"></textarea></td>
      </tr>
      <tr>
        <td><label >备注：</label></td>
        <td><textarea class="tt-fld" cols="80" name="remark"></textarea></td>
      </tr>
    </table>
</form>