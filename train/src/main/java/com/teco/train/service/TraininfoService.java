package com.teco.train.service;

import java.util.ArrayList;
import com.teco.train.domain.Traininfo;
import com.teco.train.domain.station;
import com.teco.train.domain.time;
import com.teco.train.domain.trainstation;

public interface TraininfoService {
	//열차정보
	public ArrayList<Traininfo> selectalltrains();
	//전체역정보
	public ArrayList<station> stationselect();
	//시작 과 끝의 값
	public ArrayList<trainstation> trstatselect();
	//시작과 끝의 구간정보
	public ArrayList<station> startend(int station_id1, int station_id2);
	//시간 정보
	public ArrayList<time> timeon();
}
