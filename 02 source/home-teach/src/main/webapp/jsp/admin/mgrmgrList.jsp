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
            <DIV align=left>您当前的位置: <A href="blank.do?url=mgrmain">管理</A>            &gt;&gt; 站长管理</DIV></TD></TR>
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
						                      <TD width="8%"><div align="center"><STRONG>站长编号</STRONG></div></TD>
                                              <TD width="9%"><div align="center"><STRONG>用户名</STRONG></div></TD>
						                      <TD width="9%"><div align="center"><strong>教员管理</strong></div></TD>
						                      </TR>
                                            
                                            <c:choose>
                                                <c:when test="${empty mgrList}">
                                                    <tr>
                                                        <td colspan="3">没有符合条件的数据!</td>
                                                    </tr>
                                                </c:when>
                                                <c:otherwise>
                                                    <c:forEach items="${mgrList}" var="mgr" varStatus="vs">
                                                                    <c:choose>
                                                                        <c:when test="${vs.count % 2 == 0}">
                                                                         </c:when>
                                                                        <c:otherwise>
                                                                        </c:otherwise>
                                                                    </c:choose>
                                                                  <tr>
                                                                  <TD height=22 width="8%" align=middle>
                                                                  	<div align="center">M${mgr.user_id}</div></TD>
                                                                  <TD width="9%"><div align="center">${mgr.username}</div></TD>
                                                                  <TD><div align="center">
                                                                  	<a href="mgr.do?method=delmgr&mgrid=${mgr.user_id}">删除</a></div></TD>
                                                                  </TR>
                                                    </c:forEach>
                                                </c:otherwise>
                                            </c:choose>
			                       </TBODY>
	                               </TABLE>
		                 	   </DIV></TD>
	                    </TR>
			               </TBODY>
	                  </TABLE>
		            </DIV>
            <DIV align=center>
            <TABLE border=0 cellSpacing=0 cellPadding=0 width=750 height=50>
			</TABLE>
      </DIV></TD></TR></TBODY></TABLE></TD></TR></TBODY></TABLE>

<jsp:include flush="true" page="foot.jsp"/>
