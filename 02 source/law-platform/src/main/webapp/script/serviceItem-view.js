Ext.ns("law.serviceItem");

Ext.onReady(function() {
	Ext.QuickTips.init();
	var mainPanel = new law.serviceItem.MainPanel();

	new Ext.Viewport({
		layout : 'fit',
		items : mainPanel
	});

});

law.serviceItem.MainPanel = Ext.extend(Ext.Panel, {
	id : 'mainPanel',
	layout : 'border',
	title : '服务项目',
	constructor : function(config) {
		var searchPanel = new law.serviceItem.SearchPanel();
		var gridPanel = new law.serviceItem.GridPanel();

		var group = {
			items : [ searchPanel, gridPanel ]
		};

		law.serviceItem.MainPanel.superclass.constructor.call(this, group);
	}
});

law.serviceItem.SearchPanel = Ext.extend(Ext.form.FormPanel, {
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
			labelWidth : 100,
			fieldLabel : '服务项目',
			id : 'title',
			name : 'title'
		} ]
	} ],
	buttons : [ {
		text : '查询',
		handler : function() {
			searchServiceItem();
		}
	}, {
		text : '重置',
		handler : function() {
			Ext.getCmp("searchPanel").getForm().reset();
			searchServiceItem();
		}
	} ]
});

law.serviceItem.GridPanel = Ext.extend(Ext.grid.GridPanel, {
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
		text : "服务项目",
		width : 200,
		dataIndex : 'title'
	}, {
		text : "收费标准",
		width : 200,
		dataIndex : 'chargeStandard'
	}, {
		text : "内容",
		width : 600,
		dataIndex : 'content'
	} ]
});