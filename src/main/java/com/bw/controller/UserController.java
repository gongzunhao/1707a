package com.bw.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.bw.bean.User;
import com.bw.service.UserService;

@Controller
public class UserController {
	@Resource
	private UserService us;
	
	@RequestMapping("/login")
	@ResponseBody
	public boolean login(HttpSession session,User user){
		System.out.println("****");
		boolean flg=us.login(session,user);
		return flg;
	}
	@RequestMapping("/toadd")
	public String toadd(User user,Model model){
		model.addAttribute("user",new User());
		return "add";
	}
	@RequestMapping("/usertest")
	@ResponseBody
	public int usertest(String username){
		User user=us.usertest(username);
		if(user!=null){
			return 1;
		}else{
			return 0;
		}
	}
}
