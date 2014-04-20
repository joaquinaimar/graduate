Ext.ns("law.reserveManage");

Ext.onReady(function() {
	Ext.QuickTips.init();
	var mainPanel = new law.reserveManage.MainPanel();

	new Ext.Viewport({
		layout : 'fit',
		items : mainPanel
	});

});

law.reserveManage.MainPanel = Ext.extend(Ext.Panel, {
	id : 'mainPanel',
	layout : 'border',
	title : '预约管理',
	constructor : function(config) {
		var searchPanel = new law.reserveManage.SearchPanel();
		var gridPanel = new law.reserveManage.GridPanel();

		var group = {
			items : [ searchPanel, gridPanel ]
		};

		law.reserveManage.MainPanel.superclass.constructor.call(this, group);
	}
});

law.reserveManage.SearchPanel = Ext.extend(Ext.form.FormPanel, {
	id : 'searchPanel',
	region : 'north',
	buttonAlign : 'left',
	frame : true,
	layout : 'fit',
	items : [ {
		frame : true,
		layout : {
			type : 'table',
			columns : 3
		},
		items : [ {
			xtype : 'textfield',
			labelWidth : 50,
			fieldLabel : '律师名',
			id : 'lawyerName',
			name : 'lawyerName'
		} ]
	} ],
	buttons : [ {
		text : '查询',
		handler : function() {
			searchReserveManage();
		}
	}, {
		text : '重置',
		handler : function() {
			Ext.getCmp("searchPanel").getForm().reset();
			searchReserveManage();
		}
	} ]
});

law.reserveManage.GridPanel = Ext.extend(Ext.grid.GridPanel, {
	id : 'gridPanel',
	region : 'center',
	frame : true,
	layout : 'fit',
	loadMask : true,
	store : gridStore,
	bbar : {
		xtype : 'pagingtoolbar',
		displayInfo : true,
		store : gridStore
	},
	columns : [ new Ext.grid.RowNumberer({
		header : 'NO.',
		width : 50
	}), {
		text : "律师名",
		width : 100,
		dataIndex : 'lawyerName'
	}, {
		text : "内容",
		width : 400,
		dataIndex : 'content'
	}, {
		text : "预约时间",
		width : 200,
		xtype : 'datecolumn',
		format : 'Y-m-d H:i:s',
		dataIndex : 'time'
	} ]
});