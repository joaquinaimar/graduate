<jsp:include page="head.jsp"/>
<%@ page language="java" pageEncoding="GBK"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>    
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>  

<TABLE border=0 cellSpacing=0 cellPadding=0 width=770>
  <TBODY>
  <TR>
    <TD bgColor=#ffffff vAlign=top align=middle>
      <TABLE border=0 cellSpacing=0 cellPadding=0 width=770>
        <TBODY>
        <TR>
          <TD height=25>
            <DIV align=left>您当前的位置: <A href="blank.do?url=mgrmain">管理</A>            &gt;&gt; 学生管理</DIV></TD></TR>
        <TR></TR>
        <TR></TR>
        <TR>
          <TD>　
		            <DIV align=center>
			            <TABLE border=0 cellSpacing=0 cellPadding=0 width=770>
              <TBODY>
			                  <TR>
			                	<TD width="770">
   		                  	      <DIV class=Xyline align=center>
			                     <TABLE class=xylist border=0 cellSpacing=1 cellPadding=0 width="100%">
        <TBODY>
						                    <TR class=FLine bgColor=#eef0f2>
						                      <TD width="8%"><div align="center"><STRONG>学生编号</STRONG></div></TD>
                                              <TD width="9%"><div align="center"><STRONG>用户名</STRONG></div></TD>
						                      <TD width="5%"><div align="center"><strong>称呼</strong></div></TD>
						                      <TD width="10%"><div align="center"><strong>性别</strong></div></TD>
                                              <TD width="9%"><div align="center"><strong>详细信息</strong></div></TD>
						                      <TD width="9%"><strong>教员管理</strong></TD>
						                      </TR>
                                            
                                            <c:choose>
                                                <c:when test="${empty prtList}">
                                                    <tr>
                                                        <td colspan="9">没有符合条件的数据!</td>
                                                    </tr>
                                                </c:when>
                                                <c:otherwise>
                                                    <c:forEach items="${prtList}" var="prt" varStatus="vs">
                                                                    <c:choose>
                                                                        <c:when test="${vs.count % 2 == 0}">                                                                        </c:when>
                                                                        <c:otherwise>                                                                        </c:otherwise>
                                                                    </c:choose>
                                                                  <tr>
                                                                  <TD height=22 width="8%" align=middle>
                                                                  	<div align="center"><A href="mgr.do?method=loadstu&stuid=${prt.user_id}">P${prt.user_id}</A></div></TD>
                                                                  <TD width="9%"><div align="center">${prt.username}</div></TD>
                                                                  <TD width="5%"><div align="center">${prt.ch_name}</div></TD>
                                                                  <TD width="10%"><div align="center">${prt.sex}</div></TD>
                                                                  <TD width="9%">
                                                                  	<div align="center"><a href="mgr.do?method=loadstu&stuid=${prt.user_id}">详细信息</a></div></TD>
                                                                  <TD><div align="center">
                                                                  	<a href="mgr.do?method=delprt&prtid=${prt.user_id}">删除</a></div></TD>
                                                                  </TR>
                                                    </c:forEach>
                                                </c:otherwise>
                                            </c:choose>
			                       </TBODY>
	                               </TABLE>
		                 	   </DIV>	
			                    </TD>
	                    </TR>
			               </TBODY>
	                  </TABLE>
		            </DIV>
            <DIV align=center>
            <TABLE border=0 cellSpacing=0 cellPadding=0 width=750 height=50>
			</TABLE>
            </DIV></TD></TR></TBODY></TABLE></TD></TR></TBODY></TABLE>

<jsp:include flush="true" page="foot.jsp"/>
