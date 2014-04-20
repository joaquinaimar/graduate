Ext.ns("law.lawyerInfo");

Ext.onReady(function() {
	Ext.QuickTips.init();
	var mainPanel = new law.lawyerInfo.MainPanel();

	new Ext.Viewport({
		layout : 'fit',
		items : mainPanel
	});

});

law.lawyerInfo.MainPanel = Ext.extend(Ext.Panel, {
	id : 'mainPanel',
	layout : 'border',
	title : '律师资料',
	constructor : function(config) {
		var searchPanel = new law.lawyerInfo.SearchPanel();
		var gridGroupPanel = new law.lawyerInfo.GridGroupPanel();

		var group = {
			items : [ searchPanel, gridGroupPanel ]
		};

		law.lawyerInfo.MainPanel.superclass.constructor.call(this, group);
	}
});

law.lawyerInfo.SearchPanel = Ext.extend(Ext.form.FormPanel, {
	id : 'searchPanel',
	region : 'north',
	buttonAlign : 'left',
	frame : true,
	layout : 'fit',
	items : [ {
		layout : {
			type : 'table',
			columns : 3
		},
		items : [ {
			xtype : 'textfield',
			labelWidth : 50,
			fieldLabel : '名称',
			id : 'name',
			name : 'name'
		} ]
	} ],
	buttons : [ {
		text : '查询',
		handler : function() {
			searchLawyer();
		}
	}, {
		text : '重置',
		handler : function() {
			Ext.getCmp("searchPanel").getForm().reset();
			searchLawyer();
		}
	} ]
});

law.lawyerInfo.GridGroupPanel = Ext.extend(Ext.Panel, {
	id : 'gridGroupPanel',
	region : 'center',
	frame : true,
	layout : {
		type : 'hbox',
		align : 'stretch',
		pack : 'start'
	},
	defaults : {
		xtype : 'grid',
		layout : 'fit',
		frame : true,
		loadMask : true
	},
	items : [ {
		id : 'lawyerPanel',
		title : '律师',
		flex : 60,
		store : gridLawyerStore,
		bbar : {
			xtype : 'pagingtoolbar',
			displayInfo : true,
			store : gridLawyerStore
		},
		columns : [ new Ext.grid.RowNumberer({
			header : 'NO.',
			width : 50
		}), {
			text : '姓名',
			width : 100,
			dataIndex : 'name'
		}, {
			text : '擅长领域',
			width : 100,
			dataIndex : 'skill'
		}, {
			text : '电话号码',
			width : 100,
			dataIndex : 'phone'
		}, {
			text : '电子邮箱',
			width : 100,
			dataIndex : 'email'
		}, {
			text : '简介',
			width : 200,
			dataIndex : 'summary'
		} ],
		listeners : {
			select : function(grid, record, index, eOpts) {
				searchLawyerDetail(record.get("id"));
			},
			itemdblclick : function(view, record, item, index, e, eOpts) {
				var win = new law.lawyerInfo.ChildWindow({
					title : '预约画面'
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
	}, {
		id : 'lawyerDetailPanel',
		title : '简历',
		flex : 40,
		store : gridLawyerDetailStore,
		bbar : {
			xtype : 'pagingtoolbar',
			displayInfo : true,
			store : gridLawyerDetailStore
		},
		columns : [ new Ext.grid.RowNumberer({
			header : 'NO.',
			width : 50
		}), {
			text : "案例",
			width : 300,
			dataIndex : 'resume'
		}, {
			text : '结果',
			width : 80,
			dataIndex : 'result'
		} ]
	} ]
});

law.lawyerInfo.ChildWindow = Ext.extend(Ext.Window, {
	id : 'childWindow',
	autoScroll : true,
	width : 500,
	height : 311,
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
			xtype : 'hiddenfield',
			id : 'childId',
			name : 'id'
		}, {
			fieldLabel : '姓名',
			xtype : 'textfield',
			id : 'childName',
			name : 'name',
			readOnly : true
		}, {
			fieldLabel : '擅长领域',
			xtype : 'textfield',
			id : 'childSkill',
			name : 'skill',
			readOnly : true
		}, {
			fieldLabel : '简介',
			xtype : 'textarea',
			id : 'childSummary',
			name : 'summary',
			readOnly : true
		}, {
			fieldLabel : '内容',
			xtype : 'textarea',
			id : 'childContent',
			name : 'content'
		} ]
	} ],
	buttons : [ {
		text : '预约',
		handler : function() {
			saveReserve();
		}
	}, {
		text : '取消',
		handler : function() {
			Ext.getCmp("childWindow").close();
		}
	} ]
});