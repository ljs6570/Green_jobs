package com.company.controller;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.company.service.UserService;

@Controller
public class TestController {

	@Autowired
	UserService service;
	
	@RequestMapping(value="/milkReadAll" , method=RequestMethod.GET)
	@ResponseBody
	public Map<String,Object> read(){
		Map<String,Object> result = new HashMap<>();
		result.put("result",service.select_admin());
		return result;
	}
}
