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
		var certificatePanel = new law.officeProfile.CertificatePanel();
		var newsPanel = new law.officeProfile.NewsPanel();
		var group = {
			items : [ profilePanel, certificatePanel, newsPanel ]
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

law.officeProfile.NewsPanel = Ext.extend(Ext.grid.GridPanel, {
	id : 'newsPanel',
	title : '新闻',
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
	columns : [ new Ext.grid.RowNumberer({
		header : 'NO.',
		width : 50
	}), {
		text : "标题",
		width : 100,
		dataIndex : 'title'
	}, {
		text : "内容",
		width : 400,
		dataIndex : 'content'
	}, {
		text : "发布时间",
		width : 200,
		xtype : 'datecolumn',
		format : 'Y-m-d H:i:s',
		dataIndex : 'time'
	} ]
});