package com.sprint.ProjectIM;



import javax.transaction.Transactional;

import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

public interface EmployeeRepository extends CrudRepository<employee, Integer> {
	
	 @Query("SELECT e FROM employee e WHERE ename LIKE %?1%"
	            + " OR erole LIKE %?1%"
	            + " OR eemail LIKE %?1%"
	            + " OR eaddress LIKE %?1%"
	            + " OR euserid LIKE %?1%"
	            + " OR epass LIKE %?1%"
	            )
	    public Iterable<employee> search(String keyword);
	    
	    
	    @Query("SELECT e FROM employee e WHERE eid = ?1"
	            
	            )
	    public Iterable<employee> search(Integer id);

	    @Modifying
	    @Transactional
@Query("update employee e  set e.ename=?1 WHERE e.eid = ?2" )
public void upadateename(String name,Integer i);
	    
	    @Modifying
	    @Transactional
@Query("update employee e  set e.erole=?1 WHERE e.eid = ?2" )
public void upadateerole(String role,Integer i);
	    @Modifying
	    @Transactional
@Query("update employee e  set e.eemail=?1 WHERE e.eid = ?2" )
public void upadateeemail(String email,Integer i);
	    
	    @Modifying
	    @Transactional
@Query("update employee e  set e.eaddress=?1 WHERE e.eid = ?2" )
public void upadateeaddress(String address,Integer i);
	    
	    @Modifying
	    @Transactional
@Query("update employee e  set e.euserid=?1 WHERE e.eid = ?2" )
public void upadateeuserid(String userid,Integer i);
	    
	    @Modifying
	    @Transactional
@Query("update employee e  set e.epass=?1 WHERE e.eid = ?2" )
public void upadateepass(String pass,Integer i);
	    
 @Query("SELECT e FROM employee e WHERE euserid = ?1"
	            
	            )
	    public employee get(String Userid);
	    
	    

}
