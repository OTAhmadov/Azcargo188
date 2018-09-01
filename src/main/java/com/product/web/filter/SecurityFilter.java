/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.product.web.filter;

import com.google.common.cache.Cache;
import java.io.IOException;
import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.springframework.web.filter.GenericFilterBean;

/**
 *
 * @author shasanov
 */
public class SecurityFilter extends GenericFilterBean {

    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
        HttpServletRequest httpServletRequest = (HttpServletRequest) request;
        
//        if(httpServletRequest.getMethod().equalsIgnoreCase("post")) {
//            HttpSession session = httpServletRequest.getSession(false);
//            Cache<String, Boolean> _csrfKeys = (Cache<String, Boolean>) session.getAttribute("_csrfKeys");
//            String csrfParam = request.getParameter("_csrf");
//            
//            if(csrfParam == null || _csrfKeys == null || _csrfKeys.getIfPresent(csrfParam) == null) {
//                throw new ServletException("Invalif _csrf!");
//            }
//            
//            _csrfKeys.invalidate(csrfParam);
//        }
        
        HttpServletResponse httpServletResponse = (HttpServletResponse) response;
        httpServletResponse.setHeader("X-Content-Type-Options", "nosniff");
        httpServletResponse.setHeader("X-Frame-Options", "DENY");
        httpServletResponse.setHeader("X-XSS-Protection", "1; mode=block");
        httpServletResponse.setHeader("Cache-Control", "no-cache, no-store, must-revalidate"); // HTTP 1.1
        httpServletResponse.setHeader("Pragma", "no-cache"); // HTTP 1.0
        httpServletResponse.setDateHeader("Expires", 0); // Proxies.
        httpServletResponse.setHeader("X-Frame-Options", "ALLOW");
        httpServletResponse.setHeader("X-Frame-Options", "SAMEORIGIN");
        
        chain.doFilter(new XSSRequestWrapper((HttpServletRequest) request), response);
    }
    
}
