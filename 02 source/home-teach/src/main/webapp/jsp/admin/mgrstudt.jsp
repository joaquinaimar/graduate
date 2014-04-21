<jsp:include page="head.jsp"/>
<%@ page language="java" pageEncoding="GBK"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>    
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>  
<script type="text/javascript">
	function del() {
		window.self.location = "mgr.do?method=delstu&stuid=${stu.user_id}";
	}
	function goback() {
		window.self.location = "mgr.do?method=stuList";
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
            <DIV align=left>您当前的位置: <A href="blank.do?url=mgrmain">管理</A>            &gt;&gt; <a href="mgr.do?method=stuList">学员管理</a>&gt;&gt; 详细信息</DIV></TD></TR>
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
                                         </tr>
                                         <tr bgcolor=#eef0f2 align=left>
                                           <td class=text height=25 
                  colspan=4><strong>::::教员要求及详细说明::::</strong></td>
                                         </tr>
                                         <tr align=left>
                                           <td height=80 colspan=4><label> ${stu.threquire} </label>                                           </td>
                                         </tr>
                                         <tr bgcolor=#eef0f2>                                      
                                            		<td height=25 width=100 align=left>
	                                                   <label>
                                                       		<input type="button" name="back" id="back" value="返回" onclick="goback()" />
	                                                   </label>
	                                               </td>
	                                               <td height=25 width=100 align=left colspan=3>
	                                               	 <label>
	                                             		<input name="employ" type="button" id="employ" value="删除" onclick="del()"/>
	                                              	 </label>
	                                               </td>
                                         </tr>
                                         <tr>
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


<jsp:include flush="true" page="foot.jsp"/>
