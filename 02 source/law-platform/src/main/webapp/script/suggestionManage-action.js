function searchSuggestion() {
	var params = {
		start : 0,
		limit : 50
	};

	Ext.apply(gridStore.proxy.extraParams, params);

	gridStore.load();
}