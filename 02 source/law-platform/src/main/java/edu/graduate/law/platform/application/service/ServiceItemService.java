package edu.graduate.law.platform.application.service;

import org.hibernate.Criteria;
import org.hibernate.criterion.Restrictions;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import edu.graduate.basic.database.BaseDao;
import edu.graduate.basic.io.PageResponse;
import edu.graduate.basic.io.extjs.ExtPageRequest;
import edu.graduate.law.platform.domain.entity.ServiceItem;

@Service
@Transactional
public class ServiceItemService extends BaseDao {

	@SuppressWarnings("unchecked")
	public PageResponse<ServiceItem> searchServiceItem(ServiceItem serviceItem,
			ExtPageRequest pageRequest) {
		Criteria criteria = super.createCriteria(ServiceItem.class);
		if (null != serviceItem.getTitle()
				&& !"".equals(serviceItem.getTitle()))
			criteria.add(Restrictions.like("title",
					"%" + serviceItem.getTitle() + "%"));
		return super.pageQuery(criteria, pageRequest);
	}

}
