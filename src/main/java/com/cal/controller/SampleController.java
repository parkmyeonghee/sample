package com.cal.controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.cal.service.SampleService;
import com.cal.vo.CalendarVO;

@Controller
public class SampleController {
	
	@Autowired
	private SampleService sampleService;
    
	//글쓰기
	@RequestMapping(value = "/write")
	public String write(@ModelAttribute CalendarVO cVO
						,@RequestParam Map<String,Object>param) throws Exception
	{

		sampleService.insertcal(param);
		
		return "redirect:/m";
	}

	//메인/뿌려주기
	@RequestMapping(value="/m")
	public ModelAndView main_test(Map param) throws Exception
	{
		ModelAndView mv = new ModelAndView();
		
		mv.addObject("list",sampleService.getList(param));
		mv.addObject("projList",sampleService.getProjList(param));
		mv.addObject("userList",sampleService.getUserList(param));
		mv.addObject("userName",sampleService.getUserName(param));
		mv.setViewName("main");
		
		return mv ; //WEB-INF/jsp/.jsp
	}
	
	@RequestMapping(value="/update")
	public String update(@ModelAttribute CalendarVO cVO
						,@RequestParam Map<String,Object>param)throws Exception
	{

		sampleService.Updatecal(param);
		
		return "redirect:/m";
	}
	
	//삭제
	@RequestMapping(value = "/delete")
	public String delete(@ModelAttribute CalendarVO cVO
						,@RequestParam Map<String,Object>param)throws Exception
	{
		
		sampleService.delete(param);
		
		return "redirect:/m";
	}
}
