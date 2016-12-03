package com.shopping.Filter;

import java.io.IOException;
import java.net.URLDecoder;
import java.sql.SQLException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.shopping.models.User;
import com.shopping.service.UserService;
import com.shopping.utils.CookieUtils;

public class AutoLoginFilter implements Filter {

	public void destroy() {

	}

	public void doFilter(ServletRequest request, ServletResponse response,
			FilterChain chain) throws IOException, ServletException {
	 
		// 1、判断当前用户是否已经登陆
		HttpServletRequest httpServletRequest = (HttpServletRequest) request;
		HttpServletResponse httpServletResponse = (HttpServletResponse) response;

		if (httpServletRequest.getSession().getAttribute("user") == null) {
            // 未登录
            // 2、判断对应cookie 是否存在 ---- 将cookie 查询写为工具类
            Cookie cookie1 = CookieUtils.findCookie(httpServletRequest
                    .getCookies(), "USERACCOUNT");
            Cookie cookie2 = CookieUtils.findCookie(httpServletRequest
                    .getCookies(), "USERPWD");
            if (cookie1 != null && cookie2 != null) {
                // 找到了自动登陆cookie
                // 如果用户名中文，需要解密，详情见下文
                String userAccount = URLDecoder.decode(cookie1.getValue(), "utf-8");
                String password = URLDecoder.decode(cookie2.getValue(), "utf-8");

                User u = null;
            	UserService us = new UserService();

        		try {
        			u = us.loginByAccount(userAccount, password);
        		} catch (SQLException e) {
        			e.printStackTrace();
        		}
        		if(u==null){
        			try {
        				u = us.loginByPhone(userAccount, password);
        			} catch (SQLException e) {
        				e.printStackTrace();
        			}
        		}
        		if(u!=null){
        			HttpSession session=httpServletRequest.getSession();
        			session.setAttribute("USER", u);
        			System.out.println("AutoLoginFilter");
        		}
        		chain.doFilter(request, response);

            } else {
                // 没有自动登陆信息
                chain.doFilter(request, response);
            }

        } else {
            // 已经登陆，不需要自动登陆
            chain.doFilter(request, response);
        }
	}

	public void init(FilterConfig filterConfig) throws ServletException {

	}

}
