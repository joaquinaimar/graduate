package edu.graduate.shoe.manage.application.service;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.criterion.Restrictions;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import edu.graduate.basic.database.BaseDao;
import edu.graduate.basic.io.PageResponse;
import edu.graduate.basic.io.extjs.ExtPageRequest;
import edu.graduate.shoe.manage.domain.entity.Shoe;

@Service
@Transactional
public class ShoeService extends BaseDao {

	@SuppressWarnings("unchecked")
	public PageResponse<Shoe> searchShoe(Shoe shoe, ExtPageRequest pageRequest) {
		Criteria criteria = super.createCriteria(Shoe.class);
		if (null != shoe.getBrand() && !"".equals(shoe.getBrand()))
			criteria.add(Restrictions.like("brand", "%" + shoe.getBrand() + "%"));
		if (null != shoe.getModel() && !"".equals(shoe.getModel()))
			criteria.add(Restrictions.like("model", "%" + shoe.getModel() + "%"));

		return super.pageQuery(criteria, pageRequest);
	}

	public void insertShoe(Shoe shoe) {
		super.save(shoe);
	}

	public void updateShoe(Shoe shoe) {
		super.update(shoe);
	}

	public int deleteShoe(String[] ids) {
		Query query = super.createQuery("DELETE FROM Shoe WHERE id IN :ids");
		query.setParameterList("ids", ids);
		return query.executeUpdate();
	}

}
