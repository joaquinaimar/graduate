package com.swust.teach.actions;


import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import com.swust.teach.manager.MgrManager;
import com.swust.teach.model.Student;
import com.swust.teach.model.Parent;
import com.swust.teach.model.Teacher;

public class ManagerAction extends MgrBaseAction {
	private MgrManager mgrManager;
	
	public ActionForward thrList(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		
		List thrList=mgrManager.thrList();
		request.setAttribute("thrList", thrList);
		return mapping.findForward("thrList");
	}
	
	public ActionForward stuList(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		List stuList=mgrManager.stuList();
		request.setAttribute("stuList", stuList);
		return mapping.findForward("stuList");
	}

	public ActionForward mgrList(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		List mgrList=mgrManager.mgrList();
		request.setAttribute("mgrList", mgrList);
		return mapping.findForward("mgrList");
	}
	
	public ActionForward prtList(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		List prtList=mgrManager.prtList();
		System.out.println("-----prtlist.size-------" +prtList.size());
		request.setAttribute("prtList", prtList);
		return mapping.findForward("prtList");
	}
	
	public ActionForward delthr(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		String thr_id = request.getParameter("thrid");
		boolean bln=mgrManager.delthr(thr_id);
		if(!bln){
			request.setAttribute("error", "删除教员失败！");
			return mapping.findForward("fail");
		}else{
			return mapping.findForward("rethrList");
		}
		
	}
	
	public ActionForward delprt(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		String prt_id = request.getParameter("prtid");
		boolean bln=mgrManager.delprt(prt_id);
		if(!bln){
			request.setAttribute("error", "删除家长失败！");
			return mapping.findForward("fail");
		}else{
			return mapping.findForward("reprtList");
		}
		
	}
	
	public ActionForward delstu(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		String stu_id = request.getParameter("stuid");
		boolean bln=mgrManager.delstu(stu_id);
		if(!bln){
			request.setAttribute("error", "删除招聘信息失败！");
			return mapping.findForward("fail");
		}else{
			return mapping.findForward("restuList");
		}
		
	}
	
	public ActionForward delmgr(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		String mgr_id = request.getParameter("mgrid");
		boolean bln=mgrManager.delmgr(mgr_id);
		if(!bln){
			request.setAttribute("error", "删除管理员失败！");
			return mapping.findForward("fail");
		}else{
			return mapping.findForward("remgrList");
		}
		
	}
	
	//查看单个学员详细信息,加载到学员详细信息修改页面
	public ActionForward loadstu(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {

		String stu_id=request.getParameter("stuid");
		Student stu=mgrManager.loadstu(stu_id);
	
		request.setAttribute("stu", stu);
		
		return mapping.findForward("loadstu");
	}
	
	
	
	//查看单个学员详细信息,加载到学员详细信息修改页面
	public ActionForward loadprt(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {

		String prt_id=request.getParameter("prtid");
		Parent prt=mgrManager.loadprt(prt_id);
		
		request.setAttribute("prt", prt);
		
		return mapping.findForward("loadstu");
	}
	
	//查看单个学员详细信息,加载到学员详细信息修改页面
	public ActionForward loadthr(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {

		String thr_id=request.getParameter("thrid");
		Teacher thr=mgrManager.loadthr(thr_id);
		
		request.setAttribute("thr", thr);
		
		return mapping.findForward("loadthr");
	}
	public void setMgrManager(MgrManager mgrManager) {
		this.mgrManager = mgrManager;
	}
}
