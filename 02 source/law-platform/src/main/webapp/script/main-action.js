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