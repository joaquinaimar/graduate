<jsp:include flush="true" page="head.jsp"/>
<%@ page language="java" pageEncoding="gbk"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>    
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>  
<script src="js/validation-framework.js"></script>
<script type="text/javascript">

	function changethrState() {
		window.self.location = "regthr.do?method=changethrState&thrid=${sessionScope.user_id}";
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
            &gt;&gt; <A href="mylist.do?method=allthrList">��Ա��</A>&gt;&gt; �޸���Ϣ</DIV></TD></TR>
        <TR>
          <TD>
            <DIV align=left><IMG align=left src="images/jiaoyuan.jpg" 
            width=570 height=40></DIV></TD></TR>
        <TR></TR>
        <TR>
          <TD>��
		            <DIV align=center>
		            <div id="error" style="color:red;font-weight:bold"></div>
                    <form action="regthr.do?method=updatethr&thrid=${sessionScope.user_id}" method="post" enctype="multipart/form-data" name="thrinf" id="thrinf" onsubmit="return doValidate(this)">
			            <TABLE border=0 cellSpacing=0 cellPadding=0 width=770>
                    		<TBODY>
			                  <TR>
			                	<TD width="770">
	   		                  	   <DIV class=Xyline align=center>
	   		                  	     <TABLE width=770 border=0 cellPadding=0 cellSpacing=1>
                                       <TBODY>
                                         <TR align=middle bgColor=#eef0f2>
                                           <TD height=25 
                colSpan=4><STRONG>::::��Ա��ϸ����::::<a href="blank.do?url=modifypwd">::::���������޸�::::</a></STRONG></TD>
                                         </TR>
                                         <TR>
                                           <TD height=25 width=85 align=left><STRONG>��Ա�ƺ���</STRONG></TD>
                                           <TD height=25 width=680 align=left>${thr.ch_name}</TD>
                                         </TR>
                                          <TR bgColor=#eef0f2>
                                           <TD bgColor=#eef0f2 height=25 width=85 
                  align=left><STRONG>��Ա��ţ�</STRONG></TD>
                                           <TD bgColor=#eef0f2 height=25 width=680 align=left>S${thr.user_id}</TD>             
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
                                           <TD height=25 width=680 align=left>
                                           <select name="education" id="education">
	                                          <option value="���оͶ�">�����ڶ�</option>
	                                          <option value="���б�ҵ">���б�ҵ</option>
	                                          <option value="�����ڶ�">�����ڶ�</option>
	                                          <option value="���б�ҵ">���б�ҵ</option>
	                                          <option value="��ר�ڶ�">��ר�ڶ�</option>
	                                          <option value="��ר��ҵ">��ר��ҵ</option>
	                                          <option value="��ר�ڶ�">��ר�ڶ�</option>
	                                          <option value="��ר��ҵ">��ר��ҵ</option>
	                                          <option value="�����ڶ�" selected>�����ڶ�</option>
	                                          <option value="��������">���Ʊ�ҵ</option>
	                                          <option value="�о�������">�о�������</option>
	                                        </select>
                                           </TD>
                                         </TR>
                                         <TR bgColor=#eef0f2>
                                           <TD bgColor=#eef0f2 height=25 width=85 
                  align=left><STRONG>����ѧУ��</STRONG></TD>
                                           <TD bgColor=#eef0f2 height=25 width=680 align=left>
                                           	<input type="text" name="school" id="school" value="${thr.school}"/>   
                                           </TD>
                                         </TR>
                                         <TR align=left>
                                           <TD height=25 width=85 align=left><STRONG>��ѧרҵ��</STRONG></TD>
                                           <TD height=25 width=680 align=left>
                                           	<input type="text" name="subject" id="subject" value="${thr.subject}"/>   
                                           </TD>
                                         </TR>
                                          <TR bgColor=#eef0f2>
                                           <TD bgColor=#eef0f2 height=25 width=85 align=left><STRONG>E-mail��</STRONG></TD>
                                           <TD bgColor=#eef0f2 height=25 width=680 align=left>
                                           	<input type="text" name="email" id="email" value="${thr.email}"/>   
                                            </TD>
                                         </TR>
                                         <TR>
                                           <TD height=25 width=85 align=left><STRONG>�ֻ���</STRONG></TD>
                                           <TD height=25 width=680 align=left>
                                           	<input type="text" name="mobel" id="mobel" value="${thr.mobel}"/>   
                                          </TD>
                                         </TR>
                                         <TR bgColor=#eef0f2>
                                           <TD bgColor=#eef0f2 height=25 width=85 
                  align=left><STRONG>QQ��</STRONG></TD>
                                           <TD bgColor=#eef0f2 height=25 width=680 align=left>
                                           	<input type="text" name="qq" id="qq" value="${thr.qq}"/>   
                                          </TD>
                                         </TR>
                                         <TR align=left>
                                           <TD height=25 width=85 align=left><STRONG>��ϵ�绰��</STRONG></TD>
                                           <TD height=25 width=680 align=left>
                                           	<input type="text" name="telephone" id="telephone" value="${thr.telephone}"/>   
                                           </TD>
                                         </TR>
                                         <TR bgColor=#eef0f2>
                                           <TD bgColor=#eef0f2 height=25 width=85 
                  align=left><STRONG>���Ƴ���Ŀ��</STRONG></TD>
                                           <TD bgColor=#eef0f2 height=25 width=680 align=left>
                                           <select name="onesubject" id="onesubject">
	                                          <option value="Сѧȫ��">Сѧȫ��</option>
	                                          <option value="�����Ŀ�">�����Ŀ�</option>
	                                          <option value="�������">�������</option>
	                                          <option value="����Ӣ��">����Ӣ��</option>
	                                          <option value="�����Ŀ�">�����Ŀ�</option>
	                                          <option value="�������" selected>�������</option>
	                                          <option value="����Ӣ��">����Ӣ��</option>
	                                          <option value="������ѧ">������ѧ</option>
	                                          <option value="�����Ŀ�">�����Ŀ�</option>
	                                          <option value="�������">�������</option>
	                                          <option value="����Ӣ��">����Ӣ��</option>
	                                          <option value="������ѧ">������ѧ</option>
	                                          <option value="�ڶ�����">�ڶ�����</option>
	                                          <option value="Ӣ�����">Ӣ�����</option>
	                                          <option value="�������">�������</option>
	                                          <option value="�����س�">�����س�</option>
	                                        </select>
                                          </TD>
                                         </TR>
                                         <TR align=left>
                                         	<c:if test="${thr.state eq '��ְ��'}">
                                            <TD height=25 width=105 align=left><STRONG>״̬��</STRONG></TD>
                                            <TD height=25 width=660 align=left>${thr.state}</TD>  
                                           </c:if>
                                                                                                                           
                                           
                                           <c:if test="${thr.state eq '������'}">
                                           <TD height=25 width=105 align=left><STRONG>״̬��   ������</STRONG></TD>
                                           <TD height=25 width=660 align=left><label>
                                             <input type="button" name="button" id="button" value="����״̬"  onclick="changethrState()"/>
                                           </label></TD>
                                           </c:if>
                                           
                                         </TR>
                                         <TR align=left>
                                           <TD class=text height=25 
                  colSpan=4><STRONG>::::���˼��::::</STRONG></TD>
                                         </TR>
                                         <TR  bgColor=#eef0f2 align=left>
                                           <TD height=80 colSpan=4>
                                             <label>
                                             	<textarea name="exp_intr" cols="85" rows="6" id="exp_intr" > ${thr.exp_intr}</textarea>                              
                                             </label>                                           
                                             </TD>
                                         </TR>
                                         
                                          <TR align=left>
	                                      <TD height=25 width=103 align=left>
	                                      </TD>
	                                      <TD height=25 width=103 align=left><div align="left">
	                                        <input type="submit" name="submit" id="submit" value="�ύ" />
	                                      	</div>
	                                      </TD>
                                 	   </TR>
                                         
                                       </TBODY>
   		                  	         </TABLE>
	   		                  	   </DIV>	
			                    </TD>
	                    	</TR>
			               </TBODY>
		                </TABLE>
                       </form>
	              </DIV>
            <DIV align=center>
            <TABLE border=0 cellSpacing=0 cellPadding=0 width=770 height=50>
			</TABLE>
            </DIV></TD></TR></TBODY></TABLE></TD></TR></TBODY></TABLE>

<jsp:include flush="true" page="foot.jsp"/>