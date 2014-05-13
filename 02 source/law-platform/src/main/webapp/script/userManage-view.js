Ext.ns("law.userManage");

Ext.onReady(function() {
	Ext.QuickTips.init();
	var mainPanel = new law.userManage.MainPanel();

	new Ext.Viewport({
		layout : 'fit',
		items : mainPanel
	});

});

law.userManage.MainPanel = Ext.extend(Ext.Panel, {
	id : 'mainPanel',
	layout : 'border',
	title : '用户管理',
	constructor : function(config) {
		var searchPanel = new law.userManage.SearchPanel();
		var gridPanel = new law.userManage.GridPanel();

		var group = {
			items : [ searchPanel, gridPanel ]
		};

		law.userManage.MainPanel.superclass.constructor.call(this, group);
	}
});

law.userManage.SearchPanel = Ext.extend(Ext.form.FormPanel, {
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
			fieldLabel : '用户名',
			id : 'username',
			name : 'username'
		} ]
	} ],
	buttons : [ {
		text : '查询',
		handler : function() {
			searchUserInfo();
		}
	}, {
		text : '重置',
		handler : function() {
			Ext.getCmp("searchPanel").getForm().reset();
			searchUserInfo();
		}
	} ]
});

law.userManage.GridPanel = Ext.extend(Ext.grid.GridPanel, {
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
		text : "用户名",
		width : 100,
		dataIndex : 'username'
	}, {
		text : "电话",
		width : 200,
		dataIndex : 'phone'
	}, {
		text : "邮箱",
		width : 400,
		dataIndex : 'email'
	} ]
});