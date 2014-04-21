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
            <TD>　
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
                colSpan=4><STRONG>::::学员（请家教）会员的详细资料::::</STRONG></TD>
                                    </TR>
                                    <TR>
                                      <TD height=25 width=85 align=left><STRONG>学员贵姓：</STRONG></TD>
                                      <TD height=25 width=680 align=left><label>
                                        <input type="text" name="firname" id="firname" value="${stu.firname}"/>
                                      </label></TD>
                                    </TR>
                                    <TR bgColor=#eef0f2>
                                      <TD bgColor=#eef0f2 height=25 width=85 
                  align=left><STRONG>学员性别：</STRONG></TD>
                                      <TD bgColor=#eef0f2 height=25 width=680 align=left>
                                      	<label>
                                      		${stu.sex}
                                        <label>
                                      </TD>
                                    </TR>
                                    <TR>
                                      <TD height=25 width=85 align=left><STRONG>所在年级：</STRONG></TD>
                                      <TD height=25 width=680 align=left><label>
                                        <input type="text" name="schoolgrade" id="schoolgrade" value="${stu.schoolgrade}"/>
                                      </label></TD>
                                    </TR>
                                    <TR bgColor=#eef0f2>
                                      <TD bgColor=#eef0f2 height=25 width=85 
                  align=left><STRONG>学习情况：</STRONG></TD>
                                      <TD bgColor=#eef0f2 height=25 width=680 align=left><label>
                                        <input type="text" name="studyinf" id="studyinf" value="${stu.studyinf}"/>
                                      </label></TD>
                                    </TR>
                                    <TR align=left>
                                      <TD height=25 width=85 align=left><STRONG>辅导科目：</STRONG></TD>
                                      <TD height=25 width=680 align=left><label>
                                        <select name="onesubject" id="onesubject">
                                          <option value="小学全科">小学全科</option>
                                          <option value="初中文科">初中文科</option>
                                          <option value="初中理科">初中理科</option>
                                          <option value="初中英语">初中英语</option>
                                          <option value="高中文科">高中文科</option>
                                          <option value="高中理科" selected="selected">高中理科</option>
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
                                        </label>
                                      </TD>
                                    </TR>
                                    <TR bgColor=#eef0f2>
                                      <TD bgColor=#eef0f2 height=25 width=85 align=left><STRONG>辅导工资：</STRONG></TD>
                                      <TD bgColor=#eef0f2 height=25 width=680 align=left><label>
                                        <input type="text" name="pay" id="pay" value="${stu.pay}"/>
                                      </label></TD>
                                    </TR>
                                    <TR>
                                      <TD height=25 width=85 align=left><STRONG>联系电话：</STRONG></TD>
                                      <TD height=25 width=680 align=left><label>
                                        <input type="text" name="telephone" id="telephone" value="${stu.telephone}"/>
                                      </label></TD>
                                    </TR>
                                    <TR bgColor=#eef0f2>
                                      <TD bgColor=#eef0f2 height=25 width=85 
                  align=left><STRONG>手机：</STRONG></TD>
                                      <TD bgColor=#eef0f2 height=25 width=680 align=left><label>
                                        <input type="text" name="mobel" id="mobel" value="${stu.mobel}"/>
                                      </label></TD>
                                    </TR>
                                    <TR>
                                      <TD height=25 width=85 align=left><STRONG>家庭住址：</STRONG></TD>
                                      <TD height=25 width=680 align=left><label>
                                        <input type="text" name="address" id="address" value="${stu.address}"/>
                                      </label></TD>
                                    </TR>
                                    <TR bgColor=#eef0f2>
                                      <TD class=text height=25 
                  colSpan=4><STRONG>::::教员要求及详细说明::::</STRONG></TD>
                                    </TR>
                                    <TR>
                                      <TD height=80 colSpan=4><label>
                                        <textarea name="threquire" id="threquire" cols="85" rows="5">${stu.threquire}</textarea>
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
