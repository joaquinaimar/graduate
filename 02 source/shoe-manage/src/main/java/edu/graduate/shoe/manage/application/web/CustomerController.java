package edu.graduate.shoe.manage.application.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import edu.graduate.shoe.manage.application.service.CustomerService;
import edu.graduate.shoe.manage.basic.io.PageResponse;
import edu.graduate.shoe.manage.basic.io.extjs.ExtPageRequest;
import edu.graduate.shoe.manage.basic.io.extjs.ExtPageResponse;
import edu.graduate.shoe.manage.basic.io.extjs.ExtResponse;
import edu.graduate.shoe.manage.domain.entity.Customer;

@Controller
@RequestMapping("controller/customer")
public class CustomerController {

	@Autowired
	private CustomerService customerService = null;

	@RequestMapping(value = "/searchCustomer.do", method = RequestMethod.GET)
	@ResponseBody
	public ExtPageResponse<Customer> searchCustomer(Customer customer,
			ExtPageRequest pageRequest) {
		PageResponse<Customer> page = customerService.searchCustomer(customer,
				pageRequest);
		return new ExtPageResponse<Customer>(true, page);
	}

	@RequestMapping(value = "/saveCustomer.do", method = RequestMethod.POST)
	@ResponseBody
	public ExtResponse<Object> saveCustomer(@ModelAttribute Customer customer) {
		if (null == customer.getId() || "".equals(customer.getId())) {
			customerService.insertCustomer(customer);
		} else {
			customerService.updateCustomer(customer);
		}
		return new ExtResponse<Object>(true, "保存成功");
	}

	@RequestMapping(value = "/deleteCustomer.do", method = RequestMethod.POST)
	@ResponseBody
	public ExtResponse<Object> deleteCustomer(@RequestParam String[] ids) {
		int result = customerService.deleteCustomer(ids);
		String message = "删除" + result + "条";
		return new ExtResponse<Object>(true, message);
	}

}
