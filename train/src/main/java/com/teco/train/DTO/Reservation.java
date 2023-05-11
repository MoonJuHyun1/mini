package com.teco.train.Entity;

import java.time.LocalDate;
import java.time.LocalTime;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class Reservation {
    private Long id;
    private Route route;
    private Train train;
    private int seatNum;
    private LocalDate reservationDate;
    private LocalTime reservationTime;


}
