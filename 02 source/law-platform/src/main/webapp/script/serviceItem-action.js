function searchServiceItem() {
	var form = Ext.getCmp("searchPanel").getForm();
	var params = {
		title : form.findField("title").getValue(),
		start : 0,
		limit : 50
	};

	Ext.apply(gridStore.proxy.extraParams, params);

	gridStore.load();
}