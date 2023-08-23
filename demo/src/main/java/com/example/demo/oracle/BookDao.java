package com.example.demo.oracle;

import java.io.FileInputStream;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.util.Properties;

public class BookDao {

	private String host;
	private String user;
	private String password;
	private String database;
	private String port;
	
	public BookDao() {
		try {
			Properties props = new Properties();
			String filename = "D:/JavaWeb/demo/src/main/java/com/example/demo/oracle/oracle.properties";
			InputStream is = new FileInputStream(filename);
			props.load(is);
			is.close();
			
			this.host = props.getProperty("host");
			this.user = props.getProperty("user");
			this.password = props.getProperty("password");
			this.database = props.getProperty("database");
			this.port = props.getProperty("port");
		} catch (Exception e) {

		}
		
	}
	Connection myConnection() {
		Connection conn = null;
		try {
			String connStr = "jdbc:oracle:thin:@" + host + ":" + port + ":" + database; 
			conn =  DriverManager.getConnection (connStr, user, password);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return conn;
	}
	
	public Book getBook(int bookId) {
		Connection conn = myConnection();		//DB접속
		String sql = "select * from book where bookid=?";
		Book book = null;
		try {
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, bookId);
			ResultSet rs = pstmt.executeQuery();
		while (rs.next()) {
			bookId = rs.getInt(1);
			String bookName = rs.getString(2);
			String publisher = rs.getString(3);
			int price = rs.getInt(4);
			book = new Book(bookId, bookName, publisher, price);
		}
		rs.close(); pstmt.close(); pstmt.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return book;
	}
	
	public List<Book> getBookList() {
		Connection conn = myConnection();
		String sql = "select * from book";
		List<Book> list = new ArrayList<>();
		try {
			Statement stmt = conn.createStatement();
			ResultSet rs = stmt.executeQuery(sql);
			while (rs.next()) {
				int bookId = rs.getInt(1);
				String bookName = rs.getString(2);
				String publisher = rs.getString(3);
				int price = rs.getInt(4);
				Book b =new Book(bookId, bookName, publisher, price);
				list.add(b);
			}
			rs.close(); stmt.close(); conn.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return list;
	}
}
