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
            <DIV align=left>����ǰ��λ��: <A href="mylist.do?method=main_list">��ҳ</A> 
          &gt;&gt; ��Ա��</DIV></TD></TR>
        <TR>
          <TD>
            <DIV align=left><IMG align=left src="images/jiaoyuan.jpg" 
            width=570 height=40></DIV></TD></TR>
        <TR></TR>
        <TR>
          <TD>��
		            <DIV align=center>
			            <TABLE border=0 cellSpacing=0 cellPadding=0 width=770>
              <TBODY>
			                  <TR>
			                	<TD width="770">
   		                  	      <DIV class=Xyline align=center>
			                     <TABLE class=xylist border=0 cellSpacing=1 cellPadding=0 width="88%">
        <TBODY>
						                    <TR class=FLine bgColor=#eef0f2>
						                      <TD height=22 width="6%"><div align="center"><STRONG>��Ա���</STRONG></div></TD>
                                              <TD width="8%"><div align="center"><STRONG>�ƺ�</STRONG></div></TD>
						                      <TD width="5%"><div align="center"><STRONG>�Ա�</STRONG></div></TD>
						                      <TD width="10%"><div align="center"><STRONG>����ѧУ</STRONG></div></TD>
                                              <TD width="8%"><div align="center"><STRONG>�������</STRONG></div></TD>
						                      <TD width="9%"><div align="center"><STRONG>������Ŀ</STRONG></div></TD>
						                      <TD width="8%"><div align="center"><STRONG>״̬</STRONG></div></TD>
						                      <TD width="16%"><div align="center"><STRONG>�Ǽ�����</STRONG></div></TD>
						                      <TD width="9%"><STRONG>��ϸ��Ϣ</STRONG></TD>
                                            </TR>
                                            
                                            <c:choose>
                                                <c:when test="${empty thrList}">
                                                    <tr>
                                                        <td colspan="9">û�з�������������!</td>
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
                                                                  <TD width="9%"><A href="mylist.do?method=loadthr&thrid=${thr.user_id}">��ϸ��Ϣ</A></TD></TR>
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
