package com.teco.train.repository;


import java.util.ArrayList;
import org.apache.ibatis.annotations.Mapper;

import com.teco.train.domain.Traininfo;
import com.teco.train.domain.station;
import com.teco.train.domain.time;
import com.teco.train.domain.trainstation;


@Mapper
public interface TraininfoMapper {
	//열차정보 획득
	public ArrayList<Traininfo> selectalltrains();
	//전체역정보
	public ArrayList<station> stationselect();
	//시작 과 끝의 값
	public ArrayList<station> selectstation(int stnum);
	//시작과 끝의 구간정보
	public ArrayList<trainstation> trstatselect();
	//운행구간 경로획득
	public ArrayList<station> startend(int station_id1, int station_id2);
	//시간 정보
	public ArrayList<time> timeon();
}
