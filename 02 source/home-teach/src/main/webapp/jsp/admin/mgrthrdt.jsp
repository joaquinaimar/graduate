<jsp:include page="head.jsp"/>
<%@ page language="java" pageEncoding="GBK"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>    
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>  
<script type="text/javascript">
	function del() {
		window.self.location = "mgr.do?method=delthr&thrid=${thr.user_id}";
	}
	function goback() {
		window.self.location = "mgr.do?method=thrList";
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
            <DIV align=left>����ǰ��λ��: <A href="blank.do?url=mgrmain">����</A> 
            &gt;&gt; <a href="mgr.do?method=thrList">��Ա����</a> &gt;&gt; ��ϸ��Ϣ</DIV></TD></TR>
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
                                           <TD height=25 width=103 align=left><STRONG>ѧ���ƺ���</STRONG></TD>
                                           <TD height=25 width=680 align=left>${thr.ch_name}</TD>
                                         </TR>
                                          <TR bgColor=#eef0f2>
                                           <TD bgColor=#eef0f2 height=25 width=103 
                  align=left><STRONG>ѧ����ţ�</STRONG></TD>
                                           <TD bgColor=#eef0f2 height=25 width=680 align=left>T${thr.user_id}</TD>             
                                         </TR>
                                         <TR>
                                           <TD height=25 width=103 align=left><STRONG>�Ա�</STRONG></TD>
                                           <TD height=25 width=680 align=left>${thr.sex}</TD>
                                         </TR>
                                          <TR bgColor=#eef0f2>
                                           <TD bgColor=#eef0f2 height=25 width=103 align=left><STRONG>E-mail��</STRONG></TD>
                                           <TD bgColor=#eef0f2 height=25 width=680 align=left>${thr.email}</TD>
                                         </TR>
                                         <TR>
                                           <TD height=25 width=103 align=left><STRONG>�ֻ���</STRONG></TD>
                                           <TD height=25 width=680 align=left>${thr.mobel}</TD>
                                         </TR>
                                         <TR bgColor=#eef0f2>
                                           <TD bgColor=#eef0f2 height=25 width=103 
                  align=left><STRONG>QQ��</STRONG></TD>
                                           <TD bgColor=#eef0f2 height=25 width=680 align=left>${thr.qq}</TD>
                                         </TR>
                                         <TR align=left>
                                           <TD height=25 width=103 align=left><STRONG>��ϵ�绰��</STRONG></TD>
                                           <TD height=25 width=680 align=left>${thr.telephone}</TD>
                                         </TR>
                                         <TR align=left bgColor=#eef0f2>
                                          <TD height=25 width=103 align=left><div align="left">
                                              <input type="button" name="reset" id="reset" value="����" onclick="goback()"/>
                                          </div></TD>
                                          <TD height=25 width=680 align=left><div align="left">
                                              <input type="button" name="submit" id="submit" value="ɾ��" onclick="del()"/>
                                          </div></TD>
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
