<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<html>
<head>
<title>天津君利律师事务所综合信息平台</title>
<link href="<%=application.getContextPath()%>/style/login.css"
	type=text/css rel=stylesheet></link>
<%@ include file="/lib/lib.html"%>
<script type="text/javascript">
	function doLogin() {
		document.getElementById("theform").submit();
	}
</script>

</head>
<body>
	<table width="100%" height="100%" border="0" cellpadding="0"
		cellspacing="0">
		<tr>
			<form name="LogFrm" action="controller/login/login.do" method="post">
				<td>
					<table width="100%" border="0" cellspacing="0" cellpadding="0">
						<tr>
							<td align="center"
								background="<%=application.getContextPath()%>/image/login_bg1.gif"><img
								src="<%=application.getContextPath()%>/image/login_ad.gif"
								width="949" height="155"></td>
						</tr>
						<tr>
							<td height="111"
								background="<%=application.getContextPath()%>/image/login_bg2.gif"><table
									width="277" height="95" border="0" align="center"
									cellpadding="0" cellspacing="0">
									<tr>
										<td width="31%" align="center"><span class="font5">用户名：</span>
										</td>
										<td width="69%"><input name="username" type="text"
											style="background-image: url(<%=application.getContextPath()%>/image/input_bg.gif); height: 23px; width: 182px"></td>
									</tr>
									<tr>
										<td align="center"><span class="font5">密 码：</span></td>
										<td><input name="password" type="password"
											style="background-image: url(<%=application.getContextPath()%>/image/input_bg.gif); height: 23px; width: 182px"></td>
									</tr>
								</table></td>
						</tr>
						<tr>
							<td height="39"
								background="<%=application.getContextPath()%>/image/login_bg3.gif"><table
									width="122" height="17" border="0" align="center"
									cellpadding="0" cellspacing="0">
									<tr>
										<td width="95"><input name="imageField" type="image"
											src="<%=application.getContextPath()%>/image/login_new.gif"
											width="130" height="30" border="0" onclick="doLogin();"></td>
									</tr>
								</table></td>
						</tr>
						<tr>
							<td height="46" align="center" background="image/login_bg4.gif"><img
								src="<%=application.getContextPath()%>/image/login_bgyin.gif"
								width="175" height="27"></td>
						</tr>
						<tr>
							<td height="94" align="center" valign="bottom"
								background="<%=application.getContextPath()%>/image/login_bg5.gif"
								class="font5">天津君利律师事务所综合信息平台</td>
						</tr>
					</table>
				</td>
			</form>
		</tr>
	</table>

</body>
</html>
