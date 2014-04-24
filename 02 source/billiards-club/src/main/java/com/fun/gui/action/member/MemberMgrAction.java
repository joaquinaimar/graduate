package com.fun.gui.action.member;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.fun.entity.Member;
import com.fun.gui.action.base.BaseAction;
import com.fun.service.MemberService;

@Controller("memberMgrAction")
@Scope("prototype")
public class MemberMgrAction extends BaseAction {

	private static final long serialVersionUID = 1L;
	
	@Resource(name="memberService")
	private MemberService memberService;
	
	private List<Member> memberList;
	
	@Override
	public String view() throws Exception {
		memberList = memberService.findAllMember();
		return VIEW;
	}
	
	public List<Member> getMemberList() {
		return memberList;
	}

	public void setMemberList(List<Member> memberList) {
		this.memberList = memberList;
	}

	public MemberService getMemberService() {
		return memberService;
	}

	public void setMemberService(MemberService memberService) {
		this.memberService = memberService;
	}
	
}
