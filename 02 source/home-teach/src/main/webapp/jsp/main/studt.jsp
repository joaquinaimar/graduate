<jsp:include page="head.jsp"/>
<%@ page language="java" pageEncoding="GBK"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>    
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>  
<script type="text/javascript">
	function employ() {
		window.self.location = "addstu.do?method=employ&stuid=${stu.user_id}&thrid=${sessionScope.user_id}";
	}

	function modify() {
		window.self.location = "mylist.do?method=loadstu&stuid=${stu.user_id}&isupdate=yes";
	}
</script>
<TABLE border=0 cellSpacing=0 cellPadding=0 width=770>
  <TBODY>
  <TR>
    <TD bgColor=#ffffff vAlign=top align=middle>
      <TABLE border=0 cellSpacing=0 cellPadding=0 width=770>
        <TBODY>
        <TR>
          <TD height=25>
            <DIV align=left>����ǰ��λ��: <A href="mylist.do?method=main_list">��ҳ</A> 
            &gt;&gt; <A href="mylist.do?method=allstuList">ѧԱ��</A> &gt;&gt; ��ϸ��Ϣ</DIV></TD></TR>
        <TR>
          <TD>
            <DIV align=left><IMG align=left src="images/xueyuan.jpg" 
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
	   		                  	     <TABLE width=770 border=0 cellPadding=0 cellSpacing=1><TBODY><TR align=left><TD height=25 width=280 align=left><table width=770 border=0 cellpadding=0 cellspacing=1>
                                       <tbody>
                                         <tr align=middle bgcolor=#eef0f2>
                                           <td height=25 
                colspan=4><strong>::::ѧԱ����ҽ̣���Ա����ϸ����::::</strong></td>
                                         </tr>
                                         <tr>
                                           <td height=25 width=85 align=left><strong>ѧԱ�ƺ���</strong></td>
                                           <td height=25 width=280 align=left>${stu.firname}</td>
                                           <td height=25 width=85 
                  align=left><strong>ѧԱ��ţ�</strong></td>
                                           <td  height=25 width=280 align=left>S${stu.user_id}</td>
                                         </tr>
                                         <tr bgcolor=#eef0f2>
                                           <td bgcolor=#eef0f2 height=25 width=85 
                  align=left><strong>ѧԱ�Ա�</strong></td>
                                           <td bgcolor=#eef0f2 height=25 width=280 align=left>${stu.sex}</td>
                                           <td bgcolor=#eef0f2 height=25 width=85 
                  align=left><strong>�����꼶��</strong></td>
                                           <td bgcolor=#eef0f2 height=25 width=280 align=left>${stu.schoolgrade}</td>
                                         </tr>
                                         <tr>
                                           <td height=25 width=85 align=left><strong>ѧϰ�����</strong></td>
                                           <td height=25 width=280 align=left>${stu.studyinf}</td>
                                           <td height=25 width=85 align=left><strong>�������ʣ�</strong></td>
                                           <td height=25 width=280 align=left>${stu.pay}</td>
                                         </tr>
                                         <tr bgcolor=#eef0f2>
                                           <td bgcolor=#eef0f2 height=25 width=85 align=left><strong>��ϵ�绰��</strong></td>
                                           <td bgcolor=#eef0f2 height=25 width=280 align=left>${stu.telephone}</td>
                                           <td height=25 width=85 
                  align=left><strong>�ֻ���</strong></td>
                                           <td height=25 width=280 align=left>${stu.mobel}</td>
                                         </tr>
                                         
                                         <tr align=left>
                                           <td height=25 width=85 align=left><strong>��ͥסַ��</strong></td>
                                           <td height=25 width=280 align=left>${stu.address}</td>
                                           <td height=25 width=85  align=left><strong>״̬��</strong></td>
                                           <td height=25 width=280 align=left>${stu.state}</td>
                                         </tr>
                                         <tr bgcolor=#eef0f2 align=left>
                                           <td class=text height=25 
                  colspan=4><strong>::::��ԱҪ����ϸ˵��::::</strong></td>
                                         </tr>
                                         <tr align=left>
                                           <td height=80 colspan=4><label> ${stu.threquire} </label>                                           </td>
                                         </tr>
                                         <tr bgcolor=#eef0f2>
                                          
                                          	<c:set value="${stu.prt_id}" var="prt_temp_id" scope="page"/>
                                            <c:set value="Teacher" var="teacher" scope="page"/>
                                            <c:choose>
                                            	<c:when test="${sessionScope.rote eq pageScope.teacher}">
	                                            	<td height=25 width=100 align=left>
	                                                   <label>
	                                                     <input name="employ" type="button" id="employ" value="ӦƸ" onclick="employ()"/>
	                                                   </label>
	                                               </td>
	                                               <td height=25 width=100 align=left colspan=3>
                                                   <label>
                                                   	 <input type="button" name="back" id="back" value="����" onClick="history.back(-1)" />
                                                   </label>
                                               </td>
                                            	</c:when>
                                            	<c:when test="${sessionScope.user_id eq pageScope.prt_temp_id}">
                                            		<td height=25 width=100 align=left>
	                                                   <label>
	                                                     <input name="modify" type="button" id="modify" value="�޸���Ϣ" onclick="modify()"/>
	                                                   </label>
	                                               </td>
	                                               <td height=25 width=100 align=left colspan=3>
	                                               	 <label>
	                                             		<input type="button" name="back" id="back" value="����" onClick="history.back(-1)" />
	                                              	 </label>
	                                               </td>
                                            	</c:when>
                                            	<c:otherwise>
	                                            	<td height=25 width=100 align=left colspan=4>
	                                                   <label>
	                                                   	 <input type="button" name="back" id="back" value="����" onClick="history.back(-1)" />
	                                                   </label>
	                                               </td>
                                            	</c:otherwise>
                                            </c:choose>
                                           
                                           </td>
                                         </tr>
                                         <tr>
                                         	<td height=25 colspan="4"><strong>::::��ְ��Ϣ::::</strong></td>
                                         </tr>
                                         <tr></tr>
                                       </tbody>
                                     </table></TD>
                                         </TR>
	   		                  	   </TBODY>
	   		                  	   </TABLE>
   		                  	      </DIV>	
			                    </TD>
	                    </TR>
                        
		                  </TBODY>
		                </TABLE>
	              </DIV>
            <DIV align=center>
            <TABLE border=0 cellSpacing=0 cellPadding=0 width=770 height=50>
			</TABLE>
