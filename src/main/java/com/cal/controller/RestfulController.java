package com.cal.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.cal.service.SampleService;

@RestController
public class RestfulController 
{
	@Autowired
	private SampleService sampleService;

	@RequestMapping("/calendar2")
	public List<Map<String, Object>> getCalendar2(@RequestParam Map<String,Object> param,
													Model model,
													HttpServletRequest request,
													HttpServletResponse response,
													HttpSession session) throws Exception
	{
		List<Map<String, Object>> json = sampleService.selectDetail(param);

		return json;
	}

	
	
}
