package edu.graduate.shoe.manage.application.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
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

	@RequestMapping(value = "/searchAfterService.do", method = RequestMethod.GET)
	@ResponseBody
	public ExtPageResponse<AfterServiceView> searchAfterService(
			AfterServiceView serviceView, ExtPageRequest pageRequest) {
		PageResponse<AfterServiceView> page = afterServiceService.searchAfterService(
				serviceView, pageRequest);
		return new ExtPageResponse<AfterServiceView>(true, page);
	}

	@RequestMapping(value = "/saveAfterService.do", method = RequestMethod.POST)
	@ResponseBody
	public ExtResponse<Object> saveAfterService(
			@ModelAttribute AfterService afterService) {
		if (null == afterService.getId() || "".equals(afterService.getId())) {
			afterServiceService.insertAfterService(afterService);
		} else {
			afterServiceService.updateAfterService(afterService);
		}
		return new ExtResponse<Object>(true, "保存成功");
	}

}
