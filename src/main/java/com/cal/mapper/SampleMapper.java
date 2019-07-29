package com.cal.mapper;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.cal.vo.CalendarVO;

@Repository
public class SampleMapper {
	
	@Autowired
	@Resource(name="sqlSessionTemplate")
	private SqlSessionTemplate  sqlSessionTemplate;
	
/*	@SuppressWarnings({ "rawtypes" })
	public List selectList(Map param) {
		List result = sqlSessionTemplate.selectList("selectcal",param);
		return  result ;
	}*/
	@SuppressWarnings({ "rawtypes" })
	public List getProjList(Map param) {
		List result = sqlSessionTemplate.selectList("selectproj",param);
		return  result ;
	}
	public void insertcal(Map<String, Object> param) {
		sqlSessionTemplate.insert("calInsert",param);
	}
	@SuppressWarnings("rawtypes")
	public List getList(Map param) {
		List result = sqlSessionTemplate.selectList("selectcal",param);
		return  result ;
	}

	public void deletecal(CalendarVO cVO) {
		sqlSessionTemplate.delete("caldelete",cVO);
		
	}
	public List selectDetail(Map<String, Object> param) {
		List result = sqlSessionTemplate.selectList("selectcal",param);
		return  result ;
	}
	public List getUserList(Map param) {
		List result = sqlSessionTemplate.selectList("selectUser",param);
		return  result ;
	}
	public void delete(Map<String, Object> param) {
		sqlSessionTemplate.delete("caldelete",param);
	}
	public List getUserName(Map param) {
		List result = sqlSessionTemplate.selectList("selectUserN",param);
		return  result ;
	}
	public void Updatecal(Map<String, Object> param) {
		sqlSessionTemplate.update("calUp",param);
		
	}
	//json
	public List getUser(Map<String, Object> param) {
		List result = sqlSessionTemplate.selectList("selectUser",param);
		return  result ;
	}
}
