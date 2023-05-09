package com.teco.train.domain;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Data
@AllArgsConstructor
@NoArgsConstructor
//열차관리
public class Traininfo {
	 private int train_id;				//열차 번호
	 private String station_name;		//열차 위치
	 private int reser;					//남은 좌석 수
	 
	 public Traininfo(int train_id,String station_name,int reser) {
		 super();
		 this.train_id = train_id;
		 this.station_name = station_name;
		 this.reser = reser;
	 }
	 
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
	@Override
	public String toString() {
		return "Traininfo [train_id=" + train_id + ", station_name=" + station_name + ", reser=" + reser + "]";
	}
	
}