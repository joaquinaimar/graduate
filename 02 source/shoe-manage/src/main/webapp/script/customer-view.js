Ext.ns("shoe.customer");

Ext.onReady(function() {
	Ext.QuickTips.init();
	var mainPanel = new shoe.customer.MainPanel();

	new Ext.Viewport({
		layout : 'fit',
		items : mainPanel
	});

});

shoe.customer.MainPanel = Ext.extend(Ext.Panel, {
	id : 'mainPanel',
	layout : 'border',
	title : '客户管理',
	constructor : function(config) {
		var searchPanel = new shoe.customer.SearchPanel();
		var gridPanel = new shoe.customer.GridPanel();

		var group = {
			items : [ searchPanel, gridPanel ]
		};

		shoe.customer.MainPanel.superclass.constructor.call(this, group);
	}
});

shoe.customer.SearchPanel = Ext.extend(Ext.form.FormPanel, {
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
			id : 'name',
			name : 'name'
		} ]
	} ],
	buttons : [ {
		text : '查询',
		handler : function() {
			searchCustomer();
		}
	}, {
		text : '重置',
		handler : function() {
			Ext.getCmp("searchPanel").getForm().reset();
			searchCustomer();
		}
	}, {
		text : '新增',
		handler : function() {
			var win = new shoe.customer.ChildWindow({
				title : '新增画面'
			});
			win.show();
			Ext.getCmp("childForm").getForm().reset();
		}
	}, {
		text : '删除',
		handler : function() {
			deleteCustomer();
		}
	} ]
});

shoe.customer.GridPanel = Ext.extend(Ext.grid.GridPanel, {
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
			var win = new shoe.customer.ChildWindow({
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

shoe.customer.ChildWindow = Ext.extend(Ext.Window, {
	id : 'childWindow',
	autoScroll : true,
	width : 350,
	height : 225,
	minWidth : 350,
	minHeight : 225,
	maxWidth : 750,
	maxHeight : 500,
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
			saveCustomer();
		}
	}, {
		text : '关闭',
		handler : function() {
			Ext.getCmp("childWindow").close();
		}
	} ]
});