package com.example.demo.blog;

import java.util.List;

public class BlogTest {

	public static void main(String[] args) {
		BlogDao bDao = new BlogDao();
		
		// Insert
//		Blog blog = new Blog("Programer", "JAVA", "JAVA is OOP.");
//		bDao.insertBlog(blog);
		
		// list
//		Blog b = bDao.getBlog(5);

//		Blog blog = bDao.getBlog(4);
//		blog.setTitle("파이썬");
//		blog.setContent("파이썬은 배우기 쉬운 프로그래밍 언어입니다.");
//		bDao.updateBlog(blog);
		
		
		bDao.deleteBlog(5);
//		bDao.increaseViewCount(1); bDao.increaseViewCount(3);
//		bDao.increaseViewCount(1); bDao.increaseViewCount(4);
		
		List<Blog> list = bDao.getBlogList("title", "");
		for (Blog b: list)
			System.out.println(b);
	}

}