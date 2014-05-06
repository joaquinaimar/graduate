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
	fields : [ 'id', 'customer', 'type', 'brand', 'quantity', 'price', {
		name : 'time',
		type : 'date',
		dateFormat : 'time'
	} ],
	listeners : {
		load : function(store, records, successful, operation, eOpts) {
			brandGridStore.load();
		}
	}
});

var brandGridStore = new Ext.data.Store(
		{
			autoLoad : true,
			proxy : {
				type : 'ajax',
				url : contextPath + '/controller/sell/getBrand.do',
				reader : {
					type : 'json',
					root : 'data'
				}
			},
			fields : [ 'brand' ],
			listeners : {
				load : function(store, records, successful, operation, eOpts) {
					store
							.each(function(rec) {
								Ext.Ajax
										.request({
											url : contextPath
													+ '/controller/sell/gatherInFo.do',
											params : {
												brand : rec.get("brand")
											},
											method : 'POST',
											success : function(response,
													options) {
												if (response.responseText) {
													var result = Ext.JSON
															.decode(response.responseText).data;
													for ( var p in result)
														rec.set(p, result[p]);
												}
											}
										});
							});
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

var brandStore = new Ext.data.Store({
	autoLoad : true,
	proxy : {
		type : 'ajax',
		url : contextPath + '/controller/sell/getBrand.do',
		reader : {
			type : 'json',
			root : 'data'
		}
	},
	fields : [ 'brand' ]
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