Ext.ns("shoe.shoe");

Ext.onReady(function() {
	Ext.QuickTips.init();
	var mainPanel = new shoe.shoe.MainPanel();

	new Ext.Viewport({
		layout : 'fit',
		items : mainPanel
	});

});

shoe.shoe.MainPanel = Ext.extend(Ext.Panel, {
	id : 'mainPanel',
	layout : 'border',
	title : '轮胎信息统计',
	constructor : function(config) {
		var searchPanel = new shoe.shoe.SearchPanel();
		var gridPanel = new shoe.shoe.GridPanel();

		var group = {
			items : [ searchPanel, gridPanel ]
		};

		shoe.shoe.MainPanel.superclass.constructor.call(this, group);
	}
});

shoe.shoe.SearchPanel = Ext.extend(Ext.form.FormPanel, {
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
			fieldLabel : '型号',
			id : 'model',
			name : 'model'
		}, {
			xtype : 'textfield',
			labelWidth : 50,
			fieldLabel : '品牌',
			id : 'brand',
			name : 'brand'
		} ]
	} ],
	buttons : [ {
		text : '查询',
		handler : function() {
			searchShoe();
		}
	}, {
		text : '重置',
		handler : function() {
			Ext.getCmp("searchPanel").getForm().reset();
			searchShoe();
		}
	}, {
		text : '新增',
		handler : function() {
			var win = new shoe.shoe.ChildWindow({
				title : '新增画面'
			});
			win.show();
			Ext.getCmp("childForm").getForm().reset();
		}
	}, {
		text : '删除',
		handler : function() {
			deleteShoe();
		}
	} ]
});

shoe.shoe.GridPanel = Ext.extend(Ext.grid.GridPanel, {
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
		text : "型号",
		width : 100,
		dataIndex : 'model'
	}, {
		text : "品牌",
		width : 100,
		dataIndex : 'brand'
	}, {
		text : "进价",
		width : 100,
		dataIndex : 'bid'
	}, {
		text : "售价",
		width : 100,
		dataIndex : 'price'
	}, {
		text : "数量",
		width : 100,
		dataIndex : 'repertory'
	}, {
		text : "类型",
		width : 100,
		dataIndex : 'type'
	} ],
	listeners : {
		itemdblclick : function(view, record, item, index, e, eOpts) {
			var win = new shoe.shoe.ChildWindow({
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

shoe.shoe.ChildWindow = Ext.extend(Ext.Window, {
	id : 'childWindow',
	autoScroll : true,
	width : 350,
	height : 235,
	minWidth : 350,
	minHeight : 235,
	maxWidth : 350,
	maxHeight : 235,
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
			fieldLabel : '型号',
			xtype : 'textfield',
			id : 'childModel',
			name : 'model'
		}, {
			fieldLabel : '品牌',
			xtype : 'textfield',
			id : 'childBrand',
			name : 'brand'
		}, {
			fieldLabel : '进价',
			xtype : 'textfield',
			id : 'childBid',
			name : 'bid'
		}, {
			fieldLabel : '售价',
			xtype : 'textfield',
			id : 'childPrice',
			name : 'price'
		}, {
			fieldLabel : '数量',
			xtype : 'textfield',
			id : 'childRepertory',
			name : 'repertory'
		}, {
			fieldLabel : '类型',
			xtype : 'textfield',
			id : 'childType',
			name : 'type'
 		} ]
	} ],
	buttons : [ {
		text : '保存',
		handler : function() {
			saveShoe();
		}
	}, {
		text : '关闭',
		handler : function() {
			Ext.getCmp("childWindow").close();
		}
	} ]
});