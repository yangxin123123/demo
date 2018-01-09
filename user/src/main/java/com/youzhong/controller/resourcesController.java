package com.youzhong.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class resourcesController {
@Autowired
private resourcesService resourcesService;
	@RequestMapping("v_index")
	public String   index(){
		return "resources/user_index";
	}
	

}
