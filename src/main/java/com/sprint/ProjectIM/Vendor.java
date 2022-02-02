package com.sprint.ProjectIM;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;


@Entity // This tells Hibernate to make a table out of this class
public class Vendor {
@Id
@GeneratedValue(strategy=GenerationType.IDENTITY)
private Integer vid;

private String vname;

private String vtype;

private String vemail;

private String address;

public Integer getVid() {
	return vid;
}

public void setVid(Integer vid) {
	this.vid = vid;
}

public String getVname() {
	return vname;
}

public void setVname(String vname) {
	this.vname = vname;
}

public String getVtype() {
	return vtype;
}

public void setVtype(String vtype) {
	this.vtype = vtype;
}

public String getVemail() {
	return vemail;
}

public void setVemail(String vemail) {
	this.vemail = vemail;
}

public String getAddress() {
	return address;
}

public void setAddress(String address) {
	this.address = address;
}





}