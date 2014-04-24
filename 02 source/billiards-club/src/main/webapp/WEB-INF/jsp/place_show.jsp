<%@include file="/WEB-INF/jsp/common/taglibs.jsp" %>
<%@ page language="java" pageEncoding="utf-8"%>
<script type="text/javascript">
function addOrder(index) {
	document.forms[0].action="${contextPath}/order/orderAdd.action";
	var pan = document.getElementsByName("panv")[index].value;
	var placeId = document.getElementsByName("#place.placeId")[index].value;
	document.getElementsByName("pan")[0].value = pan;
	document.getElementsByName("placeId")[0].value = placeId;
	document.forms[0].submit();
}

function settleOrder(orderId) {
	document.forms[0].action="${contextPath}/order/orderSettle.action"
	document.getElementsByName("orderId")[0].value = orderId;
	document.forms[0].submit();
}
</script>
<input type="hidden" name="currentPage" id="currentPage" value="PlaceMgr"/>
<div id="right">
<img src="${contextPath}/common/img/top_table_decoration.gif" border="0" alt="table deco"></img>
<fieldset>
<legend></legend>
<s:form>
<s:hidden name="pan" />
<s:hidden name="placeId" />
<s:hidden name="orderId" />
</s:form>
<div class="jmesa">
	<table class="table">
		<tr class="header">
			<td>场地编号</td>
			<td>场地类别</td>
			<td>使用状态</td>
			<td>当前会员</td>
		</tr>
		<% int idx = 0; %>
		<s:iterator value="places" id="place" status="status">
			<s:if test="#status.index % 2 == 0">
			<tr class="odd">
			</s:if>
			<s:else>
			<tr class="even">
			</s:else>
				<td><s:property value="#place.placeNbr"/></td>
				<td><s:property value="#place.placeType.descr"/></td>
				<td><s:property value="#place.placeStatus.descr"/></td>
				<td>
					<s:if test="#place.currentOrder != null">
						<s:property value="#place.currentOrder.member.pan"/>
						<input type="button" class="button" value="结算"
							onclick="settleOrder(${place.currentOrder.orderId})" style="margin-left: 15px;" />
					</s:if>
					<s:if test="#place.placeStatus.placeStatusId == 4">
						<s:textfield name="panv" size="5"/>
						<s:hidden name="#place.placeId" />
						<input type="button" class="button" value="使用" onclick="addOrder(<%=idx %>)" />
						<%idx++; %>
					</s:if>
				</td>
			</tr>
		</s:iterator>
	</table>
</div>
</fieldset>
</div>