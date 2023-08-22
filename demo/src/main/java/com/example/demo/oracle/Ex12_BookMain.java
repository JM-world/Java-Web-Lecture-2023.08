package com.example.demo.oracle;

import java.util.List;

public class Ex12_BookMain {

	public static void main(String[] args) {
		BookDao bDao = new BookDao();
		
		// bookId 값으로 검색해서 Book 객체를 구하고 출력
//		Book b1 = bDao.getBook(1);
//		System.out.println(b1);
		
		// 모든 Customer List를 가져옴
		List<Book> list = bDao.getBookList();
		for (Book b2: list)
			System.out.println(b2);
		
		// cDao.insertCustomer(Customer c)
		
		
		// cDao.updateCustomer(Customer c)
		
		
		// cDao.deleteCustomer(int custId)
	}
}
