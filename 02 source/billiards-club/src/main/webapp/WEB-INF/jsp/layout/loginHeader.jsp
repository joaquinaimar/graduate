<%@include file="/WEB-INF/jsp/common/taglibs.jsp" %>
<%@ page language="java" pageEncoding="utf-8"%>
<table width="1024" border="0" cellspacing="0" cellpadding="0">
	<tr>
		<td background="${contextPath}/common/img/normal_02.gif" width="25">&nbsp;
		</td>
		<td background="${contextPath}/common/img/retail.gif" width="150">
			<s:a id="tabLogin" cssClass="nav_link" action="home.action">
				<span><nobr>用户登录</nobr></span>
			</s:a>
		</td>
		<td background="${contextPath}/common/img/retail.gif" width="150">
			<s:a id="tabRegister" cssClass="nav_link" action="register!view.action">
				<span><nobr>用户注册</nobr></span>
			</s:a>
		</td>
		<td>
			<img src="${contextPath}/common/img/normal_06.gif" width="123">
		</td>
		<td background="${contextPath}/common/img/normal_08.gif" width="578">
		</td>
	</tr>
</table>
<img src="${contextPath}/common/img/Oklahoma_06.gif" width="1024" height="23" style="display:block;" alt=""/>