package com.cal.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cal.mapper.SampleMapper;
import com.cal.vo.CalendarVO;

@Service
public class SampleService {

	@Autowired
	private SampleMapper sampleMapper;
	
	public void insertcal(Map<String, Object> param) 
	{
		sampleMapper.insertcal(param);
	}
	
	public List getList(Map param) 
	{
		List list=sampleMapper.getList(param);
		return list;
	}

	public void deletecal(CalendarVO cVO) 
	{
		sampleMapper.deletecal(cVO);
		
	}
	
	/*프로젝트명 조회*/
	public List getProjList(Map param) 
	{
		List list=sampleMapper.getProjList(param);
		return list;
	}
	
	public List<Map<String, Object>> selectDetail(Map<String, Object> param) 
	{
		List list=sampleMapper.selectDetail(param);
		return list;
	}
	
	public Object getUserList(Map param) 
	{
		List list=sampleMapper.getUserList(param);
		return list;
	}
	
	public void delete(Map<String, Object> param) 
	{
		sampleMapper.delete(param);
	}
	
	public Object getUserName(Map param) 
	{
		List list=sampleMapper.getUserName(param);
		return list;
	}
	
	public void Updatecal(Map<String, Object> param) 
	{
		sampleMapper.Updatecal(param);
	}
	
	
	public List<Map<String, Object>> getUser(Map<String, Object> param) 
	{
		List list=sampleMapper.getUser(param);
		return list;
	}


}
