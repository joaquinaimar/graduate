package edu.graduate.law.platform.application.web;

import java.util.Date;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import edu.graduate.basic.io.extjs.ExtResponse;
import edu.graduate.law.platform.application.service.SuggestionService;
import edu.graduate.law.platform.domain.entity.Suggestion;

@Controller
@RequestMapping("controller/suggestion")
public class SuggestionController {

	@Autowired
	private SuggestionService suggestionService = null;

	@RequestMapping(value = "/saveSuggestion.do", method = RequestMethod.POST)
	@ResponseBody
	public ExtResponse<Boolean> saveSuggestion(HttpSession session,
			@ModelAttribute Suggestion suggestion) {
		suggestion.setUsername(session.getAttribute("loginName").toString());
		suggestion.setTime(new Date());
		suggestionService.saveSuggestion(suggestion);
		return new ExtResponse<Boolean>(true, true);
	}
}
