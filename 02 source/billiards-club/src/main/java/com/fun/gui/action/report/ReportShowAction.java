package com.fun.gui.action.report;

import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.Map;

import net.sf.jasperreports.engine.JRException;
import net.sf.jasperreports.engine.JasperCompileManager;
import net.sf.jasperreports.engine.JasperExportManager;
import net.sf.jasperreports.engine.JasperFillManager;
import net.sf.jasperreports.engine.JasperReport;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.fun.gui.action.base.BaseAction;

@Controller("reportShowAction")
@Scope("prototype")
public class ReportShowAction extends BaseAction {

	private static final long serialVersionUID = 1L;

	private String startDate;

	private String endDate;

	private String downloadFileName;

	private String downloadFilePathAndName;

	private InputStream inputStream;

	@Override
	public String execute() throws Exception {
		return SUCCESS;
	}

	public String getDownloadFileName() {
		return downloadFileName;
	}

	public InputStream getInputStream() {
		inputStream = request.getServletContext().getResourceAsStream(
				downloadFilePathAndName + ".pdf");
		return inputStream;
	}

	public String genSettleReport() throws ClassNotFoundException, SQLException {
		String jrxmlPath = request.getServletContext().getRealPath(
				"/report/settlement.jrxml");
		downloadFilePathAndName = "/out/settlement/" + startDate
				+ "_settlement";
		downloadFileName = startDate + "_settlement.pdf";
		String destPath = request.getServletContext().getRealPath(
				downloadFilePathAndName);
		Connection conn = getConnection();
		Map<String, Object> parameters = new HashMap<String, Object>();
		parameters.put("startDate", startDate);
		parameters.put("endDate", endDate);
		JasperReport report;
		try {
			report = JasperCompileManager.compileReport(jrxmlPath);
			JasperFillManager.fillReportToFile(report, destPath, parameters,
					conn);
			JasperExportManager.exportReportToPdfFile(destPath, destPath
					+ ".pdf");
		} catch (JRException e) {
			conn.close();
			e.printStackTrace();
		}
		conn.close();
		return "output";
	}

	public String genMarketReport() throws ClassNotFoundException, SQLException {
		String jrxmlPath = request.getServletContext().getRealPath(
				"/report/market.jrxml");
		downloadFilePathAndName = "/out/market/" + startDate + "_market";
		downloadFileName = startDate + "_market.pdf";
		String destPath = request.getServletContext().getRealPath(
				downloadFilePathAndName);
		Connection conn = getConnection();
		Map<String, Object> parameters = new HashMap<String, Object>();
		parameters.put("startDate", startDate);
		parameters.put("endDate", endDate);
		JasperReport report;
		try {
			report = JasperCompileManager.compileReport(jrxmlPath);
			JasperFillManager.fillReportToFile(report, destPath, parameters,
					conn);
			JasperExportManager.exportReportToPdfFile(destPath, destPath
					+ ".pdf");
		} catch (JRException e) {
			conn.close();
			e.printStackTrace();
		}
		conn.close();
		return "output";
	}

	private Connection getConnection() throws ClassNotFoundException,
			SQLException {
		Class.forName("com.mysql.jdbc.Driver");
		Connection connection = DriverManager
				.getConnection(
						"jdbc:mysql://localhost:3306/graduate-club?characterEncoding=utf8",
						"root", "hollysys");
		return connection;
	}

	public String getStartDate() {
		return startDate;
	}

	public void setStartDate(String startDate) {
		this.startDate = startDate;
	}

	public String getEndDate() {
		return endDate;
	}

	public void setEndDate(String endDate) {
		this.endDate = endDate;
	}

}
