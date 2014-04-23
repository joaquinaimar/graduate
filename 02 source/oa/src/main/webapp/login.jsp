<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic"%>
<%@ taglib uri="http://struts.apache.org/tags-nested" prefix="nested"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title></title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<link href="<%=application.getContextPath()%>/style/login.css"
	type=text/css rel=stylesheet>

<!--
    <link rel="stylesheet" type="text/css" href="styles.css">
    -->
</head>

<body>

	<form name="form2" action="login.do" method="post">
		<div id="CenterAreaBg">
			<div id="CenterArea">
				<div id="LogoImg">
					<img border="0"
						src="<%=application.getContextPath()%>/images/logo.png" />
				</div>
				<div id="LoginInfo">
					<table BORDER=0 CELLSPACING=0 CELLPADDING=0 width=100%>
						<tr>
							<td colspan="3">
								<!-- 显示错误 --> <font color="red"><html:errors
										property="org.apache.struts.action.GLOBAL_MESSAGE" /></font>
							</td>
						</tr>
						<tr>
							<td width=45 class="Subject"><img border="0"
								src="<%=application.getContextPath()%>/images/login/userId.gif" /></td>
							<td><logic:present name="loginFormBean">
									<html:text property="username" name="loginFormBean" />
								</logic:present> <logic:notPresent name="loginFormBean">
									<input type="text" name="username" id="loginNameInput"
										class="TextField required">
								</logic:notPresent> <html:errors property="username" /></td>
							<td style="padding-left: 10px;"><input type="image"
								tabindex="3"
								src="<%=application.getContextPath()%>/images/login/userLogin_button.gif" /></td>
						</tr>
						<tr>
							<td class="Subject"><img border="0"
								src="<%=application.getContextPath()%>/images/login/password.gif" /></td>
							<td><logic:present name="loginFormBean">
									<html:password property="password" />
								</logic:present> <logic:notPresent name="loginFormBean">
									<input type="password" name="password" size="20" tabindex="2"
										id="aa" class="TextField required">
								</logic:notPresent> <html:errors property="password" /></td>
							<td style="padding-left: 10px;"><a
								href="register.do?method=init"><bean:message
										key="login.page.register" /></td>
						</tr>
					</table>
				</div>
			</div>
		</div>
	</form>

</body>
</html>
