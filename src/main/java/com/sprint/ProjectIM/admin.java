package com.sprint.ProjectIM;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;



@Entity 
@Table(name = "admin")
public class admin {
@Id
@GeneratedValue(strategy=GenerationType.IDENTITY)
private Integer aid;

private String aname;

private String aemail;

private String auserid;

private String apassword;

public Integer getAid() {
	return aid;
}

public void setAid(Integer aid) {
	this.aid = aid;
}

public String getAname() {
	return aname;
}

public void setAname(String aname) {
	this.aname = aname;
}

public String getAemail() {
	return aemail;
}

public void setAemail(String aemail) {
	this.aemail = aemail;
}

public String getAuserid() {
	return auserid;
}

public void setAuserid(String auserid) {
	this.auserid = auserid;
}

public String getApassword() {
	return apassword;
}

public void setApassword(String apassword) {
	this.apassword = apassword;
}






}

