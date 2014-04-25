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
		url : contextPath + '/controller/sell/searchSell.do',
		reader : {
			type : 'json',
			totalProperty : "totalCount",
			root : 'result'
		}
	},
	fields : [ 'id', 'customer', 'type', 'quantity', 'price', {
		name : 'time',
		type : 'date',
		dateFormat : 'time'
	} ],
	listeners : {
		load : function(records, options, success) {
			gatherInFo();
		}
	}
});

var customerStore = new Ext.data.Store({
	autoLoad : true,
	proxy : {
		type : 'ajax',
		url : contextPath + '/controller/sell/getCustomer.do',
		reader : {
			type : 'json',
			root : 'data'
		}
	},
	fields : [ 'name' ]
});

var typeStore = new Ext.data.ArrayStore({
	autoload : true,
	data : [ {
		vf : "",
		df : "全部"
	}, {
		vf : "0",
		df : "进货"
	}, {
		vf : "1",
		df : "出货"
	} ],
	fields : [ {
		name : 'vf',
		mapping : 'vf'
	}, {
		name : 'df',
		mapping : 'df'
	} ]
});