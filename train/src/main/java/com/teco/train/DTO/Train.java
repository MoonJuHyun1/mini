package com.teco.train.DTO;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class Train {
    private String routeCode;
    private String rideStation;
    private String getoffStation;
    private String boardingDate;
    private String departureArrivalChoice;
    private String hour;
    private String minute;
    private Integer adultCount;
}
