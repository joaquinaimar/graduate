function searchLawyer() {
	var form = Ext.getCmp("searchPanel").getForm();
	var params = {
		name : form.findField("name").getValue()
	};

	Ext.apply(gridLawyerStore.proxy.extraParams, params);

	gridLawyerStore.load();

	searchLawyerDetail('');
}

function searchLawyerDetail(lawyerId) {

	var params = {
		lawyerId : lawyerId
	};

	Ext.apply(gridLawyerDetailStore.proxy.extraParams, params);
	gridLawyerDetailStore.load();
}

function saveReserve() {
	var form = Ext.getCmp("childForm").getForm();
	form.submit({
		url : contextPath + '/controller/lawyerInfo/saveReserve.do',
		method : 'POST',
		success : function(from, action) {
			Ext.Msg.alert('提示', '预约成功！', function() {
				Ext.getCmp("childWindow").close();
			});
		}
	});
}