/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.product.web.util;

import java.util.*;
import javax.servlet.http.*;
import org.springframework.web.servlet.support.*;

/**
 *
 * @author Hasanov
 * @date Jan 31, 2017
 *
 */
public class WebUtils {
    public static Locale getLocale(HttpServletRequest request) {
        return RequestContextUtils.getLocale(request);
    }
    
    public static String getIpAddress(HttpServletRequest request) {
        String ipAddress = request.getHeader("X-Real-Ip");  // Nginx reverse proxy header @Samir
        
        if(ipAddress == null) {
            ipAddress = request.getHeader("X-FORWARDED-FOR");  
            
            if (ipAddress == null) {  
               ipAddress = request.getRemoteAddr();  
            }
        }
        
        return ipAddress;
    }
    
    public static void removeSessionAttributeRegex(HttpSession session, String pattern) {
        String parameter;
        Enumeration<String> parameters = session.getAttributeNames();
        
        while(parameters.hasMoreElements()) {
            parameter = parameters.nextElement();
            
            if(parameter.matches(pattern)) {
                session.removeAttribute(parameter);
            }
        }
    }
}
