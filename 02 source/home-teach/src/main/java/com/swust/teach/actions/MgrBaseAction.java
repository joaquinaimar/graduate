package com.swust.teach.actions;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.actions.DispatchAction;

public class MgrBaseAction extends DispatchAction {

	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
			if (request.getSession().getAttribute("rote") == "Manager" 
				|| request.getSession().getAttribute("rote") == null) {
				return mapping.findForward("login");
			}
			return super.execute(mapping, form, request, response);
	}
}
