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
		url : contextPath + '/controller/reserveManage/searchReserveManage.do',
		reader : {
			type : 'json',
			totalProperty : "totalCount",
			root : 'result'
		}
	},
	fields : [ 'id', 'lawyerId', 'userId', 'content', {
		name : 'time',
		type : 'date',
		dateFormat : 'time'
	}, 'lawyerName', 'userName' ]
});