package com.ezen.teaStore.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ezen.teaStore.domain.TradiTea;
import com.ezen.teaStore.repo.TradiTeaRepo;
import com.ezen.teaStore.service.TradiTeaService;

@Service
public class TradiTeaServiceImpl implements TradiTeaService {
	@Autowired
	TradiTeaRepo tradiTeaRepo;
	
	@Override
	public List<TradiTea> getAllTradiTeas() {
		return tradiTeaRepo.getAllTradiTeas();
	}
}
