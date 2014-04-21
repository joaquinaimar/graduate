package com.swust.teach.actions;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

public class BlankAction extends Action {

	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		String url = request.getParameter("url");
		if (request.getSession().getAttribute("username") != null) {
			if ("main".equals(url)) {
				return mapping.findForward("main");
			} else if ("thrlist".equals(url)) {
				return mapping.findForward("thrlist");
			} else if ("stulist".equals(url)) {
				return mapping.findForward("stulist");
			}else if("modifypwd".equals(url)){
				return mapping.findForward("modifypwd");
			}else if ("addstu".equals(url)) {
				if(request.getSession().getAttribute("rote").equals("Parent"))
					return mapping.findForward("addstu");
				else{
					request.setAttribute("error", "只有家长才能请家教！");
					return mapping.findForward("fail");
				}
			}else if("mgrmain".equals(url)){
				if((request.getSession().getAttribute("rote")).equals("Manager") ||
				   (request.getSession().getAttribute("rote")).equals("Admin")	){
					return mapping.findForward("mgrmain");
				}
			}else if("addmgr".equals(url)){
				return mapping.findForward("addmgr");
			}else if("modifymgrpwd".equals(url)){
				return mapping.findForward("modifymgrpwd");
			}else if("prtmustread".equals(url)){
				return mapping.findForward("prtmustread");
			}else if("thrmustread".equals(url)){
				return mapping.findForward("thrmustread");
			}
		} 
		else {
			if ("regthr".equals(url)) 
				return mapping.findForward("regthr");
			else if ("regprt".equals(url)) 
				return mapping.findForward("regprt");
			else if ("loginpage".equals(url)) 
				return mapping.findForward("login");
		}
		request.setAttribute("error", "转向失败！请刷新页面！");
		return mapping.findForward("fail");
	}
}
