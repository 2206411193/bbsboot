package com.qiuzhibin.demo.filter;

import com.qiuzhibin.demo.model.User;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import javax.servlet.*;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
@WebFilter(urlPatterns = "/*", filterName = "LoginFilter")
public class LoginFilter implements Filter {
  private final Logger log = LoggerFactory.getLogger(LoginFilter.class);
  public void destroy() {
    // TODO Auto-generated method stub


  }

  public void doFilter(ServletRequest arg0, ServletResponse arg1, FilterChain filterChain)
      throws IOException, ServletException {
    HttpServletRequest request = (HttpServletRequest)arg0;
    HttpServletResponse response = (HttpServletResponse)arg1;
    String requestUri = request.getRequestURI();
    String contextPath = request.getContextPath();
    String url = requestUri.substring(contextPath.length());
    if ("/marvel.do".equals(url)||"/moreActor.do".equals(url)||"/Movie.do".equals(url)||"/showMain.do".equals(url)||"/user/login.do".equals(url)||"/showRegister.do".equals(url)) {
      filterChain.doFilter(request, response);
      return;
    } else {
      User user  = (User) request.getSession().getAttribute("user");
      if (user == null) {
        log.info("被拦截：跳转到showMain页面！");
        request.getRequestDispatcher("/showMain.do").forward(request, response);
      } else
        filterChain.doFilter(request, response);
    }


  }

  public void init(FilterConfig arg0) throws ServletException {
    // TODO Auto-generated method stub

  }

}
