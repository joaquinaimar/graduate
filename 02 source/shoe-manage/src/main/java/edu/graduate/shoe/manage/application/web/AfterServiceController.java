package edu.graduate.shoe.manage.application.web;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import edu.graduate.shoe.manage.application.service.AfterServiceService;
import edu.graduate.shoe.manage.basic.io.PageResponse;
import edu.graduate.shoe.manage.basic.io.extjs.ExtPageRequest;
import edu.graduate.shoe.manage.basic.io.extjs.ExtPageResponse;
import edu.graduate.shoe.manage.basic.io.extjs.ExtResponse;
import edu.graduate.shoe.manage.domain.entity.AfterService;
import edu.graduate.shoe.manage.domain.entity.AfterServiceView;

@Controller
@RequestMapping("controller/afterService")
public class AfterServiceController {

	@Autowired
	private AfterServiceService afterServiceService = null;

	@InitBinder
	public void initBinder(WebDataBinder binder) {
		DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
		dateFormat.setLenient(true);
		binder.registerCustomEditor(Date.class, new CustomDateEditor(
				dateFormat, true));
	}

	@RequestMapping(value = "/searchAfterService.do", method = RequestMethod.GET)
	@ResponseBody
	public ExtPageResponse<AfterServiceView> searchAfterService(
			AfterServiceView serviceView, Date fromDate, Date toDate,
			ExtPageRequest pageRequest) {
		PageResponse<AfterServiceView> page = afterServiceService
				.searchAfterService(serviceView, fromDate, toDate, pageRequest);
		return new ExtPageResponse<AfterServiceView>(true, page);
	}

	@RequestMapping(value = "/saveAfterService.do", method = RequestMethod.POST)
	@ResponseBody
	public ExtResponse<Object> saveAfterService(
			@ModelAttribute AfterService afterService) {
		afterService.setTime(new Date());
		if (null == afterService.getId() || "".equals(afterService.getId())) {
			afterServiceService.insertAfterService(afterService);
		} else {
			afterServiceService.updateAfterService(afterService);
		}
		return new ExtResponse<Object>(true, "保存成功");
	}

}
