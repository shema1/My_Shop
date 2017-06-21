package com.shop.entity;

import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.UUID;

import javax.persistence.*;

@Entity
public class User implements UserDetails {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id; 

	@Enumerated
	private Role role;

	private String name;
	private String email;
	private String password;
	private  boolean enable;
	private String uuid;


	public void setCommodities(List<Commodity> commodities) {
		this.commodities = commodities;
	}

	public void setOrdersses(List<Orderss> ordersses) {
		this.ordersses = ordersses;
	}

	public List<Commodity> getCommodities() {
		return commodities;
	}

	public List<Orderss> getOrdersses() {
		return ordersses;
	}

	//	@ManyToMany
//	@JoinTable(name = "drink_user",
//			joinColumns = @JoinColumn(name = "id_user"),
//			inverseJoinColumns = @JoinColumn(name = "id_drink"))
//	private List<Drink> drinks = new ArrayList<Drink>();
	@ManyToMany
	@JoinTable(name = "commodity_user",
			joinColumns = @JoinColumn(name = "id_user"),
			inverseJoinColumns = @JoinColumn(name = "id_commodity"))
	private List<Commodity> commodities = new ArrayList<Commodity>();
	
	@OneToMany(mappedBy = "user")
	private List<Orderss> ordersses;
	
	
	public User(){
		
	}

	public User(String name, String email, String password) {
		super();
		this.name = name;
		this.email = email;
		this.password = password;
	}

	public boolean isEnable() {
		return enable;
	}


	public void setEnable(boolean enable) {
		this.enable = enable;
	}

	public String getUuid() {
		return uuid;
	}

	public void setUuid(String uuid) {
		this.uuid = uuid;
	}

	public Role getRole() {
		return role;
	}

	public void setRole(Role role) {
		this.role = role;
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

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	@Override
	public Collection<? extends GrantedAuthority> getAuthorities() {

		List<SimpleGrantedAuthority> authorities = new ArrayList<>();
		authorities.add(new SimpleGrantedAuthority(role.name()));
		return  authorities;
//		List<SimpleGrantedAuthority> authorities = new ArrayList<>();
//		authorities.add(new SimpleGrantedAuthority(role.name()));
//		return authorities;
	}

	public String getPassword() {
		return password;
	}

	@Override
	public String getUsername() {
		return String.valueOf(id);
	}

	@Override
	public boolean isAccountNonExpired() {
		return true;
	}

	@Override
	public boolean isAccountNonLocked() {
		return true;
	}

	@Override
	public boolean isCredentialsNonExpired() {
		return true;
	}

	@Override
	public boolean isEnabled() {
		return enable;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	@Override
	public String toString() {
		return "User [id=" + id + ", name=" + name + ", email=" + email + ", password=" + password + "]";
	}
	
	
	
	

}
