package com.teco.train.domain;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;


@Data
@AllArgsConstructor
@NoArgsConstructor
// 시간관리
public class time {
	 private int train_id;
	 private String departure_time;
	 private String arrival_time;
	 
	 public time(int train_id, String deLocalTime, String arLocalTime) {
		 this.train_id = train_id;
		 this.departure_time = deLocalTime;
		 this.arrival_time = arLocalTime;
	 }

	public int getTrain_id() {
		return train_id;
	}

	public void setTrain_id(int train_id) {
		this.train_id = train_id;
	}

	public String getDeparture_time() {
		return departure_time;
	}

	public void setDeparture_time(String departure_time) {
		this.departure_time = departure_time;
	}

	public String getArrival_time() {
		return arrival_time;
	}

	public void setArrival_time(String arrival_time) {
		this.arrival_time = arrival_time;
	}

	@Override
	public String toString() {
		return "time [train_id=" + train_id + ", departure_time=" + departure_time + ", arrival_time=" + arrival_time + "]";
	}
	 
	 
}

