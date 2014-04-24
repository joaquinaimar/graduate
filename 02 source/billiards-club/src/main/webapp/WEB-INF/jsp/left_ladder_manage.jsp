<%@ page language="java" pageEncoding="utf-8"%>
<%@include file="/WEB-INF/jsp/common/taglibs.jsp" %>
<div id="left">
<img src="${contextPath}/common/img/top_table_decoration.gif" border="0" alt="table deco" >
<fieldset>
	<legend>
	</legend>
	<div style="height: 299px; text-align: left; padding-top: 10px; padding-left: 30px;">
		<p style="letter-spacing: 1px;"><s:a action="ladderShow.action">教练列表</s:a></p>
		<p style="letter-spacing: 1px;"><s:a action="ladderAdd!view.action">教练添加</s:a></p>
		<p style="letter-spacing: 1px;"><s:a action="ladderUpdate.action">教练更新</s:a></p>
	</div>
</fieldset>
</div>