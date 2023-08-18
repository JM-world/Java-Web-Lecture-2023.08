package com.example.demo;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;



@Controller
@RequestMapping("/jsp")
public class JspController {
	
	@GetMapping("/sample")
	public String sample(Model model) {
		Address addr1 = new Address(12345, "LA", "USA");
		Address addr2 = new Address(67890, "NEWYORK", "USA");
		Member m1 = new Member(101, "james", addr1);
		Member m2 = new Member(102, "maria", addr2);
		Member m3 = new Member(103, "HongGilDong", new Address(23456,"Soeul","KOREA"));
		Member m4 = new Member(104, "jason", new Address(13579,"Busan","KOREA"));
		Member m5 = new Member(105, "potter", new Address(12468,"Paju","KOREA"));
		Member m6 = new Member(106, "harry", new Address(98765,"Ottawa","CANADA"));
		Member m7 = new Member(107, "john", new Address(54321,"Canberra","AUSTRALIA"));
		Member m8 = new Member(108, "carry", new Address(56121,"Tokyo","JAPAN"));
		
		
		Member[] members = {m1, m2};
		model.addAttribute("memberArray", members);
		
		List<Member> list = new ArrayList<>();
		list.add(m1); list.add(m2); list.add(m3); list.add(m4); 
		list.add(m5); list.add(m6); list.add(m7); list.add(m8);
		model.addAttribute("memberList", list);
		return "jsp/sample";
	}

	@GetMapping("/schedule") 
	public String schedule(Model model) {
		model.addAttribute("name","schedule");
		return "jsp/schedule";
	}
	
	@GetMapping("/elOperator") 
	public String elOperator() {
		return "jsp/el1_operator";
	}
	
	@GetMapping("/elScope") 
	public String elScope(HttpSession session, Model model) {
		session.setAttribute("sName", "sName");
		model.addAttribute("mName","mName");
		session.setAttribute("name", "sName");
		model.addAttribute("name","mName");
		return "jsp/el2_scope";
	}
	
	@GetMapping("/elCollections")
	public String elCollections(Model model) {
		//String[] fruits = {"참외", "수박", "복숭아", "토마토"};
		String[] fruits = "참외, 수박, 복숭아, 토마토".split(",");
		model.addAttribute("fruitArray",fruits);
		
		List<String> sports = new ArrayList<>();
		sports.add("축구"); sports.add("야구"); sports.add("배구");
		model.addAttribute("sportsList", sports);
		
		Map<String, String> map = new HashMap<>();
		map.put("key", "el"); map.put("value", "jstl");
		model.addAttribute("map", map);
		
		return "jsp/el3_collections";
	}
	
	@GetMapping("/elpojo")
	public String elpojo(Model model) {
		Address addr1 = new Address(12345, "LA", "USA");
		Address addr2 = new Address(67890, "NEWYORK", "USA");
		Member m1 = new Member(101, "james", addr1);
		Member m2 = new Member(102, "maria", addr2);
		model.addAttribute("m1",m1);
		model.addAttribute("m2",m2);
		
		Member[] members = {m1, m2};
		model.addAttribute("memberArray", members);
		
		List<Member> list = new ArrayList<>();
		list.add(m1); list.add(m2);
		model.addAttribute("memberList", list);
		
 		return "jsp/el4_pojo";
	}
	
	@GetMapping("/jstlCore")
	public String jstlCore(Model model) {
		Address addr1 = new Address(12345, "LA", "USA");
		Address addr2 = new Address(67890, "NEWYORK", "USA");
		Member m1 = new Member(101, "james", addr1);
		Member m2 = new Member(102, "maria", addr2);
		Member m3 = new Member(103, "HongGilDong", new Address(23456,"Soeul","KOREA"));
		
		Member[] members = {m1, m2};
		model.addAttribute("memberArray", members);
		
		List<Member> list = new ArrayList<>();
		list.add(m1); list.add(m2); list.add(m3);
		model.addAttribute("memberList", list);
		return "jsp/jstl1_core";
	}
	
	@GetMapping("homework")
	public String homework(Model model) {
		Address addr1 = new Address(12345, "LA", "USA");
		Address addr2 = new Address(67890, "NEWYORK", "USA");
		Member m1 = new Member(101, "james", addr1);
		Member m2 = new Member(102, "maria", addr2);
		Member m3 = new Member(103, "HongGilDong", new Address(23456,"Soeul","KOREA"));
		Member m4 = new Member(104, "jason", new Address(13579,"Busan","KOREA"));
		Member m5 = new Member(105, "potter", new Address(12468,"Paju","KOREA"));
		Member m6 = new Member(106, "harry", new Address(98765,"Ottawa","CANADA"));
		Member m7 = new Member(107, "john", new Address(54321,"Canberra","AUSTRALIA"));
		Member m8 = new Member(108, "carry", new Address(56121,"Tokyo","JAPAN"));
		
		
		Member[] members = {m1, m2};
		model.addAttribute("memberArray", members);
		
		List<Member> list = new ArrayList<>();
		list.add(m1); list.add(m2); list.add(m3); list.add(m4); 
		list.add(m5); list.add(m6); list.add(m7); list.add(m8);
		model.addAttribute("memberList", list);
		return "jsp/homework";
	}
	
	
}
