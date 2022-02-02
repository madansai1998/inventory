package com.sprint.ProjectIM;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;





public interface VendorRepository extends CrudRepository<Vendor, Integer> {
	
	 @Query("SELECT v FROM Vendor v WHERE vname LIKE %?1%"
	            + " OR vtype LIKE %?1%"
	            + " OR vemail LIKE %?1%"
	            + " OR address LIKE %?1%"
	            )
	    public List<Vendor> search(String keyword);
	    
	    
	    @Query("SELECT v FROM Vendor v WHERE vid = ?1"
	            
	            )
	    public List<Vendor> search(Integer id);

	    @Modifying
	    @Transactional
@Query("update Vendor v  set v.vname=?1 WHERE v.vid = ?2" )
 public void upadatevname(String name,Integer i);
	    
	    @Modifying
	    @Transactional
@Query("update Vendor v  set v.vtype=?1 WHERE v.vid = ?2" )
 public void upadatevtype(String type,Integer i);
	    @Modifying
	    @Transactional
@Query("update Vendor v  set v.vemail=?1 WHERE v.vid = ?2" )
 public void upadatevemail(String email,Integer i);
	    
	    @Modifying
	    @Transactional
@Query("update Vendor v  set v.address=?1 WHERE v.vid = ?2" )
 public void upadatevaddress(String address,Integer i);

}
