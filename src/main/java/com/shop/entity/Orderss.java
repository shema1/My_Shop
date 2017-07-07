package com.shop.entity;

import java.time.LocalDate;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;

@Entity
public class Orderss {
	
	@Id
	@GeneratedValue (strategy = GenerationType.IDENTITY)
	private int id;
	private LocalDate date;
	
	@ManyToMany
	@JoinTable(name = "orders_commodity", joinColumns = @JoinColumn(name = "orders_id"), inverseJoinColumns = @JoinColumn(name = "commodity_id"))
	private Set<Commodity> commoditys = new HashSet<Commodity>();
	
	
	@ManyToOne
	private User user;
	
	public Orderss() {
		// TODO Auto-generated constructor stub
	}
	
	















	public Orderss(LocalDate date) {
		super();
		this.date = date;
	}

















	public int getId() {
		return id;
	}








	public void setId(int id) {
		this.id = id;
	}








	public LocalDate getDate() {
		return date;
	}








	public void setDate(LocalDate date) {
		this.date = date;
	}


	public Set<Commodity> getCommoditys() {
		return commoditys;
	}

	public void setCommoditys(Set<Commodity> commoditys) {
		this.commoditys = commoditys;
	}

	public User getUser() {
		return user;
	}








	public void setUser(User user) {
		this.user = user;
	}








	@Override
	public String toString() {
		return "Orderss [id=" + id + ", date=" + date + "]";
	}








	
	
	


}
