package edu.graduate.shoe.manage.application.web;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.RedirectView;

import edu.graduate.shoe.manage.application.service.LoginService;
import edu.graduate.shoe.manage.domain.entity.User;

@Controller
@RequestMapping("controller/login")
public class LoginController {

	@Autowired
	private LoginService loginService = null;

	@RequestMapping(value = "/login.do", method = RequestMethod.POST)
	public ModelAndView login(HttpServletRequest request,
			@RequestParam String username, @RequestParam String password) {
		User user = loginService.login(username, password);
		if (null != user) {
			return new ModelAndView(new RedirectView(request.getContextPath()
					+ "/main"));
		} else {
			return new ModelAndView(new RedirectView(request.getContextPath()));
		}

	}
}
