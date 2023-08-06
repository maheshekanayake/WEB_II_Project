package com.jiat.webapp.config;

import org.glassfish.jersey.server.ResourceConfig;
import org.glassfish.jersey.server.mvc.jsp.JspMvcFeature;

public class AppConfig extends ResourceConfig {
   public AppConfig(){
       packages("com.jiat.webapp.controllers");
       packages("com.jiat.webapp.middleware");
       register(JspMvcFeature.class);
       property(JspMvcFeature.TEMPLATE_BASE_PATH,"/WEB-INF/views");
       System.out.println("App Config/-----------------------------------------------");
    }
}
