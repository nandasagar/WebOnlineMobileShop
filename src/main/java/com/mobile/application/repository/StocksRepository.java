package com.mobile.application.repository;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.mobile.application.model.StocksEntity;

@Repository
public interface StocksRepository extends CrudRepository<StocksEntity,Integer> {
	List <StocksEntity> findByModel(int model);


}