package com.fun.service.impl;

import java.util.Date;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Service;

import com.fun.common.Constant;
import com.fun.entity.Member;
import com.fun.entity.MemberStatus;
import com.fun.entity.MemberType;
import com.fun.service.MemberService;
import com.fun.service.dao.MemberDao;

@Service("memberService")
@Scope("prototype")
public class MemberServiceImpl implements MemberService{

	@Resource(name="memberDao")
	private MemberDao memberDao;
	
	@Override
	public List<Member> findAllMember() {
		return memberDao.findAllMember();
	}

	@Override
	public List<MemberStatus> findAllMemberStatus() {
		return memberDao.findAllMemberStatus();
	}

	@Override
	public List<MemberType> findAllMemberType() {
		return memberDao.findAllMemberType();
	}
	
	@Override
	public void saveMember(Member member) {
		member.setStartDate(new Date());
		member.setEndDate(Constant.getDefaultEndDate());
		member.setPan(memberDao.findNextPan());
		memberDao.saveMember(member);
	}

	@Override
	public void updateMember(Member member) {
		memberDao.updateMember(member);
	}
	
	@Override
	public void removeMember(Member member) {
		memberDao.removeMember(member);	
	}
	
	public MemberDao getMemberDao() {
		return memberDao;
	}

	public void setMemberDao(MemberDao memberDao) {
		this.memberDao = memberDao;
	}

}
