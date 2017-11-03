package com.sample.demo.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class OtherController {

	@RequestMapping("/sample.do")
	public String sample() {
		return "sample";
	}
	
	@RequestMapping("/samplestock.do")
	public String samplestock() {
		return "samplestock";
	}
	
	@RequestMapping("/downloadsample.do")
	public String downloadsample() {
		return "downloadsample";
	}

	@RequestMapping("/adjsample.do")
	public String adjsample() {
		return "adjsample";
	}
}
