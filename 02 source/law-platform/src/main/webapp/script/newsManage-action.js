function saveNews() {
	var form = Ext.getCmp("searchPanel").getForm();
	form.submit({
		url : contextPath + '/controller/news/saveNews.do',
		method : 'POST',
		success : function(from, action) {
			Ext.Msg.alert('提示', '发布成功！', function() {
				Ext.getCmp("searchPanel").getForm().reset();
				gridStore.load();
			});
		}
	});
}

function deleteNews() {

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
			Ext.Ajax.request({
				url : contextPath + '/controller/news/deleteNews.do',
				params : {
					ids : ids
				},
				method : 'POST',
				success : function(response, options) {
					if (response.responseText) {
						Ext.Msg.alert("提示", '删除成功！');
						gridStore.reload();
					}
				}
			});
		}
	}, this);

}