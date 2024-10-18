package file;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.net.URLEncoder;

import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/download")
public class FileDownloadServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public FileDownloadServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 다운로드할 파일명을 준비
		String fileName = request.getParameter("fileName");
		// 파일명 유효성 검사
		if ( fileName == null || fileName.isEmpty() ) {
			response.getWriter().println("파일명이 지정되지 않았습니다.");
			return; // 메소드 종료
		}
		// 파일 경로
		String downloadDir = "C:\\fileupload";
		String downloadFilepath = downloadDir + File.separator + fileName;
		File file = new File(downloadFilepath);
		// 파일 존재 여부
		if ( !file.exists() ) {
			response.getWriter().println("파일이 존재하지 않습니다.");
			return;
		}
		// 응답 설정
		// * 응답 헤더
		// 1. 응답 컨텐츠 타입이 파일이다.
		// 2. 응답 컨텐츠를 브라우저에서 랜더링하는게 아닌 다운로드하도록 헤더 설정
		response.setContentType("application/octet-stream");
		fileName = URLEncoder.encode(fileName,"UTF-8");
		response.setHeader("Content-Disposition", "attachment; filename=\""+fileName+"\"");
		response.setContentLength((int)file.length());
		// 파일 다운로드
		try {
			FileInputStream fis = new FileInputStream(file);
			ServletOutputStream sos = response.getOutputStream();
			
			byte[] buffer = new byte[4096];
			int data = -1;
			while( (data = fis.read(buffer)) != -1 ) {
				sos.write(buffer, 0, data);
			}
			
			fis.close();
			sos.close();
			
		} catch (Exception e) {
			System.err.println("파일 다운로드 중 에러 발생!");
			e.printStackTrace();
		}
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
