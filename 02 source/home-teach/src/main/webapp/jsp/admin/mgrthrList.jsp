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
            <DIV align=left>����ǰ��λ��: <A href="blank.do?url=mgrmain">����</A>            &gt;&gt; ��Ա����</DIV></TD></TR>
        <TR></TR>
        <TR></TR>
        <TR>
          <TD>��
		            <DIV align=center>
			            <TABLE border=0 cellSpacing=0 cellPadding=0 width=770>
              <TBODY>
			                  <TR>
			                	<TD width="770">
   		                  	      <DIV class=Xyline align=center>
			                     <TABLE class=xylist border=0 cellSpacing=1 cellPadding=0 width="100%">
        <TBODY>
						                    <TR class=FLine bgColor=#eef0f2>
						                      <TD width="8%"><STRONG>��Ա���</STRONG></TD>
                                              <TD width="9%"><STRONG>�ƺ�</STRONG></TD>
						                      <TD width="5%"><STRONG>�Ա�</STRONG></TD>
						                      <TD width="10%"><STRONG>����ѧУ</STRONG></TD>
                                              <TD width="10%"><STRONG>�������</STRONG></TD>
						                      <TD width="12%"><strong>�Ǽ�����</strong></TD>
						                      <TD width="9%"><strong>��ϸ��Ϣ</strong></TD>
						                      <TD width="9%"><strong>��Ա����</strong></TD>
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
                                                                        <c:when test="${vs.count % 2 == 0}">                                                                        </c:when>
                                                                        <c:otherwise>                                                                        </c:otherwise>
                                                                    </c:choose>
                                                                  <tr>
                                                                  <TD height=22 width="8%" align=middle>
                                                                  	<A href="mgr.do?method=loadthr&thrid=${thr.user_id}">T${thr.user_id}</A></TD>
                                                                  <TD width="9%">${thr.ch_name}</TD>
                                                                  <TD width="5%">${thr.sex}</TD>
                                                                  <TD width="10%">${thr.school}</TD>
                                                                  <TD width="10%">${thr.education}</TD>
                                                                  <TD width="12%">${thr.registertime}</TD>
                                                                  <TD width="9%">
                                                                  	<a href="mgr.do?method=loadthr&thrid=${thr.user_id}">��ϸ��Ϣ</a></TD>
                                                                  <TD><div align="center">
                                                                  	<a href="mgr.do?method=delthr&thrid=${thr.user_id}">ɾ��</a></div></TD>
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
