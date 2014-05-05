<%@include file="/WEB-INF/jsp/common/taglibs.jsp" %>
<%@ page language="java" pageEncoding="utf-8"%>
<input type="hidden" name="currentPage" id="currentPage" value="PlaceMgr"/>
<div id="right">
<img src="${contextPath}/common/img/top_table_decoration.gif" border="0" alt="table deco"></img>
<s:form action="wareAdd.action">
<fieldset>
<legend></legend>
	<table>
		<tr>
			<td>货物名称</td>
			<td><s:textfield name="ware.wareName" /></td>
		</tr>
		<tr>
			<td>数量</td>
			<td>
				<s:textfield name="ware.wareBalance"/>
			</td>
		</tr>
		<tr>
			<td>单价</td>
			<td>
				<s:textfield name="ware.warePrice"/>
			</td>
		</tr>
		<tr>
			<td>仓库</td>
			<td>
				<s:select name="ware.warehouse.warehouseId" id="warehouse"
					list="warehouseList" listValue="warehouseName" listKey="warehouseId" />
			</td>
		</tr>
	</table>
	<div style="padding-left: 2px; padding-top: 10px;">
		<s:submit action="wareAdd.action" name="submit" value="添加商品"/>
	</div>
</fieldset>
</s:form>
</div>