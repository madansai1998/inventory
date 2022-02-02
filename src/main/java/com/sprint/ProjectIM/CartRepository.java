package com.sprint.ProjectIM;

import javax.transaction.Transactional;

import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

public interface CartRepository extends CrudRepository<cart_items, Integer> {
	
	
	

    @Modifying
    @Transactional
@Query("update cart_items e  set e.total_price=(e.quantity*e.pprice)  WHERE e.cid = ?1" )
public void upadateepass(Integer i);

}
