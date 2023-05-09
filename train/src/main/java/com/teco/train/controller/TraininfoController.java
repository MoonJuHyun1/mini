package com.teco.train.controller;

import java.sql.Time;
import java.text.SimpleDateFormat;
import java.time.LocalDateTime;
import java.time.LocalTime;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessResourceFailureException;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import com.teco.train.domain.Traininfo;
import com.teco.train.domain.station;
import com.teco.train.domain.time;
import com.teco.train.domain.trainstation;
import com.teco.train.service.TraininfoService;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@RequiredArgsConstructor
@Controller
public class TraininfoController {

	@Autowired
	private TraininfoService traininfoService;
	
	@RequestMapping("/TrainInfo")
	public String selectAllTrainsinfo(Model model) {
		
		//info 정보
		ArrayList<Traininfo> list = traininfoService.selectalltrains();
		//info 길이값
		int listsize = list.size();
		//배열로 담기 열차정보
		Traininfo[] tr = list.toArray(new Traininfo[listsize]);
		
		//역 정보
		ArrayList<station> stationlist = traininfoService.stationselect();
		//역데이터 길이
		int statonsize = stationlist.size();
		
		//역정보 배열로 st = 역정보 , stat = 열차별 운행정보
		station[] st = stationlist.toArray(new station[statonsize]);
		
		//해당열차 이동구간 정보 (출발점 도착점)
		ArrayList<trainstation> trainstation = traininfoService.trstatselect();
		
		for(trainstation tran : trainstation) {
			//해당열차의 운행값 가져오기
			ArrayList<station> startend = traininfoService.startend(tran.getStation_id1(),tran.getStation_id2());
			
			station[] stat = startend.toArray(new station[startend.size()]);
			model.addAttribute("startend",stat);
		}
		//현재시간
		SimpleDateFormat tim = new SimpleDateFormat ( "HH:mm:ss");
		Date tm = new Date();
		String time1 = tim.format(tm);
		
		//시간정보
		ArrayList<time> time = traininfoService.timeon();
		time[] ti = time.toArray(new time[time.size()]);
		

		
		//시간값
		for(int i=0; i < ti.length;i++) {
			LocalTime oldtime = LocalTime.parse(ti[i].getDeparture_time());
			LocalTime time2 = LocalTime.parse(time1);
			
			//시간에 따라 -1분 (대기중),
			
			
			
//			System.out.println(ttr);
			System.out.println(oldtime);
			System.out.println(time2);
			
//			if(oldtime <= time2) {
//				System.out.println("1번구역");
//				System.out.println(oldtime);
//				System.out.println(time2);
//				
//			}else {
//				System.out.println("2번구역");
//				System.out.println(oldtime);
//				System.out.println(time2);
//			}
		}
		
		
		/* model.addAttribute("time",ti); */
		//열차정보
		model.addAttribute("tr",tr);
		
		return "/main/TrainInfo";
	}

}

