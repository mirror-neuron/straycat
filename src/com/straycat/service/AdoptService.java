package com.straycat.service;

import java.util.List;
import java.util.Map;

public interface AdoptService
{
	public List<Map<String, Object>> listAdopt();

	public int addAdopt(Map<String, Object> map);
	
	public String searchAddress(String gu, String dong);
	
	public Map<String, Object> searchUserInfo(String user_id);
	
	public Map<String, Object> readAdopt(String id);
	
}
