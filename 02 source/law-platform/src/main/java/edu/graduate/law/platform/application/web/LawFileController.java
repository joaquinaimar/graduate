package edu.graduate.law.platform.application.web;

import java.io.IOException;
import java.io.OutputStream;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import edu.graduate.law.platform.application.service.LawFileService;
import edu.graduate.law.platform.basic.io.extjs.ExtResponse;
import edu.graduate.law.platform.domain.LawFileBean;

@Controller
@RequestMapping("controller/lawFile")
public class LawFileController {

	@Autowired
	private LawFileService lawFileService = null;

	@RequestMapping(value = "/searchLawFile.do", method = RequestMethod.GET)
	@ResponseBody
	public ExtResponse<List<LawFileBean>> searchLawFile(String fileName) {
		List<LawFileBean> lawFileList = lawFileService.searchLawFile(fileName);
		return new ExtResponse<List<LawFileBean>>(true, lawFileList);
	}

	@RequestMapping(value = "/downloadLawFile.do", method = RequestMethod.GET)
	@ResponseBody
	public void downloadLawFile(HttpServletRequest request,
			HttpServletResponse response, String fileName) {
		try {
			response.reset();
			response.setContentType("application/html;utf-8");
			response.setHeader("Content-Disposition", "attachment; filename="
					+ getFileName(request, fileName));

			OutputStream out = response.getOutputStream();
			out.write(lawFileService.getLawFile(fileName));
			out.flush();
			out.close();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

	public static String getFileName(HttpServletRequest request, String fileName)
			throws UnsupportedEncodingException {
		String userAgent = request.getHeader("User-Agent").toLowerCase();

		if (userAgent.indexOf("firefox") > 0) {
			fileName = new String(fileName.getBytes("UTF-8"), "ISO8859-1");
		} else {
			fileName = URLEncoder.encode(fileName, "UTF-8");
		}
		return fileName;
	}

}
