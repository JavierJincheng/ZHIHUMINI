package com.zhihu.model;

public class User {

	private String userName;
	private String userPass;
	private String userNiceName;
	private int userAge;
	private String userId;
	private String userDesc;
	private String userHead;
	private int userState;
	private int count;
	public int getCount() {
		return count;
	}
	public void setCount(int count) {
		this.count = count;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getUserPass() {
		return userPass;
	}
	public void setUserPass(String userPass) {
		this.userPass = userPass;
	}
	public String getUserNiceName() {
		return userNiceName;
	}
	public void setUserNiceName(String userNiceName) {
		this.userNiceName = userNiceName;
	}
	public int getUserAge() {
		return userAge;
	}
	public void setUserAge(int userAge) {
		this.userAge = userAge;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getUserDesc() {
		return userDesc;
	}
	public void setUserDesc(String userDesc) {
		this.userDesc = userDesc;
	}
	public String getUserHead() {
		return userHead;
	}
	public void setUserHead(String userHead) {
		this.userHead = userHead;
	}
	public int getUserState() {
		return userState;
	}
	public void setUserState(int userState) {
		this.userState = userState;
	}
	
	
	public User() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
	public User(String userName, String userPass, String userNiceName, String userId) {
		super();
		this.userName = userName;
		this.userPass = userPass;
		this.userNiceName = userNiceName;
		this.userId = userId;
	}
	public User(String userName, String userPass, String userNiceName, int userAge, String userId, String userDesc,
			String userHead, int userState,int count) {
		super();
		this.userName = userName;
		this.userPass = userPass;
		this.userNiceName = userNiceName;
		this.userAge = userAge;
		this.userId = userId;
		this.userDesc = userDesc;
		this.userHead = userHead;
		this.userState = userState;
		this.count = count;
	}
	public User(String userName, String userPass, String userNiceName, int userAge, String userId, String userDesc,
			String userHead, int userState) {
		super();
		this.userName = userName;
		this.userPass = userPass;
		this.userNiceName = userNiceName;
		this.userAge = userAge;
		this.userId = userId;
		this.userDesc = userDesc;
		this.userHead = userHead;
		this.userState = userState;
	
	}
	
	public User(String userName, String userNiceName, int userAge, String userDesc, String userHead) {
		super();
		this.userName = userName;
		this.userNiceName = userNiceName;
		this.userAge = userAge;
		this.userDesc = userDesc;
		this.userHead = userHead;
	}

	@Override
	public String toString() {
		return "User [userName=" + userName + ", userPass=" + userPass + ", userNiceName=" + userNiceName + ", userAge="
				+ userAge + ", userId=" + userId + ", userDesc=" + userDesc + ", userHead=" + userHead + ", userState="
				+ userState + "]";
	}
	
	
}
