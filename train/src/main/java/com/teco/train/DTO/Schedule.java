package com.teco.train.Entity;

import java.time.LocalTime;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class Schedule {
    private Long id;
    private Train train;
    private Station station;
    private LocalTime arrivalTime;
    private LocalTime departureTime;


}