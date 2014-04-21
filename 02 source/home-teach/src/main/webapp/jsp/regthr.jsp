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
      <TD width="770" align=middle vAlign=top bgColor=#ffffff><TABLE border=0 cellSpacing=0 cellPadding=0 width=770>
        <TBODY>
          <TR> </TR>
          <TR>
            <TD><DIV align=left><IMG align=left src="images/jiaoyuan.jpg" 
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
                              <form action="regthr.do?method=regthr" method="post" name="regthr" id="regthr" onsubmit="return doValidate(this)">
                                <TABLE width=770 border=0 cellPadding=0 cellSpacing=1>
                                  <TBODY>
                                    <TR align=middle bgColor=#eef0f2>
                                      <TD height=25 
                colSpan=4><STRONG>::::教员注册::::</STRONG></TD>
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
                                      <TD bgColor=#eef0f2 height=25 width=594 align=left>
                                     	 <input type="password" name="pwd" id="pwd" />
                                      </TD>
                                    </TR>
                                    <TR>
                                      <TD height=25 width=103 align=left><STRONG>确认密码：</STRONG></TD>
                                      <TD height=25 width=594 align=left>
                                     	 <input type="password" name="agpwd" id="agpwd" />
                                      </TD>
                                    </TR>
                                    <TR bgColor=#eef0f2>
                                      <TD bgColor=#eef0f2 height=25 width=103 
                  align=left><STRONG>姓名：</STRONG></TD>
                                      <TD bgColor=#eef0f2 height=25 width=594 align=left>
                                     	 <input type="text" name="ch_name" id="ch_name" />
                                      </TD>
                                    </TR>
                                    <TR>
                                      <TD height=25 width=85 
                  align=left><STRONG>学员性别：</STRONG></TD>
                                      <TD height=25 width=680 align=left><input name="sex" type="radio" id="sex" value="男" checked="checked" />
                                        男
                                        <label>
                                        <input type="radio" name="sex" id="sex" value="女" />
                                          女</label>
                                      </TD>
                                    </TR>
                                    <TR bgColor=#eef0f2>
                                      <TD bgColor=#eef0f2 height=25 width=103 align=left><STRONG>出生年月：</STRONG></TD>
                                      <TD bgColor=#eef0f2 height=25 width=594 align=left><input type="text" name="birthday" id="birthday" />
                                      </TD>
                                    </TR>
                                    <TR>
                                      <TD height=25 width=103 align=left><STRONG>民族：</STRONG></TD>
                                      <TD height=25 width=594 align=left>
                                      	<input type="text" name="nation" id="nation" />
                                      </TD>
                                    </TR>
                                    <TR bgColor=#eef0f2>
                                      <TD bgColor=#eef0f2 height=25 width=103 
                  align=left><STRONG>籍贯：</STRONG></TD>
                                      <TD bgColor=#eef0f2 height=25 width=594 align=left>
                                      	<input type="text" name="province" id="province" />
                                      </TD>
                                    </TR>
                                    <TR align=left>
                                      <TD height=25 width=103 align=left><STRONG>教育情况：</STRONG></TD>
                                      <TD height=25 width=594 align=left><select name="education" id="education">
                                          <option value="初中就读">初中在读</option>
                                          <option value="初中毕业">初中毕业</option>
                                          <option value="高中在读">高中在读</option>
                                          <option value="高中毕业">高中毕业</option>
                                          <option value="中专在读">中专在读</option>
                                          <option value="中专毕业">中专毕业</option>
                                          <option value="大专在读">大专在读</option>
                                          <option value="大专毕业">大专毕业</option>
                                          <option value="本科在读" selected>本科在读</option>
                                          <option value="本科以上">本科毕业</option>
                                          <option value="研究生以上">研究生以上</option>
                                        </select>
                                      </TD>
                                    </TR>
                                    <TR bgColor=#eef0f2>
                                      <TD bgColor=#eef0f2 height=25 width=103 align=left><STRONG>所在学校：</STRONG></TD>
                                      <TD bgColor=#eef0f2 height=25 width=594 align=left>
                                      <input type="text" name="school" id="school" />
                                      </TD>
                                    </TR>
                                    <TR>
                                      <TD height=25 width=103 align=left><STRONG>所学专业：</STRONG></TD>
                                      <TD height=25 width=594 align=left>
                                      <input type="text" name="subject" id="subject" />
                                      </TD>
                                    </TR>
                                    <TR bgColor=#eef0f2>
                                      <TD bgColor=#eef0f2 height=25 width=103 
                  align=left><STRONG>E-mail：</STRONG></TD>
                                      <TD bgColor=#eef0f2 height=25 width=594 align=left>
                                      <input type="text" name="email" id="email" />
                                      </TD>
                                    </TR>
                                    <TR align=left>
                                      <TD height=25 width=103 align=left><STRONG>手机：</STRONG></TD>
                                      <TD height=25 width=594 align=left>
                                      	<input type="text" name="mobel" id="mobel" />
                                      </TD>
                                    </TR>
                                    <TR bgColor=#eef0f2>
                                      <TD bgColor=#eef0f2 height=25 width=103 
                  align=left><STRONG>QQ：</STRONG></TD>
                                      <TD bgColor=#eef0f2 height=25 width=594 align=left>
                                      	<input type="text" name="qq" id="qq" />
                                      </TD>
                                    </TR>
                                    <TR align=left>
                                      <TD height=25 width=103 align=left><STRONG>联系电话：</STRONG></TD>
                                      <TD height=25 width=594 align=left>
                                      	<input type="text" name="telephone" id="telephone" />
                                      </TD>
                                    </TR>
                                    <TR bgColor=#eef0f2>
                                      <TD bgColor=#eef0f2 height=25 width=103 
                  align=left><STRONG>最善长科目：</STRONG></TD>
                                      <TD bgColor=#eef0f2 height=25 width=594 align=left><select name="onesubject" id="onesubject">
                                          <option value="小学全科">小学全科</option>
                                          <option value="初中文科">初中文科</option>
                                          <option value="初中理科">初中理科</option>
                                          <option value="初中英语">初中英语</option>
                                          <option value="高中文科">高中文科</option>
                                          <option value="高中理科" selected>高中理科</option>
                                          <option value="高中英语">高中英语</option>
                                          <option value="高中数学">高中数学</option>
                                          <option value="高三文科">高三文科</option>
                                          <option value="高三理科">高三理科</option>
                                          <option value="高三英语">高三英语</option>
                                          <option value="高三数学">高三数学</option>
                                          <option value="第二外语">第二外语</option>
                                          <option value="英语口语">英语口语</option>
                                          <option value="编程语言">编程语言</option>
                                          <option value="个人特长">个人特长</option>
                                        </select>
                                      </TD>
                                    </TR>
                                    <TR align=left>
                                      <TD class=text height=25 
                  colSpan=4><STRONG>::::自我介绍::::</STRONG></TD>
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
                                          <input type="reset" name="reset" id="reset" value="重置" />
                                      </div></TD>
                                      <TD height=25 width=130 align=left><div align="center">
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
align=middle></TD>
          </TR>
        </TBODY>
      </TABLE></TD>
    </TR>
  </TBODY>
</TABLE>
</CENTER>

</html>
