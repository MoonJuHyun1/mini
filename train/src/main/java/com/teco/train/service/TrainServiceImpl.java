package com.teco.train.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.teco.train.domain.Train;
import com.teco.train.repository.TrainMapper;

@Service
public class TrainServiceImpl implements TrainService{

	@Autowired
	private TrainMapper trainMapper;
	
	@Override
	public List<Train>selectAllTrains() {
		return trainMapper.selectAllTrains();
	}
	
}
