package com.teco.train.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.teco.train.DTO.Train;

@Mapper
public interface TrainMapper {
	List<Train> selectTrain() throws Exception;
}
