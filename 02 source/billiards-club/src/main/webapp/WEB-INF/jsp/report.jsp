<%@include file="/WEB-INF/jsp/common/taglibs.jsp" %>
<%@ page language="java" pageEncoding="utf-8"%>
<script type="text/javascript" src="${contextPath}/common/scripts/calendar.js"></script>
<script type="text/javascript">
function show(reportType) {
	var startDate = document.getElementsByName("control_date")[0].value;
	var endDate = document.getElementsByName("control_date2")[0].value;
	document.getElementsByName("startDate")[0].value = startDate;
	document.getElementsByName("endDate")[0].value = endDate;
	if (reportType == 'settle') {
		document.forms[0].action = 'reportShow!genSettleReport.action';
	} else {
		document.forms[0].action = 'reportShow!genMarketReport.action';
	}
	document.forms[0].submit();
}
</script>
<input type="hidden" name="currentPage" id="currentPage" value="Report"/>
<div id="right">
<img src="${contextPath}/common/img/top_table_decoration.gif" border="0" alt="table deco"></img>
<fieldset>
<legend></legend>
<s:form>
	<s:hidden name="startDate" />
	<s:hidden name="endDate" />
</s:form>
<div class="jmesa">
<span>交易查询：</span>
<span>从
	<input name="control_date" type="text" id="control_date" size="10"
		maxlength="10" onclick="new Calendar().show(this);" readonly="readonly" />
</span>
<span>至
	<input name="control_date2" type="text" id="control_date2" size="10"
		maxlength="10" onclick="new Calendar().show(this);" readonly="readonly" />
	
</span>
&nbsp;&nbsp;
<span><input type="button" name="generate" value="生成结算报表" onclick="show('settle');"/></span>
<span><input type="button" name="generate" value="生成销售报表" onclick="show('market');"/></span>
</div>
</fieldset>
</div>