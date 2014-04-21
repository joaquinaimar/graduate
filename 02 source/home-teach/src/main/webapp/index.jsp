<%@ page language="java" import="java.util.*" pageEncoding="GBK"%>
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
          class=dh bgColor=#c60001 height=23 width=711></TD>
         
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
    <TD width="770" align=middle>
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
          <TR></TR>
          <TR></TR>
          <TR>
            <TD>　
                  <DIV align=center>
                    <TABLE border=0 cellSpacing=0 cellPadding=0 width=770>
                      <TBODY>
                        <TR align=middle>
                          <TD width="770"><DIV class=Xyline align=center>
                          <div id="error" style="color:red;font-weight:bold"></div>
                            <form action="login.do?method=login" method="post" enctype="multipart/form-data" name="login" id="login" onSubmit="return doValidate(this)">
                                <TABLE width=770 border=0 cellPadding=0 cellSpacing=1>
                                  <TBODY>
                                    <TR align=middle bgColor=#eef0f2>
                                      <TD width="697" height=25><p>&nbsp;</p>
                                        <p>&nbsp;</p>
                                        <TABLE width=570 
      border=0 align="center" cellPadding=0 cellSpacing=10 borderColor=#c4c6c8 
      style="BORDER-BOTTOM: 1px solid; BORDER-LEFT: 1px solid; BORDER-TOP: 1px solid; BORDER-RIGHT: 1px solid">
                                        <TBODY>
                                          <TR >
                                            <TD vAlign=top align=middle><TABLE border=0 cellSpacing=2 cellPadding=0 width=570>
                                                <TBODY>
                                                  <TR>
                                                    <TD class=text bgColor=#f4f5f7 height=25 width=243 
                  align=right>用户名： </TD>
                                                    <TD class=text bgColor=#f4f5f7 width=321 align=left><label>
                                                      <input type="text" name="username" id="username" />
                                                    </label></TD>
                                                  </TR>
                                                  <TR>
                                                    <TD height=25 align=right>密码：</TD>
                                                    <TD align=left><label>
                                                      <input type="password" name="pwd" id="pwd" />
                                                    </label></TD>
                                                  </TR>
                                                  <TR>
                                                    <TD bgColor=#f4f5f7 height=25 align=right>验证码：</TD>
                                                    <TD bgColor=#f4f5f7 align=left><input name="expwd" type="text" id="expwd" maxlength="6">
                                                      <img border=0 src="image" style="top: 313px;" width="42" height="21">看不清？</TD>
                                                  </TR>
                                                  <TR>
                                                    <TD bgColor=#f4f5f7 height=25 align=right>会员类别： </TD>
                                                    <TD bgColor=#f4f5f7 align=left><SPAN class=text>
                                                      <INPUT 
                  type="radio" name="rote" id="parent" value="Parent">
                                                      家长
                                                      <INPUT type="radio" name="rote" id="teacher" value="Teacher" checked="checked">
                                                      教员
                                                      <INPUT type="radio" name="rote" id="mgr" value="Manager">
                                                      管理
                                                    </SPAN></TD>
                                                  </TR>
                                                  <TR>
                                                    <TD class=text height=25 align=right>&nbsp;</TD>
                                                    <TD class=text height=25 align=left><IMG 
                  src="images/zhuc.jpg" width=10 height=10> <A 
                  href="blank.do?url=regthr">注册教员</A>　　<IMG 
                  src="images/zhuc.jpg" width=10 height=10> <A 
                  href="blank.do?url=regprt">我是家长</A></TD>
                                                  </TR>
                                                  <TR bgColor=#f4f5f7>
                                                    <TD class=text height=25 colSpan=2 align=middle><INPUT value=" 提交 " type=submit name=submit>
                                                      
                                                      <INPUT value=" 重置 " type=reset name=reset></TD>
                                                  </TR>
                                                </TBODY>
                                            </TABLE></TD>
                                          </TR>
                                        </TBODY>
                                      </TABLE>
                                      <p>&nbsp;</p>
                                      <p>&nbsp;</p>
                                      <p>&nbsp;</p>
                                      <p>&nbsp;</p>
                                      <p>&nbsp;</p>
                                      <p>&nbsp;</p></TD>
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
      <TD width="770" align=middle vAlign=top><TABLE border=0 cellSpacing=0 cellPadding=0 width=770>
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
<TABLE border=0 cellSpacing=0 cellPadding=0 width=769 bgColor=#ffffff>
  <TBODY>
    <TR>
      <TD width="770" align=middle><TABLE border=0 cellSpacing=0 cellPadding=0 width=769 bgColor=#cccccc 
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
      <TD width="770" align=middle vAlign=top><TABLE border=0 cellSpacing=0 cellPadding=0 width=586>
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
      <TD width="770" align=middle><TABLE border=0 cellSpacing=0 cellPadding=0 width=770>
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
align=middle></TD>
          </TR>
        </TBODY>
      </TABLE></TD>
    </TR>
  </TBODY>
</TABLE>
</CENTER>

</html>
