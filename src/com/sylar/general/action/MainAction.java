package com.sylar.general.action;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
@Scope("prototype")
public class MainAction {

	@RequestMapping("toMain")
	public String toMain(){
		System.out.println("有人进入系统了哦");
		return "main";
	}
	
	@RequestMapping("toWelcome")
	public String toWelcome(){
		System.out.println("进入欢迎页");
		return "main/welcome";
	}
	
	@RequestMapping("toTop")
	public String toTop(){
		System.out.println("上侧");
		return "main/top";
	}
	
	@RequestMapping("toLeft")
	public String toLeft(){
		System.out.println("左侧");
		return "main/left";
	}
	
	@RequestMapping("baidu")
	public String baidu(){
		return "baidu";
	}
	
	@RequestMapping("google")
	public String google(){
		return "google";
	}
	
}
