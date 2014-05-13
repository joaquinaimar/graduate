Ext.ns("law.newsManage");

Ext.onReady(function() {
	Ext.QuickTips.init();
	var mainPanel = new law.newsManage.MainPanel();

	new Ext.Viewport({
		layout : 'fit',
		items : mainPanel
	});

});

law.newsManage.MainPanel = Ext.extend(Ext.Panel, {
	id : 'mainPanel',
	layout : 'border',
	title : '新闻管理',
	constructor : function(config) {
		var searchPanel = new law.newsManage.SearchPanel();
		var gridPanel = new law.newsManage.GridPanel();

		var group = {
			items : [ searchPanel, gridPanel ]
		};

		law.newsManage.MainPanel.superclass.constructor.call(this, group);
	}
});

law.newsManage.SearchPanel = Ext.extend(Ext.form.FormPanel, {
	id : 'searchPanel',
	region : 'north',
	buttonAlign : 'left',
	frame : true,
	layout : 'fit',
	items : [ {
		frame : true,
		xtype : 'form',
		labelWidth : 60,
		labelAlign : 'right',
		items : [ {
			xtype : 'textfield',
			fieldLabel : '标题',
			width : 300,
			id : 'title',
			name : 'title'
		}, {
			fieldLabel : '内容',
			xtype : 'textarea',
			width : 600,
			id : 'content',
			name : 'content'
		} ]
	} ],
	buttons : [ {
		text : '发布',
		handler : function() {
			saveNews();
		}
	}, {
		text : '删除',
		handler : function() {
			deleteNews();
		}
	} ]
});

law.newsManage.GridPanel = Ext.extend(Ext.grid.GridPanel, {
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
	selModel : new Ext.selection.CheckboxModel(),
	columns : [ new Ext.grid.RowNumberer({
		header : 'NO.',
		width : 50
	}), {
		text : "标题",
		width : 100,
		dataIndex : 'title'
	}, {
		text : "内容",
		width : 400,
		dataIndex : 'content'
	}, {
		text : "发布时间",
		width : 200,
		xtype : 'datecolumn',
		format : 'Y-m-d H:i:s',
		dataIndex : 'time'
	} ]
});