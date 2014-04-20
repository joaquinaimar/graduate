Ext.ns("law.modifyUserInfo");

Ext.onReady(function() {
	Ext.QuickTips.init();
	var mainPanel = new law.modifyUserInfo.MainPanel();

	new Ext.Viewport({
		layout : 'fit',
		items : mainPanel
	});
	getUseInfo();
});

law.modifyUserInfo.MainPanel = Ext.extend(Ext.Panel, {
	id : 'mainPanel',
	layout : {
		type : 'hbox',
		align : 'middle',
		pack : 'center'
	},
	title : '修改用户信息',
	items : [ {
		id : 'userForm',
		xtype : 'form',
		height : 160,
		width : 400,
		labelWidth : 60,
		labelAlign : 'right',
		frame : true,
		method : 'post',
		items : [ {
			xtype : 'hiddenfield',
			id : 'id',
			name : 'id'
		}, {
			xtype : 'textfield',
			id : 'username',
			name : 'username',
			fieldLabel : '用户名',
			readOnly : true
		}, {
			xtype : 'textfield',
			id : 'password',
			name : 'password',
			fieldLabel : '密码',
			inputType : 'password'
		}, {
			xtype : 'textfield',
			id : 'phone',
			name : 'phone',
			fieldLabel : '电话'
		}, {
			xtype : 'textfield',
			id : 'email',
			name : 'email',
			fieldLabel : '电子邮箱'
		} ],
		buttons : [ {
			text : '保存',
			handler : function() {
				saveUser();
			}
		} ]
	} ]
});