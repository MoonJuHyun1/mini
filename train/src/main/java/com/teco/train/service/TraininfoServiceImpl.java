package com.teco.train.service;

import java.util.ArrayList;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.teco.train.domain.Traininfo;
import com.teco.train.domain.station;
import com.teco.train.domain.time;
import com.teco.train.domain.trainstation;
import com.teco.train.repository.TraininfoMapper;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Service
public class TraininfoServiceImpl implements TraininfoService{

	@Autowired
	private TraininfoMapper trainMapper;
	//열차정보
	@Override
	public ArrayList<Traininfo> selectalltrains() {
		ArrayList<Traininfo> list = trainMapper.selectalltrains();
		return list;
	}
	//전체역정보
	@Override
	public ArrayList<station> stationselect() {
		ArrayList<station> stationlist = trainMapper.stationselect();
		return stationlist;
	}
	//시작 과 끝의 값
	@Override
	public ArrayList<trainstation> trstatselect() {
		ArrayList<trainstation> trainstation = trainMapper.trstatselect();
		return trainstation;
	}
	//시작과 끝의 구간정보
	@Override
	public ArrayList<station> startend(int station_id1, int station_id2) {
		ArrayList<station> startend = trainMapper.startend(station_id1,station_id2);
		return startend;
	}
	//시간 정보
	@Override
	public ArrayList<time> timeon() {
		ArrayList<time> time = trainMapper.timeon();
		return time;
	}

	
}
