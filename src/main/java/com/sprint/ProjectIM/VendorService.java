package com.sprint.ProjectIM;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;




@Service
public class VendorService {
    @Autowired
    private VendorRepository vendrep;
     
    public Iterable<Vendor> listAll(String keyword) {
        if (keyword != null) {
            return vendrep.search(keyword);
        }
        return vendrep.findAll();
    }
    
    public Iterable<Vendor> listAll(Integer id) {
        if (id == 0) {
            return vendrep.findAll();
        }
        else
        {
        	return vendrep.search(id);
        }
    }
    
    public void upadatevname( String name,Integer id) {
    	 vendrep.upadatevname( name,id);
    }
    
    public void upadatevtype( String type,Integer id) {
   	 vendrep.upadatevtype( type,id);
   }
    
    public void upadatevemail( String email,Integer id) {
      	 vendrep.upadatevemail( email,id);
      }
    
    public void upadatevaddress( String address,Integer id) {
      	 vendrep.upadatevaddress( address,id);
      }
    
}