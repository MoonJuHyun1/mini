package com.teco.train.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import com.teco.train.domain.Traininfo;
import com.teco.train.service.TraininfoService;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@RequiredArgsConstructor
@Controller
public class TraininfoController {

	@Autowired
	private TraininfoService traininfoService;
	
	@GetMapping("/TrainInfo")
	public String selectAllTrainsinfo(Model model) {
		model.addAttribute("list",traininfoService.selectalltrains());
		
		return "/main/TrainInfo";
	}

}