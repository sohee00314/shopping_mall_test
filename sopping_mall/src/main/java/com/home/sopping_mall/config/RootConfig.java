package com.home.sopping_mall.config;

import javax.naming.NamingException;
import javax.sql.DataSource;

import org.apache.ibatis.session.SqlSessionFactory;
import org.mybatis.spring.SqlSessionFactoryBean;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Configurable;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.core.io.ClassPathResource;
import org.springframework.jdbc.datasource.DataSourceTransactionManager;
import org.springframework.jndi.JndiTemplate;
import org.springframework.transaction.annotation.EnableTransactionManagement;

/**
 * shop 과 admin 모두 쓰는 설정파일
 * */
@Configurable
@EnableTransactionManagement
@ComponentScan
public class RootConfig {
	/**
	 * 서버에 설정한 데이터베이스 불러오기
	 * 설정 이름 :"/jndi/mysql"
	 * */
	@Bean
	public DataSource dataSource() throws NamingException{
		JndiTemplate jndi = new JndiTemplate();
		return jndi.lookup("java:comp/env/jndi/mysql",DataSource.class);
	}
//-----Mybatis 설정-----------------------------------------------------------
	/**
	 * DataSourceTransactionManager : Sping의 트래잭션 매니저
	 * 사용 이유
	 * -insert 후 에러가 발생 시 롤백 기능
	 * - 여러 쿼리문이 성공하거나 전부 실패할 때
	 * SqlSessionFactory : Mybatis의 파라미터를 받는 객체
	 * -DB연결, 쿼리문 실행 할때 필요
	 * */
	public DataSourceTransactionManager sourceTransactionManager(SqlSessionFactory sqlSessionFactory) throws Exception{
		//getConfiguration() : SqlSessionFactory의 내부객체를 가져옴
		//getEnvironment() : 환경설정 객체(Environment)를 가져옴 => DB의 종류 및 트렌젝션의 설정 
		//getDataSource() : DB 연결 정보 가져옴
		return new DataSourceTransactionManager(sqlSessionFactory.getConfiguration().getEnvironment().getDataSource());
	}
	/**
	 * Mybatis 사용을 위한 Bean 설정
	 * */
	@Bean
	public SqlSessionFactory sqlSessionFactory() throws Exception{
		SqlSessionFactoryBean sqlSessionFactoryBean = new SqlSessionFactoryBean();
		//mybatis-config 위치 설정
		sqlSessionFactoryBean.setConfigLocation(new ClassPathResource("com/home/sopping_mall/mybatis/mybatis-config.xml"));
		//사용할 DB정보 등록
		sqlSessionFactoryBean.setDataSource(dataSource());
		return sqlSessionFactoryBean.getObject();
	}
	/**
	 * Spirng-mybatis는 sqlSessionFactory이 아닌 SqlSessionTemplate를 사용 
	 * */
	@Bean
	public SqlSessionTemplate sessionTemplate() throws Exception{
		// sqlSessionFactory을 SqlSessionTemplate로 전환
		return new SqlSessionTemplate(sqlSessionFactory());
	}
}
