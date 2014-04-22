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
            <DIV align=left>您当前的位置: <A href="mylist.do?method=main_list">首页</A> 
            &gt;&gt; <A href="mylist.do?method=allstuList">学员库</A> &gt;&gt; 修改信息</DIV></TD></TR>
        <TR>
          <TD>
            <DIV align=left><IMG align=left src="images/xueyuan.jpg" 
            width=570 height=40></DIV></TD></TR>
          <TR></TR>
          <TR>
            <TD>　
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
                colSpan=4><STRONG>::::学生信息修改::::<a href="blank.do?url=modifypwd">::::进行密码修改::::</a></STRONG></TD>
                                    </TR>
                                    <TR>
                                      <TD height=25 width=103 align=left><STRONG>用户名：</STRONG></TD>
                                      <TD height=25 width=594 align=left><label>${prt.username}</label></TD>
                                    </TR>
                                    <TR bgColor=#eef0f2>
                                      <TD bgColor=#eef0f2 height=25 width=103 
                  align=left><STRONG>姓名：</STRONG></TD>
                                      <TD bgColor=#eef0f2 height=25 width=594 align=left><label>${prt.ch_name}</label>  
                                      </TD>
                                    </TR>
                                    <TR align=left>
                                      <TD height=25 width=103 align=left><STRONG>性别：</STRONG></TD>
                                      <TD height=25 width=594 align=left><label>${prt.sex}</label></TD>
                                    </TR>
                                    <TR bgColor=#eef0f2>
                                      <TD bgColor=#eef0f2 height=25 width=103 
                  align=left><STRONG>E-mail：</STRONG></TD>
                                      <TD bgColor=#eef0f2 height=25 width=594 align=left><input type="text" name="email" id="email" value="${prt.email}"/>                                      </TD>
                                    </TR>
                                    <TR align=left>
                                      <TD height=25 width=103 align=left><STRONG>手机：</STRONG></TD>
                                      <TD height=25 width=594 align=left><input type="text" name="mobel" id="mobel" value="${prt.mobel}"/>                                      </TD>
                                    </TR>
                                    <TR bgColor=#eef0f2>
                                      <TD bgColor=#eef0f2 height=25 width=103 
                  align=left><STRONG>QQ：</STRONG></TD>
                                      <TD bgColor=#eef0f2 height=25 width=594 align=left><input type="text" name="qq" id="qq" value="${prt.qq}"/>                                      </TD>
                                    </TR>
                                   
                                    <TR align=left>
                                      <TD height=25 width=103 align=left><STRONG>联系电话：</STRONG></TD>
                                      <TD height=25 width=594 align=left><input type="text" name="telephone" id="telephone" value="${prt.telephone}"/>                                      </TD>
                                    </TR>
                                    
                                    <TR align=left >
                                      <TD height=25 width=103 align=left><STRONG>家庭住址：</STRONG>
                                      </TD>
                                      <TD height=25 width=594 align=left><input type="text" name="address" id="address" value="${prt.address}"/>
                                      </TD>
                                      
                                    </TR>
                                    
	                                     <TR align=left bgColor=#eef0f2>
	                                      <TD height=25 width=103 align=left>
	                                      </TD>
	                                      <TD height=25 width=103 align=left><div align="left">
	                                        <input type="submit" name="submit" id="submit" value="提交" />
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