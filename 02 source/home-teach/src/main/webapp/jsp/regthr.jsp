<%@ page language="java" pageEncoding="gbk"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>    
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>    
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <TITLE>�ҽ���</TITLE>
<META content=zh-cn http-equiv=Content-Language>
<META content="text/html; charset=gb2312" http-equiv=Content-Type>
<LINK rel="shortcut icon" href="/favicon.ico">
<LINK rel=stylesheet type=text/css href="images/indexcss.css">
<STYLE type=text/css>
.qingdan TR:hover {
	BACKGROUND-COLOR: #c0c0c0
}
.text {	LINE-HEIGHT: 20px
}
</STYLE>
<script src="js/validation-framework.js"></script>
<META name=GENERATOR content="MSHTML 8.00.6001.18702"></HEAD>
<BODY background=images/bg.gif>
<CENTER>
<TABLE border=0 cellSpacing=0 cellPadding=0 width=770 bgColor=#ffffff 
  height=4><TBODY>
  <TR>
    <TD></TD></TR></TBODY></TABLE>
<TABLE border=0 cellSpacing=0 cellPadding=0 width=770 bgColor=#ffffff 
  height=2><TBODY>
  <TR>
    <TD></TD></TR></TBODY></TABLE>
<TABLE border=0 cellSpacing=0 cellPadding=0 width=770 bgColor=#ffffff>
  <TBODY>
  <TR>
    <TD width="770" align=middle vAlign=top>
      <TABLE border=0 cellSpacing=0 cellPadding=0 width=770>
        <TBODY>
        <TR>
          <TD height=23 width=65 align=left><IMG src="images/dh_left.jpg" 
            width=55 height=23></TD>
          <TD style="TEXT-ALIGN: left; PADDING-LEFT: 10px; PADDING-TOP: 4px" 
          class=dh bgColor=#c60001 height=23 width=770><A class=dh 
            href="blank.do?url=loginpage">�� ¼</A>
          </TR>
        <TR>
        <TD height=2 colSpan=3></TD></TR></TBODY></TABLE></TD></TR></TBODY></TABLE>
<TABLE border=0 cellSpacing=0 cellPadding=0 width=770 bgColor=#ffffff>
  <TBODY>
  <TR>
    <TD vAlign=center align=middle></TD></TR></TBODY></TABLE>
<TABLE border=0 cellSpacing=0 cellPadding=0 width=770 bgColor=#ffffff 
  height=2><TBODY>
  <TR>
    <TD></TD></TR></TBODY></TABLE>
<TABLE border=0 cellSpacing=0 cellPadding=0 width=770 bgColor=#ffffff>
  <TBODY>
  <TR>
    <TD align=middle>
      <TABLE border=0 cellSpacing=0 cellPadding=0 width=770 bgColor=#cccccc 
      height=3>
        <TBODY>
        <TR>
          <TD></TD></TR></TBODY></TABLE></TD></TR></TBODY></TABLE>
