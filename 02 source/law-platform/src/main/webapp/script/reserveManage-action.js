function searchReserveManage() {
	var form = Ext.getCmp("searchPanel").getForm();
	var params = {
		lawyerName : form.findField("lawyerName").getValue(),
		start : 0,
		limit : 50
	};

	Ext.apply(gridStore.proxy.extraParams, params);

	gridStore.load();
}