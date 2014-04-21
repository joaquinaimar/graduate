<jsp:include page="head.jsp"/>
<%@ page language="java" pageEncoding="GBK"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>    
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>  
<TABLE border=0 cellSpacing=0 cellPadding=0 width=770>
  <TBODY>
  <TR>
    <TD width="770" align=middle vAlign=top bgColor=#ffffff>
      <TABLE border=0 cellSpacing=0 cellPadding=0 width=770>
        <td width="770">
        <TBODY>
        <TR>
          <TD height=25>
            <DIV align=left>您当前的位置: <A href="mylist.do?method=main_list">首页</A> 
            &gt;&gt; 学员库</DIV></TD></TR>
        <TR>
          <TD>
            <DIV align=left><IMG align=left src="images/xueyuan.jpg" 
            width=570 height=40></DIV></TD></TR>
        <TR></TR>
        <TR>
          <TD>　
		            <DIV align=center>
			            <TABLE border=0 cellSpacing=0 cellPadding=0 width=770>
                    <TBODY>
			                  <TR>
			                	<TD width="750">
	   		                  	   <DIV class=Xyline align=center>
			                     <TABLE width="93%" border=0 cellPadding=0 cellSpacing=1 class=xylist>
<TBODY>
						                    <TR class=FLine bgColor=#eef0f2>
						                      <TD width="8%"><STRONG>学员编号</STRONG></TD>
                                              <TD width="9%"><STRONG>称呼</STRONG></TD>
						                      <TD width="5%"><STRONG>性别</STRONG></TD>
						                      <TD width="10%"><STRONG>学员情况</STRONG></TD>
						                      <TD width="10%"><STRONG>需辅导科目</STRONG></TD>
						                      <TD width="18%"><STRONG>所在位置</STRONG></TD>
						                      <TD width="8%"><STRONG>状态</STRONG></TD>
						                      <TD width="20%"><STRONG>登记日期</STRONG></TD>
						                      <TD width="9%"><STRONG>详细信息</STRONG></TD>
                                            </TR>
                                                                                        <c:choose>
                                                <c:when test="${empty stuList}">
                                                    <tr>
                                                        <td colspan="9">没有符合条件的数据!</td>
                                                    </tr>
                                                </c:when>
                                                <c:otherwise>
                                                    <c:forEach items="${stuList}" var="stu" varStatus="vs">
                                                                    <c:choose>
                                                                        <c:when test="${vs.count % 2 == 0}">
                                                                            <TR align=middle bgColor=#ffffff>
                                                                        </c:when>
                                                                        <c:otherwise>
                                                                            <TR align=middle bgColor=#eef0f2>
                                                                        </c:otherwise>
                                                                    </c:choose>
                                 								  <TD height=22 width="8%" align=middle><A href="mylist.do?method=loadstu&stuid=${stu.user_id}">S${stu.user_id}</A></TD>
                                                                  <TD width="9%">${stu.firname}</TD>
                                                                  <TD width="5%">${stu.sex}</TD>
                                                                  <TD width="10%">${stu.schoolgrade}</TD>
                                                                  <TD width="10%">${stu.onesubject}</TD>
                                                                  <TD width="18%">${stu.address}</TD>
                                                                  <TD width="8%"><FONT color=#cc0000>${stu.state}</FONT></TD>
                                                                  <!--<TD width="9%">已安排</TD>-->
                                                                  <TD width="20%">${stu.postdate}</TD>
                                                                  <TD width="9%"><A href="mylist.do?method=loadstu&stuid=${stu.user_id}">详细信息</A></TD>
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
