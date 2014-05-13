package edu.graduate.law.platform.application.web;

import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import edu.graduate.basic.io.PageResponse;
import edu.graduate.basic.io.extjs.ExtPageRequest;
import edu.graduate.basic.io.extjs.ExtPageResponse;
import edu.graduate.basic.io.extjs.ExtResponse;
import edu.graduate.law.platform.application.service.NewsService;
import edu.graduate.law.platform.domain.entity.News;

@Controller
@RequestMapping("controller/news")
public class NewsController {

	@Autowired
	private NewsService newsService = null;

	@RequestMapping(value = "/searchNews.do", method = RequestMethod.GET)
	@ResponseBody
	public ExtPageResponse<News> searchNews(News news,
			ExtPageRequest pageRequest) {
		PageResponse<News> page = newsService.searchNews(news, pageRequest);
		return new ExtPageResponse<News>(true, page);
	}

	@RequestMapping(value = "/saveNews.do", method = RequestMethod.POST)
	@ResponseBody
	public ExtResponse<Boolean> saveNews(@ModelAttribute News news) {
		news.setTime(new Date());
		newsService.saveNews(news);
		return new ExtResponse<Boolean>(true, true);
	}

	@RequestMapping(value = "/deleteNews.do", method = RequestMethod.POST)
	@ResponseBody
	public ExtResponse<Boolean> deleteNews(@RequestParam String[] ids) {
		newsService.deleteNews(ids);
		return new ExtResponse<Boolean>(true, true);
	}

}
