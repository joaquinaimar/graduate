<%@include file="/WEB-INF/jsp/common/taglibs.jsp" %>
<%@ page language="java" pageEncoding="utf-8"%>
<script type="text/javascript">
function removeMember(index) {
	var memberId = document.getElementsByName("memberId")[index].value;
	document.getElementsByName("member.memberId")[0].value = memberId;
	document.forms[0].action="memberUpdate!remove.action";
	document.forms[0].submit();
}

function updateMember(index) {
	document.forms[0].action="memberUpdate!update.action";
	var memberId = document.getElementsByName("memberId")[index].value;
	var memberTypeId = document.getElementsByName("memberTypeId")[index].value;
	var memberStatusId = document.getElementsByName("memberStatusId")[index].value;
	var memberName = document.getElementsByName("#member.person.name")[index].value;
	var memberAddress = document.getElementsByName("#member.person.address")[index].value;
	var memberBalance = document.getElementsByName("#member.balance")[index].value;
	document.getElementsByName("member.memberId")[0].value = memberId;
	document.getElementsByName("member.memberType.memberTypeId")[0].value = memberTypeId;
	document.getElementsByName("member.memberStatus.memberStatusId")[0].value = memberStatusId;
	document.getElementsByName("member.person.name")[0].value = memberName;
	document.getElementsByName("member.person.address")[0].value = memberAddress;
	document.getElementsByName("member.balance")[0].value = memberBalance;
	document.forms[0].submit();
}
</script>
<input type="hidden" name="currentPage" id="currentPage" value="Member"/>
<div id="right">
<img src="${contextPath}/common/img/top_table_decoration.gif" border="0" alt="table deco"></img>
<fieldset>
<legend></legend>
<s:form>
<s:hidden name="member.memberId" />
<s:hidden name="member.memberType.memberTypeId" />
<s:hidden name="member.memberStatus.memberStatusId" />
<s:hidden name="member.person.name" />
<s:hidden name="member.person.address" />
<s:hidden name="member.balance"/>
</s:form>
<div class="jmesa">
	<table class="table">
		<tr class="header">
			<td>会员卡号</td>
			<td>姓名</td>
			<td>地址</td>
			<td>会员类型</td>
			<td>会员状态</td>
			<td>帐户余额</td>
		</tr>
		<s:iterator value="memberList" id="member" status="status">
			<s:if test="#status.index % 2 == 0">
			<tr class="odd">
			</s:if>
			<s:else>
			<tr class="even">
			</s:else>
				<td><s:property value="#member.pan"/>
					<input type="hidden" name="memberId" value="${member.memberId}">
				</td>
				<td>
					<s:textfield name="#member.person.name" size="5" />
				</td>
				<td>
					<s:textfield name="#member.person.address" size="9"/>
				</td>
				<td>
					<s:select name="memberTypeId"
							list="memberTypeList" listValue="descr" listKey="memberTypeId"
							value="#member.memberType.memberTypeId"/>
				</td>
				<td>
					<s:select name="memberStatusId"
							list="memberStatusList" listValue="descr" listKey="memberStatusId"
							value="#member.memberStatus.memberStatusId"/>
				</td>
				<td>
					<s:textfield name="#member.balance" size="5" />
				</td>
				<td>
				<input type="button" class="button" value="更新" onclick="updateMember(${status.index})" />
				<input type="button" class="button" value="删除" onclick="removeMember(${status.index})" />
				</td>
			</tr>
		</s:iterator>
	</table>
</div>
</fieldset>
</div>