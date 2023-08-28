package com.example.demo.pocketMon;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("/pocketMon")
public class PocketMonController {

	@Autowired private PocketMonService pocketMonService;
	
	@GetMapping("/list")
	public String list(@RequestParam(name="f", defaultValue="name") String field,
			@RequestParam(name="q", defaultValue="") String query, Model model) {
		List<PocketMon> list = pocketMonService.getPocketMonList(field, query);
		model.addAttribute("pocketMonList",list);
		model.addAttribute("menu","pocketMon");
		model.addAttribute("field",field);
		model.addAttribute("query",query);
		System.out.println("hello");
		return "pocketMon/list";
	}
}
