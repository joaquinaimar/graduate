<%@include file="/WEB-INF/jsp/common/taglibs.jsp"%>
<%@ page language="java" pageEncoding="utf-8"%>
<input type="hidden" name="errorMessage" id="errorMessage" value="" />
<input type="hidden" name="selectedLanguage" id="selectedLanguage"
	value="" />
<input type="hidden" name="currentPage" id="currentPage" value="Register" />

<div id="center">
	<img src="${contextPath}/common/img/top_table_decoration.gif"
		border="0" alt="table deco"></img>
	<fieldset>
		<legend></legend>
		<s:form action="/user/register.action" method="post">
			<table class="table_input" width="240" border="0">
				<tr class="td_input">
					<td>用户名：
					<td>
				</tr>
				<tr class="td_input">
					<td><s:textfield name="userName" id="userName" maxlength="12"
							size="15" /></td>
				</tr>
				<tr class="td_input">
					<td>密码：</td>
				</tr>
				<tr>
					<td><s:password id="password" name="password" maxlength="12"
							size="16" /></td>
				</tr>
				<tr class="td_input">
					<td>确认密码：</td>
				</tr>
				<tr class="td_input">
					<td><s:password id="confirmPassword" name="confirmPassword"
							maxlength="12" size="16" /></td>
				</tr>
				<tr class="td_input_button">
					<td><s:submit value="注册" name="register"
							id="register" cssClass="button" /></td>
				</tr>
			</table>
			
		</s:form>
	</fieldset>
</div>