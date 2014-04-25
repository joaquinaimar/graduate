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
		url : contextPath + '/controller/customer/searchCustomer.do',
		reader : {
			type : 'json',
			totalProperty : "totalCount",
			root : 'result'
		}
	},
	fields : [ 'id', 'name', 'no', 'age', 'location', 'type' ]
});

var typeStore = new Ext.data.ArrayStore({
	autoload : true,
	data : [ {
		vf : "",
		df : "全部"
	}, {
		vf : "0",
		df : "进货商"
	}, {
		vf : "1",
		df : "出货商"
	} ],
	fields : [ {
		name : 'vf',
		mapping : 'vf'
	}, {
		name : 'df',
		mapping : 'df'
	} ]
});