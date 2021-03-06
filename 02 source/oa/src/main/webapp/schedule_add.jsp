<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic"%>
<%@ taglib uri="http://struts.apache.org/tags-nested" prefix="nested"%>
 
<%String path = request.getContextPath();
			String basePath = request.getScheme() + "://"
					+ request.getServerName() + ":" + request.getServerPort()
					+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title><bean:message key="schedule_add.page.position" /></title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<link rel="stylesheet" type="text/css" href="styles.css">
</head>

<body>
<TABLE width="100%" class="position">
	<TR>
		<TD><bean:message key="schedule_add.page.position" /></TD>
		<TD align="right"><a href="schedule.do?method=back"><bean:message
			key="schedule_add.page.back" /></a></TD>
		<TD width="20"></TD>
	</TR>
</TABLE>
<form name="form1" action="schedule_add.do?method=insert" method="post">
<b><html:errors property="org.apache.struts.action.GLOBAL_MESSAGE" /></b>
<TABLE border="0" width="100%">
	<TR>
		<TD><bean:message key="schedule.page.year" /></TD>
		<TD><logic:present name="scheduleFormBean">
			<html:text property="year" name="scheduleFormBean" maxlength="4"/>
		</logic:present> <logic:notPresent name="scheduleFormBean">
			<input type="text" name="year" maxlength="4">
		</logic:notPresent> <html:errors property="year" /></TD>
	</TR>
	<TR>
		<TD><bean:message key="schedule.page.month" /></TD>
		<TD><logic:present name="scheduleFormBean">
			<html:text property="month" name="scheduleFormBean" maxlength="2"/>
		</logic:present> <logic:notPresent name="scheduleFormBean">
			<input type="text" name="month" maxlength="2">
		</logic:notPresent> <html:errors property="month" /></TD>
	</TR>
	<TR>
		<TD><bean:message key="schedule.page.day" /></TD>
		<TD><logic:present name="scheduleFormBean">
			<html:text property="day" name="scheduleFormBean" maxlength="2"/>
		</logic:present> <logic:notPresent name="scheduleFormBean">
			<input type="text" name="day" maxlength="2">
		</logic:notPresent> <html:errors property="day" /></TD>
	</TR>
	<TR>
		<TD><bean:message key="schedule.page.plan" /></TD>
		<TD><textarea name="plan" cols="60" rows="15"><logic:present name="scheduleFormBean"><bean:write property="plan" name="scheduleFormBean" /></logic:present></textarea>  <html:errors property="plan" /></TD>
	</TR>
	<TR>
		<TD colspan="2"><input type="submit"
			value="<bean:message key='button.submit' />"></TD>
	</TR>
</TABLE>
</form>
</body>
</html>
