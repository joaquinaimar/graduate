<%@include file="/WEB-INF/jsp/common/taglibs.jsp" %>
<%@ page language="java" pageEncoding="utf-8"%>
<input type="hidden" name="currentPage" id="currentPage" value="Ladder"/>
<div id="right">
<img src="${contextPath}/common/img/top_table_decoration.gif" border="0" alt="table deco"></img>
<fieldset>
<legend></legend>
<div class="jmesa">
	<table class="table">
		<tr class="header">
			<td>教练姓名</td>
			<td>家庭住址</td>
			<td>陪练项目</td>
			<td>价格(小时)</td>
		</tr>
		<s:iterator value="ladderList" id="ladder" status="status">
			<s:if test="#status.index % 2 == 0">
			<tr class="odd">
			</s:if>
			<s:else>
			<tr class="even">
			</s:else>
				<td><s:property value="#ladder.person.name"/></td>
				<td><s:property value="#ladder.person.adderss"/></td>
				<td><s:property value="#ladder.comment"/></td>
				<td><s:property value="#ladder.ladderPrice"/></td>
			</tr>
		</s:iterator>
	</table>
</div>
</fieldset>
</div>