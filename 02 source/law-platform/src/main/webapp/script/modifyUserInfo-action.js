function getUseInfo() {
	Ext.Ajax.request({
		url : contextPath + '/controller/modifyUserInfo/getUser.do',
		method : 'GET',
		success : function(response, options) {
			if (response.responseText) {
				var result = Ext.JSON.decode(response.responseText).data;
				var form = Ext.getCmp("userForm").getForm();
				for ( var p in result)
					form.findField(p).setValue(result[p]);
			}
		}
	});
}

function saveUser() {
	var form = Ext.getCmp("userForm").getForm();
	form.submit({
		url : contextPath + '/controller/modifyUserInfo/saveUser.do',
		method : 'POST',
		success : function(from, action) {
			Ext.Msg.alert('提示', '保存成功！', function() {
				getUseInfo();
			});
		}
	});
}