<jsp:include page="head.jsp"/>
<%@ page language="java" pageEncoding="gbk"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>    
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>  
<script src="js/validation-framework.js"></script>
<TABLE border=0 cellSpacing=0 cellPadding=0 width=770>
  <TBODY>
    <TR>
      <TD bgColor=#ffffff vAlign=top align=middle><TABLE border=0 cellSpacing=0 cellPadding=0 width=770>
        <TBODY>
        <TR>
          <TD height=25>
            <DIV align=left>����ǰ��λ��: <A href="mylist.do?method=main_list">��ҳ</A> 
            &gt;&gt; <A href="mylist.do?method=allstuList">ѧԱ��</A> &gt;&gt; �޸���Ϣ</DIV></TD></TR>
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
                          <TD width="770"><DIV class=Xyline align=center>
                          	<div id="error" style="color:red;font-weight:bold"></div>
                              <form action="regprt.do?method=updateprt&prtid=${user_id}" method="post" enctype="multipart/form-data" name="prtinf" id="prtinf" onsubmit="return doValidate(this)">
                                <TABLE width=770 border=0 cellPadding=0 cellSpacing=1>
                                  <TBODY>
                                    <TR align=middle bgColor=#eef0f2>
                                      <TD height=25 
                colSpan=4><STRONG>::::ѧ����Ϣ�޸�::::<a href="blank.do?url=modifypwd">::::���������޸�::::</a></STRONG></TD>
                                    </TR>
                                    <TR>
                                      <TD height=25 width=103 align=left><STRONG>�û�����</STRONG></TD>
                                      <TD height=25 width=594 align=left><label>${prt.username}</label></TD>
                                    </TR>
                                    <TR bgColor=#eef0f2>
                                      <TD bgColor=#eef0f2 height=25 width=103 
                  align=left><STRONG>������</STRONG></TD>
                                      <TD bgColor=#eef0f2 height=25 width=594 align=left><label>${prt.ch_name}</label>  
                                      </TD>
                                    </TR>
                                    <TR align=left>
                                      <TD height=25 width=103 align=left><STRONG>�Ա�</STRONG></TD>
                                      <TD height=25 width=594 align=left><label>${prt.sex}</label></TD>
                                    </TR>
                                    <TR bgColor=#eef0f2>
                                      <TD bgColor=#eef0f2 height=25 width=103 
                  align=left><STRONG>E-mail��</STRONG></TD>
                                      <TD bgColor=#eef0f2 height=25 width=594 align=left><input type="text" name="email" id="email" value="${prt.email}"/>                                      </TD>
                                    </TR>
                                    <TR align=left>
                                      <TD height=25 width=103 align=left><STRONG>�ֻ���</STRONG></TD>
                                      <TD height=25 width=594 align=left><input type="text" name="mobel" id="mobel" value="${prt.mobel}"/>                                      </TD>
                                    </TR>
                                    <TR bgColor=#eef0f2>
                                      <TD bgColor=#eef0f2 height=25 width=103 
                  align=left><STRONG>QQ��</STRONG></TD>
                                      <TD bgColor=#eef0f2 height=25 width=594 align=left><input type="text" name="qq" id="qq" value="${prt.qq}"/>                                      </TD>
                                    </TR>
                                   
                                    <TR align=left>
                                      <TD height=25 width=103 align=left><STRONG>��ϵ�绰��</STRONG></TD>
                                      <TD height=25 width=594 align=left><input type="text" name="telephone" id="telephone" value="${prt.telephone}"/>                                      </TD>
                                    </TR>
                                    
                                    <TR align=left >
                                      <TD height=25 width=103 align=left><STRONG>��ͥסַ��</STRONG>
                                      </TD>
                                      <TD height=25 width=594 align=left><input type="text" name="address" id="address" value="${prt.address}"/>
                                      </TD>
                                      
                                    </TR>
                                    
	                                     <TR align=left bgColor=#eef0f2>
	                                      <TD height=25 width=103 align=left>
	                                      </TD>
	                                      <TD height=25 width=103 align=left><div align="left">
	                                        <input type="submit" name="submit" id="submit" value="�ύ" />
	                                      	</div>
	                                      </TD>
                                    </TR>
                                    
                                    
                                  </TBODY>
                                </TABLE>
                              </form>
                          </DIV></TD>
                        </TR>
                      </TBODY>
                    </TABLE>
                  </DIV>
              <DIV align=center>
                    <TABLE border=0 cellSpacing=0 cellPadding=0 width=770 height=50>
                    </TABLE>
              </DIV></TD>
          </TR>
        </TBODY>
      </TABLE></TD>
    </TR>
  </TBODY>
</TABLE>

<jsp:include flush="true" page="foot.jsp"/>