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
	fields : [ 'customer', 'type', 'quantity', 'price', 'brand', 'id', {
		name : 'sellTime',
		type : 'date',
		dateFormat : 'time'
	}, 'sellId', 'backQuantity', 'problem', 'back', {
		name : 'backTime',
		type : 'date',
		dateFormat : 'time'
	} ]
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