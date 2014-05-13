function changePage(url, menu) {
	var frame = document.getElementsByName("mainpage");
	frame[0].src = contextPath + url;

	if (menu) {
		var menuPanel = Ext.getCmp("menuMain");
		menuPanel.removeAll();
		menuPanel.setTitle(menu.title);
		menuPanel.add(menu.items);
		menuPanel.doLayout();
	}
}

function saveSuggestion() {
	var form = Ext.getCmp("childForm").getForm();
	form.submit({
		url : contextPath + '/controller/suggestion/saveSuggestion.do',
		method : 'POST',
		success : function(from, action) {
			Ext.Msg.alert('提示', '提交成功！', function() {
				Ext.getCmp("childWindow").close();
			});
		}
	});
}