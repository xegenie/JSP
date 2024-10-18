package filter;

import java.io.IOException;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpFilter;

//@WebFilter("/TestFilter")
public class TestFilter extends HttpFilter implements Filter {
       
    public TestFilter() {
        super();
    }

    public void init(FilterConfig fConfig) throws ServletException {
    }

	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		System.out.println("web.xml 방식으로 필터 등록...");
		chain.doFilter(request, response);
	}

	public void destroy() {
	}

}
