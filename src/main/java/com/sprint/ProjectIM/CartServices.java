package com.sprint.ProjectIM;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


	
	@Service
	public class CartServices {
	    @Autowired
	    private CartRepository cartrep;
	public void upadateepass (Integer id) {
   	 cartrep.upadateepass( id);
   }

}
