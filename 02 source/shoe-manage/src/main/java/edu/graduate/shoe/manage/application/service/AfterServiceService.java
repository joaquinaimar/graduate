package edu.graduate.shoe.manage.application.service;

import org.hibernate.Criteria;
import org.hibernate.criterion.Restrictions;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import edu.graduate.shoe.manage.basic.database.BaseDao;
import edu.graduate.shoe.manage.basic.io.PageResponse;
import edu.graduate.shoe.manage.basic.io.extjs.ExtPageRequest;
import edu.graduate.shoe.manage.domain.entity.AfterService;
import edu.graduate.shoe.manage.domain.entity.AfterServiceView;

@Service
@Transactional
public class AfterServiceService extends BaseDao {

	@SuppressWarnings("unchecked")
	public PageResponse<AfterServiceView> searchAfterService(
			AfterServiceView afterServiceView, ExtPageRequest pageRequest) {
		Criteria criteria = super.createCriteria(AfterServiceView.class);
		if (null != afterServiceView.getCustomer()
				&& !"".equals(afterServiceView.getCustomer()))
			criteria.add(Restrictions.like("customer",
					"%" + afterServiceView.getCustomer() + "%"));

		return super.pageQuery(criteria, pageRequest);
	}

	public void insertAfterService(AfterService afterService) {
		super.save(afterService);

	}

	public void updateAfterService(AfterService afterService) {
		super.update(afterService);
	}

}
