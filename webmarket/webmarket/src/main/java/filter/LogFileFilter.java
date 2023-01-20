package filter;

import java.io.FileWriter;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.logging.Filter;
import java.util.logging.LogRecord;

import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.*;

public class LogFileFilter implements Filter {

	PrintWriter writer;

	public void init(FilterConfig config) throws ServletException {
		String filename = config.getInitParameter("filename");

		if (filename == null)
			throw new ServletException("�α� ������ �̸��� ã�� �� �����ϴ�.");

		try {
			writer = new PrintWriter(new FileWriter(filename, true), true);
		} catch (IOException e) {
			throw new ServletException("�α� ������ �� �� �����ϴ�.");
		}
	}

	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws java.io.IOException, ServletException {
		writer.println(" ������ Ŭ���̾�Ʈ IP : " + request.getRemoteAddr());
		long start = System.currentTimeMillis();
		writer.println(" ������ URL ��� : " + getURLPath(request));
		writer.println(" ��û ó�� ���� �ð� :" + getCurrentTime());

		chain.doFilter(request, response);

		long end = System.currentTimeMillis();
		writer.println(" ��û ó�� ���� �ð� : " + getCurrentTime());
		writer.println(" ��û ó�� �ҿ� �ð� : " + (end - start) + "ms ");
		writer.println("=======================================================");
	}

	public void destroy() {
		writer.close();
	}

	private String getURLPath(ServletRequest request) {
		HttpServletRequest req;
		String currentPath = "";
		String queryString = "";
		if (request instanceof HttpServletRequest) {
			req = (HttpServletRequest) request;
			currentPath = req.getRequestURI();
			queryString = req.getQueryString();
			queryString = queryString == null ? "" : "?" + queryString;
		}
		return currentPath + queryString;
	}

	private String getCurrentTime() {
		DateFormat formatter = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
		Calendar calendar = Calendar.getInstance();
		calendar.setTimeInMillis(System.currentTimeMillis());
		return formatter.format(calendar.getTime());
	}

	@Override
	public boolean isLoggable(LogRecord record) {
		// TODO Auto-generated method stub
		return false;
	}
}
