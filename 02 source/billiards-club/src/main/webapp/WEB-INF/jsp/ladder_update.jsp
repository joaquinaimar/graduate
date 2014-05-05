<%@include file="/WEB-INF/jsp/common/taglibs.jsp" %>
<%@ page language="java" pageEncoding="utf-8"%>
<script type="text/javascript">
function remove(index) {
	document.forms[0].action="ladderUpdate!remove.action";
	var ladderId = document.getElementsByName("ladderId")[index].value;
	document.getElementsByName("ladder.ladderId")[0].value = ladderId;
	document.forms[0].submit();
}

function update(index) {
	document.forms[0].action="ladderUpdate!update.action";
	var ladderId = document.getElementsByName("ladderId")[index].value;
	var ladderStatusId = document.getElementsByName("ladderStatusId")[index].value;
	var name = document.getElementsByName("#ladder.person.name")[index].value;
	var address = document.getElementsByName("#ladder.person.address")[index].value;
	var comment = document.getElementsByName("#ladder.comment")[index].value;
	var price = document.getElementsByName("#ladder.ladderPrice")[index].value;
	document.getElementsByName("ladder.ladderId")[0].value = ladderId;
	document.getElementsByName("ladder.ladderStatus.ladderStatusId")[0].value = ladderStatusId;
	document.getElementsByName("ladder.person.name")[0].value = name;
	document.getElementsByName("ladder.person.address")[0].value = address;
	document.getElementsByName("ladder.comment")[0].value = comment;
	document.getElementsByName("ladder.ladderPrice")[0].value = price;
	document.forms[0].submit();
}
</script>
<input type="hidden" name="currentPage" id="currentPage" value="PlaceMgr"/>
<div id="right">
<img src="${contextPath}/common/img/top_table_decoration.gif" border="0" alt="table deco"></img>
<fieldset>
<legend></legend>
<s:form>
<s:hidden name="ladder.ladderId" />
<s:hidden name="ladder.person.name"/>
<s:hidden name="ladder.person.address"/>
<s:hidden name="ladder.comment"/>
<s:hidden name="ladder.ladderPrice" />
<s:hidden name="ladder.ladderStatus.ladderStatusId" />
</s:form>
<div class="jmesa">
	<table class="table">
		<tr class="header">
			<td>教练姓名</td>
			<td>家庭住址</td>
			<td>陪练项目</td>
			<td>教练状态</td>
			<td>价格(小时)</td>
		</tr>
		<s:iterator value="ladders" id="ladder" status="status">
			<s:if test="#status.index % 2 == 0">
			<tr class="odd">
			</s:if>
			<s:else>
			<tr class="even">
			</s:else>
				<td><s:textfield name="#ladder.person.name" size="5" />
					<input type="hidden" name="ladderId" value="${ladder.ladderId}">
				</td>
				<td>
					<s:textfield name="#ladder.person.address" size="9"/>
				</td>
				<td>
					<s:textfield name="#ladder.comment" size="9"/>
				</td>
				<td>
					<s:select name="ladderStatusId"
							list="ladderStatusList" listValue="descr" listKey="ladderStatusId"
							value="#ladder.ladderStatus.ladderStatusId"/>
				</td>
				<td>
					<s:textfield name="#ladder.ladderPrice" size="5"/>
				</td>
				<td>
				<input type="button" class="button" value="更新" onclick="update(${status.index})" />
				</td>
			</tr>
		</s:iterator>
	</table>
</div>
</fieldset>
</div>