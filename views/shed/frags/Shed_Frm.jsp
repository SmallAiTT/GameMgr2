<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<form class="tt-frm" acts="c:shed/ShedCtrl/create;u:shed/ShedCtrl/update;"
	validCusts="c|u:ShedMgr.checkShed"
	validConfirms="u:修改大棚信息将会把大棚的状态改为“未计算”，是否继续？"
	>
	<input name="id" type="hidden">
	<input name="projId" type="hidden">
	<input name="schemaId" type="hidden">
    <table>
      <tr>
        <td><label >大棚名称：</label></td>
        <td>
          <input class="tt-fld" name="name" requireds="c;u"/>  
        </td>
      <tr>
      <tr>
        <td><label >大棚方案：</label></td>
        <td>
          <input class="tt-fld" name="schemaName" requireds="c;u"/>  
         	<a class="tt-btn" 
         		btnTxts="r:查看;c|u:选择" 
         		btnExps="r:jq->$[viewShedDlg]?*;c|u:jq->$[selScheDlg]"
         		btnIcons="c|u:icon-search"
         		btnChgs="c|u:sel"
         		btnOks="c|u:_self.sel"
         		btnMaps="c|u|sel:schemaId=id&schemaName=name"
         		validCusts="r:ScheMgr.initSche"
         		validRels="*:0"
         		></a>
        </td>
      <tr>
      <tr>
        <td><label >棚长：</label></td>
        <td>
          <input class="tt-fld" name="lengths" requireds="c;u"/>  
        </td>
      <tr>
      <tr>
        <td><label >顶卷膜器：</label></td>
        <td>
          <input class="tt-fld" name="topScrolls" requireds="c;u"/>  
        </td>
      <tr>
      <tr>
        <td><label >侧卷膜器：</label></td>
        <td>
          <input class="tt-fld" name="edgeScrolls" requireds="c;u"/>  
        </td>
      <tr>
      <tr>
        <td><label >前卷膜器：</label></td>
        <td>
          <input class="tt-fld" name="frontScrolls" requireds="c;u"/>  
        </td>
      <tr>
      <tr>
        <td><label >状态：</label></td>
        <td>
          <input class="tt-fld" name="state" types="*:combobox" datas="*:ShedSel.shedState" readonlys="c;u"/>  
        </td>
      <tr>
      <tr>
        <td><label >棚数量：</label></td>
        <td>
          <input class="tt-fld" name="num" types="*:numberbox" requireds="c;u"/>  
        </td>
      <tr>
        <td><label >备注：</label></td>
        <td><textarea class="tt-fld" cols="50" name="remark"></textarea></td>
      </tr>
    </table>
</form>