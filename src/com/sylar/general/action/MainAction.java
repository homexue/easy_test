package com.sylar.general.action;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
@Scope("prototype")
public class MainAction {

	@RequestMapping("toMain")
	public String toMain(){
		return "main";
	}
	
	@RequestMapping("toWelcome")
	public String toWelcome(){
		return "main/welcome";
	}
	
	@RequestMapping("toTop")
	public String toTop(){
		return "main/top";
	}
	
	@RequestMapping("toBottom")
	public String toBottom(){
		return "main/bottom";
	}
	
	@RequestMapping("toLeft")
	public String toLeft(){
		return "main/left";
	}
}
