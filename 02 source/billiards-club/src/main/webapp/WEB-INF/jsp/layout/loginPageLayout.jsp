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
			var errorMessage = document.getElementById("errorMessage");
			if(currentPage.value == "HelpfulLink")
				changeColor(document.getElementById("selectedLink").value);
			if(currentPage.value == "VerifyUser" && errorMessage != null && errorMessage.value !=''){
				if(document.getElementById("selectedLanguage").value =="es")
					alert("No hemos encontrado su cuenta. Compruebe la informaci髇 introducida. Este sitio web est�dise馻do para proporcionar informaci髇 a los vendedores minoristas de Illinois con n鷐eros de certificaci髇 de FNS que disponen de contrato con Xerox. Si tiene un contrato con un procesador externo (TPP), p髇gase en contacto con 閘 para obtener informaci髇 o llame al Servicio de asistencia al minorista de Illinois al 800-418-8000.");
				else
					alert("We did not find your account.  Please check your information.  This website is designed to provide information to Illinois retailers with FNS certification numbers who contract with Xerox. If you contract with a Third Party Processor(TPP) you will need to contact your TPP for information or call the Illinois Retailer Help Desk at 800-418-8000.");
					
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
		<tiles:insertAttribute name="body" />
	</div>
	<div id="footer">
		<tiles:insertAttribute name="footer" />
	</div>
</body>
</html>