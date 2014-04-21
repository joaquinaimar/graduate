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
            <DIV align=left>您当前的位置: <A href="mylist.do?method=main_list">首页</A> 
          &gt;&gt; 教员库</DIV></TD></TR>
        <TR>
          <TD>
            <DIV align=left><IMG align=left src="images/jiaoyuan.jpg" 
            width=570 height=40></DIV></TD></TR>
        <TR></TR>
        <TR>
          <TD>　
		            <DIV align=center>
			            <TABLE border=0 cellSpacing=0 cellPadding=0 width=770>
              <TBODY>
			                  <TR>
			                	<TD width="770">
   		                  	      <DIV class=Xyline align=center>
			                     <TABLE class=xylist border=0 cellSpacing=1 cellPadding=0 width="88%">
        <TBODY>
						                    <TR class=FLine bgColor=#eef0f2>
						                      <TD height=22 width="6%"><div align="center"><STRONG>教员编号</STRONG></div></TD>
                                              <TD width="8%"><div align="center"><STRONG>称呼</STRONG></div></TD>
						                      <TD width="5%"><div align="center"><STRONG>性别</STRONG></div></TD>
						                      <TD width="10%"><div align="center"><STRONG>所在学校</STRONG></div></TD>
                                              <TD width="8%"><div align="center"><STRONG>教育情况</STRONG></div></TD>
						                      <TD width="9%"><div align="center"><STRONG>辅导科目</STRONG></div></TD>
						                      <TD width="8%"><div align="center"><STRONG>状态</STRONG></div></TD>
						                      <TD width="16%"><div align="center"><STRONG>登记日期</STRONG></div></TD>
						                      <TD width="9%"><STRONG>详细信息</STRONG></TD>
                                            </TR>
                                            
                                            <c:choose>
                                                <c:when test="${empty thrList}">
                                                    <tr>
                                                        <td colspan="9">没有符合条件的数据!</td>
                                                    </tr>
                                                </c:when>
                                                <c:otherwise>
                                                    <c:forEach items="${thrList}" var="thr" varStatus="vs">
                                                                    <c:choose>
                                                                        <c:when test="${vs.count % 2 == 0}">
                                                                        <TR align=middle bgColor=#ffffff>                                                                        </c:when>
                                                                        <c:otherwise>
                                                                        <TR align=middle bgColor=#eef0f2>                                                                        </c:otherwise>
                                                                    </c:choose>
                                                                  <TD height=22 width="6%" align=middle><div align="center"><A href="mylist.do?method=loadthr&thrid=${thr.user_id}">S${thr.user_id}</A></div></TD>
                                                                  <TD width="8%"><div align="center">${thr.ch_name}</div></TD>
                                                                  <TD width="5%"><div align="center">${thr.sex}</div></TD>
                                                                  <TD width="10%"><div align="center">${thr.school}</div></TD>
                                                                  <TD width="8%"><div align="center">${thr.education}</div></TD>
                                                                  <TD width="10%"><div align="center">${thr.onesubject}</div></TD>
                                                                  <TD width="8%"><div align="center"><FONT color=#cc0000>${thr.state}</FONT></div></TD>
                                                                  <TD width="16%"><div align="center">${thr.registertime}</div></TD>
                                                                  <TD width="9%"><A href="mylist.do?method=loadthr&thrid=${thr.user_id}">详细信息</A></TD></TR>
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
