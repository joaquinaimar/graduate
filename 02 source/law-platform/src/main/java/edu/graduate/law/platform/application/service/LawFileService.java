package edu.graduate.law.platform.application.service;

import java.io.BufferedInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FilenameFilter;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.List;
import java.util.Properties;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import edu.graduate.law.platform.domain.LawFileBean;

@Service
@Transactional
public class LawFileService {

	private String getLawPath() {
		Properties prop = new Properties();
		try {
			prop.load(this.getClass().getClassLoader()
					.getResourceAsStream("config.properties"));
			return prop.getProperty("lawPath", "");
		} catch (IOException e) {
		}
		return "";
	}

	public List<LawFileBean> searchLawFile(final String fileName) {
		List<LawFileBean> fileNameList = new ArrayList<LawFileBean>();
		File path = new File(getLawPath());
		if (!path.exists())
			return fileNameList;
		String[] filePaths = path.list(new FilenameFilter() {

			@Override
			public boolean accept(File dir, String name) {

				if (null == fileName || "".equals(fileName)
						|| name.contains(fileName))
					return true;
				return false;
			}

		});
		for (String filePath : filePaths) {
			LawFileBean bean = new LawFileBean();
			bean.setFileName(filePath);
			fileNameList.add(bean);
		}
		return fileNameList;
	}

	public byte[] getLawFile(String fileName) {
		try {
			InputStream fis = new BufferedInputStream(new FileInputStream(
					getLawPath() + fileName));

			byte[] buffer = new byte[fis.available()];
			fis.read(buffer);
			fis.close();
			return buffer;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}

}
