package com.swust.teach.actions;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.actions.DispatchAction;

import com.swust.teach.forms.PrtregActionForm;
import com.swust.teach.manager.PrtregManager;
import com.swust.teach.model.Parent;

public class PrtregAction extends DispatchAction {
	private PrtregManager prtregManager;

	public ActionForward regprt(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		PrtregActionForm paf = (PrtregActionForm)form ;
		System.out.println("paf.getPwd() : "+paf.getPwd());
		
		System.out.println("paf.getUsername() : "+paf.getUsername());
		boolean bln=prtregManager.registerprt(paf);
		System.out.println(bln);

		if(!bln){
			request.setAttribute("error", "注册家长失败！");
			return mapping.findForward("fail");
		}else{		
			return mapping.findForward("sucess");
		}
	}
	
	public ActionForward updateprt(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		
		PrtregActionForm paf = (PrtregActionForm)form ;
		String prt_id=(String)request.getParameter("prtid");
		
		boolean bln=prtregManager.updateprt(paf,prt_id);
		System.out.println(bln);
		
		if(!bln){
			request.setAttribute("error", "修改家长信息失败！");
			return mapping.findForward("fail");
		}else{
			return mapping.findForward("updatesucess");
		}
	}

	public void setPrtregManager(PrtregManager prtregManager) {
		this.prtregManager = prtregManager;
	}
		
}
