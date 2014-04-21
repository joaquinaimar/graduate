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
            <DIV align=left>您当前的位置: <A href="mylist.do?method=main_list">首页</A> 
            &gt;&gt; <A href="mylist.do?method=allthrList">教员库</A>&gt;&gt; 修改信息</DIV></TD></TR>
        <TR>
          <TD>
            <DIV align=left><IMG align=left src="images/jiaoyuan.jpg" 
            width=570 height=40></DIV></TD></TR>
        <TR></TR>
        <TR>
          <TD>　
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
                colSpan=4><STRONG>::::教员详细资料::::<a href="blank.do?url=modifypwd">::::进行密码修改::::</a></STRONG></TD>
                                         </TR>
                                         <TR>
                                           <TD height=25 width=85 align=left><STRONG>教员称呼：</STRONG></TD>
                                           <TD height=25 width=680 align=left>${thr.ch_name}</TD>
                                         </TR>
                                          <TR bgColor=#eef0f2>
                                           <TD bgColor=#eef0f2 height=25 width=85 
                  align=left><STRONG>教员编号：</STRONG></TD>
                                           <TD bgColor=#eef0f2 height=25 width=680 align=left>S${thr.user_id}</TD>             
                                         </TR>
                                         <TR>
                                           <TD height=25 width=85 align=left><STRONG>教员性别：</STRONG></TD>
                                           <TD height=25 width=680 align=left>${thr.sex}</TD>
                                         </TR>
                                         <TR bgColor=#eef0f2>
                                           <TD bgColor=#eef0f2 height=25 width=85 
                  align=left><STRONG>出生年月：</STRONG></TD>
                                           <TD bgColor=#eef0f2 height=25 width=680 align=left>${thr.birthday}</TD>
                                         </TR>
                                         <TR align=left>
                                           <TD height=25 width=85 align=left><STRONG>民族：</STRONG></TD>
                                           <TD height=25 width=680 align=left>${thr.nation}</TD>
                                         </TR>
                                         
                                         <TR bgColor=#eef0f2>
                                           <TD bgColor=#eef0f2 height=25 width=85 align=left><STRONG>籍贯：</STRONG></TD>
                                           <TD bgColor=#eef0f2 height=25 width=680 align=left>${thr.province}</TD>
                                         </TR>
                                         <TR>
                                           <TD height=25 width=85 align=left><STRONG>教育情况：</STRONG></TD>
                                           <TD height=25 width=680 align=left>
                                           <select name="education" id="education">
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
                                           <TD bgColor=#eef0f2 height=25 width=85 
                  align=left><STRONG>所在学校：</STRONG></TD>
                                           <TD bgColor=#eef0f2 height=25 width=680 align=left>
                                           	<input type="text" name="school" id="school" value="${thr.school}"/>   
                                           </TD>
                                         </TR>
                                         <TR align=left>
                                           <TD height=25 width=85 align=left><STRONG>所学专业：</STRONG></TD>
                                           <TD height=25 width=680 align=left>
                                           	<input type="text" name="subject" id="subject" value="${thr.subject}"/>   
                                           </TD>
                                         </TR>
                                          <TR bgColor=#eef0f2>
                                           <TD bgColor=#eef0f2 height=25 width=85 align=left><STRONG>E-mail：</STRONG></TD>
                                           <TD bgColor=#eef0f2 height=25 width=680 align=left>
                                           	<input type="text" name="email" id="email" value="${thr.email}"/>   
                                            </TD>
                                         </TR>
                                         <TR>
                                           <TD height=25 width=85 align=left><STRONG>手机：</STRONG></TD>
                                           <TD height=25 width=680 align=left>
                                           	<input type="text" name="mobel" id="mobel" value="${thr.mobel}"/>   
                                          </TD>
                                         </TR>
                                         <TR bgColor=#eef0f2>
                                           <TD bgColor=#eef0f2 height=25 width=85 
                  align=left><STRONG>QQ：</STRONG></TD>
                                           <TD bgColor=#eef0f2 height=25 width=680 align=left>
                                           	<input type="text" name="qq" id="qq" value="${thr.qq}"/>   
                                          </TD>
                                         </TR>
                                         <TR align=left>
                                           <TD height=25 width=85 align=left><STRONG>联系电话：</STRONG></TD>
                                           <TD height=25 width=680 align=left>
                                           	<input type="text" name="telephone" id="telephone" value="${thr.telephone}"/>   
                                           </TD>
                                         </TR>
                                         <TR bgColor=#eef0f2>
                                           <TD bgColor=#eef0f2 height=25 width=85 
                  align=left><STRONG>最善长科目：</STRONG></TD>
                                           <TD bgColor=#eef0f2 height=25 width=680 align=left>
                                           <select name="onesubject" id="onesubject">
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
                                         	<c:if test="${thr.state eq '求职中'}">
                                            <TD height=25 width=105 align=left><STRONG>状态：</STRONG></TD>
                                            <TD height=25 width=660 align=left>${thr.state}</TD>  
                                           </c:if>
                                                                                                                           
                                           
                                           <c:if test="${thr.state eq '工作中'}">
                                           <TD height=25 width=105 align=left><STRONG>状态：   工作中</STRONG></TD>
                                           <TD height=25 width=660 align=left><label>
                                             <input type="button" name="button" id="button" value="更改状态"  onclick="changethrState()"/>
                                           </label></TD>
                                           </c:if>
                                           
                                         </TR>
                                         <TR align=left>
                                           <TD class=text height=25 
                  colSpan=4><STRONG>::::个人简介::::</STRONG></TD>
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
	                                        <input type="submit" name="submit" id="submit" value="提交" />
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