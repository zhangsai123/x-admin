package com.gx.test;

import org.apache.ibatis.session.SqlSessionFactory;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;

/**
 * @author : Zhangsai
 * @Date : 2020/08/16/0:50
 * @Description :
 */
@RunWith(SpringJUnit4ClassRunner.class)
@WebAppConfiguration
@ContextConfiguration(locations = {"classpath:spring/applicationContext.xml", "classpath:spring/springMvc.xml"})
public class TestClass {
    @Test
    public void DataSourceTest(){
        ApplicationContext ApplicationContext = new ClassPathXmlApplicationContext("classpath:spring/applicationContext.xml");
        SqlSessionFactory SqlSessionFactory = (org.apache.ibatis.session.SqlSessionFactory) ApplicationContext.getBean("sqlSessionFactory");
        System.out.println(SqlSessionFactory);
    }

}
