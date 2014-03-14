function searchCustomer() {
	var form = Ext.getCmp("searchPanel").getForm();
	var params = {
		name : form.findField("name").getValue(),
		start : 0,
		limit : 50
	};

	Ext.apply(gridStore.proxy.extraParams, params);

	gridStore.load();
}

function saveCustomer() {
	var form = Ext.getCmp("childForm").getForm();
	form.submit({
		url : contextPath + '/controller/customer/saveCustomer.do',
		method : 'POST',
		success : function(from, action) {
			Ext.Msg.alert('提示', '保存成功！', function() {
				gridStore.reload();
				Ext.getCmp("childWindow").close();
			});
		}
	});
}

function deleteCustomer() {

	var rows = Ext.getCmp("gridPanel").getSelectionModel().getSelection();
	var length = rows.length;
	if (0 == length) {
		Ext.Msg.alert("提示", "请至少选择一条！");
		return;
	}
	Ext.Msg.confirm('删除', '确定删除吗？', function(btn) {
		if (btn == 'yes') {
			var ids = [];
			for (var i = 0; i < length; i++) {
				ids.push(rows[i].get("id"));
			}
			Ext.Ajax
					.request({
						url : contextPath
								+ '/controller/customer/deleteCustomer.do',
						params : {
							ids : ids
						},
						method : 'POST',
						success : function(response, options) {
							if (response.responseText) {
								var result = Ext.JSON
										.decode(response.responseText).message;
								Ext.Msg.alert("提示", result + '！');
								gridStore.reload();
							}
						}
					});
		}
	}, this);

}
