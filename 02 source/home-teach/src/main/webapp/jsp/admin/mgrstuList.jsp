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
            <DIV align=left>����ǰ��λ��: <A href="blank.do?url=mgrmain">����</A>            &gt;&gt; ѧԱ����</DIV></TD></TR>
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
						                      	<TD width="8%">
                                                                        <div align="center"><STRONG>ѧԱ���</STRONG>	
                                                                         </div>
                                                                    </TD>
															  <TD width="9%">
																  <div align="center"><STRONG>�ƺ�</STRONG>															        
                                                                  </div></TD>
															  <TD width="5%">
																  <div align="center"><STRONG>�Ա�</STRONG>															        
                                                                  </div></TD>
															  <TD width="18%">
																  <div align="center"><STRONG>����λ��</STRONG>															       
                                                                   </div></TD>
															  <TD width="8%">
																  <div align="center"><STRONG>״̬</STRONG>															        
                                                                  </div></TD>
															  <TD width="20%">
																  <div align="center"><STRONG>�Ǽ�����</STRONG>															        
                                                                  </div></TD>
																	<TD width="10%">
																	<div align="center"><STRONG>��ϸ��Ϣ</STRONG>																        
                                                                    </div></TD>
																	<TD width="10%">
																	<div align="center"><strong>ѧԱ����</strong>																        
                                                                    </div></TD>
						                      </TR>
                                            
                                            <c:choose>
                                                <c:when test="${empty stuList}">
                                                    <tr>
                                                        <td colspan="9">û�з�������������!</td>
                                                    </tr>
                                                </c:when>
                                                <c:otherwise>
                                                    <c:forEach items="${stuList}" var="stu" varStatus="vs">
                                                                    <c:choose>
                                                                        <c:when test="${vs.count % 2 == 0}">                                                                        </c:when>
                                                                        <c:otherwise>                                                                        </c:otherwise>
                                                                    </c:choose>
                                                                  <tr>
                                                                  
                                                                 <TD height=22 width="8%" align=middle>
																				<div align="center"><A href="mgr.do?method=loadstu&stuid=${stu.user_id}">S${stu.user_id}</A>																			
                                                                                </div></TD>
                                                                              <TD width="9%">
                                                                                    <div align="center">${stu.firname}																		
                                                                                    </div></TD>
                                                                             <TD width="5%">
                                                                                    <div align="center">${stu.sex}																			    
                                                                                    </div></TD>
                                                                              <TD width="18%">
                                                                                    <div align="center">${stu.address}																		                                                                                </div></TD>
                                                                              <TD width="8%">
                                                                                  <div align="center"><FONT color=#cc0000>${stu.state}</FONT>																		
                                                                                  </div></TD>
																		   
																				<TD width="20%">
																				<div align="center">${stu.postdate}																			
                                                                                </div></TD>
																				<TD width="5%">
																				<div align="center"><A href="mgr.do?method=loadstu&stuid=${stu.user_id}">��ϸ��Ϣ</A>																			
                                                                                </div></TD>
																				<TD width="4%">
																				<div align="center"><a href="mgr.do?method=delstu&stuid=${stu.user_id}">ɾ��</a>																			
                                                                                </div></TD>
                                                                  
                                                                  
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
