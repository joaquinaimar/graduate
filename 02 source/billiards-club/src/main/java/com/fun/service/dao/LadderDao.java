package com.fun.service.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.Query;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Repository;

import com.fun.entity.Ladder;
import com.fun.entity.LadderStatus;
import com.fun.service.base.QueryListHelper;
import com.fun.service.base.UpdateHelper;

@Repository("ladderDao")
@Scope("prototype")
public class LadderDao extends BaseDao {

	public List<Ladder> findAllLadder() {
		return daoTemplate.executeQueryForList(new QueryListHelper<Ladder>() {

			@SuppressWarnings("unchecked")
			@Override
			public List<Ladder> executeQuery(EntityManager em) {
				Query query = em
						.createQuery("select l from Ladder l where l.ladderStatus.ladderStatusId != :statusId");
				query.setParameter("statusId", 3);
				return query.getResultList();
			}
		});
	}
	
	public void addLadder(final Ladder ladder) {
		daoTemplate.executeUpdate(new UpdateHelper() {
			
			@Override
			public void execute(EntityManager em) {
				em.persist(ladder);
			}
		});
	}
	
	public void updateLadder(final Ladder ladder) {
		daoTemplate.executeUpdate(new UpdateHelper() {
			
			@Override
			public void execute(EntityManager em) {
				em.merge(ladder);
			}
		});
	}
	
	public List<LadderStatus> findLadderStatus() {
		return daoTemplate.executeQueryForList(new QueryListHelper<LadderStatus>() {

			@SuppressWarnings("unchecked")
			@Override
			public List<LadderStatus> executeQuery(EntityManager em) {
				Query query = em.createQuery("select ls from LadderStatus ls order by ls.ladderStatusId");
				List<LadderStatus> list = query.getResultList();
				return list;
			}
		});
	}

}
