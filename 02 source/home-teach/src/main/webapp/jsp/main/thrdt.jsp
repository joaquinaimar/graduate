<jsp:include page="head.jsp"/>
<%@ page language="java" pageEncoding="GBK"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>    
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>  
<TABLE border=0 cellSpacing=0 cellPadding=0 width=770>
  <TBODY>
  <TR>
    <TD bgColor=#ffffff vAlign=top align=middle>
      <TABLE border=0 cellSpacing=0 cellPadding=0 width=770>
        <TBODY>
        <TR>
          <TD height=25>
            <DIV align=left>您当前的位置: <A href="mylist.do?method=main_list">首页</A> 
            &gt;&gt; <A href="mylist.do?method=allthrList">教员库</A>&gt;&gt; 详细信息</DIV></TD></TR>
        <TR>
          <TD>
            <DIV align=left><IMG align=left src="images/jiaoyuan.jpg" 
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
	   		                  	     <TABLE width=770 border=0 cellPadding=0 cellSpacing=1>
                                       <TBODY>
                                         <TR align=middle bgColor=#eef0f2>
                                           <TD height=25 
                colSpan=4><STRONG>::::教员详细资料::::</STRONG></TD>
                                         </TR>
                                         <TR>
                                           <TD height=25 width=85 align=left><STRONG>教员称呼：</STRONG></TD>
                                           <TD height=25 width=680 align=left>${thr.ch_name}</TD>
                                         </TR>
                                          <TR bgColor=#eef0f2>
                                           <TD bgColor=#eef0f2 height=25 width=85 
                  align=left><STRONG>教员编号：</STRONG></TD>
                                           <TD bgColor=#eef0f2 height=25 width=680 align=left>${thr.user_id}</TD>             
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
                                           <TD height=25 width=680 align=left>${thr.education}</TD>
                                         </TR>
                                         <TR bgColor=#eef0f2>
                                           <TD bgColor=#eef0f2 height=25 width=85 
                  align=left><STRONG>所在学校：</STRONG></TD>
                                           <TD bgColor=#eef0f2 height=25 width=680 align=left>${thr.school}</TD>
                                         </TR>
                                         <TR align=left>
                                           <TD height=25 width=85 align=left><STRONG>所学专业：</STRONG></TD>
                                           <TD height=25 width=680 align=left>${thr.subject}</TD>
                                         </TR>
                                          <TR bgColor=#eef0f2>
                                           <TD bgColor=#eef0f2 height=25 width=85 align=left><STRONG>E-mail：</STRONG></TD>
                                           <TD bgColor=#eef0f2 height=25 width=680 align=left>${thr.email}</TD>
                                         </TR>
                                         <TR>
                                           <TD height=25 width=85 align=left><STRONG>手机：</STRONG></TD>
                                           <TD height=25 width=680 align=left>${thr.mobel}</TD>
                                         </TR>
                                         <TR bgColor=#eef0f2>
                                           <TD bgColor=#eef0f2 height=25 width=85 
                  align=left><STRONG>QQ：</STRONG></TD>
                                           <TD bgColor=#eef0f2 height=25 width=680 align=left>${thr.qq}</TD>
                                         </TR>
                                         <TR align=left>
                                           <TD height=25 width=85 align=left><STRONG>联系电话：</STRONG></TD>
                                           <TD height=25 width=680 align=left>${thr.telephone}</TD>
                                         </TR>
                                         <TR bgColor=#eef0f2>
                                           <TD bgColor=#eef0f2 height=25 width=85 
                  align=left><STRONG>最善长科目：</STRONG></TD>
                                           <TD bgColor=#eef0f2 height=25 width=680 align=left>${thr.onesubject}</TD>
                                         </TR>
                                          <TR align=left>
                                           <TD height=25 width=85 align=left><STRONG>状态：</STRONG></TD>
                                           <TD height=25 width=680 align=left>${thr.state}</TD>
                                         </TR>
                                         <TR align=left bgColor=#eef0f2>
                                           <TD class=text height=25 
                  colSpan=4><STRONG>::::个人简介::::</STRONG></TD>
                                         </TR>
                                         <TR align=left>
                                           <TD height=80 colSpan=4>
                                             <label>
                                               ${thr.exp_intr}
                                             </label>                                           
                                             </TD>
                                         </TR>
                                         <TR align=left bgColor=#eef0f2>
                                           <TD class=text height=25 colSpan=4> 
                                           		<input type="button" name="back" id="back" value="返回" onClick="history.back(-1)" />
                                           </TD>
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
