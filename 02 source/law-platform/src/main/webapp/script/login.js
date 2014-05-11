function doLogin() {
	document.getElementById("theform").submit();
}

Ext.ns("law.login");

function showRegisterWindow() {
	law.login.ChildWindow = Ext.extend(Ext.Window, {
		id : 'childWindow',
		title : '注册',
		autoScroll : true,
		maximizable : false,
		modal : true,
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
				xtype : 'textfield',
				id : 'username',
				name : 'username',
				fieldLabel : '用户名'
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
			} ]
		} ],
		buttons : [
				{
					text : '注册',
					handler : function() {
						var form = Ext.getCmp("userForm").getForm();
						form.submit({
							url : contextPath
									+ '/controller/userInfo/saveUser.do',
							method : 'POST',
							success : function(from, action) {
								Ext.Msg.alert('提示', '保存成功！', function() {
									Ext.getCmp("childWindow").close();
								});
							}
						});
					}
				}, {
					text : '取消',
					handler : function() {
						Ext.getCmp("childWindow").close();
					}
				} ]
	});

	var win = new law.login.ChildWindow();
	win.show();

}