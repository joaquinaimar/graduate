package edu.graduate.law.platform.application.service;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.criterion.Order;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import edu.graduate.basic.database.BaseDao;
import edu.graduate.basic.io.PageResponse;
import edu.graduate.basic.io.extjs.ExtPageRequest;
import edu.graduate.law.platform.domain.entity.News;

@Service
@Transactional
public class NewsService extends BaseDao {

	@SuppressWarnings("unchecked")
	public PageResponse<News> searchNews(News news, ExtPageRequest pageRequest) {
		Criteria criteria = super.createCriteria(News.class);
		criteria.addOrder(Order.desc("time"));
		return super.pageQuery(criteria, pageRequest);
	}

	public void saveNews(News news) {
		if (null == news.getId() || "".equals(news.getId()))
			super.save(news);
		else
			super.update(news);
	}

	public int deleteNews(String[] ids) {
		Query query = super.createQuery("DELETE FROM News WHERE id IN :ids");
		query.setParameterList("ids", ids);
		return query.executeUpdate();
	}

}
