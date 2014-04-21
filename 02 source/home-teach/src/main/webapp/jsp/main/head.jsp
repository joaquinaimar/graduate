<%@ page language="java" import="java.util.*" pageEncoding="GBK"%>
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
          class=dh bgColor=#c60001 height=23 width=247>
        <div align="left">欢迎: [${sessionScope.username}]进入本站!
        </div></TD><TD style="TEXT-ALIGN: left; PADDING-LEFT: 10px; PADDING-TOP: 4px" 
          class=dh bgColor=#c60001 height=23 width=203>
          <span class="STYLE2">          </span></TD>
<TD style="TEXT-ALIGN: left; PADDING-LEFT: 10px; PADDING-TOP: 4px" 
          class=dh bgColor=#c60001 height=23 width=80><c:set value="${rote}" var="tempurl" scope="page"/>
			<c:set value="Teacher" var="thr" scope="page"/>
			<c:set value="Parent" var="prt" scope="page"/>
         	<c:if test="${pageScope.tempurl eq pageScope.prt}">     
			<span class="STYLE3"><a href="mylist.do?method=loadprt&prtid=${user_id}&isupdate=yes" class=dh>个人中心</a>			    </span></c:if> 
			<span class="STYLE3">
			<c:if test="${pageScope.tempurl eq pageScope.thr}">     
			  <a href="mylist.do?method=loadthr&thrid=${user_id}&isupdate=yes" class=dh>个人中心</a></c:if>
		</span>
	  <c:if test="${pageScope.tempurl eq pageScope.thr}"></c:if></TD>
<TD style="PADDING-RIGHT: 10px; PADDING-TOP: 4px" class=dh 
          bgColor=#c60001 height=23 width=160 align=right><fmt:formatDate value="${today}" dateStyle="full"/>
          </TD>
     <TD style="TEXT-ALIGN: left; PADDING-LEFT: 10px; PADDING-TOP: 4px" 
          class=dh bgColor=#c60001 height=23 width=80><a href="login.do?method=quit" class=dh>退出</a></TD>
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
          <TD style="TEXT-ALIGN: left; PADDING-LEFT: 10px; PADDING-TOP: 4px" 
          class=dh bgColor=#c60001 height=23 width=595><A class=dh 
            href="mylist.do?method=main_list">首 页 </A>| <A class=dh 
            href="blank.do?url=addstu">请家教</A>| <A 
            class=dh href="mylist.do?method=allstuList">学员库</A> | <A 
            class=dh href="mylist.do?method=allthrList">教员库</A></TD>
         
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