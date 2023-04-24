package com.teco.train.domain;

import java.sql.Date;

import lombok.Getter;
import lombok.Setter;


@Getter
@Setter
public class Train {
	 private int train_id;
	 private String train_name;
	 private String departure_station;
	 private String arrival_station;
	 private Date departure_time;
	 private Date arrival_time;

}
