package com.sprint.ProjectIM;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity 
public class employee {
@Id
@GeneratedValue(strategy=GenerationType.IDENTITY)
private Integer eid;

private String ename;

private String erole;

private String eemail;

private String eaddress;

private String euserid;

private String epass;

public Integer getEid() {
	return eid;
}

public void setEid(Integer eid) {
	this.eid = eid;
}

public String getEname() {
	return ename;
}

public void setEname(String ename) {
	this.ename = ename;
}

public String getErole() {
	return erole;
}

public void setErole(String erole) {
	this.erole = erole;
}

public String getEemail() {
	return eemail;
}

public void setEemail(String eemail) {
	this.eemail = eemail;
}

public String getEaddress() {
	return eaddress;
}

public void setEaddress(String eaddress) {
	this.eaddress = eaddress;
}

public String getEuserid() {
	return euserid;
}

public void setEuserid(String euserid) {
	this.euserid = euserid;
}

public String getEpass() {
	return epass;
}

public void setEpass(String epass) {
	this.epass = epass;
}



}
