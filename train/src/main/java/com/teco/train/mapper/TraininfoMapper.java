package com.teco.train.repository;


import java.util.ArrayList;
import org.apache.ibatis.annotations.Mapper;

import com.teco.train.domain.Traininfo;


@Mapper
public interface TraininfoMapper {
	public ArrayList<Traininfo> selectalltrains();
	
	public int sele();
}
