package com.shop.entity;

import javax.persistence.*;
import java.util.ArrayList;
import java.util.List;


@Entity
public class Category {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	private String type;
	
	
	@ManyToMany
	@JoinTable (name = "categorys_commodity", joinColumns = @JoinColumn(name = "categorys_id"), inverseJoinColumns = @JoinColumn(name = "commodity_id"))
	private List<Commodity> commodity = new ArrayList<Commodity>();
	
	public Category() {
		// TODO Auto-generated constructor stub
	}

	public Category(String type) {
		super();
		this.type = type;
	}

	public List<Commodity> getCommodity() {
		return commodity;
	}

	public void setCommodity(List<Commodity> commodity) {
		this.commodity = commodity;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	@Override
	public String toString() {
		return "Category [id=" + id + ", type=" + type + "]";
	}
	
	
	
}
