package com.fun.service.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.Query;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Repository;

import com.fun.common.CommonUtils;
import com.fun.common.RuntimePolicy;
import com.fun.entity.Member;
import com.fun.entity.MemberStatus;
import com.fun.entity.MemberType;
import com.fun.service.base.QueryHelper;
import com.fun.service.base.QueryListHelper;
import com.fun.service.base.UpdateHelper;

@Repository("memberDao")
@Scope("prototype")
public class MemberDao extends BaseDao {
	
	public List<Member> findAllMember() {
		return daoTemplate.executeQueryForList(new QueryListHelper<Member>() {

			@SuppressWarnings("unchecked")
			@Override
			public List<Member> executeQuery(EntityManager em) {
				Query query = em.createQuery("select m from Member m where m.memberStatus.memberStatusId != 3");
				List<Member> list = query.getResultList();
				return list;
			}
		});
	}
	
	public List<MemberStatus> findAllMemberStatus() {
		return daoTemplate.executeQueryForList(new QueryListHelper<MemberStatus>() {

			@SuppressWarnings("unchecked")
			@Override
			public List<MemberStatus> executeQuery(EntityManager em) {
				Query query = em.createQuery("select ms from MemberStatus ms order by ms.memberStatusId");
				List<MemberStatus> list = query.getResultList();
				return list;
			}
		});
	}
	
	public List<MemberType> findAllMemberType() {
		return daoTemplate.executeQueryForList(new QueryListHelper<MemberType>() {

			@SuppressWarnings("unchecked")
			@Override
			public List<MemberType> executeQuery(EntityManager em) {
				Query query = em.createQuery("select mt from MemberType mt order by mt.memberTypeId");
				List<MemberType> list = query.getResultList();
				return list;
			}
		});
	}
	
	public void saveMember(final Member member) {
		daoTemplate.executeUpdate(new UpdateHelper() {
			
			@Override
			public void execute(EntityManager em) {
				em.persist(member);
			}
		});
	}
	
	public void updateMember(final Member member) {
		daoTemplate.executeUpdate(new UpdateHelper() {
			
			@Override
			public void execute(EntityManager em) {
				Member oldMember = em.find(Member.class, member.getMemberId());
				member.setMemberId(oldMember.getMemberId());
				member.setPan(oldMember.getPan());
				member.setStartDate(oldMember.getStartDate());
				member.setEndDate(oldMember.getEndDate());
				em.merge(member);
			}
		});
	}
	
	public void removeMember(final Member member) {
		daoTemplate.executeUpdate(new UpdateHelper() {
			
			@Override
			public void execute(EntityManager em) {
				Member oldMember = em.find(Member.class, member.getMemberId());
				MemberStatus status = new MemberStatus(3);
				oldMember.setMemberStatus(status);
				em.merge(oldMember);
			}
		});
	}
	
	public String findNextPan() {
		Member member = daoTemplate.executeQuery(new QueryHelper<Member>() {
			@SuppressWarnings("unchecked")
			@Override
			public Member execute(EntityManager em) {
				Query query = em.createQuery("select m from Member m order by m.pan desc");
				List<Member> list = query.getResultList();
				if (list != null && list.size() > 0) {
					return list.get(0);
				} else {
					return null;
				}
			}
		});
		
		StringBuffer buffer = new StringBuffer(RuntimePolicy.getPanLength());
		String panTmp;
		if (member == null) {
			panTmp = String.valueOf(1);
		} else {
			String lastPan = member.getPan();
			int lastPanNum = Integer.valueOf(lastPan.substring(RuntimePolicy.getPanCodeLength()));
			panTmp = String.valueOf(lastPanNum + 1);
		}
		panTmp = CommonUtils.padLeft(panTmp, '0', RuntimePolicy.getPanLength() - RuntimePolicy.getPanCodeLength());
		buffer.append(RuntimePolicy.getPanCode()).append(panTmp);
		return buffer.toString();
	}
	
	public Member findMemberByPan(final String pan) {
		return daoTemplate.executeQuery(new QueryHelper<Member>() {

			@Override
			public Member execute(EntityManager em) {
				Query query = em.createQuery("select m from Member m where m.pan = :pan");
				query.setParameter("pan", pan);
				Member member = (Member)query.getSingleResult();
				return member;
			}
		});
	}
	
}
