package edu.graduate.law.platform.application.service;

import org.hibernate.Criteria;
import org.hibernate.criterion.Order;
import org.hibernate.criterion.Restrictions;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import edu.graduate.basic.database.BaseDao;
import edu.graduate.basic.io.PageResponse;
import edu.graduate.basic.io.extjs.ExtPageRequest;
import edu.graduate.law.platform.domain.entity.ReserveManage;

@Service
@Transactional
public class ReserveManageService extends BaseDao {

	@SuppressWarnings("unchecked")
	public PageResponse<ReserveManage> searchReserveManage(
			ReserveManage reserveManage, ExtPageRequest pageRequest) {
		Criteria criteria = super.createCriteria(ReserveManage.class);
		criteria.add(Restrictions.eq("userId", reserveManage.getUserId()));
		if (null != reserveManage.getLawyerName()
				&& !"".equals(reserveManage.getLawyerName()))
			criteria.add(Restrictions.like("lawyerName",
					"%" + reserveManage.getLawyerName() + "%"));
		criteria.addOrder(Order.desc("time"));
		return super.pageQuery(criteria, pageRequest);
	}

}
