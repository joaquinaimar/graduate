Ext.ns("shoe.sell");

Ext.onReady(function() {
	Ext.QuickTips.init();
	var mainPanel = new shoe.sell.MainPanel();

	new Ext.Viewport({
		layout : 'fit',
		items : mainPanel
	});

});

shoe.sell.MainPanel = Ext.extend(Ext.Panel, {
	id : 'mainPanel',
	layout : 'border',
	title : '销售记录',
	constructor : function(config) {
		var searchPanel = new shoe.sell.SearchPanel();
		var gridPanel = new shoe.sell.GridPanel();

		var group = {
			items : [ searchPanel, gridPanel ]
		};

		shoe.sell.MainPanel.superclass.constructor.call(this, group);
	}
});

shoe.sell.SearchPanel = Ext.extend(Ext.form.FormPanel, {
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
			fieldLabel : '客户名',
			id : 'customer',
			name : 'customer'
		} ]
	} ],
	buttons : [ {
		text : '查询',
		handler : function() {
			searchSell();
		}
	}, {
		text : '重置',
		handler : function() {
			Ext.getCmp("searchPanel").getForm().reset();
			searchSell();
		}
	}, {
		text : '新增',
		handler : function() {
			var win = new shoe.sell.ChildWindow({
				title : '新增画面'
			});
			win.show();
			Ext.getCmp("childForm").getForm().reset();
		}
	}, {
		text : '删除',
		handler : function() {
			deleteSell();
		}
	} ]
});

shoe.sell.GridPanel = Ext.extend(Ext.grid.GridPanel, {
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
		text : "客户名",
		width : 200,
		dataIndex : 'name'
	}, {
		text : "客户编号",
		width : 180,
		dataIndex : 'no'
	}, {
		text : "年龄",
		width : 100,
		dataIndex : 'age'
	}, {
		text : "所在地",
		width : '500',
		dataIndex : 'location'
	} ],
	listeners : {
		itemdblclick : function(view, record, item, index, e, eOpts) {
			var win = new shoe.sell.ChildWindow({
				title : '更新画面'
			});
			win.show();
			var form = Ext.getCmp("childForm").getForm();
			form.reset();
			for ( var p in record.data) {
				form.findField(p).setValue(record.get(p));
			}
		}
	}
});

shoe.sell.ChildWindow = Ext.extend(Ext.Window, {
	id : 'childWindow',
	autoScroll : true,
	width : 350,
	height : 225,
	minWidth : 350,
	minHeight : 225,
	maxWidth : 350,
	maxHeight : 225,
	maximizable : false,
	modal : true,
	items : [ {
		id : 'childForm',
		frame : true,
		xtype : 'form',
		defaults : {
			labelWidth : 70,
			width : 300
		},
		items : [ {
			xtype : 'hiddenfield',
			id : 'childId',
			name : 'id'
		}, {
			fieldLabel : '客户名',
			xtype : 'textfield',
			id : 'childName',
			name : 'name'
		}, {
			fieldLabel : '客户编号',
			xtype : 'textfield',
			id : 'childNo',
			name : 'no'
		}, {
			fieldLabel : '年龄',
			xtype : 'textfield',
			id : 'childAge',
			name : 'age'
		}, {
			fieldLabel : '所在地',
			xtype : 'textarea',
			id : 'childLocation',
			name : 'location'
		} ]
	} ],
	buttons : [ {
		text : '保存',
		handler : function() {
			saveSell();
		}
	}, {
		text : '关闭',
		handler : function() {
			Ext.getCmp("childWindow").close();
		}
	} ]
});