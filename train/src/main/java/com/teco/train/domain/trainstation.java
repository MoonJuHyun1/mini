package com.teco.train.domain;

import java.time.LocalTime;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;


@Data
@AllArgsConstructor
@NoArgsConstructor
//열차 출발선과 도착선의 간격 찾기
public class trainstation {
	 private int station_id1;
	 private String departure_station;
	 private int station_id2;
	 private String attival_station;
	 
	 
	 public trainstation(int station_id1, String departure_station, int station_id2,String attival_station){
		 this.station_id1 = station_id1;
		 this.departure_station = departure_station;
		 this.station_id2 = station_id2;
		 this.attival_station = attival_station;
	 }
	 
	 public trainstation(int station_id1,int station_id2) {
		 this.station_id1 = station_id1;
		 this.station_id2 = station_id2;
	 }


	public int getStation_id1() {
		return station_id1;
	}


	public void setStation_id1(int station_id1) {
		this.station_id1 = station_id1;
	}


	public String getDeparture_station() {
		return departure_station;
	}


	public void setDeparture_station(String departure_station) {
		this.departure_station = departure_station;
	}


	public int getStation_id2() {
		return station_id2;
	}


	public void setStation_id2(int station_id2) {
		this.station_id2 = station_id2;
	}


	public String getAttival_station() {
		return attival_station;
	}


	public void setAttival_station(String attival_station) {
		this.attival_station = attival_station;
	}


	@Override
	public String toString() {
		return "station [station_id1=" + station_id1 + ", departure_station=" + departure_station + ", station_id2="
				+ station_id2 + ", attival_station=" + attival_station + "]";
	}
	 
	
	 
	 
}

