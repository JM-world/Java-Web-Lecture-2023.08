package com.example.demo;

public class Address {
	private int zipcode;
	private String city;
	private String country;
	
	public Address(int zipcode, String city, String country) {
		this.zipcode = zipcode;
		this.city = city;
		this.country = country;
	}

	public int getZipcode() {
		return zipcode;
	}

	public void setZipcode(int zipcode) {
		this.zipcode = zipcode;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getCountry() {
		return country;
	}

	public void setCountry(String country) {
		this.country = country;
	}
	
	@Override
	public String toString() {
		return "Address [zipcode=" + zipcode + ", city=" + city + ", country=" + country + "]";
	}
	
}
