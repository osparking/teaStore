package com.ezen.teaStore.repo;

import java.util.List;

import com.ezen.teaStore.domain.TradiTea;

public interface TradiTeaRepo {
	List<TradiTea> getAllTradiTeas();
	List<String> getTEA_COUNT();
	void todayTea(String todayTea);
}
