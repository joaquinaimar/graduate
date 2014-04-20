package edu.graduate.law.platform.application.web;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import edu.graduate.law.platform.application.service.ReserveManageService;
import edu.graduate.law.platform.basic.io.PageResponse;
import edu.graduate.law.platform.basic.io.extjs.ExtPageRequest;
import edu.graduate.law.platform.basic.io.extjs.ExtPageResponse;
import edu.graduate.law.platform.domain.entity.ReserveManage;

@Controller
@RequestMapping("controller/reserveManage")
public class ReserveManageController {

	@Autowired
	private ReserveManageService reserveManageService = null;

	@RequestMapping(value = "/searchReserveManage.do", method = RequestMethod.GET)
	@ResponseBody
	public ExtPageResponse<ReserveManage> searchReserveManage(
			HttpSession session, ReserveManage reserveManage,
			ExtPageRequest pageRequest) {
		reserveManage.setUserId(session.getAttribute("loginId").toString());
		PageResponse<ReserveManage> page = reserveManageService
				.searchReserveManage(reserveManage, pageRequest);
		return new ExtPageResponse<ReserveManage>(true, page);
	}
}
