package com.straycat.service;

import java.util.List;
import java.util.Map;


public interface BoardService 
{
	public List<Map<String, Object>> listBoard(Map<String, Object> map);
	public int getLastPage();
	public int dataCount(Map<String, Object> map);
	public Map<String, Object> articleLoad(Map<String, Object> map);
}
