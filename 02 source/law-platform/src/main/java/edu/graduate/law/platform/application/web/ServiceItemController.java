package edu.graduate.law.platform.application.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import edu.graduate.basic.io.PageResponse;
import edu.graduate.basic.io.extjs.ExtPageRequest;
import edu.graduate.basic.io.extjs.ExtPageResponse;
import edu.graduate.law.platform.application.service.ServiceItemService;
import edu.graduate.law.platform.domain.entity.ServiceItem;

@Controller
@RequestMapping("controller/serviceItem")
public class ServiceItemController {
	@Autowired
	private ServiceItemService serviceItemService = null;

	@RequestMapping(value = "/searchServiceItem.do", method = RequestMethod.GET)
	@ResponseBody
	public ExtPageResponse<ServiceItem> searchServiceItem(
			ServiceItem serviceItem, ExtPageRequest pageRequest) {
		PageResponse<ServiceItem> page = serviceItemService.searchServiceItem(
				serviceItem, pageRequest);
		return new ExtPageResponse<ServiceItem>(true, page);
	}
}
