package com.teco.train.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.teco.train.DTO.Train;

@Controller
public class TrainController {

    @GetMapping("/trainMain")
    public String newTrainForm() {
        return "/main/TrainMain";
    }
    
    @GetMapping("/trainSelect") 
    public String viewTrainSelect() {
        return "/main/TrainSelect";
    }
    
    @PostMapping("/trainSelect") 
    public String trainSelect(Train train, Model model) {
        // train 객체에 대한 처리 로직
        // ...
        model.addAttribute("train", train);
        return "/main/TrainSelect";
    }
}
