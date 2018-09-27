/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.product.web.config;

import java.util.ArrayList;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
//import static springfox.documentation.builders.PathSelectors.regex;
import springfox.documentation.builders.PathSelectors;
import springfox.documentation.builders.RequestHandlerSelectors;
import springfox.documentation.service.ApiInfo;
import springfox.documentation.service.Contact;
import springfox.documentation.spi.DocumentationType;
import springfox.documentation.spring.web.plugins.Docket;
import springfox.documentation.swagger2.annotations.EnableSwagger2;

/**
 *
 * @author otahmadov
 */
@Configuration
@EnableSwagger2
public class SwaggerConfig {
    
//    @Bean
//        public static PropertySourcesPlaceholderConfigurer swaggerProperties() {
//          PropertySourcesPlaceholderConfigurer properties = new PropertySourcesPlaceholderConfigurer();
//          return properties;
//      }
          
    @Bean
    public Docket productApi(){
        return new Docket(DocumentationType.SWAGGER_2)
                            .select()
//                            .apis(RequestHandlerSelectors.basePackage("az.neuron.dev.rs.ems.controller"))
                            .apis(RequestHandlerSelectors.any())
                            .paths(PathSelectors.any())
//                            .paths(regex("/course.*"))
                            .build()
                            .pathMapping("/")
                            .apiInfo(metaData());
    }
    
    private ApiInfo metaData() {
        
        Contact contact = new Contact("Orkhan", "055-215-78-49", "orkhan.ahmedov123@gmail.com");
        ApiInfo apiInfo = new ApiInfo("Product Site API", 
                                      "Product Site for Yanar CO. MMC", 
                                      "1.0", 
                                      "Terms of service", 
                                      contact, "Apache license Version 2.0", "https//www.apache.org/licences", new ArrayList());
        return apiInfo;
    }
}
