function searchSfterServiceSell(){
	var form = Ext.getCmp("searchPanel").getForm();
	var params = {
		customer : form.findField("customer").getValue(),
		fromDate : form.findField("fromDate").getValue(),
		toDate : form.findField("toDate").getValue(),
		start : 0,
		limit : 50
	};

	Ext.apply(gridStore.proxy.extraParams, params);

	gridStore.load();
}


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