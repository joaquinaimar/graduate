<%@ page language="java" contentType="text/html; charset=UTF-8"%>

<html>
<head>
<title>用户登录</title>
<link href="<%=application.getContextPath()%>/style/login.css"
	type=text/css rel=stylesheet></link>
<%@ include file="/lib/lib.html"%>
<script type="text/javascript">
	function doLogin() {
		document.getElementById("theform").submit();
	}
</script>
</head>
<body id="userlogin_body" class="x-body x-webkit x-chrome x-reset">
	<form id="theform" name="theform" action="controller/login/login.do"
		method="post">
		<div id="panSiteFactory">
			<div id="siteFactoryLogin">
				<div id="user_login">
					<dl>
						<dd id="user_top">
							<ul>
								<li class="user_top_l"></li>
								<li class="user_top_c"></li>
								<li class="user_top_r"></li>
							</ul>
						</dd>
						<dd id="user_main">
							<ul>
								<li class="user_main_l"></li>
								<li class="user_main_c">
									<div class="user_main_box">
										<ul>
											<li class="user_main_text">用户名：</li>
											<li class="user_main_input"><input
												class="TxtUserNameCssClass" id="username" maxlength="20"
												name="username"></li>
										</ul>
										<ul>
											<li class="user_main_text">密 码：</li>
											<li class="user_main_input"><input
												class="TxtPasswordCssClass" id="password" type="password"
												name="password"></li>
										</ul>
									</div>
								</li>
								<li class="user_main_r"><img class="IbtnEnterCssClass"
									id="IbtnEnter"
									style="BORDER-TOP-WIDTH: 0px; BORDER-LEFT-WIDTH: 0px; BORDER-BOTTOM-WIDTH: 0px; BORDER-RIGHT-WIDTH: 0px"
									onclick="doLogin();" src="image/login/user_botton.gif"
									name="IbtnEnter"></li>
							</ul>
						</dd>
						<dd id="user_bottom">
							<ul>
								<li class="user_bottom_l"></li>
								<li class="user_bottom_c"></li>
								<li class="user_bottom_r"></li>
							</ul>
						</dd>
					</dl>
				</div>
			</div>
		</div>
	</form>
</body>
</html>
