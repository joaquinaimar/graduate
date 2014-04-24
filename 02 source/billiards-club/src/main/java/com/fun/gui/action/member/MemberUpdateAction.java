package com.fun.gui.action.member;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.fun.entity.Member;
import com.fun.entity.MemberStatus;
import com.fun.entity.MemberType;
import com.fun.gui.action.base.BaseAction;
import com.fun.service.MemberService;

@Controller("memberUpdateAction")
@Scope("prototype")
public class MemberUpdateAction extends BaseAction {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	@Resource(name="memberService")
	private MemberService memberService;
	
	private List<Member> memberList;
	
	private List<MemberStatus> memberStatusList;
	
	private List<MemberType> memberTypeList;
	
	private Member member;
	
	@Override
	public String view() throws Exception {
		memberStatusList = memberService.findAllMemberStatus();
		memberTypeList = memberService.findAllMemberType();
		memberList = memberService.findAllMember();
		return VIEW;
	}
	
	public String update() throws Exception {
		memberService.updateMember(member);
		return SUCCESS;
	}
	
	public String remove() throws Exception {
		memberService.removeMember(member);
		return SUCCESS;
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

	public List<MemberStatus> getMemberStatusList() {
		return memberStatusList;
	}

	public void setMemberStatusList(List<MemberStatus> memberStatusList) {
		this.memberStatusList = memberStatusList;
	}

	public List<MemberType> getMemberTypeList() {
		return memberTypeList;
	}

	public void setMemberTypeList(List<MemberType> memberTypeList) {
		this.memberTypeList = memberTypeList;
	}

	public Member getMember() {
		return member;
	}

	public void setMember(Member member) {
		this.member = member;
	}

}
