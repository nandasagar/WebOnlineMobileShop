package com.mobile.application.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
//import org.springframework.data.repository.CrudRepository;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;

import com.mobile.application.model.Item;

@EnableJpaRepositories
public interface ItemRepository extends JpaRepository<Item, Integer>{


	List<Item> findByItemtype(String itemdesc);

}
