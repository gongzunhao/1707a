package com.bw.bean;

public class User {
	private Integer uid;
	private String username;
	private String password;
	private String nickname;
	private String birthday;
	private Integer gender;
	private String locaed;
	private String created;
	private String update;
	public Integer getUid() {
		return uid;
	}
	public void setUid(Integer uid) {
		this.uid = uid;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getNickname() {
		return nickname;
	}
	public void setNickname(String nickname) {
		this.nickname = nickname;
	}
	public String getBirthday() {
		return birthday;
	}
	public void setBirthday(String birthday) {
		this.birthday = birthday;
	}
	public Integer getGender() {
		return gender;
	}
	public void setGender(Integer gender) {
		this.gender = gender;
	}
	public String getLocaed() {
		return locaed;
	}
	public void setLocaed(String locaed) {
		this.locaed = locaed;
	}
	public String getCreated() {
		return created;
	}
	public void setCreated(String created) {
		this.created = created;
	}
	public String getUpdate() {
		return update;
	}
	public void setUpdate(String update) {
		this.update = update;
	}
	public User(Integer uid, String username, String password, String nickname, String birthday, Integer gender,
			String locaed, String created, String update) {
		super();
		this.uid = uid;
		this.username = username;
		this.password = password;
		this.nickname = nickname;
		this.birthday = birthday;
		this.gender = gender;
		this.locaed = locaed;
		this.created = created;
		this.update = update;
	}
	public User() {
		super();
		// TODO Auto-generated constructor stub
	}
	@Override
	public String toString() {
		return "User [uid=" + uid + ", username=" + username + ", password=" + password + ", nickname=" + nickname
				+ ", birthday=" + birthday + ", gender=" + gender + ", locaed=" + locaed + ", created=" + created
				+ ", update=" + update + "]";
	}
	
}
