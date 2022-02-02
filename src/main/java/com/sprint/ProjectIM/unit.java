package com.sprint.ProjectIM;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;



@Entity // This tells Hibernate to make a table out of this class
public class unit {
@Id
@GeneratedValue(strategy=GenerationType.IDENTITY)
private Integer u_id;
private String unit_name;
public Integer getU_id() {
	return u_id;
}
public void setU_id(Integer u_id) {
	this.u_id = u_id;
}
public String getUnit_name() {
	return unit_name;
}
public void setUnit_name(String unit_name) {
	this.unit_name = unit_name;
}



}