<jsp:include page="head.jsp"/>
<%@ page language="java" pageEncoding="GBK"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>    
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>  
<script src="js/validation-framework.js"></script>

<BODY background=images/bg.gif>
<TABLE border=0 cellSpacing=0 cellPadding=0 width=770>
  <TBODY>
    <TR>
      <TD bgColor=#ffffff vAlign=top align=middle><TABLE border=0 cellSpacing=0 cellPadding=0 width=770>
        <TBODY>
          <TR> </TR>

          <TR></TR>
          <TR>
            <TD>　
                  <DIV align=center>
                    <TABLE border=0 cellSpacing=0 cellPadding=0 width=770>
                      <TBODY>
                        <TR align=middle>
                          <TD width="770"><DIV class=Xyline align=center>
                          <div id="error" style="color:red;font-weight:bold"></div>
                                 <form action="login.do?method=modifypwd" method="post" enctype="multipart/form-data" name="modifypwd" id="modifypwd" onSubmit="return doValidate(this)">
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
                  align=right>旧密码： </TD>
                                                    <TD class=text bgColor=#f4f5f7 width=321 align=left><label>
                                                      <input type="password" name="oldpwd" id="oldpwd" />
                                                    </label></TD>
                                                  </TR>
                                                  <TR>
                                                    <TD height=25 align=right>新密码：</TD>
                                                    <TD align=left><label>
                                                      <input type="password" name="pwd" id="pwd" />
                                                    </label></TD>
                                                  </TR>
                                                  <TR>
                                                    <TD bgColor=#f4f5f7 height=25 align=right>确认新密码： </TD>
                                                    <TD bgColor=#f4f5f7 align=left><input type="password" name="agpwd" id="agpwd" /></TD>
                                                  </TR>
                                                  <TR>
                                                    <TD class=text height=25 align=right><input value=" 重置 " type=reset name=reset></TD>
                                                    <TD class=text height=25 align=left>
                                                      
                                                        <div align="left">
                                                          <input value=" 提交 " type=submit name=submit>
                                                      </div></TD>
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
<jsp:include flush="true" page="foot.jsp"/>