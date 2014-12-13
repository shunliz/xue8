package com.zsl.idating;

import java.util.LinkedList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.encoding.Md5PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.zsl.idating.entity.User;
import com.zsl.service.UserService;

@Controller
public class UserController {
	
	@Autowired  
    private UserService userService;
	
	@RequestMapping(value="/register", method=RequestMethod.POST)
	public String pregister(User user, Model model) throws Exception {
		Md5PasswordEncoder encoder = new Md5PasswordEncoder();
		String encrypted = encoder.encodePassword(user.getPassword(), user.getUsername());
		user.setPassword(encrypted);
		userService.register(user);
		
		return "view.home";
	}
	
	@RequestMapping(value="/register", method=RequestMethod.GET)
	public String gregister(User user, Model model) {
		return "view.register";
	}
	
	@RequestMapping(value="/user", method=RequestMethod.GET)
	public String getuser(User user, Model model) {
		return "view.user";
	}
}
