package com.gx.test;

import com.alibaba.druid.pool.DruidDataSource;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;

import java.sql.Connection;
import java.sql.DatabaseMetaData;
import java.sql.ResultSet;
import java.sql.SQLException;

@RunWith(SpringJUnit4ClassRunner.class)
@WebAppConfiguration
@ContextConfiguration(locations = {"classpath:spring/applicationContext.xml", "classpath:spring/springMvc.xml"})
public class GetDataBaseInfo {

    @Autowired
    DruidDataSource dataSource;

    public Connection GetConnection() throws SQLException {
        return dataSource.getConnection();
    }

    public DatabaseMetaData getMetaData() throws SQLException {
        //GetConnection().getMetaData().getCatalogs()
        return GetConnection().getMetaData();
    }

    @Test
    public void DBInfo() throws SQLException {

        System.out.println(GetConnection().getCatalog());
        ResultSet rs = null;
        System.out.println("数据库已知的用户: "+ getMetaData().getUserName());
        System.out.println("数据库的系统函数的逗号分隔列表: "+ getMetaData().getSystemFunctions());
        System.out.println("数据库的时间和日期函数的逗号分隔列表: "+ getMetaData().getTimeDateFunctions());
        System.out.println("数据库的字符串函数的逗号分隔列表: "+ getMetaData().getStringFunctions());
        System.out.println("数据库供应商用于 'schema' 的首选术语: "+ getMetaData().getSchemaTerm());
        System.out.println("数据库URL: " + getMetaData().getURL());
        System.out.println("是否允许只读:" + getMetaData().isReadOnly());
        System.out.println("数据库的产品名称:" + getMetaData().getDatabaseProductName());
        System.out.println("数据库的版本:" + getMetaData().getDatabaseProductVersion());
        System.out.println("驱动程序的名称:" + getMetaData().getDriverName());
        System.out.println("驱动程序的版本:" + getMetaData().getDriverVersion());
        System.out.println("数据库中使用的表类型");
        rs = getMetaData().getTableTypes();
        while (rs.next()) {
            System.out.println(rs.getString("TABLE_TYPE"));
        }
    }

    @Test
    public void GetDBInfo() throws SQLException {
        DatabaseMetaData dbMetaData = getMetaData();
        ResultSet rs = dbMetaData.getTables("vhr", null, null, new String[]{"TABLE"});
        while (rs.next()) {
            // 获取表及视图名称
            System.out.println(rs.getString("TABLE_NAME"));
        }
    }






}
