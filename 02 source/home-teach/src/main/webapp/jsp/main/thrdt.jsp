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
            &gt;&gt; <A href="mylist.do?method=allthrList">��Ա��</A>&gt;&gt; ��ϸ��Ϣ</DIV></TD></TR>
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
	   		                  	     <TABLE width=770 border=0 cellPadding=0 cellSpacing=1>
                                       <TBODY>
                                         <TR align=middle bgColor=#eef0f2>
                                           <TD height=25 
                colSpan=4><STRONG>::::��Ա��ϸ����::::</STRONG></TD>
                                         </TR>
                                         <TR>
                                           <TD height=25 width=85 align=left><STRONG>��Ա�ƺ���</STRONG></TD>
                                           <TD height=25 width=680 align=left>${thr.ch_name}</TD>
                                         </TR>
                                          <TR bgColor=#eef0f2>
                                           <TD bgColor=#eef0f2 height=25 width=85 
                  align=left><STRONG>��Ա��ţ�</STRONG></TD>
                                           <TD bgColor=#eef0f2 height=25 width=680 align=left>${thr.user_id}</TD>             
                                         </TR>
                                         <TR>
                                           <TD height=25 width=85 align=left><STRONG>��Ա�Ա�</STRONG></TD>
                                           <TD height=25 width=680 align=left>${thr.sex}</TD>
                                         </TR>
                                         <TR bgColor=#eef0f2>
                                           <TD bgColor=#eef0f2 height=25 width=85 
                  align=left><STRONG>�������£�</STRONG></TD>
                                           <TD bgColor=#eef0f2 height=25 width=680 align=left>${thr.birthday}</TD>
                                         </TR>
                                         <TR align=left>
                                           <TD height=25 width=85 align=left><STRONG>���壺</STRONG></TD>
                                           <TD height=25 width=680 align=left>${thr.nation}</TD>
                                         </TR>
                                         
                                         <TR bgColor=#eef0f2>
                                           <TD bgColor=#eef0f2 height=25 width=85 align=left><STRONG>���᣺</STRONG></TD>
                                           <TD bgColor=#eef0f2 height=25 width=680 align=left>${thr.province}</TD>
                                         </TR>
                                         <TR>
                                           <TD height=25 width=85 align=left><STRONG>���������</STRONG></TD>
                                           <TD height=25 width=680 align=left>${thr.education}</TD>
                                         </TR>
                                         <TR bgColor=#eef0f2>
                                           <TD bgColor=#eef0f2 height=25 width=85 
                  align=left><STRONG>����ѧУ��</STRONG></TD>
                                           <TD bgColor=#eef0f2 height=25 width=680 align=left>${thr.school}</TD>
                                         </TR>
                                         <TR align=left>
                                           <TD height=25 width=85 align=left><STRONG>��ѧרҵ��</STRONG></TD>
                                           <TD height=25 width=680 align=left>${thr.subject}</TD>
                                         </TR>
                                          <TR bgColor=#eef0f2>
                                           <TD bgColor=#eef0f2 height=25 width=85 align=left><STRONG>E-mail��</STRONG></TD>
                                           <TD bgColor=#eef0f2 height=25 width=680 align=left>${thr.email}</TD>
                                         </TR>
                                         <TR>
                                           <TD height=25 width=85 align=left><STRONG>�ֻ���</STRONG></TD>
                                           <TD height=25 width=680 align=left>${thr.mobel}</TD>
                                         </TR>
                                         <TR bgColor=#eef0f2>
                                           <TD bgColor=#eef0f2 height=25 width=85 
                  align=left><STRONG>QQ��</STRONG></TD>
                                           <TD bgColor=#eef0f2 height=25 width=680 align=left>${thr.qq}</TD>
                                         </TR>
                                         <TR align=left>
                                           <TD height=25 width=85 align=left><STRONG>��ϵ�绰��</STRONG></TD>
                                           <TD height=25 width=680 align=left>${thr.telephone}</TD>
                                         </TR>
                                         <TR bgColor=#eef0f2>
                                           <TD bgColor=#eef0f2 height=25 width=85 
                  align=left><STRONG>���Ƴ���Ŀ��</STRONG></TD>
                                           <TD bgColor=#eef0f2 height=25 width=680 align=left>${thr.onesubject}</TD>
                                         </TR>
                                          <TR align=left>
                                           <TD height=25 width=85 align=left><STRONG>״̬��</STRONG></TD>
                                           <TD height=25 width=680 align=left>${thr.state}</TD>
                                         </TR>
                                         <TR align=left bgColor=#eef0f2>
                                           <TD class=text height=25 
                  colSpan=4><STRONG>::::���˼��::::</STRONG></TD>
                                         </TR>
                                         <TR align=left>
                                           <TD height=80 colSpan=4>
                                             <label>
                                               ${thr.exp_intr}
                                             </label>                                           
                                             </TD>
                                         </TR>
                                         <TR align=left bgColor=#eef0f2>
                                           <TD class=text height=25 colSpan=4> 
                                           		<input type="button" name="back" id="back" value="����" onClick="history.back(-1)" />
                                           </TD>
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

<jsp:include flush="true" page="foot.jsp"/>
