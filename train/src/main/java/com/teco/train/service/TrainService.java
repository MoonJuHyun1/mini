package com.teco.train.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.teco.train.domain.Train;

@Service
public interface TrainService {

	public List<Train> selectAllTrains();
}