<TABLE border=0 cellSpacing=0 cellPadding=0 width=770>
  <TBODY>
    <TR>
      <TD width="770" align=middle vAlign=top bgColor=#ffffff><TABLE border=0 cellSpacing=0 cellPadding=0 width=770>
        <TBODY>
          <TR> </TR>
          <TR>
            <TD><DIV align=left><IMG align=left src="images/jiaoyuan.jpg" 
            width=570 height=40></DIV></TD>
          </TR>
          <TR></TR>
          <TR>
            <TD>��
                  <DIV align=center>
                    <TABLE border=0 cellSpacing=0 cellPadding=0 width=770>
                      <TBODY>
                        <TR>
                          <TD width="770"><DIV class=Xyline align=center>
                             <div id="error" style="color:red;font-weight:bold"></div>
                              <form action="regthr.do?method=regthr" method="post" name="regthr" id="regthr" onsubmit="return doValidate(this)">
                                <TABLE width=770 border=0 cellPadding=0 cellSpacing=1>
                                  <TBODY>
                                    <TR align=middle bgColor=#eef0f2>
                                      <TD height=25 
                colSpan=4><STRONG>::::��Աע��::::</STRONG></TD>
                                    </TR>
                                    <TR>
                                      <TD height=25 width=103 align=left><STRONG>�û�����</STRONG></TD>
                                      <TD height=25 width=594 align=left><label>
                                        <input type="text" name="username" id="username" />
                                      </label></TD>
                                    </TR>
                                    <TR bgColor=#eef0f2>
                                      <TD bgColor=#eef0f2 height=25 width=103 
                  align=left><STRONG>���룺</STRONG></TD>
                                      <TD bgColor=#eef0f2 height=25 width=594 align=left>
                                     	 <input type="password" name="pwd" id="pwd" />
                                      </TD>
                                    </TR>
                                    <TR>
                                      <TD height=25 width=103 align=left><STRONG>ȷ�����룺</STRONG></TD>
                                      <TD height=25 width=594 align=left>
                                     	 <input type="password" name="agpwd" id="agpwd" />
                                      </TD>
                                    </TR>
                                    <TR bgColor=#eef0f2>
                                      <TD bgColor=#eef0f2 height=25 width=103 
                  align=left><STRONG>������</STRONG></TD>
                                      <TD bgColor=#eef0f2 height=25 width=594 align=left>
                                     	 <input type="text" name="ch_name" id="ch_name" />
                                      </TD>
                                    </TR>
                                    <TR>
                                      <TD height=25 width=85 
                  align=left><STRONG>ѧԱ�Ա�</STRONG></TD>
                                      <TD height=25 width=680 align=left><input name="sex" type="radio" id="sex" value="��" checked="checked" />
                                        ��
                                        <label>
                                        <input type="radio" name="sex" id="sex" value="Ů" />
                                          Ů</label>
                                      </TD>
                                    </TR>
                                    <TR bgColor=#eef0f2>
                                      <TD bgColor=#eef0f2 height=25 width=103 align=left><STRONG>�������£�</STRONG></TD>
                                      <TD bgColor=#eef0f2 height=25 width=594 align=left><input type="text" name="birthday" id="birthday" />
                                      </TD>
                                    </TR>
                                    <TR>
                                      <TD height=25 width=103 align=left><STRONG>���壺</STRONG></TD>
                                      <TD height=25 width=594 align=left>
                                      	<input type="text" name="nation" id="nation" />
                                      </TD>
                                    </TR>
                                    <TR bgColor=#eef0f2>
                                      <TD bgColor=#eef0f2 height=25 width=103 
                  align=left><STRONG>���᣺</STRONG></TD>
                                      <TD bgColor=#eef0f2 height=25 width=594 align=left>
                                      	<input type="text" name="province" id="province" />
                                      </TD>
                                    </TR>
                                    <TR align=left>
                                      <TD height=25 width=103 align=left><STRONG>���������</STRONG></TD>
                                      <TD height=25 width=594 align=left><select name="education" id="education">
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
                                      <TD bgColor=#eef0f2 height=25 width=103 align=left><STRONG>����ѧУ��</STRONG></TD>
                                      <TD bgColor=#eef0f2 height=25 width=594 align=left>
                                      <input type="text" name="school" id="school" />
                                      </TD>
                                    </TR>
                                    <TR>
                                      <TD height=25 width=103 align=left><STRONG>��ѧרҵ��</STRONG></TD>
                                      <TD height=25 width=594 align=left>
                                      <input type="text" name="subject" id="subject" />
                                      </TD>
                                    </TR>
                                    <TR bgColor=#eef0f2>
                                      <TD bgColor=#eef0f2 height=25 width=103 
                  align=left><STRONG>E-mail��</STRONG></TD>
                                      <TD bgColor=#eef0f2 height=25 width=594 align=left>
                                      <input type="text" name="email" id="email" />
                                      </TD>
                                    </TR>
                                    <TR align=left>
                                      <TD height=25 width=103 align=left><STRONG>�ֻ���</STRONG></TD>
                                      <TD height=25 width=594 align=left>
                                      	<input type="text" name="mobel" id="mobel" />
                                      </TD>
                                    </TR>
                                    <TR bgColor=#eef0f2>
                                      <TD bgColor=#eef0f2 height=25 width=103 
                  align=left><STRONG>QQ��</STRONG></TD>
                                      <TD bgColor=#eef0f2 height=25 width=594 align=left>
                                      	<input type="text" name="qq" id="qq" />
                                      </TD>
                                    </TR>
                                    <TR align=left>
                                      <TD height=25 width=103 align=left><STRONG>��ϵ�绰��</STRONG></TD>
                                      <TD height=25 width=594 align=left>
                                      	<input type="text" name="telephone" id="telephone" />
                                      </TD>
                                    </TR>
                                    <TR bgColor=#eef0f2>
                                      <TD bgColor=#eef0f2 height=25 width=103 
                  align=left><STRONG>���Ƴ���Ŀ��</STRONG></TD>
                                      <TD bgColor=#eef0f2 height=25 width=594 align=left><select name="onesubject" id="onesubject">
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
                                      <TD class=text height=25 
                  colSpan=4><STRONG>::::���ҽ���::::</STRONG></TD>
                                    </TR>
                                    <TR bgColor=#eef0f2>
                                      <TD height=80 colSpan=4>
                                      	<label>
                                        <textarea name="exp_intr" cols="85" rows="6" id="exp_intr"></textarea>
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
                              </form>
                          </DIV></TD>
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

