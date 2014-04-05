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
		url : contextPath + '/controller/afterService/searchAfterService.do',
		reader : {
			type : 'json',
			totalProperty : "totalCount",
			root : 'result'
		}
	},
	fields : [ 'customer', 'type', 'quantity', 'price', 'id', 'sellId',
			'problem', 'back' ]
});

var backStore = new Ext.data.ArrayStore({
	autoload : true,
	data : [ {
		vf : "0",
		df : "否"
	}, {
		vf : "1",
		df : "是"
	} ],
	fields : [ {
		name : 'vf',
		mapping : 'vf'
	}, {
		name : 'df',
		mapping : 'df'
	} ]
});