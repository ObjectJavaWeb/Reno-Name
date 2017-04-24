package org.music.pojo;

public class SongerMusic {
	private String name;
	public int num;
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
	}
	public SongerMusic() {
		// TODO Auto-generated constructor stub
	}
	public SongerMusic(String name,int num) {
		this.name=name;
		this.num=num;
	}
	
}
