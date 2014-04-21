package com.swust.teach.actions;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import com.swust.teach.forms.StuActionForm;
import com.swust.teach.manager.StuaddManager;

public class StuaddAction extends BaseAction {
	private StuaddManager stuaddManager;
	
	//添加招聘信息
	public ActionForward addstu(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		StuActionForm saf = (StuActionForm)form ;
		String prt_id = request.getParameter("prtid");
		boolean bln=stuaddManager.addstu(saf, prt_id);
		System.out.println(bln);
		
		if(!bln){
			request.setAttribute("error", "添加学员信息失败！");
			return mapping.findForward("fail");
		}else{
			return mapping.findForward("sucess");
		}
	}
	
	//教员应聘
	public ActionForward employ(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		String stu_id = request.getParameter("stuid");
		String thr_id = request.getParameter("thrid");
		boolean bln=stuaddManager.employ(stu_id, thr_id);
		System.out.println(bln);
		if(!bln){
			request.setAttribute("error", "建立应聘信息失败！");
			return mapping.findForward("fail");
		}else{
			return mapping.findForward("sucess");
		}
	}
	
	//修改招聘信息
	public ActionForward modifystu(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		String stu_id = request.getParameter("stuid");

		StuActionForm saf = (StuActionForm)form ;
		boolean bln=stuaddManager.modifystu(saf, stu_id);
		System.out.println(bln);

		if(!bln){
			request.setAttribute("error", "修改学员信息失败！");
			return mapping.findForward("fail");
		}else{
			return mapping.findForward("sucess");
		}
	}
	
	//选择教员
	public ActionForward choosethr(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		String stu_id = request.getParameter("stuid");
		String thr_id = request.getParameter("thrid");
		
		boolean bln=stuaddManager.choosethr(stu_id, thr_id);;
		System.out.println(bln);
		
		if(!bln){
			request.setAttribute("error", "选择教员失败！");
			return mapping.findForward("fail");
		}else{
			return mapping.findForward("sucess");
		}
	}

	public void setStuaddManager(StuaddManager stuaddManager) {
		this.stuaddManager = stuaddManager;
	}
	
}
