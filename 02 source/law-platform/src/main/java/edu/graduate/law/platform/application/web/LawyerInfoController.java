package edu.graduate.law.platform.application.web;

import java.util.Date;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import edu.graduate.law.platform.application.service.LawyerInfoService;
import edu.graduate.law.platform.basic.io.PageResponse;
import edu.graduate.law.platform.basic.io.extjs.ExtPageRequest;
import edu.graduate.law.platform.basic.io.extjs.ExtPageResponse;
import edu.graduate.law.platform.basic.io.extjs.ExtResponse;
import edu.graduate.law.platform.domain.entity.Lawyer;
import edu.graduate.law.platform.domain.entity.LawyerDetail;
import edu.graduate.law.platform.domain.entity.Reserve;

@Controller
@RequestMapping("controller/lawyerInfo")
public class LawyerInfoController {

	@Autowired
	private LawyerInfoService lawyerInfoService = null;

	@RequestMapping(value = "/searchLawyer.do", method = RequestMethod.GET)
	@ResponseBody
	public ExtPageResponse<Lawyer> searchLawyer(Lawyer lawyer,
			ExtPageRequest pageRequest) {
		PageResponse<Lawyer> page = lawyerInfoService.searchLawyer(lawyer,
				pageRequest);
		return new ExtPageResponse<Lawyer>(true, page);
	}

	@RequestMapping(value = "/searchLawyerDetail.do", method = RequestMethod.GET)
	@ResponseBody
	public ExtPageResponse<LawyerDetail> searchLawyerDetail(
			LawyerDetail lawyerDetail, ExtPageRequest pageRequest) {
		PageResponse<LawyerDetail> page = lawyerInfoService.searchLawyerDetail(
				lawyerDetail, pageRequest);
		return new ExtPageResponse<LawyerDetail>(true, page);
	}

	@RequestMapping(value = "/saveReserve.do", method = RequestMethod.POST)
	@ResponseBody
	public ExtResponse<Boolean> saveReserve(HttpSession session,
			@ModelAttribute Reserve reserve) {
		reserve.setLawyerId(reserve.getId());
		reserve.setId(null);
		reserve.setUserId(session.getAttribute("loginId").toString());
		reserve.setTime(new Date());
		lawyerInfoService.saveReserve(reserve);
		return new ExtResponse<Boolean>(true, true);
	}

}
