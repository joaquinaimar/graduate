Ext.ns("law.suggestionManage");

Ext.onReady(function() {
	Ext.QuickTips.init();
	var mainPanel = new law.suggestionManage.MainPanel();

	new Ext.Viewport({
		layout : 'fit',
		items : mainPanel
	});

});

law.suggestionManage.MainPanel = Ext.extend(Ext.Panel,
		{
			id : 'mainPanel',
			layout : 'border',
			title : '意见箱管理',
			constructor : function(config) {
				var searchPanel = new law.suggestionManage.SearchPanel();
				var gridPanel = new law.suggestionManage.GridPanel();

				var group = {
					items : [ searchPanel, gridPanel ]
				};

				law.suggestionManage.MainPanel.superclass.constructor.call(
						this, group);
			}
		});

law.suggestionManage.SearchPanel = Ext.extend(Ext.form.FormPanel, {
	id : 'searchPanel',
	region : 'north',
	buttonAlign : 'left',
	frame : true,
	layout : 'fit',
	buttons : [ {
		text : '查询',
		handler : function() {
			searchSuggestion();
		}
	} ]
});

law.suggestionManage.GridPanel = Ext.extend(Ext.grid.GridPanel, {
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
		text : "意见",
		width : 600,
		dataIndex : 'content'
	}, {
		text : "提交时间",
		width : 200,
		xtype : 'datecolumn',
		format : 'Y-m-d H:i:s',
		dataIndex : 'time'
	} ]
});