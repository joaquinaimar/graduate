Ext.ns("law.lawFile");

Ext.onReady(function() {
	Ext.QuickTips.init();
	var mainPanel = new law.lawFile.MainPanel();

	new Ext.Viewport({
		layout : 'fit',
		items : mainPanel
	});

});

law.lawFile.MainPanel = Ext.extend(Ext.Panel, {
	id : 'mainPanel',
	layout : 'border',
	title : '法律文件',
	constructor : function(config) {
		var searchPanel = new law.lawFile.SearchPanel();
		var gridPanel = new law.lawFile.GridPanel();

		var group = {
			items : [ searchPanel, gridPanel ]
		};

		law.lawFile.MainPanel.superclass.constructor.call(this, group);
	}
});

law.lawFile.SearchPanel = Ext.extend(Ext.form.FormPanel, {
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
			fieldLabel : '名称',
			id : 'fileName',
			name : 'fileName'
		} ]
	} ],
	buttons : [ {
		text : '查询',
		handler : function() {
			searchLawFile();
		}
	}, {
		text : '重置',
		handler : function() {
			Ext.getCmp("searchPanel").getForm().reset();
			searchLawFile();
		}
	} ]
});

law.lawFile.GridPanel = Ext.extend(Ext.grid.GridPanel, {
	id : 'gridPanel',
	region : 'center',
	frame : true,
	layout : 'fit',
	loadMask : true,
	store : gridStore,
	columns : [ new Ext.grid.RowNumberer({
		header : 'NO.',
		width : 50
	}), {
		text : "名称",
		width : 500,
		dataIndex : 'fileName'
	} ],
	listeners : {
		itemdblclick : function(view, record, item, index, e, eOpts) {
			var win = new law.lawFile.ChildWindow({
				title : '下载确认'
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

law.lawFile.ChildWindow = Ext.extend(Ext.Window, {
	id : 'childWindow',
	autoScroll : true,
	width : 500,
	height : 92,
	maximizable : false,
	modal : true,
	items : [ {
		id : 'childForm',
		frame : true,
		xtype : 'form',
		defaults : {
			labelWidth : 70,
			width : 400
		},
		items : [ {
			fieldLabel : '名称',
			xtype : 'textfield',
			id : 'childFileName',
			name : 'fileName',
			readOnly : true
		} ]
	} ],
	buttons : [ {
		text : '下载',
		handler : function() {
			downloadLawFile();
			Ext.getCmp("childWindow").close();
		}
	}, {
		text : '关闭',
		handler : function() {
			Ext.getCmp("childWindow").close();
		}
	} ]
});