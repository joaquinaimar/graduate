package edu.graduate.law.platform.application.web;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import edu.graduate.law.platform.application.service.ModifyUserInfoService;
import edu.graduate.law.platform.basic.io.extjs.ExtResponse;
import edu.graduate.law.platform.domain.entity.User;

@Controller
@RequestMapping("controller/modifyUserInfo")
public class ModifyUserInfoController {

	@Autowired
	private ModifyUserInfoService modifyUserInfoService = null;

	@RequestMapping(value = "/getUser.do", method = RequestMethod.GET)
	@ResponseBody
	public ExtResponse<User> getUser(HttpSession session) {
		User user = modifyUserInfoService.getUser(session.getAttribute(
				"loginId").toString());
		return new ExtResponse<User>(true, user);
	}

	@RequestMapping(value = "/saveUser.do", method = RequestMethod.POST)
	@ResponseBody
	public ExtResponse<Boolean> saveUser(@ModelAttribute User user) {
		modifyUserInfoService.saveUser(user);
		return new ExtResponse<Boolean>(true, true);
	}

}
