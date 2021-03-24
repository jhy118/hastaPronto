package service.notice;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;

import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;
import org.springframework.util.FileCopyUtils;

@Service
@Component
public class FileDownService {

	public void execute(String ofileName, String sfileName, HttpServletRequest req, HttpServletResponse resp) {
		String path = "WEB-INF/view/notice/upload";
		String realPath = req.getServletContext().getRealPath(path);
		String originalFileName = null;
		try {
			originalFileName = URLEncoder.encode(ofileName, "UTF-8");
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}
		resp.setContentType("application/octet-stream; charset=UTF-8");
		resp.setHeader("Content-Disposition", "attachment; filename=" + originalFileName + ";");
		resp.setHeader("Content-Transfer-Encoding", "binary");
		File file = new File(realPath + "/" + sfileName);
		ServletOutputStream out = null;
		FileInputStream fis = null;
		try {
			fis = new FileInputStream(file);
			out = resp.getOutputStream();
			FileCopyUtils.copy(fis, out);
			out.flush();
			out.close();
		} catch (IOException e) {
			e.printStackTrace();
		} finally {
			if (fis != null) {
				try {
					fis.close();
				} catch (IOException e) {
					e.printStackTrace();
				}
			}
		}
	}
}
