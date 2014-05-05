package edu.graduate.shoe.manage.application.web;

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
import edu.graduate.shoe.manage.application.service.ShoeService;
import edu.graduate.shoe.manage.domain.entity.Shoe;

@Controller
@RequestMapping("controller/shoe")
public class ShoeController {

	@Autowired
	private ShoeService shoeService = null;

	@RequestMapping(value = "/searchShoe.do", method = RequestMethod.GET)
	@ResponseBody
	public ExtPageResponse<Shoe> searchShoe(Shoe shoe,
			ExtPageRequest pageRequest) {
		PageResponse<Shoe> page = shoeService.searchShoe(shoe, pageRequest);
		return new ExtPageResponse<Shoe>(true, page);
	}

	@RequestMapping(value = "/saveShoe.do", method = RequestMethod.POST)
	@ResponseBody
	public ExtResponse<Object> saveShoe(@ModelAttribute Shoe shoe) {
		if (null == shoe.getId() || "".equals(shoe.getId())) {
			shoeService.insertShoe(shoe);
		} else {
			shoeService.updateShoe(shoe);
		}
		return new ExtResponse<Object>(true, "保存成功");
	}

	@RequestMapping(value = "/deleteShoe.do", method = RequestMethod.POST)
	@ResponseBody
	public ExtResponse<Object> deleteShoe(@RequestParam String[] ids) {
		int result = shoeService.deleteShoe(ids);
		String message = "删除" + result + "条";
		return new ExtResponse<Object>(true, message);
	}
}
