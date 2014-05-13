function searchUserInfo() {
	var form = Ext.getCmp("searchPanel").getForm();
	var params = {
		username : form.findField("username").getValue(),
		start : 0,
		limit : 50
	};

	Ext.apply(gridStore.proxy.extraParams, params);

	gridStore.load();
}