<%@include file="/WEB-INF/jsp/common/taglibs.jsp" %>
<%@ page language="java" pageEncoding="utf-8"%>
<input type="hidden" name="currentPage" id="currentPage" value="Member"/>
<div id="right">
<img src="${contextPath}/common/img/top_table_decoration.gif" border="0" alt="table deco"></img>
<fieldset>
<legend></legend>
<div class="jmesa">
	<table class="table">
		<tr class="header">
			<td>会员卡号</td>
			<td>姓名</td>
			<td>会员类型</td>
			<td>会员状态</td>
			<td>帐户余额</td>
		</tr>
		<s:iterator value="memberList" id="member" status="status">
			<s:if test="#status.index % 2 == 0">
			<tr class="odd">
			</s:if>
			<s:else>
			<tr class="even">
			</s:else>
				<td><s:property value="#member.pan"/></td>
				<td><s:property value="#member.person.name"/></td>
				<td><s:property value="#member.memberType.descr"/></td>
				<td><s:property value="#member.memberStatus.descr"/></td>
				<td><s:property value="#member.balance"/></td>
			</tr>
		</s:iterator>
	</table>
</div>
</fieldset>
</div>