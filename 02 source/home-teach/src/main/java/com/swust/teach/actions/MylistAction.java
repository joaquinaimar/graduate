package com.swust.teach.actions;

import java.util.Date;
import java.util.List;
import java.util.Set;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import com.swust.teach.manager.MylistManager;
import com.swust.teach.model.Parent;
import com.swust.teach.model.Student;
import com.swust.teach.model.Teacher;

public class MylistAction extends BaseAction {
	private MylistManager mylistManager;
	
	//在主页面显示5条教员和5条学员信息
	public ActionForward main_list(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		List stuList=null;
		stuList=mylistManager.stuList();
		//System.out.println("----------MylistAction--main_list---msglist.size()----" +msglist.size());
		//System.out.println("----------MylistAction--main_list---msglist----");
		List thrList=mylistManager.thrList();
		request.setAttribute("stuList", stuList);
		request.setAttribute("thrList", thrList);
		return mapping.findForward("main_list");
	}

	//查看所有学员列表 
	public ActionForward allstuList(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		List stuList=mylistManager.allstuList();
		request.setAttribute("stuList", stuList);
		return mapping.findForward("allstuList");
	}
	//查看所有教员列表 
	public ActionForward allthrList(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		List thrList=mylistManager.allthrList();
		request.setAttribute("thrList", thrList);
		return mapping.findForward("allthrList");
	}
	
	//查看单个学员详细信息 
	public ActionForward loadstu(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		String stu_id=request.getParameter("stuid");
		String isupdate=request.getParameter("isupdate");
		
		Student stu=mylistManager.loadstu(stu_id);
		Set thrList= mylistManager.thr_stu(stu_id);
		request.setAttribute("thrList", thrList);
		request.setAttribute("stu", stu);
		if(isupdate == null)
			return mapping.findForward("loadstu");
		else
			return mapping.findForward("loadstu4modify");
	}
	
	public ActionForward loadprt(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {

		String prt_id=request.getParameter("prtid");
		Parent prt=mylistManager.loadprt(prt_id);
		
		request.setAttribute("prt", prt);
		
		return mapping.findForward("loadprt4modify");
	}
	
	//查看所有单个教员详细信息 
	public ActionForward loadthr(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		String thr_id=request.getParameter("thrid");
		String isupdate=request.getParameter("isupdate");
		Teacher thr=mylistManager.loadthr(thr_id);
		request.setAttribute("thr", thr);
		if(isupdate == null)
			return mapping.findForward("loadthr");
		else
			return mapping.findForward("loadthr4modify");
	}

	//查看课程信息 
	public ActionForward search(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		String subject=request.getParameter("subject");
		List thrList=mylistManager.search(subject);
		request.setAttribute("thrList", thrList);
		return mapping.findForward("allthrList");
	}
	
	public void setMylistManager(MylistManager mylistManager) {

		this.mylistManager = mylistManager;
	}

	
}
