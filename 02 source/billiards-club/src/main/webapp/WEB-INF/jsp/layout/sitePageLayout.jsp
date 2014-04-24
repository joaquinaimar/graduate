<%@include file="/WEB-INF/jsp/common/taglibs.jsp" %>
<%@ page language="java" pageEncoding="utf-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<tiles:importAttribute/>
<html>
<head>
	<meta http-equiv="Content-type" content="text/html; charset=gb2312" >
	<title>Need to Insert Title</title>
	<link rel="stylesheet" type="text/css" href="${contextPath}/common/css/style.css">
	<script type="text/javascript">
		function newImage(arg) {
			if (document.images) {
				rslt = new Image();
				rslt.src = arg;
				return rslt;
			}
		}
		function changeImages() {
			if (document.images ) {
				for (var i=0; i<changeImages.arguments.length; i+=2) {
					document[changeImages.arguments[i]].src = changeImages.arguments[i+1];
				}
			}
		}
		function setTabStyle() {
			var currentPage = document.getElementById("currentPage");
			if (currentPage != null) {
				var tabIndex = document.getElementById("tab" + currentPage.value);
				tabIndex.className = "nav_link_selected";
			}
		}
		function changeColor(s) {
		  for (var i=1; i<=5; i++) {
		    if(document.getElementById('helpfulLink'+i)) {
		      document.getElementById('helpfulLink'+i).className  = 'helpfulLink'+i==s ? "helpful_link_clicked" :"nav_helpful_link";
		    }
		  }
		}
	</script>
</head>
<body onload="setTabStyle();">
	<div id="header">
		<table width="1024" height="50" border="0" cellspacing="0" background="${contextPath}/common/img/retail.gif" alt="California Retailer Home" title="California Retailer Home">
			<tr>
				<td background="${contextPath}/common/img/normal_02.gif" width="25">&nbsp;</td>
				<td>
		        <span style="font-size: 16px; color: white; font-weight: bold; padding-left: 5px;">
		         	运动台球俱乐部管理系统
		        </span>
				</td>
			</tr>
		</table>
		<tiles:insertAttribute name="header" />
	</div>
	<div id="pageContent">
		<tiles:insertAttribute name="left" />
		<tiles:insertAttribute name="right" />
	</div>
	<div id="footer">
		<tiles:insertAttribute name="footer" />
	</div>
</body>
</html>