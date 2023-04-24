package com.teco.train.repository;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.teco.train.domain.Train;

@Mapper
public interface TrainMapper {
	public List<Train> selectAllTrains();

}
