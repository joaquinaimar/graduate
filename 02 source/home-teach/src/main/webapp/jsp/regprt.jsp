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
    
    <TITLE>家教网</TITLE>
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
            href="blank.do?url=loginpage">登 录</A>
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
      <TD bgColor=#ffffff vAlign=top align=middle><TABLE border=0 cellSpacing=0 cellPadding=0 width=770>
        <TBODY>
          <TR> </TR>
          <TR>
            <TD><DIV align=left><IMG align=left src="images/xueyuan.jpg" 
            width=570 height=40></DIV></TD>
          </TR>
          <TR></TR>
          <TR>
            <TD>　
                  <DIV align=center>
                    <TABLE border=0 cellSpacing=0 cellPadding=0 width=770>
                      <TBODY>
                        <TR>
                          <TD width="770"><DIV class=Xyline align=center>
                             <div id="error" style="color:red;font-weight:bold"></div>
                              <form action="regprt.do?method=regprt" method="post" enctype="multipart/form-data" name="regprt" id="regprt" onsubmit="return doValidate(this)">
                                <TABLE width=770 border=0 cellPadding=0 cellSpacing=1>
                                  <TBODY>
                                    <TR align=middle bgColor=#eef0f2>
                                      <TD height=25 
                colSpan=4><STRONG>::::学生注册::::</STRONG></TD>
                                    </TR>
                                    <TR>
                                      <TD height=25 width=103 align=left><STRONG>用户名：</STRONG></TD>
                                      <TD height=25 width=594 align=left><label>
                                        <input type="text" name="username" id="username" />
                                      </label></TD>
                                    </TR>
                                    <TR bgColor=#eef0f2>
                                      <TD bgColor=#eef0f2 height=25 width=103 
                  align=left><STRONG>密码：</STRONG></TD>
                                      <TD bgColor=#eef0f2 height=25 width=594 align=left><input type="password" name="pwd" id="pwd" />
                                      </TD>
                                    </TR>
                                    <TR>
                                      <TD height=25 width=103 align=left><STRONG>确认密码：</STRONG></TD>
                                      <TD height=25 width=594 align=left><input type="password" name="agpwd" id="agpwd" />
                                      </TD>
                                    </TR>
                                    <TR bgColor=#eef0f2>
                                      <TD bgColor=#eef0f2 height=25 width=103 
                  align=left><STRONG>姓名：</STRONG></TD>
                                      <TD bgColor=#eef0f2 height=25 width=594 align=left><input type="text" name="ch_name" id="ch_name" />
                                      </TD>
                                    </TR>
                                    <TR>
                                      <TD height=25 width=85 
                  align=left><STRONG>性别：</STRONG></TD>
                                      <TD height=25 width=680 align=left><input name="sex" type="radio" id="sex" value="男" checked="checked" />
                                        男
                                        <label>
                                        <input type="radio" name="sex" id="sex" value="女" />
                                          女</label>
                                      </TD>
                                    </TR>
                                    <TR bgColor=#eef0f2>
                                      <TD bgColor=#eef0f2 height=25 width=103 
                  align=left><STRONG>E-mail：</STRONG></TD>
                                      <TD bgColor=#eef0f2 height=25 width=594 align=left><input type="text" name="email" id="email" />
                                      </TD>
                                    </TR>
                                    <TR align=left>
                                      <TD height=25 width=103 align=left><STRONG>手机：</STRONG></TD>
                                      <TD height=25 width=594 align=left><input type="text" name="mobel" id="mobel" />
                                      </TD>
                                    </TR>
                                    <TR bgColor=#eef0f2>
                                      <TD bgColor=#eef0f2 height=25 width=103 
                  align=left><STRONG>QQ：</STRONG></TD>
                                      <TD bgColor=#eef0f2 height=25 width=594 align=left><input type="text" name="qq" id="qq" />
                                      </TD>
                                    </TR>
                                    
                                    <TR align=left>
                                      <TD height=25 width=103 align=left><STRONG>联系电话：</STRONG></TD>
                                      <TD height=25 width=594 align=left><input type="text" name="telephone" id="telephone" />
                                      </TD>
                                    </TR>
                                    
                                    <TR align=left bgColor=#eef0f2>
                                      <TD height=25 width=103 align=left><STRONG>家庭住址：</STRONG></TD>
                                      <TD height=25 width=594 align=left><input type="text" name="address" id="address" />
                                      </TD>
                                    </TR>
                                    <TR align=left>
                                      <TD height=25 width=103 align=left><div align="center">
                                          <input type="reset" name="reset" id="reset" value="重置" />
                                      </div></TD>
                                      <TD height=25 width=103 align=left><div align="left">
                                          <input type="submit" name="submit" id="submit" value="提交" />
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
<TABLE border=0 cellSpacing=0 cellPadding=0 width=770 bgColor=#ffffff>
  <TBODY>
    <TR>
      <TD vAlign=top align=middle><TABLE border=0 cellSpacing=0 cellPadding=0 width=770>
        <TBODY>
          <TR>
            <TD style="PADDING-TOP: 4px" class=title bgColor=#c60001 height=23 
          width=80 align=middle>友情链接</TD>
            <TD bgColor=#ffffff height=23 width=1></TD>
            <TD style="PADDING-RIGHT: 5px; PADDING-TOP: 4px" class=dh 
          bgColor=#adadad width=689 align=right>[<A class=dh 
            href="" 
            target=_blank>我们的链接</A>] [<A class=dh 
            href="" 
            target=_blank>申请链接</A>] [<A class=dh 
            href="" 
            target=_blank>更多链接</A>]</TD>
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
                  <TD width="769" height=26 colSpan=3 vAlign=top><TABLE border=0 cellSpacing=2 cellPadding=5 width="100%">
                    <TBODY>
                      <TR align=middle>
                        <TD align=left><A href="" 
                        target=_blank>西南科技大学</A></TD>
                        <TD align=left><A href="" 
                        target=_blank>西南科技大学</A></TD>
                        <TD align=left><A href="" 
                        target=_blank>西南科技大学</A></TD>
                        <TD align=left><A href="" 
                        target=_blank>西南科技大学</A></TD>
                        <TD align=left><A href="" 
                        target=_blank>西南科技大学</A></TD>
                        <TD align=left><A href="" 
                        target=_blank>西南科技大学</A></TD>
                        <TD align=left><A href="" 
                        target=_blank>西南科技大学</A></TD>
                        <TD align=left><A href="" 
                        target=_blank>西南科技大学</A></TD>
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
                    All rights reserved. 版权所有 105工作室</div></TD>
                </TR>
              </TBODY>
            </TABLE></TD>
          </TR>
          <TR>
            <TD height=10 
align=middle>lan</TD>
          </TR>
        </TBODY>
      </TABLE></TD>
    </TR>
  </TBODY>
</TABLE>
</CENTER>

</html>
