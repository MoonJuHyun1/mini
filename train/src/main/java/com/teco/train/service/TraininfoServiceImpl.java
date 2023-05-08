package com.teco.train.service;

import java.util.ArrayList;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.teco.train.domain.Traininfo;
import com.teco.train.repository.TraininfoMapper;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Service
public class TraininfoServiceImpl implements TraininfoService{

	@Autowired
	private TraininfoMapper trainMapper;
	
	@Override
	public ArrayList<Traininfo> selectalltrains() {
		ArrayList<Traininfo> list = trainMapper.selectalltrains();
		return list;
	}
	@Override
	public int sele() {
		int list = trainMapper.sele();
		return list;
	}

	
}
