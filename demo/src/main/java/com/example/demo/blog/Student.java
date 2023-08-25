package com.example.demo.blog;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;


@ToString
@Getter						
@Setter						
@NoArgsConstructor			// 기본 생성자
@AllArgsConstructor			// 모든 생성자
public class Student {
	private int sid;
	private String name;
	private String gender;
	
}
