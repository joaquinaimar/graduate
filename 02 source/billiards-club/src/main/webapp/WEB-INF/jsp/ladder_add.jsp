<%@include file="/WEB-INF/jsp/common/taglibs.jsp" %>
<%@ page language="java" pageEncoding="utf-8"%>
<input type="hidden" name="currentPage" id="currentPage" value="Member"/>
<div id="right">
<img src="${contextPath}/common/img/top_table_decoration.gif" border="0" alt="table deco"></img>
<s:form action="ladderAdd.action">
<fieldset>
<legend></legend>
	<table>
		<tr>
			<td>教练姓名</td>
			<td><s:textfield name="ladder.person.name" /></td>
		</tr>
		<tr>
			<td>家庭住址</td>
			<td>
				<s:textfield name="ladder.person.address" />
			</td>
		</tr>
		<tr>
			<td>教练状态</td>
			<td>
				<s:select name="ladder.ladderStatus.ladderStatusId" id="ladderStatusId"
					list="ladderStatusList" listValue="descr" listKey="ladderStatusId" />
			</td>
		</tr>
		<tr>
			<td>陪练项目</td>
			<td>
				<s:textfield name="ladder.comment" />
			</td>
		</tr>
		<tr>
			<td>陪练价格</td>
			<td>
				<s:textfield name="ladder.ladderPrice" />
			</td>
		</tr>
	</table>
	<div style="padding-left: 2px; padding-top: 10px;">
		<s:submit action="ladderAdd.action" name="submit" value="添加会员"/>
	</div>
</fieldset>
</s:form>
</div>