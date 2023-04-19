package com.teco.train.test;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class TempControllerTest {

    @GetMapping("/test")
    public String tempJsp() {

        return "test";
    }
}