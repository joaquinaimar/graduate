package edu.graduate.law.platform.application.service;

import org.hibernate.Criteria;
import org.hibernate.criterion.Order;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import edu.graduate.basic.database.BaseDao;
import edu.graduate.basic.io.PageResponse;
import edu.graduate.basic.io.extjs.ExtPageRequest;
import edu.graduate.law.platform.domain.entity.Suggestion;

@Service
@Transactional
public class SuggestionService extends BaseDao {

	public void saveSuggestion(Suggestion suggestion) {
		super.save(suggestion);
	}

	@SuppressWarnings("unchecked")
	public PageResponse<Suggestion> searchSuggestion(Suggestion suggestion,
			ExtPageRequest pageRequest) {
		Criteria criteria = super.createCriteria(Suggestion.class);
		criteria.addOrder(Order.desc("time"));
		return super.pageQuery(criteria, pageRequest);
	}

}