</DIV></TD></TR></TBODY></TABLE></TD></TR></TBODY></TABLE>

<TD width="770">
   		                  	      <DIV class=Xyline align=center>
			                     <TABLE class=xylist border=0 cellSpacing=1 cellPadding=0 width="770">
        <TBODY>
						                    <TR class=FLine bgColor=#eef0f2>
                                           	  <TD width="8%"><STRONG>��Ա���</STRONG></TD>
						                      <TD width="8%"><STRONG>��Ա���</STRONG></TD>
                                              <TD width="9%"><STRONG>�ƺ�</STRONG></TD>
						                      <TD width="5%"><STRONG>�Ա�</STRONG></TD>
						                      <TD width="10%"><STRONG>����ѧУ</STRONG></TD>
                                              <TD width="10%"><STRONG>�������</STRONG></TD>
						                      <TD width="12%"><STRONG>������Ŀ</STRONG></TD>
						                      <TD width="9%"><STRONG>״̬</STRONG></TD>
						                      <TD width="14%"><STRONG>�Ǽ�����</STRONG></TD>
						                      <TD width="9%"><STRONG>��ϸ��Ϣ</STRONG></TD>
                                            </TR>
                                            
                                            <c:choose>
                                                <c:when test="${empty thrList}">
                                                    <tr bgColor=#ffffff>
                                                        <td colspan="10">û�з�������������!</td>
                                                    </tr>
                                                </c:when>
                                                <c:otherwise>
                                                    <c:forEach items="${thrList}" var="thr" varStatus="vs">
                                                                    <c:choose>
                                                                        <c:when test="${vs.count % 2 == 0}">
                                                                            <TR align=middle bgColor=#ffffff>
                                                                        </c:when>
                                                                        <c:otherwise>
                                                                            <TR align=middle bgColor=#eef0f2>
                                                                        </c:otherwise>
                                                                    </c:choose>
                                                                    
                                                                   <c:choose>
                                                                        <c:when test="${stu.state eq '�Ѱ���'}">
                                                                        	<TD width="8%"></TD> 
                                                                        </c:when>
                                                                        <c:when test="${sessionScope.rote eq 'Teacher'}">
                                                                        	<TD width="8%"></TD> 
                                                                        </c:when>
                                                                        <c:when test="${sessionScope.user_id eq stu.prt_id}">
                                                                        	<TD width="8%">
                                                                        		<a href="addstu.do?method=choosethr&thrid=${thr.user_id}&stuid=${stu.user_id}">Ƹ��</a></div>
                                                                        	</TD> 
                                                                        </c:when>
                                                                        <c:otherwise>
                                                                        	<TD width="8%"></TD>
                                                                        </c:otherwise>
                                                                    </c:choose>
                                                                  
                                                                  
                                                                  <TD height=22 width="8%" align=middle><A href="mylist.do?method=teacher&id=${thr.user_id}">S${thr.user_id}</A></TD>
                                                                  <TD width="9%">${thr.ch_name}</TD>
                                                                  <TD width="5%">${thr.sex}</TD>
                                                                  <TD width="10%">${thr.school}</TD>
                                                                  <TD width="10%">${thr.education}</TD>
                                                                  <TD width="12%">${thr.onesubject}</TD>
                                                                  <TD width="9%"><FONT color=#cc0000>${thr.state}</FONT></TD>
                                                                  <TD width="14%">${thr.registertime}</TD>
                                                                  <TD width="9%"><A href="mylist.do?method=teacher&id=${thr.user_id}">��ϸ��Ϣ</A></TD></TR>
                                                    </c:forEach>
                                                </c:otherwise>
                                            </c:choose>
			                       </TBODY>
	                               </TABLE>
		                 	   </DIV>	
			                    </TD>
<jsp:include flush="true" page="foot.jsp"/>
