Ext.ns("law.main");

Ext.onReady(function() {
	Ext.QuickTips.init();
	var mainPanel = new law.main.MainPanel();

	new Ext.Viewport({
		layout : 'fit',
		items : mainPanel
	});
});

law.main.MainPanel = Ext
		.extend(
				Ext.Panel,
				{
					id : 'mainPanel',
					layout : 'border',
					items : [
							{
								id : 'mainLeft',
								region : 'west',
								width : 150,
								layout : 'border',
								items : [
										{
											xtype : 'panel',
											region : 'north',
											height : 100,
											html : '<img src="'
													+ contextPath
													+ '/image/logo.png" width=100% height=100%>'
										},
										{
											xtype : 'panel',
											title : '菜单',
											frame : true,
											layout : 'column',
											region : 'center',
											defaults : {
												xtype : 'button',
												columnWidth : 0.95,
												height : 50
											},
											items : [
													{
														text : '律师资料',
														onClick : function() {
															changePage("/lawyerInfo");
														}
													},
													{
														text : '律师预约',
														onClick : function() {
															changePage("/lawyerReserve");
														}
													},
													{
														text : '预约管理',
														onClick : function() {
															changePage("/reserveManage");
														}
													},
													{
														text : '法律文件',
														onClick : function() {
															changePage("/lawFile");
														}
													},
													{
														text : '修改用户信息',
														onClick : function() {
															changePage("/modifyUserInfo");
														}
													} ]
										} ]
							}, {
								id : 'mainMain',
								layout : 'fit',
								region : 'center',
								items : [ {
									xtype : 'container',
									layout : 'fit',
									autoEl : {
										tag : 'iframe',
										name : 'mainpage',
										frameBorder : 0
									}
								} ]
							} ]

				});
