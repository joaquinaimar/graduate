<%@include file="/WEB-INF/jsp/common/taglibs.jsp" %>
<%@ page language="java" pageEncoding="utf-8"%>
<script type="text/javascript">
function removePlace(placeIndex) {
	document.forms[0].action="placeUpdate!remove.action";
	var placeId = document.getElementsByName("placeId")[placeIndex].value;
	document.getElementsByName("place.placeId")[0].value = placeId;
	document.forms[0].submit();
}

function updatePlace(placeIndex) {
	document.forms[0].action="placeUpdate!update.action";
	var placeId = document.getElementsByName("placeId")[placeIndex].value;
	var placeTypeId = document.getElementsByName("placeTypeId")[placeIndex].value;
	var placeStatusId = document.getElementsByName("placeStatusId")[placeIndex].value;
	document.getElementsByName("place.placeId")[0].value = placeId;
	document.getElementsByName("place.placeType.placeTypeId")[0].value = placeTypeId;
	document.getElementsByName("place.placeStatus.placeStatusId")[0].value = placeStatusId;
	document.forms[0].submit();
}
</script>
<input type="hidden" name="currentPage" id="currentPage" value="PlaceMgr"/>
<div id="right">
<img src="${contextPath}/common/img/top_table_decoration.gif" border="0" alt="table deco"></img>
<fieldset>
<legend></legend>
<s:form>
<s:hidden name="place.placeId" />
<s:hidden name="place.placeType.placeTypeId" />
<s:hidden name="place.placeStatus.placeStatusId" />
</s:form>
<div class="jmesa">
	<table class="table">
		<tr class="header">
			<td>场地编号</td>
			<td>场地类别</td>
			<td>使用状态</td>
		</tr>
		<s:iterator value="places" id="place" status="status">
			<s:if test="#status.index % 2 == 0">
			<tr class="odd">
			</s:if>
			<s:else>
			<tr class="even">
			</s:else>
				<td><s:property value="#place.placeNbr"/>
					<input type="hidden" name="placeId" value="${place.placeId}">
				</td>
				<td>
					<s:select name="placeTypeId"
							list="placeTypeList" listValue="descr" listKey="placeTypeId"
							value="#place.placeType.placeTypeId"/>
				</td>
				<td>
					<s:select name="placeStatusId"
							list="placeStatusList" listValue="descr" listKey="placeStatusId"
							value="#place.placeStatus.placeStatusId"/>
				</td>
				<td>
				<input type="button" class="button" value="更新" onclick="updatePlace(${status.index})" />
				<input type="button" class="button" value="删除" onclick="removePlace(${status.index})" />
				</td>
			</tr>
		</s:iterator>
	</table>
</div>
</fieldset>
</div>