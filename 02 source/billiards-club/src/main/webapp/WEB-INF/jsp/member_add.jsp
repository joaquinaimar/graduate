<%@include file="/WEB-INF/jsp/common/taglibs.jsp" %>
<%@ page language="java" pageEncoding="utf-8"%>
<input type="hidden" name="currentPage" id="currentPage" value="Member"/>
<div id="right">
<img src="${contextPath}/common/img/top_table_decoration.gif" border="0" alt="table deco"></img>
<s:form action="memberAdd.action">
<fieldset>
<legend></legend>
	<table>
		<tr>
			<td>会员姓名</td>
			<td><s:textfield name="member.person.name" /></td>
		</tr>
		<tr>
			<td>会员住址</td>
			<td>
				<s:textfield name="member.person.address" />
			</td>
		</tr>
		<tr>
			<td>会员类型</td>
			<td>
				<s:select name="member.memberType.memberTypeId" id="memberTypeId"
					list="memberTypeList" listValue="descr" listKey="memberTypeId" />
			</td>
		</tr>
		<tr>
			<td>会员状态</td>
			<td>
				<s:select name="member.memberStatus.memberStatusId" id="memberStatusId"
					list="memberStatusList" listValue="descr" listKey="memberStatusId" />
			</td>
		</tr>
		<tr>
			<td>充值金额</td>
			<td>
				<s:textfield name="member.balance" />
			</td>
		</tr>
	</table>
	<div style="padding-left: 2px; padding-top: 10px;">
		<s:submit action="memberAdd.action" name="submit" value="添加会员"/>
	</div>
</fieldset>
</s:form>
</div>