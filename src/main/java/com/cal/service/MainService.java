package com.cal.service;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.cal.vo.CalendarVO;

@Service
public class MainService {
	
	@Autowired
	@Qualifier("sqlSessionTemplate")
	private SqlSessionTemplate sqlSessionTemplate;	
	

	public void insertCalendar(CalendarVO param) throws Exception{
		sqlSessionTemplate.insert("calInsert", param);
	}

	public Object getlist() throws Exception {
		return sqlSessionTemplate.selectList("selectcal");
	}

}