package com.zhihu.util;

import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.Properties;

import org.apache.commons.dbcp.BasicDataSource;


/**
 */
public class Dbutil {

    Connection conn = null;
    private static BasicDataSource ds;
    private static String driverName;
    private static String url;
    private static String user;
    private static String password;
    private static int maxActive;
    public static void main(String[] args) {
        Dbutil d=new Dbutil();
        System.out.println(d.getCon());
    }
   static{
       Properties p=new Properties();
       InputStream in = null;
      in = Dbutil.class.getClassLoader().getResourceAsStream("database.properties");
        try {
        p.load(in);
        driverName = p.getProperty("jdbc.driver");
        url = p.getProperty("jdbc.url");
        user = p.getProperty("jdbc.username");
        password = p.getProperty("jdbc.password");
        maxActive=Integer.parseInt(p.getProperty("jdbc.maxActive"));
        ds = new BasicDataSource();
        ds.setDriverClassName(driverName);
        ds.setUrl(url);
        ds.setUsername(user);
        ds.setPassword(password);
        ds.setMaxActive(maxActive);
    } catch (IOException e) {
        e.printStackTrace();
    }finally {
            try {
                in.close();
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
   }
  


	public  Connection getCon() {
		Connection con = null;
		try {
			con = ds.getConnection();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return con;
	}

	public void getClose() {
		if (conn != null) {
			try {
				ds.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	}
}