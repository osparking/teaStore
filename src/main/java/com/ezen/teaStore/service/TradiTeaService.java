package com.ezen.teaStore.service;

import java.util.List;
import java.util.Map;

import com.ezen.teaStore.domain.TradiTea;

public interface TradiTeaService {
	List<TradiTea> getAllTradiTeas();
	List<String> getTEA_COUNT();
	void todayTea(String todayTea);
	List<TradiTea> getTeasByName(String teaName);
	List<TradiTea> getByNamePrice(String teaName, 
			Map<String, String> price);
}
