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
          <TR>
            <TD><DIV align=left><IMG align=left src="images/xueyuan.jpg" 
            width=570 height=40></DIV></TD>
          </TR>
          <TR></TR>
          <TR>
            <TD>��
              <DIV align=center>
                    <TABLE border=0 cellSpacing=0 cellPadding=0 width=770>
                      <TBODY>
                        <TR>
                          <TD width="770">
                          <div id="error" style="color:red;font-weight:bold"></div>
                          <form action="addstu.do?method=modifystu&stuid=${stu.user_id}" method="post" enctype="multipart/form-data" name="modifystu" id="modifystu" onsubmit="return doValidate(this)">
                              <DIV class=Xyline align=center>
                                <TABLE width=770 border=0 cellPadding=0 cellSpacing=1>
                                  <TBODY>
                                    <TR align=middle bgColor=#eef0f2>
                                      <TD height=25 
                colSpan=4><STRONG>::::ѧԱ����ҽ̣���Ա����ϸ����::::</STRONG></TD>
                                    </TR>
                                    <TR>
                                      <TD height=25 width=85 align=left><STRONG>ѧԱ���գ�</STRONG></TD>
                                      <TD height=25 width=680 align=left><label>
                                        <input type="text" name="firname" id="firname" value="${stu.firname}"/>
                                      </label></TD>
                                    </TR>
                                    <TR bgColor=#eef0f2>
                                      <TD bgColor=#eef0f2 height=25 width=85 
                  align=left><STRONG>ѧԱ�Ա�</STRONG></TD>
                                      <TD bgColor=#eef0f2 height=25 width=680 align=left>
                                      	<label>
                                      		${stu.sex}
                                        <label>
                                      </TD>
                                    </TR>
                                    <TR>
                                      <TD height=25 width=85 align=left><STRONG>�����꼶��</STRONG></TD>
                                      <TD height=25 width=680 align=left><label>
                                        <input type="text" name="schoolgrade" id="schoolgrade" value="${stu.schoolgrade}"/>
                                      </label></TD>
                                    </TR>
                                    <TR bgColor=#eef0f2>
                                      <TD bgColor=#eef0f2 height=25 width=85 
                  align=left><STRONG>ѧϰ�����</STRONG></TD>
                                      <TD bgColor=#eef0f2 height=25 width=680 align=left><label>
                                        <input type="text" name="studyinf" id="studyinf" value="${stu.studyinf}"/>
                                      </label></TD>
                                    </TR>
                                    <TR align=left>
                                      <TD height=25 width=85 align=left><STRONG>������Ŀ��</STRONG></TD>
                                      <TD height=25 width=680 align=left><label>
                                        <select name="onesubject" id="onesubject">
                                          <option value="Сѧȫ��">Сѧȫ��</option>
                                          <option value="�����Ŀ�">�����Ŀ�</option>
                                          <option value="�������">�������</option>
                                          <option value="����Ӣ��">����Ӣ��</option>
                                          <option value="�����Ŀ�">�����Ŀ�</option>
                                          <option value="�������" selected="selected">�������</option>
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
                                        </label>
                                      </TD>
                                    </TR>
                                    <TR bgColor=#eef0f2>
                                      <TD bgColor=#eef0f2 height=25 width=85 align=left><STRONG>�������ʣ�</STRONG></TD>
                                      <TD bgColor=#eef0f2 height=25 width=680 align=left><label>
                                        <input type="text" name="pay" id="pay" value="${stu.pay}"/>
                                      </label></TD>
                                    </TR>
                                    <TR>
                                      <TD height=25 width=85 align=left><STRONG>��ϵ�绰��</STRONG></TD>
                                      <TD height=25 width=680 align=left><label>
                                        <input type="text" name="telephone" id="telephone" value="${stu.telephone}"/>
                                      </label></TD>
                                    </TR>
                                    <TR bgColor=#eef0f2>
                                      <TD bgColor=#eef0f2 height=25 width=85 
                  align=left><STRONG>�ֻ���</STRONG></TD>
                                      <TD bgColor=#eef0f2 height=25 width=680 align=left><label>
                                        <input type="text" name="mobel" id="mobel" value="${stu.mobel}"/>
                                      </label></TD>
                                    </TR>
                                    <TR>
                                      <TD height=25 width=85 align=left><STRONG>��ͥסַ��</STRONG></TD>
                                      <TD height=25 width=680 align=left><label>
                                        <input type="text" name="address" id="address" value="${stu.address}"/>
                                      </label></TD>
                                    </TR>
                                    <TR bgColor=#eef0f2>
                                      <TD class=text height=25 
                  colSpan=4><STRONG>::::��ԱҪ����ϸ˵��::::</STRONG></TD>
                                    </TR>
                                    <TR>
                                      <TD height=80 colSpan=4><label>
                                        <textarea name="threquire" id="threquire" cols="85" rows="5">${stu.threquire}</textarea>
                                        </label>
                                      </TD>
                                    </TR>
                                    <TR align=left bgColor=#eef0f2>
                                      <TD height=25 width=103 align=left><div align="center">
                                          <input type="reset" name="reset" id="reset" value="����" />
                                      </div></TD>
                                      <TD height=25 width=130 align=left><div align="center">
                                          <input type="submit" name="submit" id="submit" value="�ύ" />
                                      </div></TD>
                                    </TR>
                                  </TBODY>
                                </TABLE>
                              </DIV>
                          </form></TD>
                        </TR>
                      </TBODY>
                    </TABLE>
              </DIV>
			</TD>
          </TR>
        </TBODY>
      </TABLE></TD>
    </TR>
  </TBODY>
</TABLE>
<jsp:include flush="true" page="foot.jsp"/>
