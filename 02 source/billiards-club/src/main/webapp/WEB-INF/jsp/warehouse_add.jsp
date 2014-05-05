<%@include file="/WEB-INF/jsp/common/taglibs.jsp" %>
<%@ page language="java" pageEncoding="utf-8"%>
<input type="hidden" name="currentPage" id="currentPage" value="PlaceMgr"/>
<div id="right">
<img src="${contextPath}/common/img/top_table_decoration.gif" border="0" alt="table deco"></img>
<s:form action="warehouseAdd.action">
<fieldset>
<legend></legend>
	<table>
		<tr>
			<td>仓库编号</td>
			<td><s:textfield name="warehouse.warehouseNbr" /></td>
		</tr>
		<tr>
			<td>仓库名称</td>
			<td><s:textfield name="warehouse.warehouseName" /></td>
		</tr>
	</table>
	<div style="padding-left: 2px; padding-top: 10px;">
		<s:submit action="warehouseAdd.action" name="submit" value="添加仓库"/>
	</div>
</fieldset>
</s:form>
</div>