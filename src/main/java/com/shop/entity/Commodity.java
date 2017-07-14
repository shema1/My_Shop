package com.shop.entity;

import java.util.ArrayList;
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
	private String price;
	private String info;
	private String pathImage;


	@ManyToMany
	@JoinTable(name = "categorys_commodity",
			joinColumns = @JoinColumn(name = "commodity_id"),
			inverseJoinColumns = @JoinColumn(name = "categorys_id"))
	private List<Category> category = new ArrayList<Category>();

	@ManyToMany
	@JoinTable(name = "orders_commodity",
			joinColumns = @JoinColumn(name = "commodity_id"),
			inverseJoinColumns = @JoinColumn(name = "orders_id"))
	private List<Orderss> orderss = new ArrayList<Orderss>();

	@ManyToMany
	@JoinTable(name = "commodity_user",
			joinColumns = @JoinColumn(name = "id_commodity"),
			inverseJoinColumns = @JoinColumn (name = "id_user"))
	private List<User> users = new ArrayList<User>();
	public Commodity() {
		// TODO Auto-generated constructor stub
	}

	


	public String getInfo() {
		return info;
	}

	public void setInfo(String info) {
		this.info = info;
	}

	public List<User> getUsers() {
		return users;
	}

	public void setUsers(List<User> users) {
		this.users = users;
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

	public String getPrice() {
		return price;
	}

	public void setPrice(String price) {
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


	public String getPathImage() {
		return pathImage;
	}

	public void setPathImage(String pathImage) {
		this.pathImage = pathImage;
	}
}
