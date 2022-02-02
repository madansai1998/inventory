package com.sprint.ProjectIM;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class AdminServices {
	
	@Autowired
    private AdminRepository adrep;
	
	 public admin get(String Userid) {
	    	return adrep.get(Userid);
	    }

}
