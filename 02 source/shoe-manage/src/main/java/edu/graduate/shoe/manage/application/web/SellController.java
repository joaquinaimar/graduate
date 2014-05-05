package edu.graduate.shoe.manage.application.web;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import edu.graduate.basic.io.PageResponse;
import edu.graduate.basic.io.extjs.ExtPageRequest;
import edu.graduate.basic.io.extjs.ExtPageResponse;
import edu.graduate.basic.io.extjs.ExtResponse;
import edu.graduate.shoe.manage.application.service.SellService;
import edu.graduate.shoe.manage.domain.GatherSell;
import edu.graduate.shoe.manage.domain.entity.Customer;
import edu.graduate.shoe.manage.domain.entity.Sell;

@Controller
@RequestMapping("controller/sell")
public class SellController {

	@Autowired
	private SellService sellService = null;

	@InitBinder
	public void initBinder(WebDataBinder binder) {
		DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
		dateFormat.setLenient(true);
		binder.registerCustomEditor(Date.class, new CustomDateEditor(
				dateFormat, true));
	}

	@RequestMapping(value = "/searchSell.do", method = RequestMethod.GET)
	@ResponseBody
	public ExtPageResponse<Sell> searchSell(Sell sell, Date fromDate,
			Date toDate, ExtPageRequest pageRequest) {
		PageResponse<Sell> page = sellService.searchSell(sell, fromDate,
				toDate, pageRequest);
		return new ExtPageResponse<Sell>(true, page);
	}

	@RequestMapping(value = "/gatherInFo.do", method = RequestMethod.POST)
	@ResponseBody
	public ExtResponse<GatherSell> gatherInFo() {
		GatherSell gatherSell = new GatherSell();
		gatherSell.setInQuantity(sellService.gatherInFo(0));
		gatherSell.setOutQuantity(sellService.gatherInFo(1));
		return new ExtResponse<GatherSell>(true, gatherSell);
	}

	@RequestMapping(value = "/saveSell.do", method = RequestMethod.POST)
	@ResponseBody
	public ExtResponse<Object> saveSell(@ModelAttribute Sell sell) {
		sell.setTime(new Date());
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
