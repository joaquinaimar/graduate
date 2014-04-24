
/*********** Wic Jmesa Methods ***********/

function onInvokeAction(id, action) {
    createHiddenInputFieldsForLimitAndSubmit(id);
}

function onInvokeExportAction(id) {
    var parameterString = createParameterStringForLimit(id);
    var extParameter = "";
    if (id == 'vendor_upc_list') {
    	extParameter = "&catNbr=" + $("[name='catNbr']").attr("value")
    		+ "&subcatNbr=" + $("[name='subcatNbr']").attr("value")
    		+ "&searchType=" + $("[name='searchType']").attr("value");
    }
    var form = jQuery.jmesa.getFormByTableId(id);
    location.href = form.action + "?" + parameterString + extParameter;
}
