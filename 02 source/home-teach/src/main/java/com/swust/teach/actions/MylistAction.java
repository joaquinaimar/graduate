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
	
	//����ҳ����ʾ5����Ա��5��ѧԱ��Ϣ
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

	//�鿴����ѧԱ�б� 
	public ActionForward allstuList(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		List stuList=mylistManager.allstuList();
		request.setAttribute("stuList", stuList);
		return mapping.findForward("allstuList");
	}
	//�鿴���н�Ա�б� 
	public ActionForward allthrList(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		List thrList=mylistManager.allthrList();
		request.setAttribute("thrList", thrList);
		return mapping.findForward("allthrList");
	}
	
	//�鿴����ѧԱ��ϸ��Ϣ 
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
	
	//�鿴���е�����Ա��ϸ��Ϣ 
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

	//�鿴�γ���Ϣ 
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
