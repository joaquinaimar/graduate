Ext.ns("law.officeProfile");

Ext.onReady(function() {
	Ext.QuickTips.init();
	var mainPanel = new law.officeProfile.MainPanel();

	new Ext.Viewport({
		layout : 'fit',
		items : mainPanel
	});

	initData();

});

law.officeProfile.MainPanel = Ext.extend(Ext.Panel, {
	id : 'mainPanel',
	layout : 'border',
	constructor : function(config) {
		var profilePanel = new law.officeProfile.ProfilePanel();
		var certificate = new law.officeProfile.CertificatePanel();
		var group = {
			items : [ profilePanel, certificate ]
		};

		law.officeProfile.MainPanel.superclass.constructor.call(this, group);
	}
});

law.officeProfile.ProfilePanel = Ext.extend(Ext.form.FormPanel, {
	id : 'profilePanel',
	title : '事务所简介',
	region : 'north',
	frame : true,
	layout : 'fit',
	items : [ {
		xtype : 'textarea',
		height : 200,
		id : 'profile',
		name : 'profile',
		readOnly : true
	} ]
});

law.officeProfile.CertificatePanel = Ext.extend(Ext.Panel, {
	id : 'certificatePanel',
	title : '事务所执业证',
	region : 'north',
	frame : true,
	layout : 'fit',
	items : [ {
		xtype : 'panel',
		frame : true,
		html : '<center><img height="200px" width="300px" src="' + contextPath
				+ '/image/certificate.jpg"></center>'
	} ]
});