<%@include file="/WEB-INF/jsp/common/taglibs.jsp" %>
<%@ page language="java" pageEncoding="utf-8"%>
<input type="hidden" name="currentPage" id="currentPage" value="PlaceMgr"/>
<div id="right">
<img src="${contextPath}/common/img/top_table_decoration.gif" border="0" alt="table deco"></img>
<s:form action="placeAdd.action">
<fieldset>
<legend></legend>
	<table>
		<tr>
			<td>场地编号</td>
			<td><s:textfield name="place.placeNbr" /></td>
		</tr>
		<tr>
			<td>场地类别</td>
			<td>
				<s:select name="place.placeType.placeTypeId" id="placeType"
					list="placeTypeList" listValue="descr" listKey="placeTypeId" />
			</td>
		</tr>
		<tr>
			<td>场地状态</td>
			<td>
				<s:select name="place.placeStatus.placeStatusId" id="placeStatus"
					list="placeStatusList" listValue="descr" listKey="placeStatusId" />
			</td>
		</tr>
	</table>
	<div style="padding-left: 2px; padding-top: 10px;">
		<s:submit action="addPlace.action" name="submit" value="添加场地"/>
	</div>
</fieldset>
</s:form>
</div>