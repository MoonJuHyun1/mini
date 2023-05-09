package com.teco.train;

import static org.assertj.core.api.Assertions.assertThat;

import java.util.List;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;

import com.teco.train.domain.Train;
import com.teco.train.service.TrainService;

public class TrainMapperTest {

    @Autowired
    private TrainService trainService;

    @Test
    void testSelectAllTrains() {
        List<Train> trains = trainService.selectAllTrains();
        assertThat(trains).isNotEmpty(); // 반환된 리스트가 비어있지 않아야 함
        assertThat(trains.get(0)).isInstanceOf(Train.class); // 반환된 리스트의 첫번째 객체가 Train 클래스의 인스턴스인지 확인
    }
}
