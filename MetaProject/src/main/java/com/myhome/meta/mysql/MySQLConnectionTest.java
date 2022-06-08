package com.myhome.meta.mysql;

import java.sql.Connection;
import java.sql.DriverManager;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.junit.Test;

/**
 * MYSQL Connetcion Test Code
 */
public class MySQLConnectionTest {
	
	private static final String DRIVER = "com.mysql.cj.jdbc.Driver";
	private static final String URL = "jdbc:mysql://127.0.0.1:3306/metaprojectdb";
	private static final String USER = "root";
	private static final String PW = "1234";

 @Test
 public void testConnection() throws Exception{
	 Class.forName(DRIVER);
	 
	 try(Connection con = DriverManager.getConnection(URL, USER, PW)) {
		 
		 System.out.println("연결성공");
		 System.out.println(con);
		 
		} catch (Exception e) {
		 e.printStackTrace();
	 }
 }
	
}
