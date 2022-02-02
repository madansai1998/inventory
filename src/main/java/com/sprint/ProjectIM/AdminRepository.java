package com.sprint.ProjectIM;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

public interface AdminRepository extends CrudRepository<admin, Integer> {
	
	
	@Query("SELECT e FROM admin e WHERE auserid = ?1"
            
            )
    public admin get(String Userid);

}
