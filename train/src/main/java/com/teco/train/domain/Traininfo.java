package com.teco.train.domain;

import lombok.Data;
import lombok.Getter;
import lombok.Setter;

@Data
@Getter
@Setter
public class Traininfo {
	 private int train_id;				//열차 번호
//	 private String petun;				//열차 패턴
//	 private int time;					//시간
	 private String station_name;		//열차 위치
	 private int reser;					//남은 좌석 수
	public int getTrain_id() {
		return train_id;
	}
	public void setTrain_id(int train_id) {
		this.train_id = train_id;
	}
	public String getStation_name() {
		return station_name;
	}
	public void setStation_name(String station_name) {
		this.station_name = station_name;
	}
	public int getReser() {
		return reser;
	}
	public void setReser(int reser) {
		this.reser = reser;
	}
}