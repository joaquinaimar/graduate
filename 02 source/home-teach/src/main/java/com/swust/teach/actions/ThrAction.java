package com.swust.teach.actions;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.actions.DispatchAction;

import com.swust.teach.forms.ThrregActionForm;
import com.swust.teach.manager.ThrregManager;
import com.swust.teach.model.Teacher;

public class ThrAction extends DispatchAction {
	private ThrregManager thrregManager;

	
	public ActionForward regthr(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		ThrregActionForm taf=(ThrregActionForm)form;
		boolean bln=thrregManager.registerthr(taf);
		
		System.out.println(bln);
		
		if(!bln){
			request.setAttribute("error", "注册教员失败！");
			return mapping.findForward("fail");
		}else{
			return mapping.findForward("sucess");
		}
	}
		
	public ActionForward updatethr(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		String thr_id=(String)request.getParameter("thrid");
		System.out.println("thr_id" +thr_id);
		ThrregActionForm taf=(ThrregActionForm)form;
		boolean bln=thrregManager.updatethr(taf, thr_id);
		if(!bln){
			request.setAttribute("error", "修改教员信息失败！");
			return mapping.findForward("fail");
		}else{
			return mapping.findForward("updatesucess");
		}
	}
	
	public ActionForward changethrState(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		String thr_id=(String)request.getParameter("thrid");
		boolean bln=thrregManager.changethrState(thr_id);
		if(!bln){
			request.setAttribute("error", "修改教员状态失败！");
			return mapping.findForward("fail");
		}else{
			return mapping.findForward("updatesucess");
		}
	}
	public void setThrregManager(ThrregManager thrregManager) {
		this.thrregManager = thrregManager;
	}
	


}
