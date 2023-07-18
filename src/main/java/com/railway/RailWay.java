package com.railway;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="CrossInfo")
public class RailWay {
	@Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private int id;
    @Column(name = "Name")
    private String SName;
    @Column(name = "Crossing_status")
    private String Cstatus;
    @Column(name = "Person_in_charge")
    private String Pcharge;
    @Column(name = "Train_Schedule")
    private String Tschedule;
    @Column(name = "Landmark")
    private String Lmark;
    @Column(name = "Address")
    private String addr;
    @Column(name = "Favourite")
    private String fav = "no";
    
	public String getFav() {
		return fav;
	}
	public void setFav(String fav) {
		this.fav = fav;
	}
	public String getSName() {
		return SName;
	}
	public void setSName(String sName) {
		SName = sName;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getCstatus() {
		return Cstatus;
	}
	public void setCstatus(String cstatus) {
		this.Cstatus = cstatus;
	}
	public String getPcharge() {
		return Pcharge;
	}
	public void setPcharge(String pcharge) {
		Pcharge = pcharge;
	}
	public String getTschedule() {
		return Tschedule;
	}
	public void setTschedule(String tschedule) {
		Tschedule = tschedule;
	}
	public String getLmark() {
		return Lmark;
	}
	public void setLmark(String lmark) {
		Lmark = lmark;
	}
	public String getAddr() {
		return addr;
	}
	public void setAddr(String addr) {
		this.addr = addr;
	}
}
