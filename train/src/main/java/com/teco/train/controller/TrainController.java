package com.teco.train.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.teco.train.domain.Train;
import com.teco.train.service.TrainService;

@RestController
@RequestMapping("/selectTrain")
public class TrainController {
	
	
	@Autowired
	private TrainService trainService;
	
	@GetMapping
	public List<Train> getAllTrains() {
		return trainService.selectAllTrains();
	}
}
