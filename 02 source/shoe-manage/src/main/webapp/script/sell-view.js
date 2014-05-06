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
		var gatherPanel = new shoe.sell.GatherPanel();
		var gridPanel = new shoe.sell.GridPanel();

		var group = {
			items : [ searchPanel, gatherPanel, gridPanel ]
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
			columns : 4
		},
		items : [ {
			xtype : 'textfield',
			labelWidth : 50,
			fieldLabel : '客户名',
			id : 'customer',
			name : 'customer'
		}, {
			xtype : 'combobox',
			editable : false,
			labelWidth : 50,
			fieldLabel : '类型',
			id : 'type',
			name : 'type',
			emptyText : '请选择',
			queryMode : 'local',
			triggerAction : 'all',
			store : typeStore,
			valueField : 'vf',
			displayField : 'df'
		}, {
			xtype : 'datefield',
			labelWidth : 100,
			fieldLabel : '开始时间',
			id : 'fromDate',
			name : 'fromDate',
			format : 'Y-m-d',
			editable : false
		}, {
			xtype : 'datefield',
			labelWidth : 100,
			fieldLabel : '结束时间',
			id : 'toDate',
			name : 'toDate',
			format : 'Y-m-d',
			editable : false
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

shoe.sell.GatherPanel = Ext.extend(Ext.grid.GridPanel, {
	id : 'gatherPanel',
	region : 'north',
	frame : true,
	layout : 'fit',
	loadMask : true,
	store : brandGridStore,
	columns : [ new Ext.grid.RowNumberer({
		header : 'NO.',
		width : 50
	}), {
		width : 100,
		text : '品牌',
		dataIndex : 'brand'
	}, {
		width : 100,
		text : '进货量',
		dataIndex : 'inQuantity'
	}, {
		width : 100,
		text : '出货量',
		dataIndex : 'outQuantity'
	}, {
		width : 100,
		text : '库存量',
		dataIndex : 'stockQuantity'
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
		text : "客户",
		width : 200,
		dataIndex : 'customer'
	}, {
		text : "品牌",
		width : 100,
		dataIndex : 'brand'
	}, {
		text : "类型",
		width : 180,
		dataIndex : 'type',
		renderer : function(value, metaData, record) {
			if ("0" == value)
				return "进货";
			else if ("1" == value)
				return "出货";
		}
	}, {
		text : "数量",
		width : 100,
		dataIndex : 'quantity'
	}, {
		text : "单价",
		width : 100,
		dataIndex : 'price'
	}, {
		text : "时间",
		width : 200,
		xtype : 'datecolumn',
		format : 'Y-m-d H:i:s',
		dataIndex : 'time'
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
				if (form.findField(p))
					form.findField(p).setValue(record.get(p));
			}
		}
	}
});

shoe.sell.ChildWindow = Ext.extend(Ext.Window, {
	id : 'childWindow',
	autoScroll : true,
	width : 350,
	height : 210,
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
			fieldLabel : '客户',
			xtype : 'combobox',
			editable : false,
			id : 'childCustomer',
			name : 'customer',
			emptyText : '请选择',
			queryMode : 'local',
			triggerAction : 'all',
			store : customerStore,
			valueField : 'name',
			displayField : 'name'
		}, {
			xtype : 'combobox',
			editable : false,
			fieldLabel : '品牌',
			id : 'childBrand',
			name : 'brand',
			emptyText : '请选择',
			queryMode : 'local',
			triggerAction : 'all',
			store : brandStore,
			valueField : 'brand',
			displayField : 'brand'
		}, {
			xtype : 'combobox',
			editable : false,
			fieldLabel : '类型',
			id : 'childType',
			name : 'type',
			emptyText : '请选择',
			queryMode : 'local',
			triggerAction : 'all',
			store : typeStore,
			valueField : 'vf',
			displayField : 'df'
		}, {
			fieldLabel : '数量',
			xtype : 'textfield',
			id : 'childQuantity',
			name : 'quantity'
		}, {
			fieldLabel : '单价',
			xtype : 'textfield',
			id : 'childPrice',
			name : 'price'
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