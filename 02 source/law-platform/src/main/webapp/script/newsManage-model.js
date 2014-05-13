var gridStore = new Ext.data.Store({
	pageSize : 50,
	autoLoad : {
		params : {
			start : 0,
			limit : 50
		}
	},
	proxy : {
		type : 'ajax',
		url : contextPath + '/controller/news/searchNews.do',
		reader : {
			type : 'json',
			totalProperty : "totalCount",
			root : 'result'
		}
	},
	fields : [ 'id', 'title', 'content', {
		name : 'time',
		type : 'date',
		dateFormat : 'time'
	} ]
});