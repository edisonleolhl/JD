package com.shopping.Filter;

import java.io.IOException;
import java.util.Calendar;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletResponse;

public class ImageExpiresFilter implements Filter {

    public void destroy() {
    }

    public void doFilter(ServletRequest request, ServletResponse response,
            FilterChain chain) throws IOException, ServletException {
        // 设置图片过期时间 ，设置Expires头信息
        HttpServletResponse httpServletResponse = (HttpServletResponse) response;

        // 过期时间 = 当前时间 + 还有多久过期                
        Calendar calendar = Calendar.getInstance();
        calendar.set(Calendar.MONTH, calendar.get(Calendar.MONTH) + 1);

        httpServletResponse
                .setDateHeader("Expires", calendar.getTimeInMillis()); // 过期时间一个月

        chain.doFilter(request, httpServletResponse);
    }

    public void init(FilterConfig filterConfig) throws ServletException {
    }

}
