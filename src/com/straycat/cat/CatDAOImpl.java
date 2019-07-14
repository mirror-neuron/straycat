package com.straycat.cat;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.straycat.common.dao.CatDAO;

@Repository("CatDAO")
public class CatDAOImpl implements CatDAO
{
	@Autowired
	private SqlSession sqlSession;
	
	private final Logger logger = LoggerFactory.getLogger(getClass());
	
	@Override
	public List<Map<String, Object>> listCat(Map<String, Object> map)
	{
		List<Map<String, Object>> list = null; 
		
		try 
		{
			list = sqlSession.selectList("cat.listCat", map);
		}
		catch (Exception e) 
		{
			logger.error(e.toString());
			
			throw e;
		}
		
		return list;
	}

	@Override
	public int addCat(Map<String, Object> map)
	{
		int result = 0; 
		try
		{
			result = sqlSession.insert("cat.addCat", map);
			
		} catch (Exception e)
		{
			logger.error(e.toString());
			
			throw e;
		}
		return result;
	}

	@Override
	public String searchAddress(String gu, String dong)
	{
		String address = null;
		
		Map<String, Object> map = new HashMap<String, Object>();
		
		map.put("gu", gu);
		map.put("dong", dong);
		
		try
		{
			address = (String)sqlSession.selectOne("cat.searchAddress", map);
			
		} catch (Exception e)
		{
			logger.error(e.toString());
			
			throw e;
		}
		return address;
	}

	@Override
	public List<Map<String, Object>> listGu()
	{
		List<Map<String, Object>> list = null; 
		
		try
		{
			list = sqlSession.selectList("cat.listGu");
			
		} catch (Exception e)
		{
			logger.error(e.toString());
			
			throw e;
		}
		
		return list;
	}


	@Override
	public Map<String, Object> selectOne(String id)
	{
		Map<String, Object> catInfo = null;
		
		try
		{
			catInfo = sqlSession.selectOne("catDetail.catInfo", id);
			
		} catch (Exception e)
		{
			logger.error(e.toString());
			
			throw e;
		}
		
		return catInfo;
	}

	@Override
	public List<Map<String, Object>> selectList(String id)
	{
		
		return sqlSession.selectList("catDetail.catLocation",id);	
	}
	
	@Override
	public List<Map<String, Object>> selectActList(String id)
	{		
		return sqlSession.selectList("catDetail.actReg",id);	
	}
	


	// 셀렉트 박스 옵션에 동 정보를 넣어주는 메소드
	@Override
	public List<Map<String, Object>> listDong(String selectedGu)
	{
		List<Map<String, Object>> list = null; 
		try
		{
			list = sqlSession.selectList("cat.listDong", selectedGu);	
			
		} catch (Exception e)
		{
			logger.error(e.toString());
			throw e;
		}
		return list;
	}
}
