<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic"%>
<%@ taglib uri="http://struts.apache.org/tags-nested" prefix="nested"%>
<%@ page import="com.demo.struts.util.Constants"%>
<%@ taglib uri="http://www.opensymphony.com/sitemesh/decorator"
	prefix="decorator"%>

<html>
<head>
<title>Demo - <decorator:title default="Welcome!" /></title>
<link rel="stylesheet" type="text/css" href="<%=application.getContextPath()%>/style/styles.css">
<decorator:head />
</head>

<body>
	<div align="center">
		<%
			if (session.getAttribute(Constants.USERNAME_KEY) != null) {
		%>
		<table width="100%">
			<tr>
				<td colspan="2"><img style="height: 100px; width: 100%;"
					src='<%=application.getContextPath()%>/images/title.png'></td>
			</tr>
			<tr>
				<td colspan="2">
					<hr noshade="false" size="4" color="#ff0000">
				</td>
			</tr>
			<tr>
				<td width="160" bgcolor="#EEEEEE" valign="top">
					<div class="menu">
						<ul>
							<li><a href="welcome.do"><bean:message key="frame.main" /></a></li>
							<li><a href="address.do?method=list"><bean:message key="frame.address" /></a></li>
							<li><a href="schedule.do?method=list"><bean:message key="frame.schedule" /></a></li>
							<li><a href="worklog.do?method=list"><bean:message key="frame.worklog" /></a></li>
							<li><a href="sms.do?method=list"><bean:message key="frame.sms" /></a></li>
							<li><a href="notice.do?method=list"><bean:message key="frame.notice" /></a></li>
							<li><a href="meeting.do?method=list"><bean:message key="frame.meeting" /></a></li>
							<li><a href="logout.do"><bean:message key="frame.logout" /></a></li>
						</ul>
					</div>
				</td>
				<td align="left" valign="top"><decorator:body /></td>
			</tr>
		</table>
		<%
			} else {
		%>
		<decorator:body />
		<%
			}
		%>
	</div>
</body>
</html>
