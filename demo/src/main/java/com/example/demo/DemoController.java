package com.example.demo;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import jakarta.servlet.http.HttpServletRequest;

@Controller
//@RequestMapping("/demo")
public class DemoController {
	// localhost:8080/demo/index
	@GetMapping("/index")
	@ResponseBody		// 메소드 안에서 return "ResponseBody에서는 리턴값이 화면에 표시됨";
						// 없으면		 return "login";에서는 /WEB-INF/view/login.jsp가 호출됨.
	public String index() {
		return "<h1>Hello World!!!</h1>";
	}

	// localhost:8080/demo/hello
	@GetMapping("/hello")
	public String hello() {
		return "01.hello";
	}

	@GetMapping("/login")
	public String login() {
		return "02.login";
	}
	
	@PostMapping("/login")
//	@ResponseBody
	public String loginProc(HttpServletRequest req, Model model) {
		String uid = req.getParameter("uid");		// "uid"가 input tag의 name 값
		String pwd = req.getParameter("pwd");
//		return "<h1>uid = " + uid + ", pwd = " + pwd + "</h1>";
		
		model.addAttribute("uid",uid);
		model.addAttribute("pwd",pwd);
		return "03.loginResult";
	}
	
	@GetMapping("/getParam")
	@ResponseBody
	public String getParam(HttpServletRequest req) {
		String a_ = req.getParameter("a");
		String b_ = req.getParameter("b");
		String op = req.getParameter("op");
		int a = Integer.parseInt(a_);
		int b = Integer.parseInt(b_);
		int result = 0;
		switch(op) {
		case "add" : result = a + b; op = "+"; break;
		case "sub" : result = a - b; op = "-"; break;
		case "mul" : result = a * b; op = "*"; break;
		case "div" : result = (int)(a / b); op = "/"; break;
		default  : result = 0;
		}
		return "<h1>" + a + " " + op + " " + b + " = " + result + "</h1>";
	}
	
	@GetMapping("/calc")
	public String calcForm() {
		return "04.calcForm";
	}
	
//	@PostMapping("/clac")
//	public String calcProc(int a, int b, String op, Model model) {
//		int result = 0;
//		switch(op) {
//		case "add" : result = a + b; op = "+"; break;
//		case "sub" : result = a - b; op = "-"; break;
//		case "mul" : result = a * b; op = "*"; break;
//		case "div" : result = (int)(a / b); op = "/"; break;
//		default  : result = 0;
//		}
//		model.addAttribute("a",a);
//		model.addAttribute("b",b);
//		model.addAttribute("op",op);
//		model.addAttribute("result",result);
//		return "05.calcResult";
//	}
	
	@GetMapping("/write")
	public String writeForm() {
		return "06.writeForm";
	}
	
	@PostMapping("/write")
	public String writeProc(HttpServletRequest req, Model model) {
		String title = req.getParameter("title");
		String[] languages = req.getParameterValues("language");
		String content = req.getParameter("content");
		
		String joinLanguages = (languages == null) ? "" : String.join(", ", languages);
		Board board = new Board(title, joinLanguages, content.replace("\n", "<br>"));
		System.out.println(board);
		model.addAttribute("board",board);
		return "07.writeResult";
	}
}
