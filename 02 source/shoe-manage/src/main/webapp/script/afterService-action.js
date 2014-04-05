function saveAfterService() {
	var form = Ext.getCmp("childForm").getForm();
	form.submit({
		url : contextPath + '/controller/afterService/saveAfterService.do',
		method : 'POST',
		success : function(from, action) {
			Ext.Msg.alert('提示', '保存成功！', function() {
				gridStore.reload();
				Ext.getCmp("childWindow").close();
			});
		}
	});
}