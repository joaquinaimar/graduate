Ext.ns("law.main");

Ext.onReady(function() {
	Ext.QuickTips.init();
	var mainPanel = new law.main.MainPanel();

	new Ext.Viewport({
		layout : 'fit',
		items : mainPanel
	});

	changePage("/officeProfile");
});

law.main.MainPanel = Ext.extend(Ext.Panel, {
	id : 'mainPanel',
	layout : 'border',
	items : [{
		id : 'mainLeft',
		region : 'west',
		width : 150,
		layout : 'border',
		items : [{
			xtype : 'panel',
			region : 'north',
			height : 100,
			html : '<img src="' + contextPath + '/image/logo.png" width=100% height=100%>'
		}, {
			xtype : 'panel',
			title : '菜单',
			frame : true,
			layout : 'form',
			region : 'center',
			defaults : {
				xtype : 'button',
				scale : 'large',
				width : '100%'
			},
			items : [{
				text : '事务所简介',
				onClick : function() {
					changePage("/officeProfile");
				}
			}, {
				text : '服务标准',
				onClick : function() {
					changePage("/serviceItem");
				}
			}, {
				text : '律师资料',
				onClick : function() {
					changePage("/lawyerInfo");
				}
			}, {
				text : '预约管理',
				onClick : function() {
					changePage("/reserveManage");
				}
			}, {
				text : '法律文件',
				onClick : function() {
					changePage("/lawFile");
				}
			}, {
				text : '修改用户信息',
				onClick : function() {
					changePage("/modifyUserInfo");
				}
			}, {
				text : '用户管理',
				onClick : function() {
					changePage("/userManage");
				}
			}]
		}, {
			xtype : 'button',
			region : 'south',
			height : 30,
			text : '意见反馈箱',
			onClick : function() {
				var win = new law.main.ChildWindow();
				win.show();
			}
		}]
	}, {
		id : 'mainMain',
		layout : 'fit',
		region : 'center',
		items : [{
			xtype : 'container',
			layout : 'fit',
			autoEl : {
				tag : 'iframe',
				name : 'mainpage',
				frameBorder : 0
			}
		}]
	}]
});

law.main.ChildWindow = Ext.extend(Ext.Window, {
	id : 'childWindow',
	autoScroll : true,
	width : 500,
	height : 300,
	maximizable : false,
	modal : true,
	items : [{
		id : 'childForm',
		frame : true,
		xtype : 'form',
		defaults : {
			labelWidth : 70,
			width : 400
		},
		items : [{
			fieldLabel : '意见',
			xtype : 'textarea',
			id : 'childContent',
			height : 200,
			name : 'content'
		}]
	}],
	buttons : [{
		text : '提交',
		handler : function() {
			saveSuggestion();
		}
	}, {
		text : '取消',
		handler : function() {
			Ext.getCmp("childWindow").close();
		}
	}]
});
