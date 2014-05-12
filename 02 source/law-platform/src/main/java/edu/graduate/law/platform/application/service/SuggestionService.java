package edu.graduate.law.platform.application.service;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import edu.graduate.basic.database.BaseDao;
import edu.graduate.law.platform.domain.entity.Suggestion;

@Service
@Transactional
public class SuggestionService extends BaseDao {

	public void saveSuggestion(Suggestion suggestion) {
		super.save(suggestion);
	}

}
