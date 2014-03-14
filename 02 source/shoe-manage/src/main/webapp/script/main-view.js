Ext.ns("shoe.main");

Ext.onReady(function() {
	Ext.QuickTips.init();
	var mainPanel = new shoe.main.MainPanel();

	new Ext.Viewport({
		layout : 'fit',
		items : mainPanel
	});
});

shoe.main.MainPanel = Ext.extend(Ext.Panel, {
	id : 'mainPanel',
	layout : 'border',
	items : [{
		id : 'mainHead',
		region : 'north',
		height : 70,
		layout : 'border',
		items : [{
			xtype : 'panel',
			width : 400,
			region : 'west',
			html : '<img src="' + contextPath + '/image/logo.png" width=100% height=100%>'
		}, {
			xtype : 'panel',
			region : 'center',
			layout : {
				type : 'hbox',
				align : 'stretch',
				pack : 'start'
			},
			defaults : {
				xtype : 'button',
				flex : 10
			},
			items : [{
				text : '客户管理',
				onClick : function() {
					changePage("/customer");
				}
			}, {
				text : '销售记录',
				onClick : function() {
					changePage("/sell");
				}
			}, {
				text : '信息统计',
				onClick : function() {
					changePage("/info");
				}
			}, {
				text : '购买信息',
				onClick : function() {
					changePage("/purchase");
				}
			}, {
				text : '售后管理',
				onClick : function() {
					changePage("/service");
				}
			}]
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
