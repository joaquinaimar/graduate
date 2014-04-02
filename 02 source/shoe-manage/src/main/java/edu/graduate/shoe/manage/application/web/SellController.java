package edu.graduate.shoe.manage.application.web;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import edu.graduate.shoe.manage.application.service.SellService;
import edu.graduate.shoe.manage.basic.io.PageResponse;
import edu.graduate.shoe.manage.basic.io.extjs.ExtPageRequest;
import edu.graduate.shoe.manage.basic.io.extjs.ExtPageResponse;
import edu.graduate.shoe.manage.basic.io.extjs.ExtResponse;
import edu.graduate.shoe.manage.domain.entity.Customer;
import edu.graduate.shoe.manage.domain.entity.Sell;

@Controller
@RequestMapping("controller/sell")
public class SellController {

	@Autowired
	private SellService sellService = null;

	@RequestMapping(value = "/searchSell.do", method = RequestMethod.GET)
	@ResponseBody
	public ExtPageResponse<Sell> searchSell(Sell sell,
			ExtPageRequest pageRequest) {
		PageResponse<Sell> page = sellService.searchSell(sell, pageRequest);
		return new ExtPageResponse<Sell>(true, page);
	}

	@RequestMapping(value = "/saveSell.do", method = RequestMethod.POST)
	@ResponseBody
	public ExtResponse<Object> saveSell(@ModelAttribute Sell sell) {
		if (null == sell.getId() || "".equals(sell.getId())) {
			sellService.insertSell(sell);
		} else {
			sellService.updateSell(sell);
		}
		return new ExtResponse<Object>(true, "保存成功");
	}

	@RequestMapping(value = "/deleteSell.do", method = RequestMethod.POST)
	@ResponseBody
	public ExtResponse<Object> deleteSell(@RequestParam String[] ids) {
		int result = sellService.deleteSell(ids);
		String message = "删除" + result + "条";
		return new ExtResponse<Object>(true, message);
	}

	@RequestMapping(value = "/getCustomer.do", method = RequestMethod.GET)
	@ResponseBody
	public ExtResponse<List<Customer>> getCustomer() {
		List<Customer> customerList = sellService.getCustomer();
		return new ExtResponse<List<Customer>>(true, customerList);
	}

}
