<%@include file="/WEB-INF/jsp/common/taglibs.jsp" %>
<%@ page language="java" pageEncoding="utf-8"%>
<table width="1024" border="0" cellspacing="0" cellpadding="0">
	<tr>
		<td background="${contextPath}/common/img/normal_02.gif" width="25">&nbsp;
		</td>
		<td background="${contextPath}/common/img/retail.gif" width="76">
			<a id="tabPlaceMgr" class="nav_link" href="${contextPath}/place/placeShow.action">
			<span><nobr>场地管理</nobr></span></a>
		</td>
		<td background="${contextPath}/common/img/retail.gif" width="76">
			<a id="tabMember" class="nav_link" href="${contextPath}/member/memberMgr!view.action">
			<span><nobr>会员管理</nobr></span></a>
		</td>
		<td background="${contextPath}/common/img/retail.gif" width="76">
			<a id="tabResetPassUsername" name="tabResetPassUsername" class="nav_link" href="/retailer/ResetPassUsername.action">
			<span><nobr>器材管理</nobr></span></a>
		</td>
		<td background="${contextPath}/common/img/retail.gif" width="76">
			<a id="tabLadder" class="nav_link" href="${contextPath}/ladder/ladderShow.action">
			<span><nobr>陪练教练</nobr></span></a>
		</td>
		<td background="${contextPath}/common/img/normal_06.gif" width="123">
		</td>
		<td background="${contextPath}/common/img/normal_08.gif" width="578">
			<div style="padding-left: 450px;color: white; font-size: small;">
				你好，${user_info.userName}|<a class="logout" href="">退出</a>
			</div>
		</td>
	</tr>
</table>
<img src="${contextPath}/common/img/Oklahoma_06.gif" width="1024" height="23" style="display:block;" alt="">