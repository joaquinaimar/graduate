function searchLawFile() {
	var form = Ext.getCmp("searchPanel").getForm();
	var params = {
		fileName : form.findField("fileName").getValue()
	};

	Ext.apply(gridStore.proxy.extraParams, params);

	gridStore.load();
}

function downloadLawFile() {
	var fileName = Ext.getCmp("childForm").getForm().findField("fileName")
			.getValue();

	var downloadIframe = document.getElementById("downloadIframe");

	if (downloadIframe) {
		downloadIframe.parentNode.removeChild(downloadIframe);
	}

	downloadIframe = document.createElement("iframe");
	downloadIframe.id = "downloadIframe";
	downloadIframe.src = contextPath
			+ "/controller/lawFile/downloadLawFile.do?fileName=" + fileName;
	downloadIframe.style.display = "none";
	document.body.appendChild(downloadIframe);
}