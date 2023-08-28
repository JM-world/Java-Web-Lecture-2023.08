package com.example.demo.pocketMon;


public class PocketMon {

	private int cid;
	private String name;
	private String type;
	private int height ;
	private int weight;
	private int viewCount;
	private int isDeleted;
	
	// 기본 생성자
	
	public PocketMon() {
		
	}

	// insert, update하는 경우 사용되는 생성자
	
	public PocketMon(int cid, String name, String type, int height, int weight) {
		this.cid = cid;
		this.name = name;
		this.type = type;
		this.height = height;
		this.weight = weight;
	}

	// 조회할 시 출력하기 위해
	
	public PocketMon(int cid, String name, String type, int height, int weight, int viewCount, int isDeleted) {
		this.cid = cid;
		this.name = name;
		this.type = type;
		this.height = height;
		this.weight = weight;
		this.viewCount = viewCount;
		this.isDeleted = isDeleted;
	}

	// Getter and Setter
	
	public int getCid() {
		return cid;
	}

	public void setCid(int cid) {
		this.cid = cid;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public int getHeight() {
		return height;
	}

	public void setHeight(int height) {
		this.height = height;
	}

	public int getWeight() {
		return weight;
	}

	public void setWeight(int weight) {
		this.weight = weight;
	}

	public int getViewCount() {
		return viewCount;
	}

	public void setViewCount(int viewCount) {
		this.viewCount = viewCount;
	}

	public int getIsDeleted() {
		return isDeleted;
	}

	public void setIsDeleted(int isDeleted) {
		this.isDeleted = isDeleted;
	}

	// toString
	
	@Override
	public String toString() {
		return "pocketMon [cid=" + cid + ", name=" + name + ", type=" + type + ", height=" + height + ", weight="
				+ weight + ", viewCount=" + viewCount + ", isDeleted=" + isDeleted + "]";
	}
	
	
	
	
	
	
	
	
	
	
	
}

