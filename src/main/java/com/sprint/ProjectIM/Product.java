package com.sprint.ProjectIM;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity 
@Table(name = "product")
public class Product {

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	 private Integer pid;
	private String pname;
	 private String pdesc;
	 private Integer qpro;
	 private Integer  pprice;
   
	
    
	
	 public Integer getPid() {
		return pid;
	}
	public void setPid(Integer pid) {
		this.pid = pid;
	}
	public String getPname() {
		return pname;
	}
	public void setPname(String pname) {
		this.pname = pname;
	}
	public String getPdesc() {
		return pdesc;
	}
	public void setPdesc(String pdesc) {
		this.pdesc = pdesc;
	}
	public Integer getQpro() {
		return qpro;
	}
	public void setQpro(Integer qpro) {
		this.qpro = qpro;
	}
	public Integer getPprice() {
		return pprice;
	}
	public void setPprice(Integer pprice) {
		this.pprice = pprice;
	}
	
//	 private Integer pid;
//		private String pname;
//		 private String pdesc;
	// private long  pprice;
//		 private Integer qpro;
//		
//        private String img;


	
	
}