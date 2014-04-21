<jsp:include page="head.jsp"/>
<%@ page language="java" pageEncoding="GBK"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>    
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>  
<script type="text/javascript">
	function employ() {
		window.self.location = "addstu.do?method=employ&stuid=${stu.user_id}&thrid=${sessionScope.user_id}";
	}

	function modify() {
		window.self.location = "mylist.do?method=loadstu&stuid=${stu.user_id}&isupdate=yes";
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
            &gt;&gt; <A href="mylist.do?method=allstuList">学员库</A> &gt;&gt; 详细信息</DIV></TD></TR>
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
			                	<TD width="770">
	   		                  	   <DIV class=Xyline align=center>
	   		                  	     <TABLE width=770 border=0 cellPadding=0 cellSpacing=1><TBODY><TR align=left><TD height=25 width=280 align=left><table width=770 border=0 cellpadding=0 cellspacing=1>
                                       <tbody>
                                         <tr align=middle bgcolor=#eef0f2>
                                           <td height=25 
                colspan=4><strong>::::学员（请家教）会员的详细资料::::</strong></td>
                                         </tr>
                                         <tr>
                                           <td height=25 width=85 align=left><strong>学员称呼：</strong></td>
                                           <td height=25 width=280 align=left>${stu.firname}</td>
                                           <td height=25 width=85 
                  align=left><strong>学员编号：</strong></td>
                                           <td  height=25 width=280 align=left>S${stu.user_id}</td>
                                         </tr>
                                         <tr bgcolor=#eef0f2>
                                           <td bgcolor=#eef0f2 height=25 width=85 
                  align=left><strong>学员性别：</strong></td>
                                           <td bgcolor=#eef0f2 height=25 width=280 align=left>${stu.sex}</td>
                                           <td bgcolor=#eef0f2 height=25 width=85 
                  align=left><strong>所在年级：</strong></td>
                                           <td bgcolor=#eef0f2 height=25 width=280 align=left>${stu.schoolgrade}</td>
                                         </tr>
                                         <tr>
                                           <td height=25 width=85 align=left><strong>学习情况：</strong></td>
                                           <td height=25 width=280 align=left>${stu.studyinf}</td>
                                           <td height=25 width=85 align=left><strong>辅导工资：</strong></td>
                                           <td height=25 width=280 align=left>${stu.pay}</td>
                                         </tr>
                                         <tr bgcolor=#eef0f2>
                                           <td bgcolor=#eef0f2 height=25 width=85 align=left><strong>联系电话：</strong></td>
                                           <td bgcolor=#eef0f2 height=25 width=280 align=left>${stu.telephone}</td>
                                           <td height=25 width=85 
                  align=left><strong>手机：</strong></td>
                                           <td height=25 width=280 align=left>${stu.mobel}</td>
                                         </tr>
                                         
                                         <tr align=left>
                                           <td height=25 width=85 align=left><strong>家庭住址：</strong></td>
                                           <td height=25 width=280 align=left>${stu.address}</td>
                                           <td height=25 width=85  align=left><strong>状态：</strong></td>
                                           <td height=25 width=280 align=left>${stu.state}</td>
                                         </tr>
                                         <tr bgcolor=#eef0f2 align=left>
                                           <td class=text height=25 
                  colspan=4><strong>::::教员要求及详细说明::::</strong></td>
                                         </tr>
                                         <tr align=left>
                                           <td height=80 colspan=4><label> ${stu.threquire} </label>                                           </td>
                                         </tr>
                                         <tr bgcolor=#eef0f2>
                                          
                                          	<c:set value="${stu.prt_id}" var="prt_temp_id" scope="page"/>
                                            <c:set value="Teacher" var="teacher" scope="page"/>
                                            <c:choose>
                                            	<c:when test="${sessionScope.rote eq pageScope.teacher}">
	                                            	<td height=25 width=100 align=left>
	                                                   <label>
	                                                     <input name="employ" type="button" id="employ" value="应聘" onclick="employ()"/>
	                                                   </label>
	                                               </td>
	                                               <td height=25 width=100 align=left colspan=3>
                                                   <label>
                                                   	 <input type="button" name="back" id="back" value="返回" onClick="history.back(-1)" />
                                                   </label>
                                               </td>
                                            	</c:when>
                                            	<c:when test="${sessionScope.user_id eq pageScope.prt_temp_id}">
                                            		<td height=25 width=100 align=left>
	                                                   <label>
	                                                     <input name="modify" type="button" id="modify" value="修改信息" onclick="modify()"/>
	                                                   </label>
	                                               </td>
	                                               <td height=25 width=100 align=left colspan=3>
	                                               	 <label>
	                                             		<input type="button" name="back" id="back" value="返回" onClick="history.back(-1)" />
	                                              	 </label>
	                                               </td>
                                            	</c:when>
                                            	<c:otherwise>
	                                            	<td height=25 width=100 align=left colspan=4>
	                                                   <label>
	                                                   	 <input type="button" name="back" id="back" value="返回" onClick="history.back(-1)" />
	                                                   </label>
	                                               </td>
                                            	</c:otherwise>
                                            </c:choose>
                                           
                                           </td>
                                         </tr>
                                         <tr>
                                         	<td height=25 colspan="4"><strong>::::求职信息::::</strong></td>
                                         </tr>
                                         <tr></tr>
                                       </tbody>
                                     </table></TD>
                                         </TR>
	   		                  	   </TBODY>
	   		                  	   </TABLE>
   		                  	      </DIV>	
			                    </TD>
	                    </TR>
                        
		                  </TBODY>
		                </TABLE>
	              </DIV>
            <DIV align=center>
            <TABLE border=0 cellSpacing=0 cellPadding=0 width=770 height=50>
			</TABLE>
</DIV></TD></TR></TBODY></TABLE></TD></TR></TBODY></TABLE>

<TD width="770">
   		                  	      <DIV class=Xyline align=center>
			                     <TABLE class=xylist border=0 cellSpacing=1 cellPadding=0 width="770">
        <TBODY>
						                    <TR class=FLine bgColor=#eef0f2>
                                           	  <TD width="8%"><STRONG>教员编号</STRONG></TD>
						                      <TD width="8%"><STRONG>教员编号</STRONG></TD>
                                              <TD width="9%"><STRONG>称呼</STRONG></TD>
						                      <TD width="5%"><STRONG>性别</STRONG></TD>
						                      <TD width="10%"><STRONG>所在学校</STRONG></TD>
                                              <TD width="10%"><STRONG>教育情况</STRONG></TD>
						                      <TD width="12%"><STRONG>辅导科目</STRONG></TD>
						                      <TD width="9%"><STRONG>状态</STRONG></TD>
						                      <TD width="14%"><STRONG>登记日期</STRONG></TD>
						                      <TD width="9%"><STRONG>详细信息</STRONG></TD>
                                            </TR>
                                            
                                            <c:choose>
                                                <c:when test="${empty thrList}">
                                                    <tr bgColor=#ffffff>
                                                        <td colspan="10">没有符合条件的数据!</td>
                                                    </tr>
                                                </c:when>
                                                <c:otherwise>
                                                    <c:forEach items="${thrList}" var="thr" varStatus="vs">
                                                                    <c:choose>
                                                                        <c:when test="${vs.count % 2 == 0}">
                                                                            <TR align=middle bgColor=#ffffff>
                                                                        </c:when>
                                                                        <c:otherwise>
                                                                            <TR align=middle bgColor=#eef0f2>
                                                                        </c:otherwise>
                                                                    </c:choose>
                                                                    
                                                                   <c:choose>
                                                                        <c:when test="${stu.state eq '已安排'}">
                                                                        	<TD width="8%"></TD> 
                                                                        </c:when>
                                                                        <c:when test="${sessionScope.rote eq 'Teacher'}">
                                                                        	<TD width="8%"></TD> 
                                                                        </c:when>
                                                                        <c:when test="${sessionScope.user_id eq stu.prt_id}">
                                                                        	<TD width="8%">
                                                                        		<a href="addstu.do?method=choosethr&thrid=${thr.user_id}&stuid=${stu.user_id}">聘请</a></div>
                                                                        	</TD> 
                                                                        </c:when>
                                                                        <c:otherwise>
                                                                        	<TD width="8%"></TD>
                                                                        </c:otherwise>
                                                                    </c:choose>
                                                                  
                                                                  
                                                                  <TD height=22 width="8%" align=middle><A href="mylist.do?method=teacher&id=${thr.user_id}">S${thr.user_id}</A></TD>
                                                                  <TD width="9%">${thr.ch_name}</TD>
                                                                  <TD width="5%">${thr.sex}</TD>
                                                                  <TD width="10%">${thr.school}</TD>
                                                                  <TD width="10%">${thr.education}</TD>
                                                                  <TD width="12%">${thr.onesubject}</TD>
                                                                  <TD width="9%"><FONT color=#cc0000>${thr.state}</FONT></TD>
                                                                  <TD width="14%">${thr.registertime}</TD>
                                                                  <TD width="9%"><A href="mylist.do?method=teacher&id=${thr.user_id}">详细信息</A></TD></TR>
                                                    </c:forEach>
                                                </c:otherwise>
                                            </c:choose>
			                       </TBODY>
	                               </TABLE>
		                 	   </DIV>	
			                    </TD>
<jsp:include flush="true" page="foot.jsp"/>
