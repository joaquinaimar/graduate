Ext.ns("shoe.afterService");

Ext.onReady(function() {
	Ext.QuickTips.init();
	var mainPanel = new shoe.afterService.MainPanel();

	new Ext.Viewport({
		layout : 'fit',
		items : mainPanel
	});

});

shoe.afterService.MainPanel = Ext.extend(Ext.Panel, {
	id : 'mainPanel',
	layout : 'border',
	title : '售后管理',
	constructor : function(config) {
		var searchPanel = new shoe.afterService.SearchPanel();
		var gridPanel = new shoe.afterService.GridPanel();

		var group = {
			items : [ searchPanel, gridPanel ]
		};

		shoe.afterService.MainPanel.superclass.constructor.call(this, group);
	}
});

shoe.afterService.SearchPanel = Ext.extend(Ext.form.FormPanel, {
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
	} ]
});

shoe.afterService.GridPanel = Ext.extend(Ext.grid.GridPanel, {
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
		text : "客户",
		width : 200,
		dataIndex : 'customer'
	}, {
		text : "数量",
		width : 100,
		dataIndex : 'quantity'
	}, {
		text : "单价",
		width : 100,
		dataIndex : 'price'
	}, {
		text : "问题",
		width : 300,
		dataIndex : 'problem'
	}, {
		text : "是否退回",
		width : 80,
		dataIndex : 'back',
		renderer : function(value, metaData, record) {
			if ("0" == value)
				return "否";
			else if ("1" == value)
				return "是";

		}
	} ],
	listeners : {
		itemdblclick : function(view, record, item, index, e, eOpts) {
			var win = new shoe.afterService.ChildWindow({
				title : '更新画面'
			});
			win.show();
			var form = Ext.getCmp("childForm").getForm();
			form.reset();
			for ( var p in record.data) {
				if (form.findField(p))
					form.findField(p).setValue(record.get(p));
			}
		}
	}
});

shoe.afterService.ChildWindow = Ext.extend(Ext.Window, {
	id : 'childWindow',
	autoScroll : true,
	width : 350,
	height : 252,
	minWidth : 350,
	minHeight : 252,
	maxWidth : 350,
	maxHeight : 252,
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
			xtype : 'hiddenfield',
			id : 'childSellId',
			name : 'sellId'
		}, {
			fieldLabel : '客户',
			xtype : 'textfield',
			id : 'childCustomer',
			name : 'customer',
			readOnly: true
		}, {
			fieldLabel : '数量',
			xtype : 'textfield',
			id : 'childQuantity',
			name : 'quantity',
			readOnly: true
		}, {
			fieldLabel : '单价',
			xtype : 'textfield',
			id : 'childPrice',
			name : 'price',
			readOnly: true
		}, {
			fieldLabel : '问题',
			xtype : 'textarea',
			id : 'childProblem',
			name : 'problem'
		}, {
			xtype : 'combobox',
			editable : false,
			fieldLabel : '是否退货',
			id : 'childBack',
			name : 'back',
			emptyText : '请选择',
			queryMode : 'local',
			triggerAction : 'all',
			store : backStore,
			valueField : 'vf',
			displayField : 'df'
		} ]
	} ],
	buttons : [ {
		text : '保存',
		handler : function() {
			saveAfterService();
		}
	}, {
		text : '关闭',
		handler : function() {
			Ext.getCmp("childWindow").close();
		}
	} ]
});