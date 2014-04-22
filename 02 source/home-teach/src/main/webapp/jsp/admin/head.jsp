<%@ page language="java" pageEncoding="GBK"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>    
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>    
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <TITLE>家教网</TITLE>
<META content=zh-cn http-equiv=Content-Language>
<META content="text/html; charset=gb2312" http-equiv=Content-Type>
<LINK 
rel="shortcut icon" href="favicon.ico"><LINK rel=stylesheet type=text/css 
href="images/indexcss.css">
<STYLE type=text/css>
.qingdan TR:hover {
	BACKGROUND-COLOR: #c0c0c0
}
.STYLE2 {color: #FFFF00}
.STYLE3 {color: #FFFFFF}
.STYLE4 {color: #996633}
.STYLE5 {color: #99FF33}
</STYLE>

<META name=GENERATOR content="MSHTML 8.00.6001.18702"></HEAD>
<BODY background=images/bg.gif>
<CENTER>
<TABLE border=0 cellSpacing=0 cellPadding=0 width=770 bgColor=#ffffff 
  height=4>
  <TBODY>
  <TR>
    <TD width="770"></TD>
  </TR></TBODY></TABLE>
<TABLE border=0 cellSpacing=0 cellPadding=0 width=770 bgColor=#ffffff>
  <TBODY>
  <TR>
 	 <TD style="TEXT-ALIGN: left; PADDING-LEFT: 10px; PADDING-TOP: 4px" 
          class=dh bgColor=#c60001 height=23 width=237>
      <div align="left">欢迎: [${sessionScope.username}]进入本站!</div></TD><TD style="TEXT-ALIGN: left; PADDING-LEFT: 10px; PADDING-TOP: 4px" 
          class=dh bgColor=#c60001 height=23 width=224>
          <span class="STYLE2">
          </span></TD>
     <TD style="TEXT-ALIGN: left; PADDING-LEFT: 10px; PADDING-TOP: 4px" 
          class=dh bgColor=#c60001 height=23 width=80>
          <a href="blank.do?url=modifymgrpwd" class=dh>[密码修改]</a></TD>
<TD style="PADDING-RIGHT: 10px; PADDING-TOP: 4px" class=dh 
          bgColor=#c60001 height=23 width=160 align=right>[
  <fmt:formatDate value="${today}" dateStyle="full"/>
      ]</TD>
     <TD style="TEXT-ALIGN: left; PADDING-LEFT: 10px; PADDING-TOP: 4px" 
          class=dh bgColor=#c60001 height=23 width=69><a href="login.do?method=quit" class=dh >[退出]</a></TD>
  </TR></TBODY></TABLE>
<TABLE border=0 cellSpacing=0 cellPadding=0 width=770 bgColor=#ffffff 
  height=2>
  <TBODY>
  <TR>
    <TD width="770"></TD>
  </TR></TBODY></TABLE>
<TABLE border=0 cellSpacing=0 cellPadding=0 width=770 bgColor=#ffffff>
  <TBODY>
  <TR>
    <TD width="770" align=middle vAlign=top>
      <TABLE border=0 cellSpacing=0 cellPadding=0 width=770>
        <TBODY>
        <TR>
          <TD height=23 width=55 align=left><IMG src="images/dh_left.jpg" 
            width=55 height=23></TD>
          <TD style="TEXT-ALIGN: left; PADDING-LEFT: 10px; PADDING-TOP: 4px" class=dh bgColor=#c60001 height=23 width=595>            <a href="blank.do?url=mgrmain" class=dh>管理</a><span class="STYLE3">
          |</span><A href="mgr.do?method=prtList" class=dh >学生管理</A><span class="STYLE3"> |</span><a href="mgr.do?method=stuList" class=dh>学员管理</a><span class=dh> |<A  class=dh href="mgr.do?method=thrList">教员管理</A>
          <c:set value="${sessionScope.username}" var="adm" scope="page"/>
			<c:set value="admin" var="mgrname" scope="page"/>
         	<c:if test="${pageScope.mgrname eq pageScope.adm}">|<A class=dh href="mgr.do?method=mgrList">站长管理</A>
         	  |<A class=dh href="blank.do?url=addmgr">添加站长</A></c:if>
            </span>
            <c:if test="${pageScope.mgrname eq pageScope.adm}"></c:if></TD>
          </TR>
        <TR>
        <TD height=2 colSpan=3></TD></TR></TBODY></TABLE></TD></TR></TBODY></TABLE>
<TABLE border=0 cellSpacing=0 cellPadding=0 width=770 bgColor=#ffffff>
  <TBODY>
  <TR>
    <TD vAlign=center align=middle></TD></TR></TBODY></TABLE>
<TABLE border=0 cellSpacing=0 cellPadding=0 width=770 bgColor=#ffffff 
  height=2>
  <TBODY>
  <TR>
    <TD width="770"></TD>
  </TR></TBODY></TABLE>
<TABLE border=0 cellSpacing=0 cellPadding=0 width=770 bgColor=#ffffff>
  <TBODY>
  <TR>
    <TD width="770" align=middle>
      <TABLE border=0 cellSpacing=0 cellPadding=0 width=770 bgColor=#cccccc 
      height=3>
        <TBODY>
        <TR>
          <TD></TD></TR></TBODY></TABLE></TD></TR></TBODY></TABLE>