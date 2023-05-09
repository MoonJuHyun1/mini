package com.teco.train.domain;

import java.time.LocalTime;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;


@Data
@AllArgsConstructor
@NoArgsConstructor
//역에 대한 노선도 전체담기
public class station {
	 private int station_id;
	 private String station_name;
	 private int interval_time;
	 
	 public station(int station_id, String station_name,int interval_time){
		 this.station_id = station_id;
		 this.station_name = station_name;
		 this.interval_time = interval_time;
	 }
	 
	 public station(int station_id, String station_name){
		 this.station_id = station_id;
		 this.station_name = station_name;
	 }
	 
	public int getStation_id() {
		return station_id;
	}
	public void setStation_id(int station_id) {
		this.station_id = station_id;
	}
	public String getStation_name() {
		return station_name;
	}
	public void setStation_name(String station_name) {
		this.station_name = station_name;
	}
	public int getInterval_time() {
		return interval_time;
	}

	public void setInterval_time(int interval_time) {
		this.interval_time = interval_time;
	}

	@Override
	public String toString() {
		return "station [station_id=" + station_id + ", station_name=" + station_name + ", interval_time="
				+ interval_time + "]";
	}

	
	 
	 
}

