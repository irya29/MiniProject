package com.miniproject;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity // This tells Hibernate to make a table out of this class
@Table(name= "TBL_ASSET")
public class Asset {
	private Long assetid;
	private String assetnumber;
	private String assetname;
	private String category;
	
	@Id
    @GeneratedValue(strategy=GenerationType.AUTO)
	public Long getAssetid() {
		return assetid;
	}
	public void setAssetid(Long assetid) {
		this.assetid = assetid;
	}
	public String getAssetnumber() {
		return assetnumber;
	}
	public void setAssetnumber(String assetnumber) {
		this.assetnumber = assetnumber;
	}
	public String getAssetname() {
		return assetname;
	}
	public void setAssetname(String assetname) {
		this.assetname = assetname;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
}
