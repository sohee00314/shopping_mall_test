package com.home.sopping_mall.config;

import org.springframework.beans.factory.annotation.Configurable;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.view.InternalResourceViewResolver;

/**
 * user가 사용할 설정 파일
 * */
@ComponentScan("com.home.sopping_mall.controller.admin")//Component 찾기
@Configurable
@EnableWebMvc//Repository를 찾아서 등록하는 기능수행
public class AdminWebConfig {
	/**
	 * 클라이언트에게 뵤여줄 view의 위치를 찾는 기능수행
	 * 반환받은 view의 명칭에 접두사와 접미사를 붙어서 실제 경로로 만들어줌
	 * */
	@Bean
	public InternalResourceViewResolver resolver() {
		InternalResourceViewResolver  resolver = new InternalResourceViewResolver();
		//접두사(폴더 위치) 설정
		resolver.setPrefix("/WEB-INF/view/");
		//접미사(확장자) 설정
		resolver.setSuffix(".jsp");
		return resolver;
	}
}