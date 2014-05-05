package edu.graduate.law.platform.application.service;

import org.hibernate.Criteria;
import org.hibernate.criterion.Restrictions;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import edu.graduate.basic.database.BaseDao;
import edu.graduate.basic.io.PageResponse;
import edu.graduate.basic.io.extjs.ExtPageRequest;
import edu.graduate.law.platform.domain.entity.Lawyer;
import edu.graduate.law.platform.domain.entity.LawyerDetail;
import edu.graduate.law.platform.domain.entity.Reserve;

@Service
@Transactional
public class LawyerInfoService extends BaseDao {

	@SuppressWarnings("unchecked")
	public PageResponse<Lawyer> searchLawyer(Lawyer lawyer,
			ExtPageRequest pageRequest) {
		Criteria criteria = super.createCriteria(Lawyer.class);
		if (null != lawyer.getName() && !"".equals(lawyer.getName()))
			criteria.add(Restrictions.like("name", "%" + lawyer.getName() + "%"));
		return super.pageQuery(criteria, pageRequest);
	}

	@SuppressWarnings("unchecked")
	public PageResponse<LawyerDetail> searchLawyerDetail(
			LawyerDetail lawyerDetail, ExtPageRequest pageRequest) {
		Criteria criteria = super.createCriteria(LawyerDetail.class);
		criteria.add(Restrictions.eq("lawyerId", lawyerDetail.getLawyerId()));
		return super.pageQuery(criteria, pageRequest);
	}

	public void saveReserve(Reserve reserve) {
		super.save(reserve);
	}

}
