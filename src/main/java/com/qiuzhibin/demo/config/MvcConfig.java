package com.qiuzhibin.demo.config;

import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;
import org.testng.annotations.ITestOrConfiguration;

@Configuration
public class MvcConfig implements WebMvcConfigurer {

    /*资源处理器*/
    public void addResourceHandlers(ResourceHandlerRegistry registry) {
//        registry.addResourceHandler("/img/**").addResourceLocations("/static/"+"/img/");
//        registry.addResourceHandler("/css/**").addResourceLocations("/static/"+"/css/");
//        registry.addResourceHandler("/img/**").addResourceLocations("/static/"+"/js/");
    }



}