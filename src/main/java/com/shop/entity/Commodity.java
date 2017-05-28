package com.shop.entity;

import java.util.List;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;

@Entity
public class Commodity {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	
	private String name;
	private int price;
	
	@OneToMany(mappedBy= "commodity")
	private List<Category> category;

	@ManyToMany
	@JoinTable(name = "orders_commodity", joinColumns = @JoinColumn(name = "commodity_id"), inverseJoinColumns = @JoinColumn(name = "orders_id"))
	private List<Orderss> orderss;


	public Commodity() {
		// TODO Auto-generated constructor stub
	}

	
	public Commodity(String name, int price) {
		super();
		this.name = name;
		this.price = price;
	}




	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}


	@Override
	public String toString() {
		return "Commodity [id=" + id + ", name=" + name + ", price=" + price + "]";
	}


	public List<Category> getCategory() {
		return category;
	}


	public void setCategory(List<Category> category) {
		this.category = category;
	}


	public List<Orderss> getOrderss() {
		return orderss;
	}


	public void setOrderss(List<Orderss> orderss) {
		this.orderss = orderss;
	}







	
	
	
}