<TABLE border=0 cellSpacing=0 cellPadding=0 width=770 bgColor=#ffffff>
  <TBODY>
    <TR>
      <TD vAlign=top align=middle><TABLE border=0 cellSpacing=0 cellPadding=0 width=770>
        <TBODY>
          <TR>
            <TD style="PADDING-TOP: 4px" class=title bgColor=#c60001 height=23 
          width=80 align=middle>��������</TD>
            <TD bgColor=#ffffff height=23 width=1></TD>
            <TD style="PADDING-RIGHT: 5px; PADDING-TOP: 4px" class=dh 
          bgColor=#adadad width=689 align=right>[<A class=dh 
            href="" 
            target=_blank>���ǵ�����</A>] [<A class=dh 
            href="" 
            target=_blank>��������</A>] [<A class=dh 
            href="" 
            target=_blank>��������</A>]</TD>
          </TR>
          <TR>
            <TD height=2 colSpan=3></TD>
          </TR>
        </TBODY>
      </TABLE></TD>
    </TR>
  </TBODY>
</TABLE>
<TABLE border=0 cellSpacing=0 cellPadding=0 width=770 bgColor=#ffffff>
  <TBODY>
    <TR>
      <TD align=middle><TABLE border=0 cellSpacing=0 cellPadding=0 width=770 bgColor=#cccccc 
      height=3>
        <TBODY>
          <TR>
            <TD></TD>
          </TR>
        </TBODY>
      </TABLE></TD>
    </TR>
  </TBODY>
</TABLE>
<TABLE border=0 cellSpacing=0 cellPadding=0 width=770 bgColor=#ffffff>
  <TBODY>
    <TR>
      <TD vAlign=top align=middle><TABLE border=0 cellSpacing=0 cellPadding=0 width=586>
        <TBODY>
          <TR>
            <TD width=581 height="51" align=middle vAlign=top><TABLE 
            style="BORDER-BOTTOM: 1px solid; BORDER-LEFT: 1px solid; BORDER-TOP: 0px solid; BORDER-RIGHT: 0px solid" 
            border=0 cellSpacing=0 borderColor=#dcddd8 cellPadding=0 
              width=770>
              <TBODY>
                <TR>
                  <TD width="770" height=26 colSpan=3 vAlign=top><TABLE border=0 cellSpacing=2 cellPadding=5 width="100%">
                    <TBODY>
                      <TR align=middle>
                        <TD align=left><A href="" 
                        target=_blank>���ϿƼ���ѧ</A></TD>
                        <TD align=left><A href="" 
                        target=_blank>���ϿƼ���ѧ</A></TD>
                        <TD align=left><A href="" 
                        target=_blank>���ϿƼ���ѧ</A></TD>
                        <TD align=left><A href="" 
                        target=_blank>���ϿƼ���ѧ</A></TD>
                        <TD align=left><A href="" 
                        target=_blank>���ϿƼ���ѧ</A></TD>
                        <TD align=left><A href="" 
                        target=_blank>���ϿƼ���ѧ</A></TD>
                        <TD align=left><A href="" 
                        target=_blank>���ϿƼ���ѧ</A></TD>
                        <TD align=left><A href="" 
                        target=_blank>���ϿƼ���ѧ</A></TD>
                      </TR>
                    </TBODY>
                  </TABLE></TD>
                </TR>
              </TBODY>
            </TABLE></TD>
            <TD bgColor=#e7e7e7 
          background=images/right_line.jpg width=5></TD>
          </TR>
        </TBODY>
      </TABLE></TD>
    </TR>
  </TBODY>
</TABLE>
<TABLE border=0 cellSpacing=0 cellPadding=0 width=770 bgColor=#ffffff>
  <TBODY>
  <TR>
    <TD vAlign=center align=middle></TD></TR></TBODY></TABLE>
<TABLE border=0 cellSpacing=0 cellPadding=0 width=770 bgColor=#ffffff>
  <TBODY>
    <TR>
      <TD align=middle><TABLE border=0 cellSpacing=0 cellPadding=0 width=770>
        <TBODY>
          <TR>
            <TD align=middle><TABLE style="TEXT-ALIGN: left" border=0 cellSpacing=0 cellPadding=0 
            width=697>
              <TBODY>
                <TR>
                  <TD rowSpan=3 width=21 align=middle></TD>
                  <TD height=23><div align="center">Copyright &copy; <SPAN lang=zh-cn>1999</SPAN>-2008 
                    All rights reserved. ��Ȩ���� 105������</div></TD>
                </TR>
              </TBODY>
            </TABLE></TD>
          </TR>
          <TR>
            <TD height=10 
align=middle></TD>
          </TR>
        </TBODY>
      </TABLE></TD>
    </TR>
  </TBODY>
</TABLE>
</CENTER>

</html>
