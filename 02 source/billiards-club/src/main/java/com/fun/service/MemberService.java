package com.fun.service;

import java.util.List;

import com.fun.entity.Member;
import com.fun.entity.MemberStatus;
import com.fun.entity.MemberType;

public interface MemberService {
	
	public List<Member> findAllMember();
	
	public List<MemberStatus> findAllMemberStatus();
	
	public List<MemberType> findAllMemberType();
	
	public void saveMember(Member member);
	
	public void updateMember(Member member);
	
	public void removeMember(Member member);
	
}
