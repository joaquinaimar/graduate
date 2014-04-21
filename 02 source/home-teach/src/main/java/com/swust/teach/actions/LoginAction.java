package com.swust.teach.actions;

import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.actions.DispatchAction;

import com.swust.teach.forms.LoginActionForm;
import com.swust.teach.manager.LoginManager;
import com.swust.teach.util.Inittest;

public class LoginAction extends DispatchAction {
	private LoginManager loginManager;

	public ActionForward login(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		LoginActionForm laf = (LoginActionForm)form;
		
		System.out.println("laf.getPwd() : "+laf.getPwd());
		System.out.println("laf.getUsername() : "+laf.getUsername());
		System.out.println("laf.getRote() : "+laf.getRote());
		System.out.println("laf.getExpwd(): "+laf.getExpwd());
		String expwd=(String)request.getSession().getAttribute("rand");
		request.getSession().removeAttribute("rand");
		System.out.println("getAttribute(rand): "+expwd);
		int user_id=loginManager.check(laf);
		if(!laf.getExpwd().equals(expwd)){
			request.setAttribute("error", "验证码出错,请重新输入登录信息！");
			return mapping.findForward("fail");
		}
		System.out.println(user_id);
		//String content=stayTime+";URL="+URL;
		//response.setHeader("REFRESH",content);
		//＜meta http-equiv="refresh" content="300; url=target.jsp"＞
		
		if(user_id < 0){
			request.setAttribute("error", "登录失败！,请检查您输入的用户名或密码或会员分类是否正确！");
			return mapping.findForward("fail");
		}else{
			request.getSession().setAttribute("today", new Date());
			request.getSession().setAttribute("username", laf.getUsername());
			request.getSession().setAttribute("rote", laf.getRote());
			request.getSession().setAttribute("user_id",user_id);
			
			System.out.println("request.getSession().setAttribute(\"user_id\"): " +request.getSession().getAttribute("user_id"));
			return mapping.findForward(laf.getRote());
		}
	}
	
	public ActionForward quit(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response){
		if(request.getSession().getAttribute("username")!=null){
			request.getSession().removeAttribute("username");
			request.getSession().removeAttribute("user_id");
			request.getSession().removeAttribute("rote");
			
		}
		return mapping.findForward("quit");
	}
	
	public ActionForward modifypwd(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response){

		LoginActionForm laf = (LoginActionForm)form;
		System.out.println("-------loginaction--modifypwd----" +laf.getOldpwd());
		String user_id=(request.getSession().getAttribute("user_id")).toString();
		String rote=(request.getSession().getAttribute("rote")).toString();
		int bln=loginManager.modifypwd(laf,user_id,rote);
		if(bln < 0){
			request.setAttribute("error", "密码修改失败！请检查您输入的旧密码是否正确！");
			return mapping.findForward("fail");
		}else if(bln<2){
			return mapping.findForward(rote);  
		}else{
			return mapping.findForward(rote);
		}
	}
		
	public ActionForward addmgr(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response){
		
		LoginActionForm laf = (LoginActionForm)form;
		boolean bln=false;
		if("admin".equals(request.getSession().getAttribute("username"))){
			bln=loginManager.mgradd(laf);
		}
		if(!bln){
			request.setAttribute("error", "管理员添加失败！");
			return mapping.findForward("fail");
		}else{
			return mapping.findForward("Manager");
		}
		
	}
	
	public ActionForward initdata(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response){
		System.out.println("----------loginaction--initdata-------");
		String pwd=request.getParameter("pwd");
		String username=request.getParameter("username");
		if("admin".equals(pwd) && "admin".equals(username)){
			Inittest init=new Inittest();
			init.testupdate();
		}
		
		return mapping.findForward("quit");
	}
	
	public void setLoginManager(LoginManager loginManager) {
		this.loginManager = loginManager;
	}

}
