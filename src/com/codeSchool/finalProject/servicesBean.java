package com.codeSchool.finalProject;

import java.io.Serializable;

class servicesBean  implements Serializable{
  /**
	 * 
	 */
	private static final long serialVersionUID = 2377701429455119577L;

    int id;
	
	String services;
	String mobile;
	String exp;
	
	public servicesBean(){
		
	}
	public servicesBean( String services, String mobile, String exp) {
		super();
		
		this.services = services;
		this.mobile = mobile;
		this.exp = exp;
	
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getServices() {
		return services;
	}
	public void setServices(String services) {
		this.services = services;
	}
	public String getMobile() {
		return mobile;
	}
	public void setMobile(String mobile) {
		this.mobile = mobile;
	}
	public String getExp() {
		return exp;
	}
	public void setExp(String exp) {
		this.exp = exp;
	}
	

}
