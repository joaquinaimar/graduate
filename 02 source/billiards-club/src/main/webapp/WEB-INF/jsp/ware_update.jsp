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
<div class="jmesa">
	<table class="table">
		<tr class="header">
			<td>货品名称</td>
			<td>货品余量</td>
			<td>货品单价</td>
			<td>购买数</td>
		</tr>
		<s:iterator value="wares" id="ware" status="status">
			<s:if test="#status.index % 2 == 0">
			<tr class="odd">
			</s:if>
			<s:else>
			<tr class="even">
			</s:else>
				<s:form action="wareUpdate.action">
					<td><s:property value="#ware.wareName"/>
						<input type="hidden" name="wareId" value="${ware.wareId}">
					</td>
					<td><s:property value="#ware.wareBalance"/>
					</td>
					<td><s:property value="#ware.warePrice"/>
					</td>
					<td>
						<s:textfield name="purchaseCount" size="5"/>
					</td>
					<td>
					<s:submit cssClass="button" value="销售" />
					</td>
				</s:form>
			</tr>
		</s:iterator>
	</table>
</div>
</fieldset>
</div>