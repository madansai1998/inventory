package com.sprint.ProjectIM;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;



@Service
public class EmployeeServices {
    @Autowired
    private EmployeeRepository emprep;
     
    public Iterable<employee> listAll(String keyword) {
        if (keyword != null) {
            return emprep.search(keyword);
        }
        return emprep.findAll();
    }
    
    public Iterable<employee> listAll(Integer id) {
        if (id == 0) {
            return emprep.findAll();
        }
        else
        {
        	return emprep.search(id);
        }
    }
    
    public void upadateename( String name,Integer id) {
    	 emprep.upadateename( name,id);
    }
    
    public void upadateerole( String role,Integer id) {
   	 emprep.upadateerole( role,id);
   }
    
    public void upadateeemail( String email,Integer id) {
      	 emprep.upadateeemail( email,id);
      }
    
    public void upadateeaddress( String address,Integer id) {
      	 emprep.upadateeaddress( address,id);
      }
    
    public void upadateeuserid( String userid,Integer id) {
     	 emprep.upadateeuserid( userid,id);
     }
    
    public void upadateepass ( String pass,Integer id) {
    	 emprep.upadateepass( pass,id);
    }
    
    public employee get(String Userid) {
    	return emprep.get(Userid);
    }
    
}