var gridStore = new Ext.data.Store({
	autoLoad : true,
	proxy : {
		type : 'ajax',
		url : contextPath + '/controller/lawFile/searchLawFile.do',
		reader : {
			type : 'json',
			root : 'data'
		}
	},
	fields : [ 'fileName' ]
});