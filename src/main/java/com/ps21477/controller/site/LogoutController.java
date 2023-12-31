package com.ps21477.controller.site;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ps21477.service.SessionService;



@Controller
public class LogoutController {
	@Autowired
	SessionService sessionService;
	
	@RequestMapping("/logout")
	public String logout() {
		sessionService.remove("user");
		return "index";
	}
}
