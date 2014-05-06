function searchSell() {
	var form = Ext.getCmp("searchPanel").getForm();
	var params = {
		customer : form.findField("customer").getValue(),
		type : form.findField("type").getValue(),
		fromDate : form.findField("fromDate").getValue(),
		toDate : form.findField("toDate").getValue(),
		start : 0,
		limit : 50
	};

	Ext.apply(gridStore.proxy.extraParams, params);

	gridStore.load();
}

function saveSell() {
	var form = Ext.getCmp("childForm").getForm();

	if ("1" == form.findField("type").getValue()) {

		Ext.Ajax.request({
			url : contextPath + '/controller/sell/gatherInFo.do',
			params : {
				brand : form.findField("brand").getValue()
			},
			method : 'POST',
			success : function(response, options) {
				if (response.responseText) {
					var result = Ext.JSON.decode(response.responseText).data;
					if (result.stockQuantity < form.findField("quantity")
							.getValue()) {
						Ext.Msg.alert("错误", "超出库存！");
					} else {
						form.submit({
							url : contextPath + '/controller/sell/saveSell.do',
							method : 'POST',
							success : function(from, action) {
								Ext.Msg.alert('提示', '保存成功！', function() {
									gridStore.reload();
									Ext.getCmp("childWindow").close();
								});
							}
						});
					}
				}
			}
		});

	} else {
		form.submit({
			url : contextPath + '/controller/sell/saveSell.do',
			method : 'POST',
			success : function(from, action) {
				Ext.Msg.alert('提示', '保存成功！', function() {
					gridStore.reload();
					Ext.getCmp("childWindow").close();
				});
			}
		});
	}
}

function deleteSell() {

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
						url : contextPath + '/controller/sell/deleteSell.do',
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
