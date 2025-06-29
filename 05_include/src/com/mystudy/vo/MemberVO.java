package com.mystudy.vo;

public class MemberVO {
	private int idx;
	private String id;
	private String pwd;
	private String name;
	private int age;
	private String address;
	private String reg;
	
	public MemberVO() {}
	public MemberVO(int idx, String id, String pwd, String name, int age, String address, String reg) {
		super();
		this.idx = idx;
		this.id = id;
		this.pwd = pwd;
		this.name = name;
		this.age = age;
		this.address = address;
		this.reg = reg;
	}
	public int getIdx() {
		return idx;
	}
	public void setIdx(int idx) {
		this.idx = idx;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPwd() {
		return pwd;
	}
	public void setPwd(String pwd) {
		this.pwd = pwd;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getReg() {
		return reg;
	}
	public void setReg(String reg) {
		this.reg = reg;
	}
	@Override
	public String toString() {
		return "MemberVO [idx=" + idx + ", id=" + id + ", pwd=" + pwd + ", name=" + name + ", age=" + age + ", address="
				+ address + ", reg=" + reg + "]";
	}
	
}

